@interface AXCenterTapReplayableGesture
- (AXCenterTapReplayableGesture)init;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AXCenterTapReplayableGesture

- (AXCenterTapReplayableGesture)init
{
  v28[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AXCenterTapReplayableGesture;
  v2 = [(AXCenterTapReplayableGesture *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v29.origin.x = AXDeviceGetMainScreenBounds(v2);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    MidX = CGRectGetMidX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    *v18 = MidX;
    v18[1] = CGRectGetMidY(v30);
    v9 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{CGPoint=dd}"];
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    v27[0] = &unk_1EFE97650;
    v26[0] = @"Time";
    v26[1] = @"Fingers";
    v24 = &unk_1EFE96BB0;
    v25 = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v27[1] = v11;
    v26[2] = @"Forces";
    v22 = &unk_1EFE96BB0;
    v23 = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v27[2] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v28[0] = v13;
    v20[0] = @"Time";
    v20[1] = @"Fingers";
    v21[0] = &unk_1EFE97660;
    v21[1] = MEMORY[0x1E695E0F8];
    v20[2] = @"Forces";
    v21[2] = MEMORY[0x1E695E0F8];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v28[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    allEvents = v3->super._allEvents;
    v3->super._allEvents = v15;

    [(AXReplayableGesture *)v3 setArePointsDeviceRelative:1];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

@end
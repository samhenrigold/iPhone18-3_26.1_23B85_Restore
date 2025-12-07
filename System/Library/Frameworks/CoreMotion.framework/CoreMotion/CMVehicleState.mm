@interface CMVehicleState
+ (BOOL)isAvailable;
+ (unint64_t)isVehicleBasedOnDeviceId:(id)id deviceType:(int)type;
@end

@implementation CMVehicleState

+ (BOOL)isAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    return (sub_19B421620() >> 32) & 1;
  }

  return v2;
}

+ (unint64_t)isVehicleBasedOnDeviceId:(id)id deviceType:(int)type
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"CMVehicleStateDeviceId";
  v7[1] = @"CMVehicleStateDeviceType";
  v8[0] = id;
  v8[1] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, *&type);
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v8, v7, 2);
  sub_19B44BE58();
}

@end
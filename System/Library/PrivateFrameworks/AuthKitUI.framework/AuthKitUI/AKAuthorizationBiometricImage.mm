@interface AKAuthorizationBiometricImage
+ (id)biometricImage;
@end

@implementation AKAuthorizationBiometricImage

+ (id)biometricImage
{
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  isFaceIDCapable = [currentDevice isFaceIDCapable];
  currentDevice2 = [MEMORY[0x277CF0218] currentDevice];
  usesTouchID = [currentDevice2 usesTouchID];
  *&v2 = MEMORY[0x277D82BD8](currentDevice2).n128_u64[0];
  if (isFaceIDCapable)
  {
    v8 = [MEMORY[0x277D755B8] ak_imageNamed:{*MEMORY[0x277CF00D8], v2}];
  }

  else if (usesTouchID)
  {
    v8 = [MEMORY[0x277D755B8] ak_imageNamed:{*MEMORY[0x277CF00E8], v2}];
  }

  else
  {
    v8 = [MEMORY[0x277D755B8] ak_imageNamed:{*MEMORY[0x277CF00E0], v2}];
  }

  return v8;
}

@end
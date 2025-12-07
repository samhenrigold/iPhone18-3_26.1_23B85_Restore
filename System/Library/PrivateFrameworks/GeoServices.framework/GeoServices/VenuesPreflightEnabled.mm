@interface VenuesPreflightEnabled
@end

@implementation VenuesPreflightEnabled

id GeoServicesConfig_VenuesPreflightEnabled_Metadata_block_invoke_349()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = +[GEOPlatform sharedPlatform];
  v2 = [v0 numberWithBool:{objc_msgSend(v1, "isInternalInstall")}];

  return v2;
}

@end
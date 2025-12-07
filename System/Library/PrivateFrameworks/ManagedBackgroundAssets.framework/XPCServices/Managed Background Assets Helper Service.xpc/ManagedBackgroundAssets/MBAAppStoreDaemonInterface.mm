@interface MBAAppStoreDaemonInterface
+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error;
+ (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier assetPackIdentifier:(id)packIdentifier assetPackVersion:(id)version internalBeta:(BOOL)beta result:(int64_t)result error:(id)error completionHandler:(id)self0;
@end

@implementation MBAAppStoreDaemonInterface

+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v9 = [sub_1000015C4() testFlightDownloadManifestRequestForStoreItemIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy error:error];

  return v9;
}

+ (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier assetPackIdentifier:(id)packIdentifier assetPackVersion:(id)version internalBeta:(BOOL)beta result:(int64_t)result error:(id)error completionHandler:(id)self0
{
  betaCopy = beta;
  if (result <= 3)
  {
    v15 = 3 - result;
  }

  else
  {
    v15 = 0;
  }

  handlerCopy = handler;
  errorCopy = error;
  versionCopy = version;
  packIdentifierCopy = packIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  [sub_1000015C4() didReachAssetPackTerminalPhaseForStoreItemIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy assetPackIdentifier:packIdentifierCopy assetPackVersion:versionCopy internalBeta:betaCopy terminalPhase:v15 error:errorCopy completionHandler:handlerCopy];
}

@end
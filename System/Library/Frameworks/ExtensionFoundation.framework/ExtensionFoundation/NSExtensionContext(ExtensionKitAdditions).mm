@interface NSExtensionContext(ExtensionKitAdditions)
- (id)_derivedExtensionAuxiliaryHostProtocol;
@end

@implementation NSExtensionContext(ExtensionKitAdditions)

- (id)_derivedExtensionAuxiliaryHostProtocol
{
  v2 = [EXExtensionContextImplementation _derivedExtensionAuxiliaryHostProtocolWithContextClass:objc_opt_class()];
  v3 = _EXLegacyLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NSExtensionContext(ExtensionKitAdditions) _derivedExtensionAuxiliaryHostProtocol];
  }

  return v2;
}

@end
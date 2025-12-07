@interface NSItemProvider(WebPrivacyExtras)
- (void)_wp_removeTrackingInformationFromURLRepresentation;
@end

@implementation NSItemProvider(WebPrivacyExtras)

- (void)_wp_removeTrackingInformationFromURLRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1E90] identifier];
  v3 = [self _representationConformingToType:identifier];

  if (v3)
  {
    typeIdentifier = [v3 typeIdentifier];
    identifier2 = [*MEMORY[0x277CE1D70] identifier];
    v6 = [typeIdentifier isEqualToString:identifier2];

    if (v6)
    {
      v9 = WPOSLogAPI(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = typeIdentifier;
        _os_log_impl(&dword_273D20000, v9, OS_LOG_TYPE_INFO, "Skipping URL returned from item provider (%@)", buf, 0xCu);
      }
    }

    else
    {
      preferredRepresentation = [v3 preferredRepresentation];
      visibility = [v3 visibility];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke;
      v12[3] = &unk_279EAF308;
      v13 = v3;
      v14 = typeIdentifier;
      [self _addRepresentationType:v14 preferredRepresentation:preferredRepresentation visibility:visibility loader:v12];
    }
  }
}

@end
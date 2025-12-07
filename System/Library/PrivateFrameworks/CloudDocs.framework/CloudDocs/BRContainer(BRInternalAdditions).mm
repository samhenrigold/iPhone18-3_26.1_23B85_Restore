@interface BRContainer(BRInternalAdditions)
+ (void)postContainerListUpdateNotification;
@end

@implementation BRContainer(BRInternalAdditions)

+ (void)versionOfBundle:()BRInternalAdditions changedFromVersion:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE2A9000, v0, 0x90u, "[ERROR] unable to retrieve properties without a bundle%@", v1, 0xCu);
}

+ (void)postContainerListUpdateNotification
{
  brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerListUpdateNotification]", 1822);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: [BRContainerCache hasDaemonicParts]%@", v7, v8, v9, v10);
  }
}

+ (void)postContainerStatusChangeNotificationWithID:()BRInternalAdditions key:value:.cold.1(uint64_t *a1)
{
  *a1 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerStatusChangeNotificationWithID:key:value:]", 1849);
  v2 = brc_default_log(0, 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_4_4();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)_updateMetadataOnDiskWithProperties:()BRInternalAdditions .cold.1()
{
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1875);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: !_mangledID.isCloudDocsMangledID%@", v7, v8, v9, v10);
  }
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.1()
{
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1893);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: updatedProperties%@", v7, v8, v9, v10);
  }
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.2()
{
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1894);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: bundleID%@", v7, v8, v9, v10);
  }
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: ![bundleID isEqualToString:BRDaemonBundleID]%@", v1, 0xCu);
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.4()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: (!isEqual && !isEqualExceptVersionNumber) || (isEqual != isEqualExceptVersionNumber)%@", v1, 0xCu);
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.5()
{
  OUTLINED_FUNCTION_14(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] metadata for container %@ are equal except version number but icons are different%@");
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.6()
{
  OUTLINED_FUNCTION_14(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] metadata for container %@ are equal except version number; perform local update only%@");
}

- (void)updateMetadataWithExtractorProperties:()BRInternalAdditions iconPaths:bundleID:.cold.7()
{
  OUTLINED_FUNCTION_14(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] metadata for container %@ are already up-to-date%@");
}

- (void)updateMetadataWithRecordData:()BRInternalAdditions iconPaths:.cold.1()
{
  brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2051);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: recordData%@", v7, v8, v9, v10);
  }
}

+ (void)_generateiOSIconsForMangledID:()BRInternalAdditions usingBundle:generatedIcons:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end
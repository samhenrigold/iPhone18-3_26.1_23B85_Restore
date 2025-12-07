@interface MADManagedPhotosAsset
- (id)description;
- (void)addResult:(id)result;
- (void)removeResult:(id)result;
@end

@implementation MADManagedPhotosAsset

- (void)addResult:(id)result
{
  if (!result)
  {
    [0 setAsset:self];
  }
}

- (void)removeResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if (resultCopy)
  {
    v5 = mach_continuous_time();
    managedObjectContext = [(MADManagedPhotosAsset *)self managedObjectContext];
    [managedObjectContext deleteObject:resultCopy];

    v8 = VCPSignPostPersistentLog(v7);
    v9 = VCPSignPostPersistentLog(v8);
    v10 = os_signpost_id_generate(v9);

    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = qos_class_self();
      v12 = VCPMAQoSDescription(v11);
      v13 = 134349826;
      v14 = v5;
      v15 = 2082;
      v16 = "RemoveResult";
      v17 = 2082;
      uTF8String = [v12 UTF8String];
      v19 = 2050;
      v20 = 1;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_EVENT, v10, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s Rows=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", &v13, 0x2Au);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD|Asset] Does not contain result", &v13, 2u);
  }
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  localIdentifierColumnName = [objc_opt_class() localIdentifierColumnName];
  localIdentifier = [(MADManagedPhotosAsset *)self localIdentifier];
  [string appendFormat:@"%@: %@, ", localIdentifierColumnName, localIdentifier];

  versionColumnName = [objc_opt_class() versionColumnName];
  [string appendFormat:@"%@: %d, ", versionColumnName, -[MADManagedPhotosAsset version](self, "version")];

  dateModifiedColumnName = [objc_opt_class() dateModifiedColumnName];
  dateModified = [(MADManagedPhotosAsset *)self dateModified];
  [string appendFormat:@"%@: %@, ", dateModifiedColumnName, dateModified];

  dateAnalyzedColumnName = [objc_opt_class() dateAnalyzedColumnName];
  dateAnalyzed = [(MADManagedPhotosAsset *)self dateAnalyzed];
  [string appendFormat:@"%@: %@, ", dateAnalyzedColumnName, dateAnalyzed];

  analysisTypesColumnName = [objc_opt_class() analysisTypesColumnName];
  [string appendFormat:@"%@: %lld, ", analysisTypesColumnName, -[MADManagedPhotosAsset analysisTypes](self, "analysisTypes")];

  flagsColumnName = [objc_opt_class() flagsColumnName];
  [string appendFormat:@"%@: %lld, ", flagsColumnName, -[MADManagedPhotosAsset flags](self, "flags")];

  qualityColumnName = [objc_opt_class() qualityColumnName];
  [(MADManagedPhotosAsset *)self quality];
  [string appendFormat:@"%@: %f, ", qualityColumnName, v16];

  statsFlagsColumnName = [objc_opt_class() statsFlagsColumnName];
  [string appendFormat:@"%@: %lld, ", statsFlagsColumnName, -[MADManagedPhotosAsset statsFlags](self, "statsFlags")];

  results = [(MADManagedPhotosAsset *)self results];
  [string appendFormat:@"results.count: %d>", objc_msgSend(results, "count")];

  return string;
}

@end
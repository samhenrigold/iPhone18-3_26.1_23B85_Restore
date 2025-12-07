@interface ANEDataReporter
@end

@implementation ANEDataReporter

id __42___ANEDataReporter_addValue_forScalarKey___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:v1];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

void __50___ANEDataReporter_reportTelemetryToPPS_playload___block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = reportTelemetryToPPS_playload__ppsIDMapping;
  reportTelemetryToPPS_playload__ppsIDMapping = v0;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = +[_ANEStrings ppsCategoryForANE];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412290;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [reportTelemetryToPPS_playload__ppsIDMapping objectForKey:{v8, v15}];
        v10 = +[_ANELog common];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = v15;
          v22 = v8;
          _os_log_debug_impl(&dword_1AD246000, v10, OS_LOG_TYPE_DEBUG, "Telemetry: add identifier %@.", buf, 0xCu);
        }

        v11 = +[_ANEStrings ppsSubsystemForANE];
        v12 = PPSCreateTelemetryIdentifier();

        v16 = v12;
        if (v12)
        {
          v13 = [MEMORY[0x1E696B098] value:&v16 withObjCType:"^{PPSTelemetryIdentifier=}"];

          [reportTelemetryToPPS_playload__ppsIDMapping setObject:v13 forKeyedSubscript:v8];
          v9 = v13;
        }

        else
        {
          v14 = +[_ANELog common];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v22 = v8;
            _os_log_error_impl(&dword_1AD246000, v14, OS_LOG_TYPE_ERROR, "Telemetry: could not create ppsId for %@!", buf, 0xCu);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }
}

@end
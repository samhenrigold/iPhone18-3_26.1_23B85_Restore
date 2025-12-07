@interface PSGDiagnostics
+ (id)getDiagnosticsInfoForReportCrash;
@end

@implementation PSGDiagnostics

+ (id)getDiagnosticsInfoForReportCrash
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = objc_opt_new();
  v16 = [MEMORY[0x277D73660] clientWithIdentifier:103];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [&unk_28734B118 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(&unk_28734B118);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v16 experimentIdentifiersWithNamespaceName:v6];
        experimentId = [v7 experimentId];
        deploymentId = [v7 deploymentId];
        treatmentId = [v7 treatmentId];
        if (!v7 || ![(__CFString *)experimentId length]|| ![(__CFString *)treatmentId length])
        {

          deploymentId = 0xFFFFFFFFLL;
          experimentId = @"<nil>";
          treatmentId = @"<nil>";
        }

        v24[0] = @"experimentId";
        v24[1] = @"treatmentId";
        v25[0] = experimentId;
        v25[1] = treatmentId;
        v24[2] = @"deploymentId";
        v11 = [MEMORY[0x277CCABB0] numberWithInt:deploymentId];
        stringValue = [v11 stringValue];
        v25[2] = stringValue;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

        [v17 setObject:v13 forKeyedSubscript:v6];
      }

      v3 = [&unk_28734B118 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v3);
  }

  v22 = @"experimentInfo";
  v23 = v17;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  return v14;
}

@end
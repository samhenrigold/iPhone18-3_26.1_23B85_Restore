@interface SiriCoreTrialUtilities
+ (BOOL)getBooleanForTrialProject:(id)project trialNamespace:(id)namespace trialFactor:(id)factor;
+ (id)experimentIdentifiersForTrialProject:(id)project trialNamespace:(id)namespace;
+ (id)getDirectoryPathForTrialProject:(id)project trialNamespace:(id)namespace trialFactor:(id)factor;
+ (id)getTriLevelForTrialProject:(id)project trialNamespace:(id)namespace trialFactor:(id)factor;
+ (id)trialClientForProject:(id)project;
@end

@implementation SiriCoreTrialUtilities

+ (id)experimentIdentifiersForTrialProject:(id)project trialNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v6 = [SiriCoreTrialUtilities trialClientForProject:project];
  v7 = [v6 experimentIdentifiersWithNamespaceName:namespaceCopy];

  return v7;
}

+ (BOOL)getBooleanForTrialProject:(id)project trialNamespace:(id)namespace trialFactor:(id)factor
{
  v19 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  v8 = [SiriCoreTrialUtilities getTriLevelForTrialProject:project trialNamespace:namespace trialFactor:factorCopy];
  if ([v8 levelOneOfCase] == 10)
  {
    bOOLeanValue = [v8 BOOLeanValue];
  }

  else
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v13 = 136315650;
      v14 = "+[SiriCoreTrialUtilities getBooleanForTrialProject:trialNamespace:trialFactor:]";
      v15 = 2112;
      v16 = factorCopy;
      v17 = 1024;
      levelOneOfCase = [v8 levelOneOfCase];
      _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s TRILevel is not a BOOLean type: %@ %d", &v13, 0x1Cu);
    }

    bOOLeanValue = 0;
  }

  return bOOLeanValue;
}

+ (id)getDirectoryPathForTrialProject:(id)project trialNamespace:(id)namespace trialFactor:(id)factor
{
  v23 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  v8 = [SiriCoreTrialUtilities getTriLevelForTrialProject:project trialNamespace:namespace trialFactor:factorCopy];
  if ([v8 levelOneOfCase] != 101)
  {
    v15 = *MEMORY[0x277CEF098];
    if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    directoryValue = v15;
    v17 = 136315650;
    v18 = "+[SiriCoreTrialUtilities getDirectoryPathForTrialProject:trialNamespace:trialFactor:]";
    v19 = 2112;
    v20 = factorCopy;
    v21 = 1024;
    levelOneOfCase = [v8 levelOneOfCase];
    _os_log_impl(&dword_2669D1000, directoryValue, OS_LOG_TYPE_INFO, "%s TRILevel is not a directory type: %@ %d", &v17, 0x1Cu);
LABEL_7:

    goto LABEL_8;
  }

  directoryValue = [v8 directoryValue];
  if (([directoryValue hasPath]& 1) == 0)
  {
    goto LABEL_7;
  }

  directoryValue2 = [v8 directoryValue];
  path = [directoryValue2 path];
  v12 = [path length];

  if (v12)
  {
    directoryValue3 = [v8 directoryValue];
    path2 = [directoryValue3 path];

    goto LABEL_9;
  }

LABEL_8:
  path2 = 0;
LABEL_9:

  return path2;
}

+ (id)getTriLevelForTrialProject:(id)project trialNamespace:(id)namespace trialFactor:(id)factor
{
  v22 = *MEMORY[0x277D85DE8];
  projectCopy = project;
  namespaceCopy = namespace;
  factorCopy = factor;
  v10 = [SiriCoreTrialUtilities trialClientForProject:projectCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 levelForFactor:factorCopy withNamespaceName:namespaceCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v18 = 136315394;
        v19 = "+[SiriCoreTrialUtilities getTriLevelForTrialProject:trialNamespace:trialFactor:]";
        v20 = 2112;
        v21 = factorCopy;
        _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_INFO, "%s No level for factor %@", &v18, 0x16u);
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "+[SiriCoreTrialUtilities getTriLevelForTrialProject:trialNamespace:trialFactor:]";
      v20 = 2112;
      v21 = projectCopy;
      _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s Could not create trial client for project %@", &v18, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)trialClientForProject:(id)project
{
  v16 = *MEMORY[0x277D85DE8];
  projectCopy = project;
  v4 = [MEMORY[0x277D73B98] projectIdFromName:projectCopy];
  if (v4 && (v5 = v4, (TRIProject_ProjectId_IsValidValue() & 1) != 0))
  {
    v6 = [MEMORY[0x277D73660] clientWithIdentifier:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "+[SiriCoreTrialUtilities trialClientForProject:]";
        v14 = 2112;
        v15 = projectCopy;
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s Could not create trial client for project %@", &v12, 0x16u);
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "+[SiriCoreTrialUtilities trialClientForProject:]";
      v14 = 2112;
      v15 = projectCopy;
      _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s Could not find TRIProject for %@", &v12, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

@end
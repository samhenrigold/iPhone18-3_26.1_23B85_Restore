@interface TRIActiveSysctlFactorsPublisher
- (BOOL)publishSysctlFactors;
- (TRIActiveSysctlFactorsPublisher)initWithServerContext:(id)context;
- (TRIActiveSysctlFactorsPublisher)initWithSysctlFactorsProvider:(id)provider sysctlWriter:(id)writer;
@end

@implementation TRIActiveSysctlFactorsPublisher

- (TRIActiveSysctlFactorsPublisher)initWithSysctlFactorsProvider:(id)provider sysctlWriter:(id)writer
{
  providerCopy = provider;
  writerCopy = writer;
  v12.receiver = self;
  v12.super_class = TRIActiveSysctlFactorsPublisher;
  v9 = [(TRIActiveSysctlFactorsPublisher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_factorsProvider, provider);
    objc_storeStrong(&v10->_sysctlWriter, writer);
  }

  return v10;
}

- (BOOL)publishSysctlFactors
{
  v18 = *MEMORY[0x277D85DE8];
  activeSysctlFactorLevels = [(TRIActiveSysctlFactorsProviding *)self->_factorsProvider activeSysctlFactorLevels];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [activeSysctlFactorLevels countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(activeSysctlFactorLevels);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        sysctlWriter = self->_sysctlWriter;
        sysctlName = [v9 sysctlName];
        v7 &= -[TRISysctlWriting writeSysctlWithName:intValue:](sysctlWriter, "writeSysctlWithName:intValue:", sysctlName, [v9 level]);
      }

      v5 = [activeSysctlFactorLevels countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (TRIActiveSysctlFactorsPublisher)initWithServerContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  experimentDatabase = [contextCopy experimentDatabase];

  v7 = [[TRIActiveSysctlFactorsProvider alloc] initWithActiveNamespacesProvider:experimentDatabase factorLevelsRetriever:v5];
  v8 = objc_opt_new();
  v9 = [(TRIActiveSysctlFactorsPublisher *)self initWithSysctlFactorsProvider:v7 sysctlWriter:v8];

  return v9;
}

@end
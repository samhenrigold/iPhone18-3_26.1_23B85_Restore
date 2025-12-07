@interface MTPerfBaseEventDataProvider
- (id)knownFields;
- (id)xpSamplingForced:(id)forced;
@end

@implementation MTPerfBaseEventDataProvider

- (id)knownFields
{
  v13[11] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MTPerfBaseEventDataProvider;
    knownFields2 = [(MTBaseEventDataProvider *)&v12 knownFields];
    v8 = knownFields2;
    if (knownFields2)
    {
      v9 = knownFields2;
    }

    else
    {
      v13[0] = @"app";
      v13[1] = @"appVersion";
      v13[2] = @"hardwareFamily";
      v13[3] = @"os";
      v13[4] = @"osBuildNumber";
      v13[5] = @"osVersion";
      v13[6] = @"connection";
      v13[7] = @"clientEventId";
      v13[8] = @"timezoneOffset";
      v13[9] = @"eventTime";
      v13[10] = @"xpVersionMetricsKit";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:11];
    }

    delegate2 = v9;

    knownFields = [delegate2 arrayByAddingObject:@"xpSamplingForced"];
  }

  v10 = knownFields;

  return v10;
}

- (id)xpSamplingForced:(id)forced
{
  forcedCopy = forced;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSamplingForced:forcedCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [forcedCopy objectForKeyedSubscript:@"xpSamplingForced"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__MTPerfBaseEventDataProvider_xpSamplingForced___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __48__MTPerfBaseEventDataProvider_xpSamplingForced___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"performance.samplingForced" sources:v3];

  return v6;
}

@end
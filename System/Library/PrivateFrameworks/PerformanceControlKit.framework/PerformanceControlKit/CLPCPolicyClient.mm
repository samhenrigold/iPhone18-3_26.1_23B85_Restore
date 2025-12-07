@interface CLPCPolicyClient
- (BOOL)isLowPowerModeCandidate:(unint64_t)candidate error:(id *)error;
- (BOOL)setCLPCTrialID:(unint64_t)d error:(id *)error;
- (BOOL)setGameMode:(BOOL)mode options:(unint64_t)options error:(id *)error;
- (id).cxx_construct;
- (id)init:(id *)init;
@end

@implementation CLPCPolicyClient

- (id)init:(id *)init
{
  v8.receiver = self;
  v8.super_class = CLPCPolicyClient;
  v3 = [(CLPCUserClient *)&v8 init:init];
  v4 = v3;
  if (v3)
  {
    v5 = v3[10];
    v3[10] = 0;

    v6 = v4;
  }

  return v4;
}

- (BOOL)isLowPowerModeCandidate:(unint64_t)candidate error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  if (candidate == 2)
  {
    v6 = [CLPCPolicyInterface createClient:0];
    clpc_policy_client = self->clpc_policy_client;
    self->clpc_policy_client = v6;

    v8 = self->clpc_policy_client;
    if (v8)
    {
      if ([(CLPCPolicyAccess *)v8 isInGameMode:error]!= 1)
      {
        *&outputStruct.id = 0;
        v26 = -3;
        IOConnectCallMethod(self->super.clpc.connect, 7u, 0, 0, 0, 0, 0, 0, &outputStruct, &v26);
        v13 = [MEMORY[0x277CBEA90] dataWithBytes:*&outputStruct.id + 40 length:36];
        v9 = v13;
        if (!error || v13)
        {
          *&outputStruct.id = 0x10000000FLL;
          outputStruct.size = 36;
          v24 = 0uLL;
          v25 = 0.0;
          [v13 getBytes:&outputStruct length:36];
          p_previous_lpgm_info = &self->previous_lpgm_info;
          lpgm_timestamp = self->previous_lpgm_info.lpgm_timestamp;
          if (!lpgm_timestamp)
          {
            v11 = 0;
            v21 = v24;
            p_previous_lpgm_info->info = outputStruct;
            *&p_previous_lpgm_info->package_energy_nj = v21;
            p_previous_lpgm_info->lpgm_target = v25;
            goto LABEL_8;
          }

          package_energy_nj = self->previous_lpgm_info.package_energy_nj;
          v18 = v24;
          v19 = [CLPCUtils mach_time_to_ns:?];
          if (v19 > 0x6FC23ABFFLL)
          {
            v20 = v24;
            p_previous_lpgm_info->info = outputStruct;
            *&p_previous_lpgm_info->package_energy_nj = v20;
            p_previous_lpgm_info->lpgm_target = v25;
            v11 = (v18 - package_energy_nj) / v19 > v25 * 1.3;
            goto LABEL_8;
          }

          v27 = *MEMORY[0x277CCA068];
          v28 = @"LPGM candidacy request is too frequent.";
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870207 userInfo:v22];
        }

        else
        {
          v29 = *MEMORY[0x277CCA068];
          v30 = @"Unable to query LPGM info.";
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v14];
        }

        v11 = 0;
        goto LABEL_8;
      }

      self->previous_lpgm_info.lpgm_timestamp = 0;
      v33 = *MEMORY[0x277CCA068];
      v34 = @"CLPC game mode policy is OFF, ineligible for LPGM candidacy check.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v9];
    }

    else
    {
      v31 = *MEMORY[0x277CCA068];
      v32 = @"Unable to create CLPC Policy client for Game Mode check.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870207 userInfo:v9];
    }
  }

  else
  {
    v35 = *MEMORY[0x277CCA068];
    v36[0] = @"Unsupported option selected.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v9];
  }

  v11 = 0;
  *error = v10;
LABEL_8:

  return v11;
}

- (BOOL)setGameMode:(BOOL)mode options:(unint64_t)options error:(id *)error
{
  if (!mode)
  {
    *&self->previous_lpgm_info.info.id = 0x10000000FLL;
    self->previous_lpgm_info.info.size = 36;
    self->previous_lpgm_info.package_energy_nj = 0;
    self->previous_lpgm_info.lpgm_timestamp = 0;
    self->previous_lpgm_info.lpgm_target = 0.0;
  }

  v6.receiver = self;
  v6.super_class = CLPCPolicyClient;
  return [CLPCUserClient setGameMode:sel_setGameMode_options_error_ options:? error:?];
}

- (BOOL)setCLPCTrialID:(unint64_t)d error:(id *)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  connect = self->super.clpc.connect;
  input = d;
  v6 = IOConnectCallMethod(connect, 9u, &input, 1u, 0, 0, 0, 0, 0, 0);
  v7 = v6;
  if (error && v6)
  {
    v11 = *MEMORY[0x277CCA068];
    v12[0] = @"Failed to set trial ID.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:v7 userInfo:v8];
  }

  return v7 == 0;
}

- (id).cxx_construct
{
  *(self + 5) = 0x10000000FLL;
  *(self + 6) = 36;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 18) = 0;
  return self;
}

@end
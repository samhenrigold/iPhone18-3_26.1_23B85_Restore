@interface HMDHomeAdministratorRemoteRelay
@end

@implementation HMDHomeAdministratorRemoteRelay

id *__56____HMDHomeAdministratorRemoteRelay___handleXPCMessage___block_invoke(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] dispatchMessage:result[5]];
  }

  return result;
}

void __56____HMDHomeAdministratorRemoteRelay___handleXPCMessage___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [WeakRetained error];
  if (v2)
  {
    v3 = [a1[4] handler];
    v4 = [v3 home];

    if ([v2 code] == 3200 && v4)
    {
      [v4 setHomeUpdatedToROARAndInformClients];
    }

    v5 = [a1[5] responseHandler];

    if (v5)
    {
      v6 = [a1[5] responseHandler];
      (v6)[2](v6, v2, 0);
    }
  }
}

uint64_t __48____HMDHomeAdministratorRemoteRelay_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v20_169728;
  logCategory__hmf_once_v20_169728 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
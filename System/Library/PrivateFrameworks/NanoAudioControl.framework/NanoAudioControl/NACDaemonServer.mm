@interface NACDaemonServer
+ (id)companionServer;
+ (id)gizmoServer;
@end

@implementation NACDaemonServer

+ (id)gizmoServer
{
  if (gizmoServer_onceToken != -1)
  {
    +[NACDaemonServer gizmoServer];
  }

  v3 = gizmoServer_server;

  return v3;
}

uint64_t __30__NACDaemonServer_gizmoServer__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = gizmoServer_server;
  gizmoServer_server = v2;

  v4 = [NACIDSServer alloc];
  v9[0] = @"Ringtone";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(NACIDSServer *)v4 initWithVolumeAudioCategories:v5];
  v7 = *(gizmoServer_server + 8);
  *(gizmoServer_server + 8) = v6;

  [*(gizmoServer_server + 8) beginObservingHapticState];
  return [*(gizmoServer_server + 8) beginObservingSystemMutedState];
}

+ (id)companionServer
{
  if (companionServer_onceToken != -1)
  {
    +[NACDaemonServer companionServer];
  }

  v3 = companionServer_server;

  return v3;
}

void __34__NACDaemonServer_companionServer__block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = companionServer_server;
  companionServer_server = v2;

  v4 = [NACIDSServer alloc];
  v8[0] = @"Audio/Video";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(NACIDSServer *)v4 initWithVolumeAudioCategories:v5];
  v7 = *(companionServer_server + 8);
  *(companionServer_server + 8) = v6;
}

@end
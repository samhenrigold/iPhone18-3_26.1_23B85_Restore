@interface WFAddToPlaylistAction
- (id)disabledOnPlatforms;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFAddToPlaylistAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v25[2] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v5 = [(WFAddToPlaylistAction *)self parameterValueForKey:@"WFPlaylistName" ofClass:objc_opt_class()];
  v6 = WFPlaylistsMatchingDescriptor(v5);
  firstObject = [v6 firstObject];
  if (firstObject || ([v5 entireMusicLibrary] & 1) != 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__WFAddToPlaylistAction_runAsynchronouslyWithInput___block_invoke;
    v21[3] = &unk_278C22028;
    v22 = firstObject;
    selfCopy = self;
    WFAddContentToPlaylist(v22, inputCopy, v21);
    v8 = v22;
  }

  else
  {
    v8 = WFLocalizedString(@"Playlist Not Found");
    playlistName = [v5 playlistName];
    v10 = [playlistName length];

    v11 = MEMORY[0x277CCACA8];
    if (v10)
    {
      v12 = WFLocalizedString(@"%1$@ failed because the playlist “%2$@” could not be found.");
      localizedName = [(WFAddToPlaylistAction *)self localizedName];
      playlistName2 = [v5 playlistName];
      v15 = [v11 localizedStringWithFormat:v12, localizedName, playlistName2];
    }

    else
    {
      v12 = WFLocalizedString(@"%1$@ failed because no playlist was specified. Please choose a playlist.");
      localizedName = [(WFAddToPlaylistAction *)self localizedName];
      v15 = [v11 localizedStringWithFormat:v12, localizedName];
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D7CB30];
    v18 = *MEMORY[0x277CCA450];
    v24[0] = *MEMORY[0x277CCA470];
    v24[1] = v18;
    v25[0] = v8;
    v25[1] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v20 = [v16 errorWithDomain:v17 code:5 userInfo:v19];

    [(WFAddToPlaylistAction *)self finishRunningWithError:v20];
  }
}

void __52__WFAddToPlaylistAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(a1 + 32) items];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [*(a1 + 40) output];
        [v11 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) finishRunningWithError:v4];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFAddToPlaylistAction;
  disabledOnPlatforms = [(WFAddToPlaylistAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end
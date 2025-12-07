@interface AudioPlaylistStore
- (void)audioPlaylistDidChange:(id)change;
@end

@implementation AudioPlaylistStore

- (void)audioPlaylistDidChange:(id)change
{
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v3 = sub_219BF6F74();
  v4 = sub_219BF6214();
  sub_219BE5314("AudioPlaylistStore: Playlist did change", 39, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);

  sub_219BE3494();
}

@end
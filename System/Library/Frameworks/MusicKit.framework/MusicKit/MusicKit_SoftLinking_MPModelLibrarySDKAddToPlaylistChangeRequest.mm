@interface MusicKit_SoftLinking_MPModelLibrarySDKAddToPlaylistChangeRequest
+ (void)addProductID:(id)d playlist:(id)playlist isCloudID:(BOOL)iD completionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibrarySDKAddToPlaylistChangeRequest

+ (void)addProductID:(id)d playlist:(id)playlist isCloudID:(BOOL)iD completionHandler:(id)handler
{
  iDCopy = iD;
  dCopy = d;
  playlistCopy = playlist;
  handlerCopy = handler;
  _underlyingModelObject = [playlistCopy _underlyingModelObject];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v13 = getMPModelLibrarySDKAddToPlaylistChangeRequestClass_softClass;
  v22 = getMPModelLibrarySDKAddToPlaylistChangeRequestClass_softClass;
  if (!getMPModelLibrarySDKAddToPlaylistChangeRequestClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getMPModelLibrarySDKAddToPlaylistChangeRequestClass_block_invoke;
    v18[3] = &unk_278229610;
    v18[4] = &v19;
    __getMPModelLibrarySDKAddToPlaylistChangeRequestClass_block_invoke(v18);
    v13 = v20[3];
  }

  v14 = v13;
  _Block_object_dispose(&v19, 8);
  v15 = [[v13 alloc] initWithProductID:dCopy isCloudID:iDCopy playlist:_underlyingModelObject completionHandler:handlerCopy];
  v16 = [v15 newOperationWithResponseHandler:handlerCopy];
  v17 = +[MusicKit_SoftLinking_MPMediaLibrary deviceLibrary];
  [v17 performOperation:v16];
}

@end
@interface GEOPictureItem
@end

@implementation GEOPictureItem

void __75__GEOPictureItem_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a5)
  {
    v10 = *(*(a1 + 32) + 16);

    v10();
  }

  else
  {
    v8 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__GEOPictureItem_MUPlaceTileViewModel__fetchImageTilewWithSize_completion___block_invoke_2;
    v11[3] = &unk_1E821A030;
    v9 = *(a1 + 32);
    v12 = 0;
    v13 = v9;
    v14 = a3;
    [MapsUIUtilities resizeImageIfNeeded:a2 toFrameSize:v11 displayScale:*(a1 + 40) completion:*(a1 + 48), v8];
  }
}

@end
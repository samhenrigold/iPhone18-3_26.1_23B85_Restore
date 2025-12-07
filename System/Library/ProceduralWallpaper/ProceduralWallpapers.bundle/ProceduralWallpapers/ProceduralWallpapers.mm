id optionVariant(void *a1, void *a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"bokehVariant";
  v8[1] = @"kSBUIMagicWallpaperThumbnailNameKey";
  v9[0] = a1;
  v9[1] = a2;
  v8[2] = @"thumbnailImageName";
  v9[2] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}
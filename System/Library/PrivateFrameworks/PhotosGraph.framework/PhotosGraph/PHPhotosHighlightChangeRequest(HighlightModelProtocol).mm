@interface PHPhotosHighlightChangeRequest(HighlightModelProtocol)
- (uint64_t)clearCurations;
- (void)enumerateMomentChangeRequestsForUUIDs:()HighlightModelProtocol inPhotoLibrary:usingBlock:;
@end

@implementation PHPhotosHighlightChangeRequest(HighlightModelProtocol)

- (void)enumerateMomentChangeRequestsForUUIDs:()HighlightModelProtocol inPhotoLibrary:usingBlock:
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  librarySpecificFetchOptions = [a4 librarySpecificFetchOptions];
  v19 = v7;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v7];
  [librarySpecificFetchOptions setPredicate:v10];

  [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      v17 = [MEMORY[0x277CD9900] changeRequestForMoment:v16];
      v20 = 0;
      uuid = [v16 uuid];
      v8[2](v8, v17, uuid, &v20);

      LOBYTE(uuid) = v20;
      if (uuid)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (uint64_t)clearCurations
{
  [self clearCurationWithType:1];

  return [self clearCurationWithType:2];
}

@end
@interface CESRSpeechItemRanker_Media
- (BOOL)addSet:(id)set;
- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block;
- (CESRSpeechItemRanker_Media)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group playableLimit:(unint64_t)limit artistLimit:(unint64_t)artistLimit;
@end

@implementation CESRSpeechItemRanker_Media

- (BOOL)enumerateRankedItemsWithError:(id *)error usingBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__454;
  v33 = __Block_byref_object_dispose__455;
  v34 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:self->_playableLimit];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__CESRSpeechItemRanker_Media_enumerateRankedItemsWithError_usingBlock___block_invoke;
  v24[3] = &unk_27857F3C0;
  v26 = &v39;
  v27 = &v35;
  v24[4] = self;
  v7 = blockCopy;
  v25 = v7;
  v28 = &v29;
  v23.receiver = self;
  v23.super_class = CESRSpeechItemRanker_Media;
  v8 = [(CESRSpeechItemRanker *)&v23 enumerateRankedRepresentativeItemsWithError:error usingBlock:v24];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v30[5];
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v19 objects:v51 count:16];
  if (v11)
  {
    v12 = *v20;
LABEL_3:
    v13 = 0;
    v18 = v10 + v11;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (v10 + v40[3] >= self->_playableLimit)
      {
        break;
      }

      ++v10;
      v8 &= (*(v7 + 2))(v7, *(*(&v19 + 1) + 8 * v13++), 0, 0, 0);
      if (v11 == v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v51 count:16];
        v10 = v18;
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v16 = v40[3];
    v17 = v36[3];
    *buf = 136315906;
    v44 = "[CESRSpeechItemRanker_Media enumerateRankedItemsWithError:usingBlock:]";
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v10;
    v49 = 2048;
    v50 = v17;
    _os_log_debug_impl(&dword_225EEB000, v14, OS_LOG_TYPE_DEBUG, "%s Returning %lu playlists, %lu other playables, and %lu artists.", buf, 0x2Au);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v8 & 1;
}

- (BOOL)addSet:(id)set
{
  setCopy = set;
  if ([setCopy itemType] == 18540)
  {
    v7.receiver = self;
    v7.super_class = CESRSpeechItemRanker_Media;
    v5 = [(CESRSpeechItemRanker *)&v7 addSet:setCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CESRSpeechItemRanker_Media)initWithInstance:(id)instance speechProfileSite:(id)site categoryGroup:(id)group playableLimit:(unint64_t)limit artistLimit:(unint64_t)artistLimit
{
  v10.receiver = self;
  v10.super_class = CESRSpeechItemRanker_Media;
  result = [(CESRSpeechItemRanker *)&v10 initWithInstance:instance speechProfileSite:site categoryGroup:group];
  if (result)
  {
    result->_playableLimit = limit;
    result->_artistLimit = artistLimit;
  }

  return result;
}

@end
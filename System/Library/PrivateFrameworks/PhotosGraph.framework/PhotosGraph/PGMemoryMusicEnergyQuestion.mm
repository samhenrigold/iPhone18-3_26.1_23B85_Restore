@interface PGMemoryMusicEnergyQuestion
- (PGMemoryMusicEnergyQuestion)initWithMemory:(id)memory song:(id)song localFactoryScore:(double)score;
@end

@implementation PGMemoryMusicEnergyQuestion

- (PGMemoryMusicEnergyQuestion)initWithMemory:(id)memory song:(id)song localFactoryScore:(double)score
{
  v29[5] = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  songCopy = song;
  v27.receiver = self;
  v27.super_class = PGMemoryMusicEnergyQuestion;
  v10 = [(PGMemoryMusicEnergyQuestion *)&v27 init];
  if (v10)
  {
    uuid = [memoryCopy uuid];
    entityIdentifier = v10->_entityIdentifier;
    v10->_entityIdentifier = uuid;

    v10->_state = 0;
    v10->_localFactoryScore = score;
    v28[0] = *MEMORY[0x277D3C950];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(memoryCopy, "category")}];
    v29[0] = v13;
    v28[1] = *MEMORY[0x277D3C958];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(memoryCopy, "subcategory")}];
    v29[1] = v14;
    v28[2] = *MEMORY[0x277D3C970];
    playbackStoreID = [songCopy playbackStoreID];
    v16 = playbackStoreID;
    if (playbackStoreID)
    {
      v17 = playbackStoreID;
    }

    else
    {
      v17 = @"Unknown";
    }

    v29[2] = v17;
    v28[3] = *MEMORY[0x277D3C978];
    title = [songCopy title];
    v19 = title;
    if (title)
    {
      v20 = title;
    }

    else
    {
      v20 = @"Unknown";
    }

    v29[3] = v20;
    v28[4] = *MEMORY[0x277D3C960];
    artist = [songCopy artist];
    v22 = artist;
    if (artist)
    {
      v23 = artist;
    }

    else
    {
      v23 = @"Unknown";
    }

    v29[4] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v24;
  }

  return v10;
}

@end
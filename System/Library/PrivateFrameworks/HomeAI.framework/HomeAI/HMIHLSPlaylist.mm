@interface HMIHLSPlaylist
- (HMIHLSPlaylist)initWithPlaylistString:(id)string;
- (HMIHLSPlaylist)initWithTargetDuration:(double)duration;
- (NSString)playlistString;
- (void)appendEncryptionModeWithPath:(id)path;
- (void)appendInitializationSegmentWithPath:(id)path;
- (void)appendSeparableSegmentWithPath:(id)path duration:(double)duration byteRange:(_NSRange)range;
@end

@implementation HMIHLSPlaylist

- (HMIHLSPlaylist)initWithPlaylistString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = HMIHLSPlaylist;
  v5 = [(HMIHLSPlaylist *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy componentsSeparatedByString:?];
    v7 = [v6 mutableCopy];
    lines = v5->_lines;
    v5->_lines = v7;
  }

  return v5;
}

- (HMIHLSPlaylist)initWithTargetDuration:(double)duration
{
  v10.receiver = self;
  v10.super_class = HMIHLSPlaylist;
  v4 = [(HMIHLSPlaylist *)&v10 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    lines = v4->_lines;
    v4->_lines = array;

    [(NSMutableArray *)v4->_lines addObject:?];
    [(NSMutableArray *)v4->_lines addObject:?];
    v7 = v4->_lines;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:*&duration];
    [(NSMutableArray *)v7 addObject:?];

    [(NSMutableArray *)v4->_lines addObject:?];
    [(NSMutableArray *)v4->_lines addObject:?];
  }

  return v4;
}

- (NSString)playlistString
{
  lines = [(HMIHLSPlaylist *)self lines];
  v3 = [lines componentsJoinedByString:?];

  return v3;
}

- (void)appendEncryptionModeWithPath:(id)path
{
  lines = self->_lines;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:path];
  [(NSMutableArray *)lines addObject:?];
}

- (void)appendInitializationSegmentWithPath:(id)path
{
  lines = self->_lines;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:path];
  [(NSMutableArray *)lines addObject:?];
}

- (void)appendSeparableSegmentWithPath:(id)path duration:(double)duration byteRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  pathCopy = path;
  lines = self->_lines;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:*&duration];
  [(NSMutableArray *)lines addObject:?];

  if (length)
  {
    v11 = self->_lines;
    location = [MEMORY[0x277CCACA8] stringWithFormat:length, location];
    [(NSMutableArray *)v11 addObject:?];
  }

  v13 = self->_lines;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:pathCopy];
  [(NSMutableArray *)v13 addObject:?];
}

@end
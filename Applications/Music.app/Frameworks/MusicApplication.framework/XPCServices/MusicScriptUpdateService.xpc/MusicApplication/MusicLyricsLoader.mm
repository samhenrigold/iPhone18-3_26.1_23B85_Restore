@interface MusicLyricsLoader
+ (BOOL)supportsLyricsFor:(id)for;
- (MusicLyricsLoader)init;
@end

@implementation MusicLyricsLoader

+ (BOOL)supportsLyricsFor:(id)for
{
  forCopy = for;
  v5 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(forCopy, v4);

  return v5 & 1;
}

- (MusicLyricsLoader)init
{
  v3 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v4 = [objc_allocWithZone(NSOperationQueue) init];
  v5 = [v4 setMaxConcurrentOperationCount:1];
  *(&self->super.isa + v3) = v4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LyricsLoader(v5, v6);
  return [(MusicLyricsLoader *)&v8 init];
}

@end
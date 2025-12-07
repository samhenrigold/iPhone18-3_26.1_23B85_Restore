@interface NSObject(SFUJsonAdditions)
- (uint64_t)appendJsonStringToString:()SFUJsonAdditions;
@end

@implementation NSObject(SFUJsonAdditions)

- (uint64_t)appendJsonStringToString:()SFUJsonAdditions
{
  v1 = +[TSUAssertionHandler currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSObject(SFUJsonAdditions) appendJsonStringToString:]"];
  return [v1 handleFailureInFunction:v2 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUJson.m"), 472, @"%@ doesn't support JSON encoding", objc_opt_class()}];
}

@end
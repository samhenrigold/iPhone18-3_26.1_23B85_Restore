@interface NSMutableData(KAESGCM)
- (uint64_t)replaceTrailingWith7LSB:()KAESGCM;
@end

@implementation NSMutableData(KAESGCM)

- (uint64_t)replaceTrailingWith7LSB:()KAESGCM
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = bswap64(a3);
  return [self replaceBytesInRange:objc_msgSend(self withBytes:{"length", v4, v5) - 7, 7, &v4 + 1}];
}

@end
@interface NSURL
@end

@implementation NSURL

uint64_t __41__NSURL_GKAdditions___gkIsValidServerURL__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"http", @"https", 0}];
  v1 = _gkIsValidServerURL_sValidSchemes;
  _gkIsValidServerURL_sValidSchemes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
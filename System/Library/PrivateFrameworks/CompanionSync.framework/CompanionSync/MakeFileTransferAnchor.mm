@interface MakeFileTransferAnchor
@end

@implementation MakeFileTransferAnchor

void ___MakeFileTransferAnchor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = _MakeFileTransferAnchor___formatter;
  _MakeFileTransferAnchor___formatter = v2;

  [_MakeFileTransferAnchor___formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_MakeFileTransferAnchor___formatter setTimeZone:v4];
}

@end
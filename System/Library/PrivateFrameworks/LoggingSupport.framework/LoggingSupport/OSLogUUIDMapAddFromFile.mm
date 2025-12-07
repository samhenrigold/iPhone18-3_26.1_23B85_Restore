@interface OSLogUUIDMapAddFromFile
@end

@implementation OSLogUUIDMapAddFromFile

uint64_t ___OSLogUUIDMapAddFromFile_block_invoke(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 24587)
  {
    return 1;
  }

  v3 = _catalog_create_with_chunk(a2, 0);
  if (v3)
  {
    v4 = v3;
    _OSLogUUIDMapAddFromCatalog(v3, *(a1 + 48));
    _catalog_destroy(v4);
    return 1;
  }

  else
  {
    _OSLogWarningMessage(*(a1 + 32), "failed to open catalog chunk");
    result = 0;
    *(*(*(a1 + 40) + 8) + 24) = 22;
  }

  return result;
}

@end
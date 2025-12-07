@interface HKZipArchiveEntry
@end

@implementation HKZipArchiveEntry

id __67___HKZipArchiveEntry__enumerateLinesInCurrentEntryWithError_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  data = archive_read_data();
  if (data < 0)
  {
    [objc_opt_class() _assignReadError:a2 archive:*(a1 + 40)];
    v5 = 0;
  }

  else if (data)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:?];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEF0] data];
  }

  return v5;
}

@end
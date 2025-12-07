@interface NSFileManager
@end

@implementation NSFileManager

uint64_t __63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 removeItemAtURL:v3 error:0];
}

id *__63__NSFileManager_PosterFoundation__pf_replaceURL_withURL_error___block_invoke_2(id *result)
{
  v1 = result;
  if (*(*(result[8] + 1) + 24) == 1)
  {
    result = [result[4] moveItemAtURL:result[5] toURL:result[6] error:0];
  }

  if (*(*(v1[9] + 1) + 24) == 1)
  {
    result = [v1[4] moveItemAtURL:v1[7] toURL:v1[5] error:0];
  }

  if (*(*(v1[10] + 1) + 24) == 1)
  {
    v2 = v1[4];
    v3 = v1[6];

    return [v2 removeItemAtURL:v3 error:0];
  }

  return result;
}

@end
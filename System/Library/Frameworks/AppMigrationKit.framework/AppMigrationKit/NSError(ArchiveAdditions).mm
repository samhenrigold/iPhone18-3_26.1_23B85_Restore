@interface NSError(ArchiveAdditions)
+ (id)amk_errorFromArchive:()ArchiveAdditions;
+ (uint64_t)amk_errorFromErrno;
@end

@implementation NSError(ArchiveAdditions)

+ (uint64_t)amk_errorFromErrno
{
  v0 = MEMORY[0x29EDB9FA0];
  v1 = *__error();

  return [v0 amk_errorFromPosixCode:v1];
}

+ (id)amk_errorFromArchive:()ArchiveAdditions
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = archive_error_string();
  if (v3)
  {
    v11 = *MEMORY[0x29EDB9E38];
    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v3];
    v12[0] = v4;
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = archive_errno();
  if (v6)
  {
    v7 = *MEMORY[0x29EDB9EF8];
    v8 = v6;
  }

  else
  {
    v7 = *MEMORY[0x29EDB9E30];
    v8 = 256;
  }

  v9 = [MEMORY[0x29EDB9FA0] errorWithDomain:v7 code:v8 userInfo:v5];

  return v9;
}

@end
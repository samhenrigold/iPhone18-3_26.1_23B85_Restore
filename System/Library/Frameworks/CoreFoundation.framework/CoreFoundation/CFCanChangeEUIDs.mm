@interface CFCanChangeEUIDs
@end

@implementation CFCanChangeEUIDs

uint64_t ___CFCanChangeEUIDs_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = geteuid();
  v1 = getuid();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  *v7 = 0xE00000001;
  v8 = 1;
  v9 = getpid();
  v6 = 648;
  result = sysctl(v7, 4u, v10, &v6, 0, 0);
  v3 = result != 0;
  v4 = HIDWORD(v11);
  if (result)
  {
    v4 = -1;
  }

  if (v4 != v0)
  {
    v3 = 1;
  }

  if (v1)
  {
    v5 = v1 == v0;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v3 = 1;
  }

  _CFCanChangeEUIDs_canChangeEUIDs = v3;
  return result;
}

@end
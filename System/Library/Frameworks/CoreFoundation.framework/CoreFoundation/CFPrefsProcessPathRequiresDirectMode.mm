@interface CFPrefsProcessPathRequiresDirectMode
@end

@implementation CFPrefsProcessPathRequiresDirectMode

void ___CFPrefsProcessPathRequiresDirectMode_block_invoke()
{
  v0 = _CFProcessPath();
  if (!v0 || (_CFPrefsProcessPathRequiresDirectMode_onBlacklist & 1) != 0)
  {
    if ((_CFPrefsProcessPathRequiresDirectMode_onBlacklist & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v2 = v0;
  v3 = 0;
  do
  {
    v4 = strlen(off_1E6DD20D8[v3]);
    v0 = strncmp(off_1E6DD20D8[v3], v2, v4);
    if (v0)
    {
      v5 = v3 >= 9;
    }

    else
    {
      v5 = 1;
    }

    ++v3;
  }

  while (!v5);
  _CFPrefsProcessPathRequiresDirectMode_onBlacklist = v0 == 0;
  if (!v0)
  {
LABEL_12:
    v6 = _CFPrefsClientLog(v0, v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ___CFPrefsProcessPathRequiresDirectMode_block_invoke_cold_1(v6);
    }
  }
}

void ___CFPrefsProcessPathRequiresDirectMode_block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "NSUserDefaults/CFPreferences is doing direct file access for this process", v1, 2u);
}

@end
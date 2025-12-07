void sub_29C8A24D4(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_29C8A1000, v5, OS_LOG_TYPE_DEFAULT, "Updated keychain sync with success: %{BOOL}d, error: %{public}@", v6, 0x12u);
  }
}

void sub_29C8A2620(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = 141558274;
  v3 = 1752392040;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_29C8A1000, a2, OS_LOG_TYPE_DEBUG, "No dataclass changes for %{mask.hash}@, skipping update.", &v2, 0x16u);
}
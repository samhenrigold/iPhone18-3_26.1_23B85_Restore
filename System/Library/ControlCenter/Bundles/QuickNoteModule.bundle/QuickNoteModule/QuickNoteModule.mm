void sub_29C9E6040(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "QuickNote");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_29C9E6394(a1, v2);
  }

  v6 = objc_msgSend_defaultWorkspace(MEMORY[0x29EDB9400], v3, v4, v5);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = (a1 + 32);
  v13 = objc_msgSend_openSensitiveURL_withOptions_(v6, v10, v11, v12, v7, v8);

  if ((v13 & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_29C9E641C(v9, v14);
    }
  }
}

void sub_29C9E6394(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_29C9E5000, a2, OS_LOG_TYPE_DEBUG, "Launching with URL %@ and options %@", &v4, 0x16u);
}

void sub_29C9E641C(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_29C9E5000, a2, OS_LOG_TYPE_DEBUG, "Failed to launch to URL %@", &v3, 0xCu);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
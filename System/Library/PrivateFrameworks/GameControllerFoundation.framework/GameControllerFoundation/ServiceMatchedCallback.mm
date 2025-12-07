@interface ServiceMatchedCallback
@end

@implementation ServiceMatchedCallback

void ____ServiceMatchedCallback_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = **(v2 + 80);
  }

  else
  {
    v3 = MEMORY[0x1E696CD28];
  }

  v4 = (a1 + 40);
  v5 = v3(*(a1 + 40));
  v6 = _gc_log_hid(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 134217984;
    v10 = [v5 unsignedLongLongValue];
    _os_log_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_INFO, "HID Service Matched: serviceID='%#010llx'", &v9, 0xCu);
  }

  v7 = [*(*v1 + 8) gc_member:v5];
  if (v7)
  {
    v8 = _gc_log_hid(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      ____ServiceMatchedCallback_block_invoke_cold_1(v5);
    }

    CFRelease(*v4);
  }

  else
  {
    ____ServiceMatchedCallback_block_invoke_cold_2(v4, v1);
  }
}

void ____ServiceMatchedCallback_block_invoke_cold_1(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 unsignedLongLongValue];
  OUTLINED_FUNCTION_3_0(&dword_1D2C3B000, v1, v2, "#NOTE Duplicate HID Service Matched: serviceID='%#010llx'", v3, v4, v5, v6, v7, DWORD2(v7));
}

void ____ServiceMatchedCallback_block_invoke_cold_2(CFTypeRef *a1, void **a2)
{
  v4 = [GCHIDServiceInfo alloc];
  v5 = *a1;
  v6 = *a2;
  if (*a2)
  {
    v7 = OUTLINED_FUNCTION_6(*a2, sel__servicesQueue);
    if (!v7)
    {
      v7 = v6[2];
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*a2 + 1);
  if (v8)
  {
    v9 = *(v8 + 80);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(GCHIDServiceInfo *)v4 initWithService:v5 queue:v7 functions:v9];
  CFRelease(*a1);
  OUTLINED_FUNCTION_1_2();
  v11();
  v12 = [*(*a2 + 8) mutableCopy];
  [v12 addObject:v10];
  v13 = [v12 copy];

  v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v10, 0}];
  [GCHIDEventSystemClient _onqueue_services:? added:? removed:?];
}

@end
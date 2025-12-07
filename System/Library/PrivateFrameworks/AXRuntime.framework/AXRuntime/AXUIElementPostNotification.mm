@interface AXUIElementPostNotification
@end

@implementation AXUIElementPostNotification

void ___AXUIElementPostNotification_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *buffer = 0u;
  v8 = 0u;
  v4 = *(*(*(v3 + 32) + 8) + 24);
  if (v4)
  {
    v40.length = *(v3 + 72);
    v40.location = 0;
    CFDataGetBytes(v4, v40, buffer);
  }

  _AXMIGPostNotification(*(*(v3 + 40) + 16), *(v3 + 76), *(v3 + 48), *(v3 + 56), *(v3 + 80), buffer, *(v3 + 72), *(v3 + 64), *(v3 + 84), *(*(v3 + 40) + 24));
  v5 = *(v3 + 84);
  if (v5)
  {
    munmap(*(v3 + 64), v5);
  }

  CFRelease(*(v3 + 40));
  v6 = *(*(*(v3 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(v3 + 32) + 8) + 24) = 0;
  }
}

void ___AXUIElementPostNotification_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("post-ax-notify", v2);
  v1 = _AXUIElementPostNotification_DifferentQueue;
  _AXUIElementPostNotification_DifferentQueue = v0;
}

@end
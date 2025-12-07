@interface CallObjectPurgedCallback
@end

@implementation CallObjectPurgedCallback

void __figXPCConnection_CallObjectPurgedCallback_block_invoke(uint64_t a1)
{
  array = xpc_dictionary_get_array(*(a1 + 32), ".ObjectIDs");
  int64 = xpc_dictionary_get_int64(*(a1 + 32), ".PurgeIdentifier");
  if (array)
  {
    v4 = int64;
    if (xpc_array_get_count(array))
    {
      v5 = 0;
      do
      {
        uint64 = xpc_array_get_uint64(array, v5);
        v13 = FigCFWeakReferenceTableCopyValue(*(*(*(a1 + 40) + 16) + 112), uint64, v7, v8, v9, v10, v11, v12);
        if (v13)
        {
          v14 = v13;
          (*(*(*(a1 + 40) + 16) + 72))(v13, v4);
          CFRelease(v14);
        }

        ++v5;
      }

      while (v5 < xpc_array_get_count(array));
    }
  }

  FigXPCRelease(*(a1 + 32));
  v15 = *(a1 + 40);
  if (v15)
  {

    CFRelease(v15);
  }
}

@end
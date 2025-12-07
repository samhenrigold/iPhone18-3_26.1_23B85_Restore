@interface OSLogUUIDMapCopySet
@end

@implementation OSLogUUIDMapCopySet

void ___OSLogUUIDMapCopySet_block_invoke(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v5 = *(a1 + 64);
    v6 = *(*(a1 + 56) + 8);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (a3 == 3)
    {
      v9 = v7;
      v10 = v8;
      if (uuid_is_null(a2) || !_OSLogUUIDMapCopyUUID(v5, a2, 3, (v6 + 24), v9, v10))
      {
        v11 = 0;
      }

      else
      {
        v11 = _OSLogUUIDMapCopyUUID(v5, a2, 1, (v6 + 24), v9, v10);
        if (!v11)
        {
          v21 = 0;
          v13 = uuidpath_map_header_fd(v5, a2, &v21);
          if (v13)
          {
            v14 = v13;
            if ((v13[2] & 2) != 0)
            {
              if (v13[3])
              {
                v18 = 0;
                v11 = 0;
                v19 = (v13 + 6);
                do
                {
                  v20 = _OSLogUUIDMapCopyUUID(v5, v19, 1, (v6 + 24), v9, v10);
                  if (!v11)
                  {
                    v11 = v20;
                  }

                  ++v18;
                  v19 += 32;
                }

                while (v18 < v14[3]);
              }

              else
              {
                v11 = 0;
              }

              if (munmap(v14, v21) == -1)
              {
                __error();
                _os_assumes_log();
              }
            }

            else
            {
              memset(out, 0, 37);
              uuid_unparse_lower(a2, out);
              _OSLogWarningMessage(v10, "dsc header not shared cache: %s", out);
              if (munmap(v14, v21) == -1)
              {
                __error();
                _os_assumes_log();
              }

              v11 = 22;
            }
          }

          else
          {
            memset(out, 0, 37);
            uuid_unparse_lower(a2, out);
            v15 = __error();
            v16 = strerror(*v15);
            v17 = __error();
            _OSLogWarningMessage(v10, "failed to map dsc: %s: %s (%d)", out, v16, *v17);
            v11 = *__error();
          }
        }
      }
    }

    else
    {
      v11 = _OSLogUUIDMapCopyUUID(*(a1 + 64), a2, a3, (v6 + 24), v7, v8);
    }

    *(*(*(a1 + 48) + 8) + 24) = v11;
    v12 = *(*(a1 + 48) + 8);
    if (*(v12 + 24) == 2)
    {
      *(v12 + 24) = 0;
    }
  }
}

@end
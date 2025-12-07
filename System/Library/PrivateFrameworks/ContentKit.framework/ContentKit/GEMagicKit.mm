@interface GEMagicKit
+ (id)magicForFileAtURL:(id)l decompress:(BOOL)decompress;
+ (id)magicForObject:(id)object decompress:(BOOL)decompress;
+ (id)rawMagicOutputForObject:(id)object cookie:(magic_set *)cookie flags:(int)flags;
+ (id)typeHierarchyForType:(id)type;
+ (magic_set)sharedMagicCookie;
@end

@implementation GEMagicKit

+ (id)magicForFileAtURL:(id)l decompress:(BOOL)decompress
{
  decompressCopy = decompress;
  if (![l isFileURL])
  {
    return 0;
  }

  path = [l path];

  return [GEMagicKit magicForFileAtPath:path decompress:decompressCopy];
}

+ (id)typeHierarchyForType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(__CFDictionary *)UTTypeCopyDeclaration(type) objectForKey:*MEMORY[0x277CC2040]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [v4 addObjectsFromArray:{+[GEMagicKit typeHierarchyForType:](GEMagicKit, "typeHierarchyForType:", *(*(&v11 + 1) + 8 * i))}];
        }

        v6 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return v4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = MEMORY[0x277CBEA60];

  return [v9 arrayWithObject:v3];
}

+ (id)rawMagicOutputForObject:(id)object cookie:(magic_set *)cookie flags:(int)flags
{
  if (cookie)
  {
    *(cookie + 17) = flags;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [object bytes];
    v8 = [object length];
    if (!cookie)
    {
      return 0;
    }

    v9 = v8;
    if (file_reset(cookie, 1) == -1 || file_buffer(cookie, -1, 0, bytes, v9) == -1)
    {
      return 0;
    }

    v10 = file_getbuffer(cookie);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"MagicKit" format:{@"Invalid object (expected data or path string): %@", object}];
      return 0;
    }

    v10 = magic_file(cookie, [object fileSystemRepresentation]);
  }

  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  v12 = MEMORY[0x277CCACA8];

  return [v12 stringWithUTF8String:v11];
}

+ (id)magicForObject:(id)object decompress:(BOOL)decompress
{
  if (decompress)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = +[GEMagicKit sharedMagicCookie];
  v8 = [self rawMagicOutputForObject:object cookie:v7 flags:v6];
  0x410 = [self rawMagicOutputForObject:object cookie:v7 flags:v6 | 0x410];
  if (v8)
  {
    v10 = 0x410 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v11 = 0x410;
  v12 = [objc_msgSend(0x410 componentsSeparatedByString:{@";", "objectAtIndex:", 0}];
  v13 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], v12, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = -[GEMagicResult initWithMimeType:description:typeHierarchy:]([GEMagicResult alloc], "initWithMimeType:description:typeHierarchy:", v11, v8, [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObject:{v13), "arrayByAddingObjectsFromArray:", +[GEMagicKit typeHierarchyForType:](GEMagicKit, "typeHierarchyForType:", v13)}]);

  return v14;
}

+ (magic_set)sharedMagicCookie
{
  v156 = *MEMORY[0x277D85DE8];
  v2 = &unk_27CEC2000;
  if (sharedMagicCookie_sharedCookie)
  {
    return *(v2 + 154);
  }

  v3 = malloc_type_calloc(1uLL, 0x120uLL, 0x10700403DB5B4F0uLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 17) = 0;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
    v3[2] = 10;
    v5 = malloc_type_malloc(0xA0uLL, 0x1000040451B5BE8uLL);
    v4[3] = v5;
    if (v5)
    {
      *(v4 + 18) = 0;
      *(v4 + 16) = -1;
      *v4 = 0;
      v4[1] = 0;
      v4[10] = "unknown";
      v4[11] = 0;
      v4[33] = 0x800800000320032;
      *(v4 + 68) = 536871168;
      v4[35] = 0x100000;
    }

    else
    {
      free(v4);
      v4 = 0;
    }
  }

  sharedMagicCookie_sharedCookie = v4;
  v6 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"magic", @"mgc", "fileSystemRepresentation"}];
  v7 = sharedMagicCookie_sharedCookie;
  if (!sharedMagicCookie_sharedCookie)
  {
LABEL_243:
    v141 = MEMORY[0x277CBEAD8];
    v142 = __error();
    [v141 raise:@"MagicKit" format:{@"There was an error opening the magic database: %s", strerror(*v142)}];
    return *(v2 + 154);
  }

  v8 = v6;
  file_reset(sharedMagicCookie_sharedCookie, 0);
  if (v8)
  {
    goto LABEL_24;
  }

  v8 = getenv("MAGIC");
  if (v8)
  {
    goto LABEL_24;
  }

  if (get_default_magic_default_magic)
  {
    free(get_default_magic_default_magic);
    get_default_magic_default_magic = 0;
  }

  v9 = getenv("HOME");
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v154[0] = 0;
  memset(&v151, 0, sizeof(v151));
  if (asprintf(v154, "%s/.magic.mgc", v9) < 0)
  {
    goto LABEL_23;
  }

  v11 = v154[0];
  if (stat(v154[0], &v151) != -1)
  {
    goto LABEL_14;
  }

  free(v11);
  if ((asprintf(v154, "%s/.magic", v10) & 0x80000000) == 0)
  {
    v11 = v154[0];
    if (stat(v154[0], &v151) == -1)
    {
LABEL_22:
      get_default_magic_default_magic = 0;
      free(v11);
      goto LABEL_23;
    }

    if ((v151.st_mode & 0xF000) != 0x4000)
    {
LABEL_14:
      if ((asprintf(&get_default_magic_default_magic, "%s:%s", v11, "/etc/magic") & 0x80000000) == 0)
      {
        free(v11);
        v8 = get_default_magic_default_magic;
        if (!get_default_magic_default_magic)
        {
          goto LABEL_243;
        }

        goto LABEL_24;
      }

      goto LABEL_22;
    }

    free(v11);
    if ((asprintf(v154, "%s/%s", v10, "/.magic/magic.mgc") & 0x80000000) == 0)
    {
      v11 = v154[0];
      if (access(v154[0], 4) == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

LABEL_23:
  v8 = "/etc/magic";
LABEL_24:
  if ((init_file_tables_done & 1) == 0)
  {
    init_file_tables_done = 1;
    v12 = "invalid";
    do
    {
      v13 = *(v12 + 6);
      if (v13 >= 51)
      {
        __assert_rtn("init_file_tables", "apprentice.c", 407, "p->type < FILE_NAMES_SIZE");
      }

      file_names[v13] = v12;
      file_formats[v13] = *(v12 + 7);
      v14 = v12 + 32;
      v15 = *(v12 + 6);
      v12 += 32;
    }

    while (v15);
    if (v14 - "invalid" != 1632)
    {
      __assert_rtn("init_file_tables", "apprentice.c", 411, "p - type_tbl == FILE_NAMES_SIZE");
    }
  }

  v16 = strdup(v8);
  if (!v16)
  {
    strlen(v8);
    v139 = *__error();
    file_error(v7, v139, "cannot allocate %zu bytes");
    goto LABEL_243;
  }

  __s = v16;
  v17 = 0;
  v18 = 1;
  do
  {
    v19 = v18;
    mlist_free(v7[v17]);
    v20 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00403F8C4432uLL);
    if (!v20)
    {
      v7[v17] = 0;
      v140 = __error();
      file_error(v7, *v140, "cannot allocate %zu bytes", 0x28uLL);
      if ((v19 & 1) == 0)
      {
        mlist_free(*v7);
        *v7 = 0;
      }

      free(__s);
      goto LABEL_243;
    }

    v18 = 0;
    v20[3] = v20;
    v20[4] = v20;
    v7[v17] = v20;
    v17 = 1;
  }

  while ((v19 & 1) != 0);
  v21 = -1;
  v22 = __s;
  do
  {
    v146 = v21;
    v23 = v22;
    v24 = strchr(v22, 58);
    if (v24)
    {
      *v24++ = 0;
    }

    if (!*v23)
    {
      v21 = v146;
      break;
    }

    v145 = v24;
    memset(&v151, 0, sizeof(v151));
    v25 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040EA71619DuLL);
    if (!v25)
    {
      v31 = __error();
      file_error(v7, *v31, "cannot allocate %zu bytes", 0x30uLL);
      v32 = 0;
      v30 = 0;
      goto LABEL_74;
    }

    v149 = v25;
    v25[4] = 0;
    v154[0] = 0;
    v26 = v23 - 1;
      ;
    }

    if (v26 >= v23)
    {
      v33 = "c";
      while (1)
      {
        v34 = v33;
        if (v33[1] != *v26)
        {
          break;
        }

        --v26;
        if (v33 >= ".mgc")
        {
          --v33;
          if (v26 >= v23)
          {
            continue;
          }
        }

        if (v34 >= ".mgc")
        {
          break;
        }

        goto LABEL_43;
      }
    }

    --v26;
      ;
    }

LABEL_43:
    v29 = v26 - v23 + 1;
    if ((*(v7 + 34) & 0x410) == 0)
    {
      goto LABEL_55;
    }

    if (asprintf(v154, "%.*s.mime%s", v29, v23, ".mgc") < 0)
    {
      goto LABEL_64;
    }

    v30 = v154[0];
    if (access(v154[0], 4) == -1)
    {
      free(v30);
LABEL_55:
      if (asprintf(v154, "%.*s%s", v29, v23, ".mgc") < 0)
      {
LABEL_64:
        v30 = 0;
        goto LABEL_73;
      }

      if (strstr(v23, ".mime"))
      {
        *(v7 + 17) &= 0x10u;
      }

      v30 = v154[0];
      goto LABEL_59;
    }

    *(v7 + 17) &= 0x10u;
LABEL_59:
    v32 = v149;
    if (v30)
    {
      v35 = open(v30, 0);
      if (v35 != -1)
      {
        v36 = v35;
        if (fstat(v35, &v151) == -1)
        {
          v38 = *__error();
        }

        else
        {
          st_size = v151.st_size;
          if (v151.st_size >= 8)
          {
            *(v149 + 1) = v151.st_size;
            v149[4] = 1;
            v39 = malloc_type_malloc(st_size, 0x83B105FCuLL);
            *v149 = v39;
            if (v39)
            {
              if (read(v36, v39, *(v149 + 1)) == *(v149 + 1))
              {
                close(v36);
                v40 = *v149;
                v41 = **v149;
                if (v41 == -249691108)
                {
                  v42 = v40[1];
                }

                else
                {
                  if (v41 != 470032113)
                  {
                    goto LABEL_73;
                  }

                  v42 = bswap32(v40[1]);
                }

                if (v42 == 16)
                {
                  v118 = *(v149 + 1);
                  if (376 * (v118 / 0x178) != v118)
                  {
                    v32 = v149;
                    goto LABEL_74;
                  }

                  v119 = v40 + 94;
                  v120 = bswap32(v40[2]);
                  if (v41 == -249691108)
                  {
                    v121 = v40[2];
                  }

                  else
                  {
                    v121 = v120;
                  }

                  v149[10] = v121;
                  *(v149 + 3) = v119;
                  v122 = v40[3];
                  v123 = bswap32(v122);
                  if (v41 != -249691108)
                  {
                    v122 = v123;
                  }

                  v149[11] = v122;
                  *(v149 + 4) = &v119[94 * v121];
                  if (v122 + v121 + 1 == (v118 / 0x178))
                  {
                    if (v41 != -249691108)
                    {
                      v124 = 0;
                      v125 = 1;
                      do
                      {
                        v126 = v125;
                        v127 = v149[v124 + 10];
                        if (v127)
                        {
                          v128 = (*&v149[2 * v124 + 6] + 24);
                          do
                          {
                            v128[-2].i16[4] = bswap32(v128[-2].u16[4]) >> 16;
                            *(v128[-1].i64 + 4) = vrev32_s8(*(v128[-1].i64 + 4));
                            v128[-1].i32[3] = bswap32(v128[-1].u32[3]);
                            v129 = v128[-2].u8[14];
                            v105 = v129 > 0x2E;
                            v130 = (1 << v129) & 0x6200001E2020;
                            if (v105 || v130 == 0)
                            {
                              *v128 = vrev64q_s8(*v128);
                            }

                            else
                            {
                              *v128->i8 = vrev32_s8(*v128->i8);
                            }

                            v128 = (v128 + 376);
                            --v127;
                          }

                          while (v127);
                        }

                        v125 = 0;
                        v124 = 1;
                      }

                      while ((v126 & 1) != 0);
                    }

                    free(v30);
                    goto LABEL_221;
                  }
                }

                else
                {
                }

                goto LABEL_73;
              }

              v44 = *__error();
              file_error(v7, v44, "error reading");
            }

            else
            {
              v43 = *__error();
              file_error(v7, v43, "cannot allocate %zu bytes");
            }
          }

          else
          {
          }
        }

        close(v36);
      }

LABEL_73:
      v32 = v149;
    }

LABEL_74:
    apprentice_unmap(v32);
    free(v30);
    v45 = *(v7 + 17);
    if ((v45 & 0x40) != 0)
    {
      v45 = *(v7 + 17);
    }

    v153 = 0;
    *v154 = 0u;
    v155 = 0u;
    *(v7 + 17) = v45 | 0x40;
    v46 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040EA71619DuLL);
    if (!v46)
    {
      v56 = __error();
      file_error(v7, *v56, "cannot allocate %zu bytes", 0x30uLL);
LABEL_190:
      v114 = -1;
LABEL_191:
      v21 = v146;
      goto LABEL_192;
    }

    memset(&v151, 0, sizeof(v151));
    v149 = v46;
    v46[4] = 1;
    v152 = 0;
    if (stat(v23, &v151) || (v151.st_mode & 0xF000) != 0x4000)
    {
      load_1(v7, v23, &v153, v154);
    }

    else
    {
      v47 = opendir(v23);
      if (!v47)
      {
        v49 = 0;
        v153 = 1;
        goto LABEL_181;
      }

      v48 = v47;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      while (1)
      {
        v52 = readdir(v48);
        if (!v52)
        {
          break;
        }

        d_name = v52->d_name;
        if (v52->d_name[0] != 46)
        {
          if (asprintf(&v152, "%s/%s", v23, v52->d_name) < 0)
          {
            v115 = strlen(v23);
            v116 = v115 + strlen(d_name) + 2;
            v117 = __error();
            file_error(v7, *v117, "cannot allocate %zu bytes", v116);
            ++v153;
            closedir(v48);
            goto LABEL_181;
          }

          v54 = v152;
          if (stat(v152, &v151) != -1 && (v151.st_mode & 0xF000) == 0x8000)
          {
            if (v50 >= v51)
            {
              v51 = 2 * v51 + 2;
              v55 = malloc_type_realloc(v49, 8 * v51, 0x10040436913F5uLL);
              if (!v55)
              {
                file_oomem(v7, 8 * v51);
                free(v152);
                closedir(v48);
                ++v153;
                goto LABEL_181;
              }

              v54 = v152;
              v49 = v55;
            }

            *(v49 + v50++) = v54;
          }

          else
          {
            free(v54);
          }
        }
      }

      closedir(v48);
      if (v49)
      {
        qsort(v49, v50, 8uLL, cmpstrp);
        if (v50)
        {
          v103 = 0;
          v104 = 1;
          do
          {
            load_1(v7, *(v49 + v103), &v153, v154);
            free(*(v49 + v103));
            v103 = v104;
            v105 = v50 > v104++;
          }

          while (v105);
        }

        free(v49);
      }
    }

    if (v153)
    {
      v49 = 0;
      goto LABEL_181;
    }

    v150 = 0;
    v147 = v149 + 6;
    v57 = v154;
    v58 = 1;
    while (2)
    {
      v148 = v58;
      v59 = *(v57 + 2);
      if (!v59)
      {
        goto LABEL_147;
      }

      v60 = 0;
      do
      {
        v61 = v60;
        v62 = &(*v57)[16 * v60];
        v63 = *v62;
        if (**v62)
        {
          ++v60;
          continue;
        }

        v64 = v59;
        if (v59 <= v60 + 1)
        {
          ++v60;
        }

        else
        {
          v60 = v59;
        }

        v65 = v62;
        do
        {
          v66 = v63[6];
          if (v66 <= 0x32)
          {
            v67 = *v62;
            if (((1 << v66) & 0x71C7FFFE1DFD6) != 0)
            {
              v68 = v67[2];
              goto LABEL_107;
            }

            if (((1 << v66) & 0xC2020) != 0)
            {
              v68 = v67[2];
              if ((v67[28] & 0x20) != 0)
              {
                v69 = v68 | 0x40;
                goto LABEL_108;
              }

LABEL_107:
              v69 = v68 | 0x20;
LABEL_108:
              v67[2] = v69;
              goto LABEL_109;
            }

            if (((1 << v66) & 0x120000) != 0)
            {
              v79 = *(v67 + 7);
              v80 = v67[2];
              v81 = (v79 >> 1) & 0x20 | (((v79 >> 5) & 1) << 6) | v80;
              if ((v79 & 0x60) != 0)
              {
                v67[2] = (*(v67 + 7) >> 1) & 0x20 | (((*(v67 + 7) & 0x20) != 0) << 6) | v80;
                v80 |= (v79 >> 1) & 0x20 | (((v79 >> 5) & 1) << 6);
              }

              if ((v81 & 0x60) == 0)
              {
                if (file_looks_utf8((v63 + 32), v63[5], 0, 0) <= 0)
                {
                  v82 = v80 | 0x20;
                }

                else
                {
                  v82 = v80 | 0x40;
                }

                v67[2] = v82;
              }
            }
          }

LABEL_109:
          if (*(v7 + 68))
          {
            v71 = v63[224];
            v70 = (v63 + 224);
            v72 = v70 - 64;
            v73 = "; ";
            if (!v71)
            {
              v73 = "";
            }

            if (!*(v70 - 64))
            {
              v72 = "(no description)";
            }

            v74 = "binary";
            if ((*(v70 - 222) & 0x20) == 0)
            {
              v74 = "text";
            }

            fprintf(*MEMORY[0x277D85DF8], "%s%s%s: %s\n", v70, v73, v72, v74);
            v75 = *v65;
            if (((*v65)[2] & 0x20) != 0)
            {
              v76 = strstr(v75 + 160, "text");
              if (v76)
              {
                v77 = v76;
                if (v76 != (v75 + 160))
                {
                  v78 = *(v76 - 1);
                  if (v78 < 0)
                  {
                    if (!__maskrune(*(v76 - 1), 0x4000uLL))
                    {
                      goto LABEL_138;
                    }
                  }

                  else if ((*(MEMORY[0x277D85DE0] + 4 * v78 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_138;
                  }

                  v75 = *v65;
                }

                v83 = v77 + 5;
                if (v77 + 5 - v75 == 288)
                {
                  goto LABEL_137;
                }

                v84 = *v83;
                if (!*v83)
                {
                  goto LABEL_137;
                }

                if ((v84 & 0x80) == 0)
                {
                  if ((*(MEMORY[0x277D85DE0] + 4 * v84 + 60) & 0x4000) == 0)
                  {
                    goto LABEL_138;
                  }

LABEL_137:
                  fwrite("*** Possible binary test for text type\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  goto LABEL_138;
                }

                if (__maskrune(v84, 0x4000uLL))
                {
                  goto LABEL_137;
                }
              }
            }
          }

LABEL_138:
          if (++v61 >= v64)
          {
            goto LABEL_145;
          }

          v85 = v65[2];
          v65 += 2;
          v63 = v85;
        }

        while (*v85);
        v60 = v61;
LABEL_145:
        v59 = *(v57 + 2);
      }

      while (v60 < v59);
LABEL_147:
      v86 = v59;
      v87 = *v57;
      if (*v57)
      {
        qsort(*v57, v59, 0x10uLL, apprentice_sort);
      }

      if (v86)
      {
        v88 = 0;
        v89 = v87;
        while (1)
        {
          v90 = v88 + 1;
          if (!**v89 && *(*v89 + 6) == 3)
          {
            break;
          }

          v89 += 16;
          ++v88;
          if (v86 == v90)
          {
            goto LABEL_154;
          }
        }

        if (v86 > v90)
        {
          LODWORD(v90) = v86;
        }

        v101 = 16;
        while (++v88 < v86)
        {
          v102 = **&v89[v101];
          v101 += 16;
          if (!v102)
          {
            LODWORD(v90) = v88;
            break;
          }
        }

        if (v90 != v86)
        {
          v7[11] = *(*&v87[16 * v90] + 20);
          file_magwarn(v7, "level 0 default did not sort last");
        }

LABEL_154:
        v91 = 0;
        v92 = (v87 + 8);
        v93 = (v87 + 8);
        v94 = v86;
        do
        {
          v95 = *v93;
          v93 += 4;
          v91 += v95;
          --v94;
        }

        while (v94);
        v96 = 376 * v91;
        v97 = malloc_type_malloc(v96, 0x1000040E4699127uLL);
        *&v147[2 * v150] = v97;
        if (v97)
        {
          v98 = 0;
          do
          {
            memcpy((*&v147[2 * v150] + 376 * v98), *(v92 - 1), 376 * *v92);
            v99 = *v92;
            v92 += 4;
            v98 += v99;
            --v86;
          }

          while (v86);
LABEL_162:
          v58 = 0;
          v149[v150 + 10] = v98;
          v57 = &v155;
          v150 = 1;
          if ((v148 & 1) == 0)
          {
            v49 = 0;
            goto LABEL_180;
          }

          continue;
        }
      }

      else
      {
        v100 = malloc_type_malloc(0, 0x1000040E4699127uLL);
        *&v147[2 * v150] = v100;
        if (v100)
        {
          v98 = 0;
          goto LABEL_162;
        }

        v96 = 0;
      }

      break;
    }

    v106 = __error();
    file_error(v7, *v106, "cannot allocate %zu bytes", v96);
    v49 = 0;
    ++v153;
LABEL_180:
    v2 = &unk_27CEC2000;
LABEL_181:
    free(v49);
    v107 = v154;
    v108 = 1;
    do
    {
      v109 = v108;
      v110 = *v107;
      if (*v107)
      {
        v111 = *(v107 + 2);
        if (v111)
        {
          v112 = *v107;
          do
          {
            v113 = *v112;
            v112 += 2;
            free(v113);
            --v111;
          }

          while (v111);
        }

        free(v110);
      }

      v108 = 0;
      v107 = &v155;
    }

    while ((v109 & 1) != 0);
    if (v153)
    {
      apprentice_unmap(v149);
      goto LABEL_190;
    }

LABEL_221:
    v132 = 0;
    v133 = 1;
    while (1)
    {
      v134 = v7[v132];
      v134[2] = 0;
      v135 = malloc_type_malloc(0x28uLL, 0x10A00403F8C4432uLL);
      if (!v135)
      {
        break;
      }

      v114 = v133 & 1;
      v133 = 0;
      v136 = v149;
      if (!v114)
      {
        v136 = 0;
      }

      v135[2] = v136;
      *v135 = *&v149[2 * v132 + 6];
      *(v135 + 2) = v149[v132 + 10];
      v137 = v134[4];
      *(v137 + 24) = v135;
      v135[3] = v134;
      v135[4] = v137;
      v134[4] = v135;
      v132 = 1;
      if (!v114)
      {
        goto LABEL_191;
      }
    }

    if (v133)
    {
      apprentice_unmap(v149);
    }

    else
    {
      mlist_free(*v7);
      *v7 = 0;
      mlist_free(v7[1]);
      v7[1] = 0;
    }

    v21 = v146;
    v138 = __error();
    file_error(v7, *v138, "cannot allocate %zu bytes", 0x28uLL);
    v114 = -1;
LABEL_192:
    v22 = v145;
    if (v21 <= v114)
    {
      v21 = v114;
    }
  }

  while (v145);
  free(__s);
  if (v21 == -1)
  {
    mlist_free(*v7);
    *v7 = 0;
    mlist_free(v7[1]);
    v7[1] = 0;
    file_error(v7, 0, "could not find any valid magic files!");
    goto LABEL_243;
  }

  return *(v2 + 154);
}

@end
uint64_t MIMachOUnhideArchsSavingOriginalHeader(const char *a1)
{
  size = 0;
  v15 = 0;
  v2 = open(a1, 256);
  if ((v2 & 0x80000000) != 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v6 = __error();
      strerror(*v6);
      MOLogWrite();
    }

    v4 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  if (fgetxattr(v2, "com.apple.installd.hidden_archs_fat_header", 0, 0, 0, 0) != -1)
  {
    if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (create_new_header_for_unhiding(v3, &v15, &size))
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = __error();
      strerror(*v7);
      MOLogWrite();
    }

    v5 = 0;
    v4 = 0;
    goto LABEL_32;
  }

  if (size)
  {
    v4 = malloc_type_malloc(size, 0x47D90AE5uLL);
    *__error() = 0;
    v8 = size;
    if (v8 != pread(v3, v4, size, 0))
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    close(v3);
    v9 = open(a1, 258);
    if ((v9 & 0x80000000) == 0)
    {
      LODWORD(v3) = v9;
      if (fsetxattr(v9, "com.apple.installd.hidden_archs_fat_header", v4, size, 0, 2))
      {
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *__error() = 0;
        v13 = size;
        if (v13 == pwrite(v3, v15, size, 0))
        {
          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            MOLogWrite();
          }

          goto LABEL_7;
        }

        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
LABEL_31:
          v5 = 0;
          goto LABEL_32;
        }
      }

LABEL_30:
      v10 = __error();
      strerror(*v10);
      MOLogWrite();
      goto LABEL_31;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v12 = __error();
      strerror(*v12);
      MOLogWrite();
    }

LABEL_12:
    v5 = 0;
    goto LABEL_33;
  }

  if (!gLogHandle || *(gLogHandle + 44) < 7)
  {
    goto LABEL_6;
  }

LABEL_5:
  MOLogWrite();
LABEL_6:
  v4 = 0;
LABEL_7:
  v5 = 1;
LABEL_32:
  close(v3);
LABEL_33:
  if (v15)
  {
    free(v15);
  }

  if (v4)
  {
    free(v4);
  }

  return v5;
}

uint64_t MIMachOCreateHiddenArchsExecutableIfNeeded(const char *a1, char *a2, _BYTE *a3)
{
  *a3 = 0;
  v5 = open(a1, 256);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = fgetxattr(v5, "com.apple.installd.hidden_archs_fat_header", 0, 0, 0, 0);
    if (v7 < 0)
    {
      if (*__error() == 93)
      {
        v9 = 0;
        goto LABEL_17;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v16 = __error();
        strerror(*v16);
        MOLogWrite();
      }

LABEL_32:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      v9 = 0;
LABEL_36:
      v14 = 0;
LABEL_37:
      v12 = v6;
      goto LABEL_38;
    }

    v8 = v7;
    v9 = malloc_type_malloc(v7, 0xD8332BFBuLL);
    v10 = fgetxattr(v6, "com.apple.installd.hidden_archs_fat_header", v9, v8, 0, 0);
    if (v10 < 0)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_27:
        if (v9)
        {
          free(v9);
        }

        goto LABEL_32;
      }

      v15 = __error();
      strerror(*v15);
    }

    else
    {
      if (v8 == v10)
      {
        if (v8)
        {
          v11 = mkstemp(a2);
          if (v11 != -1)
          {
            v12 = v11;
            if (fcopyfile(v6, v11, 0, 0xAu))
            {
              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
                goto LABEL_53;
              }
            }

            else
            {
              *__error() = 0;
              if (v8 == pwrite(v12, v9, v8, 0))
              {
                if (gLogHandle && *(gLogHandle + 44) >= 7)
                {
                  MOLogWrite();
                }

                v14 = 1;
                *a3 = 1;
LABEL_54:
                close(v6);
                if (v12 < 0)
                {
LABEL_39:
                  if (v9)
                  {
                    free(v9);
                  }

                  return v14;
                }

LABEL_38:
                close(v12);
                goto LABEL_39;
              }

              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
LABEL_53:
                v14 = 0;
                goto LABEL_54;
              }
            }

            v19 = __error();
            strerror(*v19);
            MOLogWrite();
            goto LABEL_53;
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v18 = __error();
            strerror(*v18);
            MOLogWrite();
          }

          goto LABEL_36;
        }

LABEL_17:
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }

        v14 = 1;
        goto LABEL_37;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    MOLogWrite();
    goto LABEL_27;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v13 = __error();
    strerror(*v13);
    MOLogWrite();
  }

  return 0;
}

uint64_t hardlink_copy_hierarchy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, CFErrorRef *a10)
{
  v10 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v10;
  v341 = *MEMORY[0x29EDCA608];
  bzero(to, 0x400uLL);
  bzero(v300, 0x400uLL);
  bzero(&v298, 0x410uLL);
  v297[0] = v25;
  v297[1] = 0;
  v26 = fts_open_b(v297, 85, &__block_literal_global);
  if (!v26)
  {
    v41 = __error();
    v42 = strerror(*v41);
    v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 746, v43, v44, 0, v45, @"fts_open of %s failed: %s", v46, v25, v42);
    goto LABEL_24;
  }

  v27 = v26;
  if (!v22)
  {
    bzero(cf, 0x400uLL);
    if (__strlcpy_chk() < 0x400)
    {
      LOWORD(v262.st_dev) = 0;
      *__str = 0;
      if ((realpath_parent_no_symlink(cf, v300, &v262, __str) & 1) == 0)
      {
        v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 786, v56, v57, *__str, v58, @"Failed to realpath parent of %s", v59, cf);
        v66 = *__str;
        if (!*__str)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!LOWORD(v262.st_dev) || (v262.st_dev & 0xF000) == 0x4000)
      {
        v85 = 0;
        v86 = 0;
        goto LABEL_41;
      }

      v55 = _CreateAndLogDMError("hardlink_copy_hierarchy", 792, v56, v57, 0, v58, @"Entity exists at %s but it's not a directory", v59, v300);
      goto LABEL_14;
    }

    v52 = @"Destination path was too long";
    v53 = 779;
LABEL_13:
    v55 = _CreateAndLogDMError("hardlink_copy_hierarchy", v53, v48, v49, 0, v50, v52, v51, v245, st_mode, v254);
LABEL_14:
    v47 = v55;
    goto LABEL_23;
  }

  if (!realpath_DARWIN_EXTSN(v24, v300))
  {
    v54 = __error();
    st_mode = v300;
    v254 = strerror(*v54);
    v245 = v24;
    v52 = @"realpath of '%s' failed at element '%s': %s";
    v53 = 752;
    goto LABEL_13;
  }

  memset(&v262, 0, sizeof(v262));
  v28 = open(v22, 256);
  if (v28 < 0)
  {
    v60 = __error();
    v61 = strerror(*v60);
    v36 = _CreateAndLogDMError("open_delta_manifest", 416, v62, v63, 0, v64, @"Could not open %s: %s", v65, v22, v61);
LABEL_20:
    v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 758, v37, v38, v36, v39, @"Failed to open manifest %s", v40, v22);
    if (v36)
    {
      v66 = v36;
LABEL_22:
      CFRelease(v66);
    }

LABEL_23:
    fts_close(v27);
    goto LABEL_24;
  }

  v29 = v28;
  if (fstat(v28, &v262))
  {
    v30 = __error();
    v247 = strerror(*v30);
    v35 = _CreateAndLogDMError("open_delta_manifest", 421, v31, v32, 0, v33, @"Could not stat %s: %s", v34, v22, v247);
LABEL_7:
    v36 = v35;
LABEL_8:
    close(v29);
    goto LABEL_20;
  }

  v68 = mmap(0, v262.st_size, 1, 1026, v29, 0);
  if (v68 == -1)
  {
    v164 = __error();
    v249 = strerror(*v164);
    v35 = _CreateAndLogDMError("open_delta_manifest", 435, v165, v166, 0, v167, @"Failed to map file at %s; error %s", v168, v22, v249);
    goto LABEL_7;
  }

  v260 = v68;
  if (madvise(v68, v262.st_size, 2) && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v69 = __error();
    v245 = strerror(*v69);
    MOLogWrite();
  }

  v70 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040113C0ABBuLL);
  if (!v70)
  {
    v36 = _CreateAndLogDMError("open_delta_manifest", 446, v71, v72, 0, v73, @"Failed to allocate command stream object", v74);
    munmap(v260, v262.st_size);
    goto LABEL_8;
  }

  v75 = v70;
  *v70 = v260;
  v70[1] = v262.st_size;
  v70[2] = 0;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v315 = 0u;
  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  *cf = 0u;
  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  *__str = 0u;
  v266 = 0u;
  v264 = 0;
  v263 = 0;
  v308 = 0;
  v307 = 0;
  if ((read_string_to_terminator(v70, 0, &v263, 6uLL) & 1) == 0)
  {
    v169 = @"Failed to read magic";
    v170 = 299;
LABEL_168:
    v80 = _CreateAndLogDMError("validate_stream", v170, v76, v77, 0, v78, v169, v79, v245);
    goto LABEL_169;
  }

  if (v263 ^ 0x44617069 | v264)
  {
    v80 = _CreateAndLogDMError("validate_stream", 305, v76, v77, 0, v78, @"Stream had invalid magic: %s", v79, &v263);
LABEL_169:
    v171 = v80;
LABEL_170:
    v36 = _CreateAndLogDMError("open_delta_manifest", 456, v81, v82, v171, v83, @"Invalid manifest file at %s", v84, v22);
    if (v171)
    {
      CFRelease(v171);
    }

    munmap(v260, v262.st_size);
    free(v75);
    goto LABEL_8;
  }

  if ((read_string_to_terminator(v75, 0, &v307, 0xAuLL) & 1) == 0)
  {
    v169 = @"Failed to read version from manifest header";
    v170 = 310;
    goto LABEL_168;
  }

  v172 = strtol(&v307, 0, 10);
  if ((v172 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v80 = _CreateAndLogDMError("validate_stream", 318, v173, v174, 0, v175, @"Manifest had invalid version: %ld; expected 1, 2, or 3", v176, v172);
    goto LABEL_169;
  }

  v259 = v172;
  if ((read_string_to_terminator(v75, 0, cf, 0x200uLL) & 1) == 0)
  {
    v169 = @"Failed to read manifest source version";
    v170 = 323;
    goto LABEL_168;
  }

  v258 = v75;
  if (v20)
  {
    v181 = v18;
  }

  else
  {
    v181 = "";
  }

  if (v20)
  {
    v182 = v20;
  }

  else
  {
    v182 = "0";
  }

  if (v20)
  {
    v183 = " ";
  }

  else
  {
    v183 = "";
  }

  if (v181)
  {
    v184 = v181;
  }

  else
  {
    v184 = "";
  }

  if (snprintf(__str, 0x200uLL, "%s%s%s", v182, v183, v184) > 0x1FF)
  {
    v189 = _CreateAndLogDMError("validate_stream", 350, v185, v186, 0, v187, @"Incoming expected source version string %s%s%s was too long", v188, v182, v183, v184);
LABEL_240:
    v171 = v189;
LABEL_241:
    v75 = v258;
    goto LABEL_170;
  }

  for (i = __str; *i == 10; ++i)
  {
    *i = 32;
LABEL_236:
    ;
  }

  if (*i)
  {
    goto LABEL_236;
  }

  if (strcmp(__str, cf))
  {
    v245 = cf;
    st_mode = __str;
    v212 = @"Got manifest for version %s, but expected version %s";
    v213 = 357;
    goto LABEL_239;
  }

  if (v259 < 2)
  {
    goto LABEL_262;
  }

  v306 = 0;
  v305 = 0u;
  v304 = 0u;
  v303 = 0u;
  *v302 = 0u;
  if (!read_string_to_terminator(v258, 0, v302, 0x41uLL))
  {
    v212 = @"Failed to read stream";
    v213 = 375;
LABEL_239:
    v189 = _CreateAndLogDMError("validate_stream", v213, v208, v209, 0, v210, v212, v211, v245, st_mode, v254);
    goto LABEL_240;
  }

  if (!v16)
  {
    v212 = @"expected_infoplisthash is NULL";
    v213 = 371;
    goto LABEL_239;
  }

  if (memcmp(v16, v302, 0x41uLL))
  {
    v212 = @"Compare of info plist hash failed";
    v213 = 367;
    goto LABEL_239;
  }

  if (v259 != 2)
  {
    v302[0] = 0;
    if ((validate_supported_devices(v258, v12, v302) & 1) == 0)
    {
      v171 = _CreateAndLogDMError("validate_stream", 384, v232, v233, v302[0], v234, @"Failed to validate supported devices", v235);
      if (v302[0])
      {
        CFRelease(v302[0]);
      }

      goto LABEL_241;
    }
  }

LABEL_262:
  close(v29);
  cf[0] = 0;
  if ((read_next_manifest_command(v258, &v298, cf, v236, v237, v238, v239, v240) & 1) == 0)
  {
    v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 765, v241, v242, cf[0], v243, @"Failed to read first manifest command", v244);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v178 = 0;
    v124 = -1;
    v85 = v258;
    goto LABEL_248;
  }

  v86 = v298 != 120;
  v85 = v258;
LABEL_41:
  v261 = strlen(v25);
  v87 = fts_read(v27);
  if (!v87)
  {
    v177 = 0;
LABEL_177:
    if (v22 && v298 != 120)
    {
      v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1110, v88, v89, 0, v91, @"Got done processing bundle but there were still commands remaining in manifest.", v93, v245, st_mode, v254);
      goto LABEL_246;
    }

    v47 = 0;
    if (a9)
    {
      *a9 = v177;
    }

    v124 = -1;
    v178 = 1;
    if (v85)
    {
      goto LABEL_248;
    }

    goto LABEL_249;
  }

  v94 = v87;
  v95 = 0;
  v257 = v85;
  while (2)
  {
    to[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
    fts_info = v94->fts_info;
    if (fts_info > 0xD || ((1 << fts_info) & 0x314A) == 0)
    {
      v101 = 0;
      v102 = 0;
    }

    else
    {
      v98 = &v94->fts_path[v261];
      v100 = *v98;
      v99 = v98 + 1;
      if (v100 == 47)
      {
        v101 = v99;
      }

      else
      {
        v101 = &v94->fts_path[v261];
      }

      if (((fts_info != 6) & v86) == 1 && !_utf_aware_strcmp(v299, v101))
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          st_mode = v299;
          v254 = v101;
          v245 = v298;
          MOLogWrite();
        }

        v102 = 1;
      }

      else
      {
        v102 = 0;
      }

      fts_info = v94->fts_info;
    }

    if (fts_info > 7)
    {
      if ((fts_info - 12) < 2)
      {
        if (v102 && (v298 == 43 || v298 == 45))
        {
          goto LABEL_150;
        }

        LOWORD(v262.st_dev) = 0;
        *__str = 0;
        if (make_and_check_dest_path(v300, v101, to, &v262, __str))
        {
          if (LOWORD(v262.st_dev))
          {
            v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 855, v103, v104, 0, v105, @"Entity with mode 0%o exists at symlink location in dest path %s", v106, LOWORD(v262.st_dev), to, v254);
            goto LABEL_246;
          }

          v107 = v86;
          v108 = v95;
          v109 = gLogHandle;
          if (gLogHandle)
          {
            p_fts_path = &v94->fts_path;
            fts_path = v94->fts_path;
            if (*(gLogHandle + 44) <= 6 || (v245 = v94->fts_path, st_mode = to, MOLogWrite(), v109 = gLogHandle, fts_path = *p_fts_path, gLogHandle))
            {
              if (*(v109 + 44) >= 7)
              {
                v245 = fts_path;
                st_mode = to;
                MOLogWrite();
              }
            }
          }

          else
          {
            p_fts_path = &v94->fts_path;
            fts_path = v94->fts_path;
          }

          v139 = readlink(fts_path, cf, 0x400uLL);
          if (v139 < 0)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
LABEL_211:
              v190 = __error();
              strerror(*v190);
              MOLogWrite();
            }

LABEL_212:
            v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 862, v140, v89, 0, v91, @"Failed to copy symlink %s to %s", v93, *p_fts_path, to, v254);
            goto LABEL_246;
          }

          *(cf + v139) = 0;
          if (symlink(cf, to))
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              goto LABEL_211;
            }

            goto LABEL_212;
          }

          v95 = v108;
LABEL_131:
          v86 = v107;
LABEL_150:
          v95 += v94->fts_statp->st_blocks;
          goto LABEL_151;
        }

        v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 848, v103, v104, *__str, v105, @"Failed to make dest path for symlink %s", v106, v101);
        v180 = *__str;
        if (!*__str)
        {
          goto LABEL_247;
        }

        goto LABEL_214;
      }

      if (fts_info == 8)
      {
        goto LABEL_71;
      }

      if (fts_info == 10)
      {
        goto LABEL_187;
      }

      goto LABEL_151;
    }

    if (fts_info > 3)
    {
      if (fts_info == 6)
      {
        LOWORD(cf[0]) = 0;
        if (make_and_check_dest_path(v300, v101, to, cf, 0))
        {
          if ((cf[0] & 0xF000) == 0x4000 && (v127 = v94->fts_statp->st_mode, v127 != LOWORD(cf[0])))
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              v245 = to;
              st_mode = v94->fts_statp->st_mode;
              MOLogWrite();
              LOWORD(v127) = v94->fts_statp->st_mode;
            }

            if (chmod(to, v127))
            {
              v159 = __error();
              v248 = strerror(*v159);
              v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1060, v160, v161, 0, v162, @"chmod of '%s' failed: %s", v163, to, v248, v254);
              goto LABEL_246;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v245 = LOWORD(cf[0]);
            st_mode = v101;
            MOLogWrite();
          }
        }
      }

      else if (fts_info == 4 || fts_info == 7)
      {
LABEL_187:
        v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1078, v88, v89, 0, v91, @"FTS in %s returned an error %d for path '%s'", v93, "hardlink_copy_hierarchy", v94->fts_errno, v94->fts_path);
        goto LABEL_246;
      }

      goto LABEL_151;
    }

    if (fts_info == 1)
    {
      if (v102 && (v298 == 45 || v298 == 43))
      {
        if (fts_set(v27, v94, 4))
        {
          v221 = __error();
          v251 = strerror(*v221);
          v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1012, v222, v223, 0, v224, @"Failed to skip directory %s: %s", v225, v101, v251, v254);
          goto LABEL_246;
        }

        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v245 = v101;
          MOLogWrite();
        }

LABEL_152:
        cf[0] = 0;
        if (read_next_manifest_command(v85, &v298, cf, v89, v90, v91, v92, v93))
        {
          if (v298 == 120)
          {
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              MOLogWrite();
            }

            v86 = 0;
          }

LABEL_158:
          v94 = fts_read(v27);
          if (!v94)
          {
            v177 = v95 << 9;
            goto LABEL_177;
          }

          continue;
        }

        v179 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1094, v155, v156, cf[0], v157, @"Failed to read next manifest command", v158, v245, st_mode, v254);
LABEL_184:
        v47 = v179;
        v180 = cf[0];
        if (!cf[0])
        {
          goto LABEL_247;
        }

LABEL_214:
        CFRelease(v180);
        goto LABEL_247;
      }

      *__str = 0;
      cf[0] = 0;
      if ((make_and_check_dest_path(v300, v101, to, __str, cf) & 1) == 0)
      {
        v179 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1023, v134, v89, cf[0], v91, @"Failed to make dest path for directory %s", v93, v101, st_mode, v254);
        goto LABEL_184;
      }

      if (*__str && (*__str & 0xF000) != 0x4000)
      {
        v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1030, v134, v89, 0, v91, @"Non-directory entity with mode 0%o exists at directory location in dest path %s", v93, *__str, to, v254);
        goto LABEL_246;
      }

      if (*__str)
      {
        if (*__str != (v94->fts_statp->st_mode | 0x80) && chmod(to, v94->fts_statp->st_mode | 0x80))
        {
          v231 = __error();
          v253 = strerror(*v231);
          v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1043, v135, v136, 0, v137, @"Failed to make destination directory %s writable: %s", v138, to, v253, v254);
          goto LABEL_246;
        }
      }

      else
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          v245 = to;
          MOLogWrite();
        }

        if (mkdir(to, v94->fts_statp->st_mode | 0x80))
        {
          v226 = __error();
          v252 = strerror(*v226);
          v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 1038, v227, v228, 0, v229, @"mkdir of '%s' failed: %s", v230, to, v252, v254);
          goto LABEL_246;
        }
      }

LABEL_151:
      if (!v102)
      {
        goto LABEL_158;
      }

      goto LABEL_152;
    }

    break;
  }

  if (fts_info != 3)
  {
    goto LABEL_151;
  }

LABEL_71:
  if (v298 == 94)
  {
    v112 = v102;
  }

  else
  {
    v112 = 0;
  }

  if (v112 != 1)
  {
    if (v102 && (v298 == 45 || v298 == 43))
    {
      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        v245 = v101;
        MOLogWrite();
      }

      goto LABEL_150;
    }

    *__str = 0;
    cf[0] = 0;
    if ((make_and_check_dest_path(v300, v101, to, __str, cf) & 1) == 0)
    {
      v179 = _CreateAndLogDMError("hardlink_copy_hierarchy", 975, v128, v129, cf[0], v130, @"Failed to make dest path for file %s", v131, v101, st_mode, v254);
      goto LABEL_184;
    }

    if (*__str)
    {
      v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 982, v128, v129, 0, v130, @"Entity with mode 0%o exists at file location in dest path %s", v131, *__str, to, v254);
      goto LABEL_246;
    }

    v107 = v86;
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v245 = v94->fts_path;
      st_mode = to;
      MOLogWrite();
    }

    if (link(v94->fts_path, to))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v132 = v94->fts_path;
        v133 = __error();
        st_mode = to;
        v254 = strerror(*v133);
        v245 = v132;
        v85 = v257;
        MOLogWrite();
      }

      if (copyfile(v94->fts_path, to, 0, 0xC000Fu))
      {
        v214 = v94->fts_path;
        v215 = __error();
        v255 = strerror(*v215);
        v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 991, v216, v217, 0, v218, @"copyfile of %s to %s failed: %s", v219, v214, to, v255);
        goto LABEL_246;
      }
    }

    goto LABEL_131;
  }

  LOWORD(v302[0]) = 0;
  bzero(cf, 0x400uLL);
  *&v262.st_dev = 0;
  if ((make_and_check_dest_path(v300, v101, to, v302, &v262) & 1) == 0)
  {
    v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 882, v113, v114, *&v262.st_dev, v115, @"Failed to make dest path for file %s", v116, v101);
    v180 = *&v262.st_dev;
    if (!*&v262.st_dev)
    {
      goto LABEL_247;
    }

    goto LABEL_214;
  }

  v117 = v95;
  v118 = v302[0];
  if (LOWORD(v302[0]))
  {
    if (snprintf(cf, 0x400uLL, "%s.XXXXXX", to) >= 0x400)
    {
      v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 894, v119, v120, 0, v121, @"failed to make newfile path: %s.XXXXXXX", v122, to, st_mode, v254);
      goto LABEL_246;
    }

    v123 = mkstemp(cf);
    if (v123 == -1)
    {
      v191 = __error();
      v250 = strerror(*v191);
      v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 899, v192, v193, 0, v194, @"mktemp failed for %s : %s", v195, cf, v250, v254);
      goto LABEL_246;
    }

    v124 = v123;
    v256 = v86;
    v125 = v94->fts_path;
    bzero(__str, 0x400uLL);
    if (!v14 || _utf_aware_strcmp(v125, v14))
    {
      v126 = 0;
      goto LABEL_144;
    }

    if (snprintf(__str, 0x400uLL, "%s.XXXXXX", to) >= 0x400)
    {
      v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 914, v141, v142, 0, v143, @"failed to make newfile path: %s.XXXXXXX", v144, to);
      goto LABEL_225;
    }

    LOBYTE(v307) = 0;
    if (MIMachOCreateHiddenArchsExecutableIfNeeded(v14, __str, &v307))
    {
      v126 = v307;
      if (v307)
      {
        v125 = __str;
      }

LABEL_144:
      if (patch_file(v125, to, v124))
      {
        v196 = _CreateAndLogDMError("hardlink_copy_hierarchy", 934, v149, v150, 0, v151, @"patch_file failed for:\n\t%s\n\t%s\n\t%s", v152, v125, cf, to);
      }

      else
      {
        if (!fchmod(v124, v118))
        {
          close(v124);
          rename(cf, to, v153);
          if (!v154)
          {
            if (v126)
            {
              unlink(v125);
            }

            v95 = v117;
            v85 = v257;
            v86 = v256;
            goto LABEL_150;
          }

          v200 = __error();
          v201 = strerror(*v200);
          v47 = _CreateAndLogDMError("hardlink_copy_hierarchy", 948, v202, v203, 0, v204, @"rename of %s to %s failed: %s", v205, cf, to, v201);
          v124 = -1;
LABEL_224:
          v85 = v257;
LABEL_225:
          v178 = 0;
          if (v85)
          {
            goto LABEL_248;
          }

          goto LABEL_249;
        }

        v197 = __error();
        v245 = cf;
        st_mode = strerror(*v197);
        v198 = @"chmod failed for %s : %s";
        v199 = 939;
LABEL_220:
        v196 = _CreateAndLogDMError("hardlink_copy_hierarchy", v199, v145, v146, 0, v147, v198, v148, v245, st_mode, v254);
      }

      v47 = v196;
      goto LABEL_224;
    }

    v198 = @"Failed to create hidden archs executable";
    v199 = 920;
    goto LABEL_220;
  }

  v220 = _CreateAndLogDMError("hardlink_copy_hierarchy", 889, v113, v114, 0, v115, @"Entity does not exist at file location in dest path %s", v116, to, st_mode, v254);
LABEL_246:
  v47 = v220;
LABEL_247:
  v178 = 0;
  v124 = -1;
  if (v85)
  {
LABEL_248:
    munmap(*v85, v85[1]);
    free(v85);
  }

LABEL_249:
  fts_close(v27);
  if ((v124 & 0x80000000) == 0)
  {
    close(v124);
  }

  if (v178)
  {
    return 1;
  }

LABEL_24:
  if (a10)
  {
    result = 0;
    *a10 = v47;
  }

  else
  {
    if (v47)
    {
      CFRelease(v47);
    }

    return 0;
  }

  return result;
}

uint64_t _utf_aware_strcmp(char *cStr, const char *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  v5 = CFStringCreateWithCString(v3, a2, 0x8000100u);
  bzero(buffer, 0x400uLL);
  bzero(__s2, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(v4, buffer, 1024) || !CFStringGetFileSystemRepresentation(v5, __s2, 1024))
  {
    v6 = 0xFFFFFFFFLL;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = strcmp(buffer, __s2);
  if (v4)
  {
LABEL_6:
    CFRelease(v4);
  }

LABEL_7:
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

CFErrorRef _CreateAndLogDMError(const char *a1, int a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const __CFString *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v12 = CFStringCreateWithCString(0, a1, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"FunctionName", v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SourceFileLine", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  if (a5)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F68], a5);
  }

  v14 = CFStringCreateWithFormatAndArguments(0, 0, a7, va);
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F58], v14);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = CFErrorCreate(0, @"MIInstallerDeltaErrorDomain", 1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t read_next_manifest_command(void *a1, char *a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x29EDCA608];
  v9 = a1[1];
  v8 = a1[2];
  if (v8 >= v9)
  {
    read_next_manifest_command_cold_1();
  }

  if (v8 + 1 >= v9)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v28 = 1;
      MOLogWrite();
    }

    v24 = @"Failed to read command from manifest";
    v25 = 508;
  }

  else
  {
    v13 = *(*a1 + v8);
    *a2 = v13;
    ++a1[2];
    v14 = (v13 - 43) > 0x33 || ((1 << (v13 - 43)) & 0x8000000040005) == 0;
    if (v14 && v13 != 120)
    {
      v26 = _CreateAndLogDMError("read_next_manifest_command", 514, a3, a4, 0, a6, @"Stream had invalid command: %hhu", a8, v13);
      goto LABEL_28;
    }

    v15 = a2 + 1;
    string_to_terminator = read_string_to_terminator(a1, 1, a2 + 1, 0x400uLL);
    v17 = *a2;
    if ((string_to_terminator & 1) == 0)
    {
      v26 = _CreateAndLogDMError("read_next_manifest_command", 520, a3, a4, 0, a6, @"Failed to read arg1 of command %hhu", a8, *a2);
      goto LABEL_28;
    }

    if (v17 != 61)
    {
      goto LABEL_12;
    }

    *__str = 0;
    v31 = 0;
    v33 = 0;
    v32 = 0;
    if ((read_string_to_terminator(a1, 1, __str, 0x19uLL) & 1) == 0)
    {
      v26 = _CreateAndLogDMError("read_next_manifest_command", 528, v18, v19, 0, v20, @"Failed to read arg2 of command %hhu", v21, *a2);
      goto LABEL_28;
    }

    v22 = strtoll(__str, 0, 10);
    *(a2 + 129) = v22;
    if (v22)
    {
      v17 = *a2;
LABEL_12:
      if (v17 != 120 || *v15 == 69 && a2[2] == 79 && a2[3] == 70)
      {
        return 1;
      }

      v24 = @"Got malformed EOF marker";
      v25 = 542;
      goto LABEL_27;
    }

    v28 = __str;
    v29 = a2 + 1;
    v24 = @"Invalid touch time %s found for path %s";
    v25 = 535;
  }

LABEL_27:
  v26 = _CreateAndLogDMError("read_next_manifest_command", v25, a3, a4, 0, a6, v24, a8, v28, v29);
LABEL_28:
  if (a3)
  {
    v23 = 0;
    *a3 = v26;
  }

  else
  {
    if (v26)
    {
      CFRelease(v26);
    }

    return 0;
  }

  return v23;
}

uint64_t realpath_parent_no_symlink(const char *a1, char *a2, mode_t *a3, CFErrorRef *a4)
{
  v8 = strlen(a1);
  v13 = v8;
  if (a1[v8 - 1] == 47)
  {
    a1[v8 - 1] = 0;
    v13 = v8 - 1;
  }

  do
  {
    v14 = &a1[v13 - 1];
    if (v14 < a1)
    {
      v31 = a1;
      v15 = @"Failed to find parent of '%s'";
      v16 = 588;
LABEL_10:
      v17 = _CreateAndLogDMError("realpath_parent_no_symlink", v16, v9, v10, 0, v11, v15, v12, v31);
LABEL_11:
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    --v13;
  }

  while (*v14 != 47);
  if (!v13)
  {
    strlcpy(a2, a1, 0x400uLL);
    goto LABEL_14;
  }

  a1[v13] = 0;
  if (!realpath_DARWIN_EXTSN(a1, a2))
  {
    v24 = __error();
    v25 = strerror(*v24);
    v17 = _CreateAndLogDMError("realpath_parent_no_symlink", 599, v26, v27, 0, v28, @"realpath of '%s' failed at element '%s': %s", v29, a1, a2, v25);
    a1[v13] = 47;
    if (!a4)
    {
LABEL_17:
      if (v17)
      {
        CFRelease(v17);
      }

      return 0;
    }

LABEL_12:
    v18 = 0;
    *a4 = v17;
    return v18;
  }

  a1[v13] = 47;
  if (strlcat(a2, &a1[v13], 0x400uLL) >= 0x400)
  {
    v15 = @"Path was too long";
    v16 = 608;
    goto LABEL_10;
  }

LABEL_14:
  memset(&v32, 0, sizeof(v32));
  if (lstat(a2, &v32))
  {
    st_mode = 0;
    goto LABEL_22;
  }

  st_mode = v32.st_mode;
  if ((v32.st_mode & 0xF000) == 0xA000)
  {
    v17 = _CreateAndLogDMError("realpath_parent_no_symlink", 618, v19, v20, 0, v21, @"Found symlink at destination path %s; this is not allowed.", v22, a2);
    goto LABEL_11;
  }

LABEL_22:
  *a3 = st_mode;
  return 1;
}

uint64_t make_and_check_dest_path(const char *a1, const char *a2, char *a3, mode_t *a4, CFErrorRef *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x400uLL);
  if (snprintf(__str, 0x400uLL, "%s/%s", a1, a2) < 0x400)
  {
    cf = 0;
    if ((realpath_parent_no_symlink(__str, a3, a4, &cf) & 1) == 0)
    {
      v23 = _CreateAndLogDMError("make_and_check_dest_path", 701, v15, v16, cf, v17, @"Failed to realpath parent of %s", v18, __str);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_7;
    }

    if (!_utf_aware_strcmp(__str, a3))
    {
      return 1;
    }

    v14 = _CreateAndLogDMError("make_and_check_dest_path", 709, v19, v20, 0, v21, @"realpath'd destpath '%s' is different from non-realpath '%s'", v22, a3, __str);
  }

  else
  {
    v14 = _CreateAndLogDMError("make_and_check_dest_path", 695, v10, v11, 0, v12, @"Dest path '%s/%s' was too long", v13, a1, a2);
  }

  v23 = v14;
LABEL_7:
  if (a5)
  {
    result = 0;
    *a5 = v23;
  }

  else
  {
    if (v23)
    {
      CFRelease(v23);
    }

    return 0;
  }

  return result;
}

uint64_t read_string_to_terminator(void *a1, int a2, _BYTE *a3, unint64_t a4)
{
  v4 = a1[2];
  if (v4 >= a1[1])
  {
    read_string_to_terminator_cold_1();
  }

  if (!a4)
  {
    return 0;
  }

  for (i = 1; ; ++i)
  {
    v6 = *(*a1 + v4);
    a1[2] = v4 + 1;
    v7 = v6 == 9 ? a2 : 0;
    if (v6 == 10 || v7 != 0)
    {
      break;
    }

    *a3++ = v6;
    v4 = a1[2];
    if (v4 >= a1[1] || i >= a4)
    {
      return 0;
    }
  }

  *a3 = 0;
  return 1;
}

uint64_t validate_supported_devices(void *a1, const __CFArray *a2, CFErrorRef *a3)
{
  v10 = malloc_type_calloc(1uLL, 0x800uLL, 0x9CD77285uLL);
  if (!v10)
  {
    v35 = @"Failed to malloc buffer for line";
    v36 = 200;
LABEL_23:
    v33 = _CreateAndLogDMError("validate_supported_devices", v36, v6, v7, 0, v8, v35, v9);
    free(v10);
    goto LABEL_24;
  }

  if ((read_string_to_terminator(a1, 0, v10, 0x800uLL) & 1) == 0)
  {
    v35 = @"Failed to read supported devices from stream";
    v36 = 205;
    goto LABEL_23;
  }

  if (!*v10)
  {
    if (!a2)
    {
      free(v10);
      return 1;
    }

    v35 = @"Existing app lists supported devices but there were none in the manifest";
    v36 = 211;
    goto LABEL_23;
  }

  v11 = *MEMORY[0x29EDB8ED8];
  v12 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v10, 0x8000100u);
  if (!v12)
  {
    v35 = @"Failed to create patch supported devices string";
    v36 = 222;
    goto LABEL_23;
  }

  v13 = v12;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v11, v12, @" ");
  v19 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || !CFArrayGetCount(ArrayBySeparatingStrings))
  {
    v38 = _CreateAndLogDMError("validate_supported_devices", 228, v15, v16, 0, v17, @"Failed to split patch supported devices string", v18);
LABEL_32:
    v33 = v38;
    free(v10);
    v34 = 0;
    Mutable = 0;
    v22 = 0;
    goto LABEL_41;
  }

  if (!a2)
  {
    v38 = _CreateAndLogDMError("validate_supported_devices", 234, v15, v16, 0, v17, @"Target app had no supported devices but patch did: %@", v18, v19);
    goto LABEL_32;
  }

  v43 = v13;
  v20 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x29EDB9000]);
  v22 = CFArrayCreateMutable(v11, 0, v20);
  Count = CFArrayGetCount(a2);
  v24 = CFArrayGetCount(v19);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v44.location = 0;
      v44.length = v24;
      if (!CFArrayContainsValue(v19, v44, ValueAtIndex))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  if (v24 >= 1)
  {
    for (j = 0; j != v24; ++j)
    {
      v28 = CFArrayGetValueAtIndex(v19, j);
      v45.location = 0;
      v45.length = Count;
      if (!CFArrayContainsValue(a2, v45, v28))
      {
        CFArrayAppendValue(v22, v28);
      }
    }
  }

  if (Mutable && CFArrayGetCount(Mutable))
  {
    v33 = _CreateAndLogDMError("validate_supported_devices", 242, v29, v30, 0, v31, @"Expected supported devices had devices that were not in patch: %@", v32, Mutable);
    v34 = 0;
    v13 = v43;
  }

  else
  {
    v13 = v43;
    if (v22 && CFArrayGetCount(v22))
    {
      v33 = _CreateAndLogDMError("validate_supported_devices", 247, v39, v40, 0, v41, @"Patch listed devices that were not in expected supported devices: %@", v42, v22);
      v34 = 0;
    }

    else
    {
      v33 = 0;
      v34 = 1;
    }
  }

  free(v10);
LABEL_41:
  CFRelease(v13);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v34)
  {
    return 1;
  }

LABEL_24:
  if (a3)
  {
    result = 0;
    *a3 = v33;
  }

  else
  {
    if (v33)
    {
      CFRelease(v33);
    }

    return 0;
  }

  return result;
}

id _CreateErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x29EDB9ED8]];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x29EDB9F18]];
  }

  v22 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a1];
  [v20 setObject:v22 forKeyedSubscript:@"FunctionName"];

  v23 = [MEMORY[0x29EDBA070] numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:@"SourceFileLine"];

  v24 = [MEMORY[0x29EDB9FA0] errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateAndLogErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a5;
  v16 = _CreateErrorV(a1, a2, a3, a4, v15, a6, a7, a8);
  v17 = [v16 userInfo];
  v18 = *MEMORY[0x29EDB9ED8];
  v19 = [v17 objectForKeyedSubscript:*MEMORY[0x29EDB9ED8]];

  if (v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v20 = [v15 domain];
      [v15 code];
      v21 = [v15 userInfo];
      v23 = [v21 objectForKeyedSubscript:v18];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return v16;
}

BOOL _IsMalformedBundleError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"MIInstallerErrorDomain"] && objc_msgSend(v1, "code") == 12)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 domain];
    if ([v4 isEqualToString:@"MIInstallerErrorDomain"] && objc_msgSend(v1, "code") == 11)
    {
      v3 = 1;
    }

    else
    {
      v5 = [v1 domain];
      if ([v5 isEqualToString:@"MIInstallerErrorDomain"])
      {
        v3 = [v1 code] == 35;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

__CFString *MICopyUnlocalizedDescriptionForContainerExtendedError()
{
  v0 = container_error_copy_unlocalized_description();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v0];
    free(v1);
  }

  else
  {
    v2 = @"(container_error_copy_unlocalized_description returned NULL)";
  }

  return v2;
}

uint64_t patchFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x29EDCA608];
  v37 = 0u;
  v38 = 0u;
  buf = 0;
  v35 = 0;
  v36 = 0;
  if ((*(a3 + 16))(a3, 3, &v37, 32, 0) != 32)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      return 0;
    }

LABEL_34:
    v27 = __error();
    strerror(*v27);
LABEL_37:
    MOLogWrite();
    return 0;
  }

  if (v37 != 0x3034464649445342)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v9 = BZOpen(a3, 4, a4, 32);
  if (!v9)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v10 = v9;
  v11 = BZOpen(a3, 5, a4, *(&v37 + 1) + 32);
  if (!v11)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v29 = __error();
      strerror(*v29);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_84;
  }

  v12 = v11;
  v13 = BZOpen(a3, 6, a4, *(&v37 + 1) + v38 + 32);
  if (!v13)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v30 = __error();
      strerror(*v30);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_83;
  }

  v14 = v13;
  v15 = malloc_type_malloc(0x10000uLL, 0x2779B443uLL);
  if (!v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v31 = __error();
      strerror(*v31);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_82;
  }

  v16 = v15;
  v17 = malloc_type_malloc(0x10000uLL, 0x8F9F5CCDuLL);
  if (!v17)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v32 = __error();
      strerror(*v32);
      MOLogWrite();
    }

    v26 = 0;
    goto LABEL_81;
  }

  v18 = v17;
  if (!*(&v38 + 1))
  {
    v26 = 1;
    goto LABEL_80;
  }

  v19 = 0;
  v20 = 0;
  v33 = v12;
  while (1)
  {
    if (BZRead(v10, &buf, 24) != 24)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    if (v36 < 0)
    {
      v36 = -(v36 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v21 = buf;
    if (buf)
    {
      break;
    }

LABEL_23:
    v24 = v35;
    if (v35)
    {
      while (1)
      {
        v25 = v24 >= 0x10000 ? 0x10000 : v24;
        if (v25 != BZRead(v14, v18, v25))
        {
          break;
        }

        if ((*(a5 + 16))(a5, 2, v18, v25, v19) != v25)
        {
          v12 = v33;
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }

        v19 += v25;
        v24 -= v25;
        if (!v24)
        {
          goto LABEL_30;
        }
      }

      v12 = v33;
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_79;
      }

LABEL_78:
      MOLogWrite();
LABEL_79:
      v26 = 0;
      goto LABEL_80;
    }

LABEL_30:
    v20 += v36;
    v26 = 1;
    v12 = v33;
    if (v19 >= *(&v38 + 1))
    {
      goto LABEL_80;
    }
  }

  while (1)
  {
    if (v21 >= 0x10000)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = v21;
    }

    if ((*(a1 + 16))(a1, 1, v16, v22, v20) != v22)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v22 != BZRead(v33, v18, v22))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    v23 = 0;
    do
    {
      *(v18 + v23) += v16[v23];
      ++v23;
    }

    while (v22 != v23);
    if ((*(a5 + 16))(a5, 2, v18, v22, v19) != v22)
    {
      break;
    }

    v20 += v22;
    v19 += v22;
    v21 -= v22;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
LABEL_68:
    MOLogWrite();
  }

LABEL_69:
  v26 = 0;
  v12 = v33;
LABEL_80:
  free(v18);
LABEL_81:
  free(v16);
LABEL_82:
  BZClose(v14);
LABEL_83:
  BZClose(v12);
LABEL_84:
  BZClose(v10);
  return v26;
}

void *BZOpen(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  bzerror = 0;
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040A4FBEE0AuLL);
  v9 = v8;
  if (!v8)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

LABEL_12:
    v12 = __error();
    strerror(*v12);
LABEL_13:
    MOLogWrite();
LABEL_14:
    BZClose(v9);
    return 0;
  }

  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a1;
  v10 = funopen(v8, _fh_read, 0, 0, 0);
  v9[4] = v10;
  if (!v10)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = BZ2_bzReadOpen(&bzerror, v10, 0, 0, 0, 0);
  v9[5] = v11;
  if (!v11)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v9;
}

uint64_t BZRead(uint64_t a1, void *buf, int len)
{
  bzerror = 0;
  result = BZ2_bzRead(&bzerror, *(a1 + 40), buf, len);
  if ((bzerror & 0xFFFFFFFB) != 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void BZClose(void *a1)
{
  bzerror = 0;
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      BZ2_bzReadClose(&bzerror, v2);
    }

    v3 = a1[4];
    if (v3)
    {
      fclose(v3);
    }

    free(a1);
  }
}

uint64_t patch_file(const char *a1, const char *a2, int a3)
{
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  v5 = open(a1, 256);
  if (v5 != -1)
  {
    v6 = v5;
    if (fstat(v5, &v22) == -1)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = open(a2, 256);
      if (v7 != -1)
      {
        v8 = v7;
        if (fstat(v7, &v21) == -1)
        {
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_24;
          }

          v13 = __error();
          strerror(*v13);
        }

        else
        {
          v19[0] = MEMORY[0x29EDCA5F8];
          v19[1] = 0x40000000;
          v19[2] = __patch_file_block_invoke;
          v19[3] = &__block_descriptor_tmp_0;
          v20 = v6;
          v17[0] = MEMORY[0x29EDCA5F8];
          v17[1] = 0x40000000;
          v17[2] = __patch_file_block_invoke_2;
          v17[3] = &__block_descriptor_tmp_42;
          v18 = v8;
          v15[0] = MEMORY[0x29EDCA5F8];
          v15[1] = 0x40000000;
          v15[2] = __patch_file_block_invoke_3;
          v15[3] = &__block_descriptor_tmp_44;
          v16 = a3;
          if (patchFile(v19, v9, v17, v21.st_size, v15))
          {
            v10 = 0;
LABEL_25:
            close(v8);
            goto LABEL_26;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_24:
            v10 = 0xFFFFFFFFLL;
            goto LABEL_25;
          }
        }

        MOLogWrite();
        goto LABEL_24;
      }

      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
LABEL_17:
        v10 = 0xFFFFFFFFLL;
LABEL_26:
        close(v6);
        return v10;
      }
    }

    v12 = __error();
    strerror(*v12);
    MOLogWrite();
    goto LABEL_17;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v11 = __error();
    strerror(*v11);
    MOLogWrite();
  }

  return 0xFFFFFFFFLL;
}

uint64_t _fh_read(uint64_t a1)
{
  result = (*(*(a1 + 24) + 16))();
  if (result == -1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) += result;
  return result;
}

__CFString *MICopyProcessNameForPid()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v6 = *MEMORY[0x29EDCA608];
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v3 = @"Unknown Process Name";
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
  }

  return v3;
}

id MIFetchInfoForUsername(const char *a1, uid_t *a2, gid_t *a3, void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (sysconf(71) == -1)
  {
    MIFetchInfoForUsername_cold_2(&v17, v22);
  }

  v8 = MEMORY[0x2A1C7C4A8]();
  memset(&v17, 0, sizeof(v17));
  v16 = 0;
  result = getpwnam_r(a1, &v17, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v9, &v16);
  if (result)
  {
    v15 = 0;
    memset(v22, 0, sizeof(v22));
    v11 = MEMORY[0x29EDCA988];
    v12 = result;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = strerror(v12);
    v18 = 136315394;
    v19 = a1;
    v20 = 2080;
    v21 = v14;
    _os_log_send_and_compose_impl(v13, &v15, v22, 80, &dword_296A1B000, v11, 16, "getpwnam_r failed for user %s : %s", &v18, 22);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    MIFetchInfoForUsername_cold_1(&v18, v22, a1);
  }

  if (!v16)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    *a2 = v17.pw_uid;
  }

  if (a3)
  {
    *a3 = v17.pw_gid;
  }

  if (a4)
  {
    result = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:v17.pw_dir isDirectory:1 relativeToURL:0];
    *a4 = result;
  }

  return result;
}

uint64_t MIFetchInfoForUID(uint64_t a1, void *a2, gid_t *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x29EDCA608];
  if (sysconf(71) == -1)
  {
    v19 = *__error();
    v20 = *MEMORY[0x29EDB9EF8];
    v21 = v19;
    v22 = strerror(v19);
    v17 = _CreateError("MIFetchInfoForUID", 140, v20, v21, 0, 0, @"Failed to get home dir path size: %s", v23, v22);
    v18 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = MEMORY[0x2A1C7C4A8]();
  memset(&v29, 0, sizeof(v29));
  v28 = 0;
  v12 = getpwuid_r(a1, &v29, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11, &v28);
  if (v12)
  {
    v14 = *MEMORY[0x29EDB9EF8];
    v15 = v12;
    strerror(v12);
    _CreateError("MIFetchInfoForUID", 150, v14, v15, 0, 0, @"getpwuid_r failed for uid %d : %s", v16, a1);
    v17 = LABEL_4:;
    v18 = 0;
    goto LABEL_5;
  }

  if (!v28)
  {
    _CreateError("MIFetchInfoForUID", 155, *MEMORY[0x29EDB9EF8], 2, 0, 0, @"getpwuid_r succeeded but no user was found with uid %d", v13, a1);
    goto LABEL_4;
  }

  if (a2)
  {
    *a2 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v29.pw_name];
  }

  if (a3)
  {
    *a3 = v29.pw_gid;
  }

  if (a4)
  {
    v18 = 1;
    v25 = [MEMORY[0x29EDB8E70] fileURLWithFileSystemRepresentation:v29.pw_dir isDirectory:1 relativeToURL:0];
    v26 = v25;
    v17 = 0;
    *a4 = v25;
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

LABEL_5:
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v18 & 1) == 0)
  {
    v17 = v17;
    *a5 = v17;
  }

LABEL_10:

  return v18;
}

void MIGetCurrentMobileUserInfo(_DWORD *result, _DWORD *a2)
{
  if (MIGetCurrentMobileUserInfo_onceToken != -1)
  {
    MIGetCurrentMobileUserInfo_cold_1();
  }

  *result = MIGetCurrentMobileUserInfo_uid;
  *a2 = MIGetCurrentMobileUserInfo_gid;
}

uint64_t MIAssumeIdentityOfUsername(const char *a1, void *a2)
{
  v4 = 0;
  MIFetchInfoForUsername(a1, &v4 + 1, &v4, 0);
  return MIAssumeIdentity(HIDWORD(v4), v4, a2);
}

uint64_t MIAssumeIdentity(uint64_t a1, gid_t a2, void *a3)
{
  if (!(a2 | a1))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      MIAssumeIdentity_cold_1();
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  v20 = 0;
  v21 = 0;
  v6 = MIFetchInfoForUID(a1, &v21, 0, 0, &v20);
  v7 = v21;
  v8 = v20;
  if (v6)
  {
    if (pthread_setugid_np(a1, a2))
    {
      v9 = __error();
      v10 = *MEMORY[0x29EDB9EF8];
      v19 = *v9;
      strerror(*v9);
      _CreateAndLogError("MIAssumeIdentity", 228, v10, v19, 0, 0, @"pthread_setugid_np failed for uid %d gid %d; error %d (%s)", v11, a1);
    }

    else
    {
      if (!initgroups([v7 UTF8String], a2))
      {
        v17 = 1;
        goto LABEL_16;
      }

      v12 = *__error();
      MIRestoreIdentity();
      v13 = *MEMORY[0x29EDB9EF8];
      strerror(v12);
      _CreateAndLogError("MIAssumeIdentity", 238, v13, v12, 0, 0, @"SYS_initgroups failed; error %d (%s)", v14, v12);
    }
    v15 = ;

    v8 = v15;
  }

  if (a3)
  {
    v16 = v8;
    v17 = 0;
    *a3 = v8;
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

uint64_t MIRestoreIdentity()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = getuid();
  v1 = getgid();
  if (!(v0 | v1))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
    {
      MIRestoreIdentity_cold_1();
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  result = pthread_setugid_np(0xFFFFFF9B, 0xFFFFFF9B);
  if (result)
  {
    v3 = *__error();
    v7 = 0;
    memset(v15, 0, sizeof(v15));
    v4 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v8[0] = 67109890;
    v8[1] = v0;
    v9 = 1024;
    v10 = v1;
    v11 = 1024;
    v12 = v3;
    v13 = 2080;
    v14 = strerror(v3);
    _os_log_send_and_compose_impl(v5, &v7, v15, 80, &dword_296A1B000, v4, 16, "pthread_setugid_np failed to restore root privs from %u/%u; error %d (%s); aborting because this thread is in a bad state.", v8, 30, v6);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t MIAssumeMobileIdentity(void *a1)
{
  if (MIGetCurrentMobileUserInfo_onceToken != -1)
  {
    MIGetCurrentMobileUserInfo_cold_1();
  }

  v2 = MIGetCurrentMobileUserInfo_uid;
  v3 = MIGetCurrentMobileUserInfo_gid;

  return MIAssumeIdentity(v2, v3, a1);
}

const void *MICreateCFBundleEnforcingInfoPlistSize(void *a1, off_t a2, void *a3, void *a4)
{
  v7 = a1;
  memset(&v26, 0, sizeof(v26));
  Unique = _CFBundleCreateUnique();
  if (!Unique)
  {
    v15 = [v7 path];
    v17 = _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 302, @"MIInstallerErrorDomain", 3, 0, 0, @"Failed to create CFBundle for %@", v16, v15);

    v10 = 0;
    if (a4)
    {
LABEL_19:
      v22 = v17;
      v9 = 0;
      *a4 = v17;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v9 = Unique;
  v10 = _CFBundleCopyInfoPlistURL();
  if (!v10)
  {
    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v25 = v9;
      MOLogWrite();
    }

    v10 = [v7 URLByAppendingPathComponent:@"Info.plist" isDirectory:{0, v25}];
  }

  if (lstat([v10 fileSystemRepresentation], &v26))
  {
    v11 = *__error();
    v12 = [v10 path];
    v14 = v12;
    if (v11 != 2)
    {
      v19 = _CreateError("MICreateCFBundleEnforcingInfoPlistSize", 321, *MEMORY[0x29EDB9EF8], v11, 0, 0, @"lstat of %@ failed", v13, v12);
      v17 = _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 322, @"MIInstallerErrorDomain", 3, v19, 0, @"Error when introspecting %@", v20, v14);

      goto LABEL_18;
    }

    _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 319, @"MIInstallerErrorDomain", 35, 0, 0, @"Info.plist missing at %@", v13, v12);
    v17 = LABEL_17:;
LABEL_18:

    CFRelease(v9);
    if (a4)
    {
      goto LABEL_19;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_20;
  }

  if ((v26.st_mode & 0xF000) != 0x8000)
  {
    v14 = [v10 path];
    _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 330, @"MIInstallerErrorDomain", 3, 0, 0, @"Expected Info.plist file at %@ but found something that was not a file (found mode 0%o).", v21, v14);
    goto LABEL_17;
  }

  if (v26.st_size > a2)
  {
    v14 = [v10 path];
    _CreateAndLogError("MICreateCFBundleEnforcingInfoPlistSize", 336, @"MIInstallerErrorDomain", 236, 0, 0, @"The Info.plist at %@ is too large. Found %lld bytes on disk, but maximum allowed size is %lld bytes.", v18, v14);
    goto LABEL_17;
  }

  if (a3)
  {
    v24 = v10;
    v17 = 0;
    *a3 = v10;
  }

  else
  {
    v17 = 0;
  }

LABEL_20:

  return v9;
}

id MILoadInfoPlistWithError(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v14 = 0;
  v6 = MICreateCFBundleEnforcingInfoPlistSize(a1, 0x7FFFFFFFFFFFFFFFLL, 0, &v14);
  v7 = v14;
  v8 = v7;
  if (v6)
  {
    v13 = v7;
    v9 = MILoadInfoPlistFromBundleWithError(v6, v5, &v13);
    v10 = v13;

    CFRelease(v6);
    v8 = v10;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v11 = v8;
    *a3 = v8;
  }

LABEL_7:

  return v9;
}

id MILoadInfoPlistFromBundleWithError(__CFBundle *a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
    if (FilteredInfoPlist)
    {
      v8 = FilteredInfoPlist;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v8))
      {
        v10 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:v8];
        CFRelease(v8);
        goto LABEL_8;
      }

      v14 = CFGetTypeID(v8);
      v15 = CFCopyTypeIDDescription(v14);
      v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 403, @"MIInstallerErrorDomain", 3, 0, 0, @"Object returned from _CFBundleCreateFilteredInfoPlist was not a dictionary, was type %@", v16, v15);
      if (v15)
      {
        CFRelease(v15);
      }

      CFRelease(v8);
    }

    else
    {
      v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 397, @"MIInstallerErrorDomain", 3, 0, 0, @"Failed to get filtered Info.plist with keys %@ from bundle %@", v7, v5);
    }
  }

  else
  {
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    if (InfoDictionary)
    {
      v12 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:InfoDictionary];
      v10 = v12;
      if (v12)
      {
        [v12 removeObjectForKey:@"CFBundleInfoPlistURL"];
        v13 = 0;
        goto LABEL_18;
      }

LABEL_8:
      v13 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v17 = CFBundleCopyBundleURL(a1);
    v18 = [(__CFURL *)v17 path];
    v13 = _CreateAndLogError("MILoadInfoPlistFromBundleWithError", 419, @"MIInstallerErrorDomain", 35, 0, 0, @"CFBundleGetInfoDictionary failed for bundle at %@", v19, v18);
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v10)
  {
    v20 = v13;
    *a3 = v13;
  }

LABEL_18:

  return v10;
}

id MILoadRawInfoPlist(void *a1, void *a2)
{
  v12 = 0;
  v13 = 0;
  v3 = MICreateCFBundleEnforcingInfoPlistSize(a1, 0x7FFFFFFFFFFFFFFFLL, &v13, &v12);
  v4 = v13;
  v5 = v12;
  if (v3)
  {
    v11 = v5;
    v6 = [MEMORY[0x29EDB8DC0] MI_dictionaryWithContentsOfURL:v4 options:0 error:&v11];
    v7 = v11;

    v8 = [v6 mutableCopy];
    CFRelease(v3);
    v5 = v7;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v5;
    *a2 = v5;
  }

LABEL_7:

  return v8;
}

void MIRecordCurrentBuildVersion(void *a1)
{
  v1 = a1;
  v2 = _CFCopySystemVersionDictionary();
  v7 = 0;
  v3 = [v2 MI_writeToURL:v1 format:200 options:268435457 error:&v7];
  v4 = v7;
  if (v3)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      v5 = [v2 objectForKeyedSubscript:*MEMORY[0x29EDB8EC8]];
      v6 = [v2 objectForKeyedSubscript:@"ReleaseType"];
      MOLogWrite();

LABEL_8:
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v5 = [v1 path];
    MOLogWrite();
    goto LABEL_8;
  }
}

uint64_t MIIsBuildUpgrade(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x29EDB8DC0] dictionaryWithContentsOfURL:a1];
  v4 = v3;
  if (!v3)
  {
    if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_16;
    }

LABEL_15:
    MOLogWrite();
LABEL_16:
    v12 = 0;
    v13 = 0;
    v9 = 0;
    v11 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v5 = *MEMORY[0x29EDB8EC8];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x29EDB8EC8]];
  if (!v6)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = v6;
  v8 = _CFCopySystemVersionDictionary();
  if (!v8)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = 0;
    v13 = 0;
    v9 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:v5];
  if (!v10)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v12 = 0;
    v13 = 0;
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v4 objectForKeyedSubscript:@"ReleaseType"];
  v13 = [v9 objectForKeyedSubscript:@"ReleaseType"];
  if ([v7 isEqual:v11])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v14 = 0;
    goto LABEL_29;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

LABEL_26:
  if (a2)
  {
    v15 = v7;
    *a2 = v7;
  }

  v14 = 1;
LABEL_29:

  return v14;
}

id MILoadFilteredPlist(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v26 = 0;
  cf = 0;
  v25 = 0;
  v7 = [MEMORY[0x29EDB8DA0] dataWithContentsOfURL:v5 options:3 error:&v25];
  v8 = v25;
  if (!v7)
  {
    v12 = [v5 path];
    v16 = _CreateAndLogError("MILoadFilteredPlist", 541, @"MIInstallerErrorDomain", 4, v8, 0, @"Failed to read plist from %@", v15, v12);
    goto LABEL_21;
  }

  if (!v6)
  {
    v24 = 0;
    v10 = [MEMORY[0x29EDBA0C0] propertyListWithData:v7 options:0 format:0 error:&v24];
    v13 = v24;

    if (!v10)
    {
      v12 = [v5 path];
      v16 = _CreateAndLogError("MILoadFilteredPlist", 559, @"MIInstallerErrorDomain", 4, v13, 0, @"Failed to decode plist from %@", v20, v12);
      goto LABEL_20;
    }

    v8 = v13;
    goto LABEL_12;
  }

  Filtered = _CFPropertyListCreateFiltered();
  v10 = v26;
  if (Filtered)
  {
    v11 = v26 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v26 = 0;
LABEL_12:
    objc_opt_class();
    v12 = v10;
    if (objc_opt_isKindOfClass())
    {
      v17 = v12;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v16 = v8;
      goto LABEL_24;
    }

    v18 = objc_opt_class();
    v13 = NSStringFromClass(v18);
    _CreateAndLogError("MILoadFilteredPlist", 565, @"MIInstallerErrorDomain", 4, 0, 0, @"Object returned from _CFPropertyListCreateFiltered was not a dictionary, was type %@", v19, v13);
    goto LABEL_18;
  }

  v12 = cf;
  cf = 0;
  v13 = [v5 path];
  _CreateAndLogError("MILoadFilteredPlist", 550, @"MIInstallerErrorDomain", 4, v12, 0, @"Failed to decode plist from %@", v14, v13);
  v16 = LABEL_18:;

LABEL_20:
  v8 = v13;
LABEL_21:

  if (a3)
  {
    v21 = v16;
    v12 = 0;
    *a3 = v16;
  }

  else
  {
    v12 = 0;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v26)
  {
    CFRelease(v26);
    v26 = 0;
  }

  v22 = v12;

  return v22;
}

id MICopyCurrentBuildVersion(uint64_t a1)
{
  if (MICopyCurrentBuildVersion_onceToken != -1)
  {
    MICopyCurrentBuildVersion_cold_1();
  }

  v2 = MICopyCurrentBuildVersion_buildVersion;

  return v2;
}

void __MICopyCurrentBuildVersion_block_invoke()
{
  v0 = _CFCopySystemVersionDictionaryValue();
  objc_opt_class();
  v1 = v0;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = MICopyCurrentBuildVersion_buildVersion;
  MICopyCurrentBuildVersion_buildVersion = v2;

  if (!MICopyCurrentBuildVersion_buildVersion && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {

    MOLogWrite();
  }
}

void MIAssertHighResourceUsage()
{
  if (!atomic_fetch_add(sResourceExpectationCount, 1u))
  {
    v1 = getpid();

    MEMORY[0x2A1C76310](v1);
  }
}

void MIClearResourceAssertion()
{
  if (atomic_fetch_add(sResourceExpectationCount, 0xFFFFFFFF) == 1)
  {
    v1 = getpid();

    MEMORY[0x2A1C76368](v1);
  }
}

id MICreateSHA256Digest(void *a1, void *a2)
{
  v53 = *MEMORY[0x29EDCA608];
  v3 = a1;
  memset(md, 0, sizeof(md));
  memset(&v50, 0, sizeof(v50));
  if (lstat([v3 fileSystemRepresentation], &v50))
  {
    v4 = __error();
    v5 = *v4;
    v6 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*v4 userInfo:0];
    v7 = v3;
    v8 = [v3 fileSystemRepresentation];
    strerror(v5);
    v10 = _CreateAndLogError("MICreateSHA256Digest", 121, @"MIInstallerErrorDomain", 4, v6, 0, @"Failed to stat path %s : %s", v9, v8);

    goto LABEL_3;
  }

  if (v50.st_size <= 0xFFFFFFF)
  {
    v49 = 0;
    v12 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithContentsOfURL:v3 options:3 error:&v49];
    v10 = v49;
    if (v12)
    {
      v13 = v12;
      CC_SHA256([v12 bytes], objc_msgSend(v12, "length"), md);

LABEL_28:
      v24 = malloc_type_calloc(1uLL, 0x41uLL, 0x49FB2E10uLL);
      v25 = v24;
      v26 = 0;
      v27 = md;
      do
      {
        v28 = *v27++;
        v29 = &v24[v26];
        *v29 = _HexToASCII_hex[v28 >> 4];
        v26 += 2;
        v29[1] = _HexToASCII_hex[v28 & 0xF];
      }

      while (v26 != 64);
      v24[64] = 0;
      v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v24];
      free(v25);
      if (!a2)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_3;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x8810000000;
  v47 = "";
  memset(&v48, 0, sizeof(v48));
  CC_SHA256_Init(&v48);
  v14 = v3;
  v15 = [v3 fileSystemRepresentation];
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 3221225472;
  v41 = __MICreateSHA256Digest_block_invoke;
  v42 = &unk_29EE50840;
  v43 = &v44;
  v16 = v40;
  memset(&v51, 0, sizeof(v51));
  v17 = open(v15, 256);
  v18 = v17;
  if (v17 < 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v22 = __error();
      strerror(*v22);
      MOLogWrite();
    }

    v21 = 0;
LABEL_21:
    v20 = 0;
  }

  else
  {
    if (fstat(v17, &v51))
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v51.st_size >= 0x10000)
    {
      st_size = 0x10000;
    }

    else
    {
      st_size = v51.st_size;
    }

    v21 = malloc_type_malloc(st_size, 0x57186DA8uLL);
    if (!v21)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_13;
      }

LABEL_12:
      v19 = __error();
      strerror(*v19);
      MOLogWrite();
LABEL_13:
      v20 = 0;
      v21 = 0;
LABEL_23:
      close(v18);
      goto LABEL_24;
    }

    v33 = v51.st_size;
    if (v51.st_size < 1)
    {
      v20 = 1;
      goto LABEL_23;
    }

    v39 = v16;
    v34 = 0;
    while (1)
    {
      v35 = v33 - v34;
      if (st_size >= v35)
      {
        st_size = v35;
      }

      v36 = read(v18, v21, st_size);
      v37 = v36;
      if (v36 == -1)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v38 = __error();
          v16 = v39;
          strerror(*v38);
          MOLogWrite();
          goto LABEL_21;
        }

        goto LABEL_60;
      }

      if (v36 <= 0)
      {
        break;
      }

      v20 = v41(v39, v21, v36);
      if (v20)
      {
        v34 += v37;
        v33 = v51.st_size;
        if (v34 < v51.st_size)
        {
          continue;
        }
      }

      goto LABEL_61;
    }

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
      v16 = v39;
      goto LABEL_21;
    }

LABEL_60:
    v20 = 0;
LABEL_61:
    v16 = v39;
  }

  if (v18 != -1)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v21)
  {
    free(v21);
  }

  CC_SHA256_Final(md, (v45 + 4));
  if (v20)
  {
    _Block_object_dispose(&v44, 8);
    v10 = 0;
    goto LABEL_28;
  }

  v10 = _CreateAndLogError("MICreateSHA256Digest", 148, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to read %@", v23, v3);
  _Block_object_dispose(&v44, 8);
LABEL_3:
  v11 = 0;
  if (!a2)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (!v11)
  {
    v30 = v10;
    *a2 = v10;
  }

LABEL_33:

  return v11;
}

void sub_296A21AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MIRunTransactionalTask(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = os_transaction_create();
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __MIRunTransactionalTask_block_invoke;
  v9[3] = &unk_29EE50868;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  v8 = v4;
  dispatch_async(v5, v9);
}

uint64_t MIApplyAppPatch(void *a1, void *a2, void *a3, void *a4)
{
  v107 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x29EDB8E70];
  v12 = NSTemporaryDirectory();
  v13 = [v11 fileURLWithPath:v12 isDirectory:1];

  v14 = [v13 URLByAppendingPathComponent:@"ApplyAppPatchWorkingDir" isDirectory:1];
  v92 = [v14 URLByAppendingPathComponent:@"PreviousVersion" isDirectory:1];
  v94 = [v14 URLByAppendingPathComponent:@"Patch" isDirectory:1];
  v90 = [v94 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v15 = +[MIFileManager defaultManager];
  v105 = 0;
  LOBYTE(v12) = [v15 removeItemAtURL:v14 error:&v105];
  v16 = v105;

  v89 = v13;
  if ((v12 & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_82;
    }

    v57 = [v14 path];
    v62 = v57;
    v63 = v16;
    goto LABEL_81;
  }

  v87 = v9;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v62 = v7;
    MOLogWrite();
  }

  v17 = [MEMORY[0x29EDB8E70] fileURLWithPath:v7 isDirectory:{0, v62}];
  v104 = v16;
  v18 = [MIBOMWrapper extractZipArchiveAtURL:v17 toURL:v92 withError:&v104];
  v19 = v104;

  if (!v18)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v62 = [v92 path];
      v63 = v19;
      MOLogWrite();
    }

    v91 = 0;
    v23 = 0;
    v58 = 0;
    v16 = v19;
    goto LABEL_88;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v62 = v8;
    MOLogWrite();
  }

  v20 = [MEMORY[0x29EDB8E70] fileURLWithPath:v8 isDirectory:{0, v62}];
  v103 = v19;
  v21 = [MIBOMWrapper extractZipArchiveAtURL:v20 toURL:v94 withError:&v103];
  v16 = v103;

  if (!v21)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_82;
    }

    v57 = [v94 path];
    v62 = v57;
    v63 = v16;
LABEL_81:
    MOLogWrite();

LABEL_82:
    v91 = 0;
    v23 = 0;
    goto LABEL_83;
  }

  v22 = [v92 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v23 = _FindBundles(v22);

  if (!v23 || ![v23 count])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v62 = [v92 path];
      MOLogWrite();
    }

    v91 = 0;
    goto LABEL_83;
  }

  v24 = _FindBundles(v90);
  v91 = v24;
  if (!v24 || (v25 = v24, ![v24 count]))
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v56 = [v94 path];
      v62 = v56;
LABEL_99:
      MOLogWrite();
    }

LABEL_83:
    v58 = 0;
    goto LABEL_88;
  }

  v67 = v10;
  v68 = v8;
  v69 = v7;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v23 = v23;
  v86 = [v23 countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (!v86)
  {
    goto LABEL_74;
  }

  v85 = *v100;
  v72 = *MEMORY[0x29EDB8EC0];
  v73 = *MEMORY[0x29EDB8F20];
  v71 = *MEMORY[0x29EDB8F08];
  v82 = v23;
  while (2)
  {
    for (i = 0; i != v86; ++i)
    {
      if (*v100 != v85)
      {
        objc_enumerationMutation(v23);
      }

      v27 = *(*(&v99 + 1) + 8 * i);
      v28 = [v23 objectForKeyedSubscript:{v27, v62, v63, v64, v65, v66}];
      v29 = [v25 objectForKeyedSubscript:v27];
      v93 = [v28 objectForKeyedSubscript:@"com.apple.MobileInstallation.BundleURL"];
      v30 = [v29 objectForKeyedSubscript:@"com.apple.MobileInstallation.BundleURL"];
      if (!v30)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v62 = v27;
          MOLogWrite();
        }

        goto LABEL_28;
      }

      v31 = v30;
      v32 = [@"com.apple.deltainstallcommands." stringByAppendingString:v27];
      v33 = [v94 URLByAppendingPathComponent:v32 isDirectory:0];

      v34 = +[MIFileManager defaultManager];
      v88 = v33;
      LODWORD(v33) = [v34 itemDoesNotExistAtURL:v33];

      if (v33)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v62 = v27;
          MOLogWrite();
        }

        v23 = v82;
        v25 = v91;
LABEL_28:

        continue;
      }

      v35 = [v93 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
      v98 = 0;
      v36 = MICreateSHA256Digest(v35, &v98);
      v83 = v98;
      v84 = v36;
      v81 = v35;
      if (!v36)
      {
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          v43 = 6;
          v23 = v82;
          v44 = v88;
        }

        else
        {
          v62 = [v35 path];
          v63 = v83;
          MOLogWrite();
          v43 = 6;
          v23 = v82;
          v44 = v88;
        }

        goto LABEL_70;
      }

      v37 = [v29 objectForKeyedSubscript:v73];
      v80 = MIStringifyObject(v37);

      v38 = [v29 objectForKeyedSubscript:v72];
      v75 = MIStringifyObject(v38);

      v39 = [v28 objectForKeyedSubscript:v73];
      v79 = MIStringifyObject(v39);

      v40 = [v28 objectForKeyedSubscript:v72];
      v78 = MIStringifyObject(v40);

      v41 = [v28 objectForKeyedSubscript:v71];
      objc_opt_class();
      v42 = v41;
      if (objc_opt_isKindOfClass())
      {
        v77 = v42;
      }

      else
      {
        v77 = 0;
      }

      v45 = [v28 objectForKeyedSubscript:@"UISupportedDevices"];
      objc_opt_class();
      v46 = v45;
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v9 = v87;

      if (!v47)
      {
        v48 = [v28 objectForKeyedSubscript:@"SupportedDevices"];
        objc_opt_class();
        v49 = v48;
        if (objc_opt_isKindOfClass())
        {
          v47 = v49;
        }

        else
        {
          v47 = 0;
        }

        v9 = v87;
      }

      v50 = objc_opt_class();
      v76 = v47;
      if (MIArrayContainsOnlyClass(v47, v50))
      {
        v74 = [v93 URLByAppendingPathComponent:v77 isDirectory:0];
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          v65 = v80;
          v66 = v75;
          v64 = v78;
          MOLogWrite();
        }

        cf = 0;
        if (hardlink_copy_hierarchy([v93 fileSystemRepresentation], objc_msgSend(v31, "fileSystemRepresentation"), objc_msgSend(v88, "fileSystemRepresentation"), objc_msgSend(v79, "UTF8String"), objc_msgSend(v78, "UTF8String"), objc_msgSend(v84, "UTF8String"), objc_msgSend(v74, "fileSystemRepresentation"), v47, 0, &cf))
        {
          v51 = +[MIFileManager defaultManager];
          v96 = v16;
          v52 = [v51 removeItemAtURL:v88 error:&v96];
          v70 = v96;

          v9 = v87;
          if (v52)
          {
            [v91 removeObjectForKey:v27];
            v43 = 0;
LABEL_67:
            v23 = v82;
            v44 = v88;
            v53 = v74;
            v16 = v70;
            goto LABEL_68;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            v43 = 6;
            goto LABEL_67;
          }

          v44 = v88;
          [v88 path];
          v62 = v16 = v70;
          v63 = v70;
          MOLogWrite();

          v43 = 6;
        }

        else
        {
          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v54 = [v93 path];
            v55 = [v31 path];
            v64 = [v88 path];
            v65 = cf;
            v62 = v54;
            v63 = v55;
            MOLogWrite();
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v43 = 6;
          v9 = v87;
          v44 = v88;
        }

        v23 = v82;
        v53 = v74;
LABEL_68:

        goto LABEL_69;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v62 = [v93 path];
        MOLogWrite();
        v53 = v62;
        v43 = 6;
        v23 = v82;
        v44 = v88;
        goto LABEL_68;
      }

      v43 = 6;
      v23 = v82;
      v44 = v88;
LABEL_69:

LABEL_70:
      if (v43)
      {

        v8 = v68;
        v7 = v69;
        v10 = v67;
        goto LABEL_83;
      }

      v25 = v91;
    }

    v86 = [v23 countByEnumeratingWithState:&v99 objects:v106 count:16];
    if (v86)
    {
      continue;
    }

    break;
  }

LABEL_74:

  if ([v25 count])
  {
    v8 = v68;
    v7 = v69;
    v10 = v67;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v56 = [v25 allKeys];
      v62 = v56;
      goto LABEL_99;
    }

    goto LABEL_83;
  }

  v8 = v68;
  v7 = v69;
  v10 = v67;
  if ((_CreateZipFromDirectory(v94, v9) & 1) == 0)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v62 = v9;
      MOLogWrite();
    }

    goto LABEL_83;
  }

  v58 = 1;
LABEL_88:
  v59 = [MIFileManager defaultManager:v62];
  v95 = v16;
  [v59 removeItemAtURL:v14 error:&v95];
  v60 = v95;

  return v58 & 1;
}

id _FindBundles(void *a1)
{
  v37[6] = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = objc_opt_new();
  v3 = +[MIFileManager defaultManager];
  v35 = 0;
  v4 = [v3 urlsForItemsInDirectoryAtURL:v1 ignoringSymlinks:1 error:&v35];
  v5 = v35;

  if (v4)
  {
    v24 = v5;
    v25 = v1;
    v26 = v2;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v9 = *MEMORY[0x29EDB8F10];
      v29 = *MEMORY[0x29EDB8F20];
      v28 = *MEMORY[0x29EDB8EC0];
      v27 = *MEMORY[0x29EDB8F08];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [v11 pathExtension];
          v13 = v12;
          if (v12 && [v12 isEqualToString:@"app"])
          {
            v37[0] = v9;
            v37[1] = v29;
            v37[2] = v28;
            v37[3] = v27;
            v37[4] = @"UISupportedDevices";
            v37[5] = @"SupportedDevices";
            v14 = MEMORY[0x29EDB8D80];
            v15 = v11;
            v16 = [v14 arrayWithObjects:v37 count:6];
            v17 = [MEMORY[0x29EDB8E50] setWithArray:v16];
            v18 = MILoadInfoPlist(v15, v17);

            [v18 setObject:v15 forKeyedSubscript:@"com.apple.MobileInstallation.BundleURL"];
            v19 = [v18 objectForKeyedSubscript:v9];
            if (v19)
            {
              [v26 setObject:v18 forKeyedSubscript:v19];
            }

            else if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v22 = v18;
              MOLogWrite();
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    v2 = v26;
    v20 = v26;
    v1 = v25;
    v5 = v24;
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v23 = [v1 path];
      MOLogWrite();
    }

    v20 = 0;
  }

  return v20;
}

uint64_t _CreateZipFromDirectory(void *a1, void *a2)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v10 = fopen([v4 fileSystemRepresentation], "w+x");
  if (v10)
  {
    v5 = *MEMORY[0x29EDC6D78];
    v11[0] = *MEMORY[0x29EDC6D70];
    v11[1] = v5;
    v12[0] = *MEMORY[0x29EDC6D68];
    v12[1] = MEMORY[0x29EDB8EB0];
    v11[2] = *MEMORY[0x29EDC6D80];
    v12[2] = &unk_2A1DE8570;
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v3 fileSystemRepresentation];
    StreamableZip = SZArchiverCreateStreamableZip();
    fclose(v10);
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      [v4 fileSystemRepresentation];
      v8 = __error();
      strerror(*v8);
      MOLogWrite();
    }

    StreamableZip = 0;
  }

  return StreamableZip;
}

void *_DestroyTraversalState(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *i;
    --*(a1 + 1051);
    _FreeContinuation(a1, i);
  }

  while (1)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      break;
    }

    *(a1 + 8) = *v3;
    free(v3);
  }

  while (1)
  {
    result = *(a1 + 16);
    if (!result)
    {
      break;
    }

    *(a1 + 16) = *result;
    free(result);
  }

  return result;
}

void *_PopContinuation(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    *a1 = *result;
    --*(a1 + 1051);
  }

  return result;
}

uint64_t _FreeContinuation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *v4 = *(a1 + 8);
    *(a1 + 8) = v4;
  }

  result = *(a2 + 24);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a2 + 24) = -1;
  }

  *a2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return result;
}

void *_CreateAndPushContinuation(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = *v2;
  }

  else
  {
    v2 = malloc_type_malloc(0x20uLL, 0x103004057E7F81CuLL);
    if (!v2)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      return 0;
    }
  }

  AttrBuffer = _GetAttrBuffer(a1);
  v2[1] = AttrBuffer;
  if (!AttrBuffer)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    free(v2);
    return 0;
  }

  v2[2] = 0;
  v2[3] = 0xFFFFFFFFLL;
  *v2 = *a1;
  *a1 = v2;
  ++*(a1 + 1051);
  return v2;
}

void *_GetAttrBuffer(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    *(a1 + 8) = *v1;
    return v1;
  }

  v3 = *(a1 + 1050);
  if (v3 >= 0x10)
  {
    v4 = *a1;
    if (*a1 && v4[1])
    {
      while (1)
      {
        v5 = v4;
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (!v4[1])
        {
          if (!v5)
          {
            goto LABEL_15;
          }

          break;
        }
      }

      v1 = v5[1];
      v5[1] = 0;
      *(v5 + 7) = 0;
      *(v5 + 5) = 0;
      v6 = *(v5 + 6);
      if ((v6 & 0x80000000) == 0)
      {
        close(v6);
        *(v5 + 6) = -1;
      }
    }

    else
    {
LABEL_15:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      return 0;
    }

    return v1;
  }

  *(a1 + 1050) = v3 + 1;

  return malloc_type_malloc(0x4000uLL, 0x67131B5uLL);
}

uint64_t _PushContinuation(uint64_t result, void *a2)
{
  *a2 = *result;
  *result = a2;
  ++*(result + 1051);
  return result;
}

BOOL _PushPathBuf(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 1048);
  v4 = a3 + v3 + 1;
  if (v4 <= 0x3FF)
  {
    v6 = a1 + 24;
    *(a1 + 24 + v3) = 47;
    memcpy((*(a1 + 1048) + a1 + 24 + 1), a2, a3);
    *(a1 + 1048) = v4;
    *(v6 + v4) = 0;
  }

  return v4 < 0x400;
}

uint64_t _PopPathBuf(uint64_t result)
{
  v1 = *(result + 1048);
  if (*(result + 1048))
  {
    do
    {
      v2 = *(result + 23 + v1) == 47 || v1 == 1;
      --v1;
    }

    while (!v2);
  }

  *(result + 24 + v1) = 0;
  *(result + 1048) = v1;
  return result;
}

unsigned __int8 *_LastPathElement(unint64_t a1, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = (a2 + a1 - 1);
  while (1)
  {
    v5 = v4;
    v6 = v3;
    v7 = *v4;
    if (v4 <= a1)
    {
      break;
    }

    --v4;
    ++v3;
    if (v7 == 47)
    {
      goto LABEL_6;
    }
  }

  if (v7 == 47)
  {
LABEL_6:
    *a3 = v6;
    return v5 + 1;
  }

  return 0;
}

uint64_t TraverseDirectoryWithPostTraversal(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5, void *a6)
{
  v9 = a2;
  v131 = *MEMORY[0x29EDCA608];
  v11 = a5;
  v12 = a6;
  v107 = 0;
  v108 = 0;
  v106 = 5;
  if (a3)
  {
    v13 = -1610579959;
  }

  else
  {
    v13 = -1610612727;
  }

  HIDWORD(v106) = v13 & 0xBDB8FFFF | (((a3 >> 1) & 7) << 16) & 0xBDBFFFFF | (((a3 >> 5) & 1) << 22) & 0xBDFFFFFF | (((a3 >> 4) & 1) << 30) | (((a3 >> 6) & 1) << 25);
  if ((a3 & 0x80) != 0)
  {
    LODWORD(v108) = 1;
    v14 = 5;
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 4;
  if ((a3 & 0x100) != 0)
  {
LABEL_8:
    LODWORD(v108) = v14;
  }

LABEL_9:
  if ((a3 & 0x200) != 0)
  {
    HIDWORD(v108) = 512;
  }

  HIDWORD(v107) = 6;
  bzero(&v125, 0x420uLL);
  if (!a1)
  {
    _CreateAndLogError("TraverseDirectoryWithPostTraversal", 912, @"MIInstallerErrorDomain", 25, 0, 0, @"%s was called with a NULL path parameter.", v15, "_Bool TraverseDirectoryWithPostTraversal(const char *, TraverseDirectoryOptions, TraverseDirectoryAdditionalFetchProperties, NSError *__autoreleasing *, __strong TraverseDirectoryItemBlock, __strong TraverseDirectoryPostTraversalBlock)");
    goto LABEL_22;
  }

  v16 = __strlcpy_chk();
  if (v16 >= 0x400)
  {
    _CreateAndLogError("TraverseDirectoryWithPostTraversal", 919, @"MIInstallerErrorDomain", 4, 0, 0, @"Attempted to iterate directories starting at a path that was too long: %s", v17, a1);
    v30 = LABEL_22:;
    goto LABEL_23;
  }

  v129 = v16;
  v18 = _CreateAndPushContinuation(&v125);
  if (!v18)
  {
    _CreateAndLogError("TraverseDirectoryWithPostTraversal", 927, *MEMORY[0x29EDB9EF8], 12, 0, 0, @"Failed to create a continuation", v19, v101);
    goto LABEL_22;
  }

  v104 = a4;
  if (v9)
  {
    v30 = 0;
  }

  else
  {
    v20 = v18;
    v21 = v11;
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    *__errnum = 0u;
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    ContinuationFD = _GetContinuationFD(&v125, v20, 0, &v110);
    v23 = v110;
    if (ContinuationFD == -1)
    {
      v29 = v9;
    }

    else
    {
      if (fgetattrlist(ContinuationFD, &v106, *(v20 + 8), 0x4000uLL, 32 * (HIDWORD(v108) != 0)))
      {
        v24 = *__error();
        v25 = *MEMORY[0x29EDB9EF8];
        v26 = v24;
        strerror(v24);
        _CreateAndLogError("_CallBlockForBaseItem", 844, v25, v26, 0, 0, @"fgetattrlist for %s failed: %s", v27, v128);
      }

      else
      {
        _ParseAttributeBuf(v128, *(v20 + 8), &v112, &v111, 0, &v109);
        if (DWORD1(v114) != 2)
        {
          v73 = *(v20 + 24);
          if ((v73 & 0x80000000) == 0)
          {
            close(v73);
            *(v20 + 24) = -1;
          }
        }

        v74 = v129 + 24;
        v75 = 25;
        if (v74 < 0x19)
        {
          v75 = v129 + 24;
        }

        v76 = v129;
        while (v76 + 24 >= 26)
        {
          v77 = v128[--v76];
          if (v77 == 47)
          {
            v75 = v76 + 25;
LABEL_111:
            v29 = v9;
            v78 = _CallClientBlock(v9, v128, v129, &v125 + v75, v74 - v75, 0, &v112, &v119, v111, v21);
            v70 = 0;
            v68 = v109 | (v78 != 0) | (DWORD1(v114) != 2);
            v69 = 1;
            goto LABEL_96;
          }
        }

        if (*(&v125 + v75 - 1) == 47)
        {
          goto LABEL_111;
        }

        _CreateAndLogError("_CallBlockForBaseItem", 860, @"MIInstallerErrorDomain", 4, 0, 0, @"Failed to locate last path element in %s", v72, v128);
      }
      v28 = ;
      v29 = v9;

      v23 = v28;
    }

    v67 = v23;
    v68 = 0;
    v69 = 0;
    v70 = v23;
LABEL_96:

    v30 = v70;
    if (!v69)
    {
      goto LABEL_127;
    }

    v9 = v29;
    if (v68)
    {
      goto LABEL_98;
    }
  }

  v34 = v125;
  if (!v125)
  {
    goto LABEL_98;
  }

  v102 = (v12 + 16);
LABEL_30:
  v125 = *v34;
  --v130;
  if (*&v34[1] || (AttrBuffer = _GetAttrBuffer(&v125), (v34[1] = AttrBuffer) != 0))
  {
    while (1)
    {
      v105 = v11;
      v38 = v12;
      v124 = 0;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v119 = 0u;
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      *__errnum = 0u;
      v39 = v34[3].u16[2];
      if (!v34[3].i16[2])
      {
        goto LABEL_69;
      }

      v40 = v34[2].u32[0];
      v41 = v34[2].u32[1];
      v42 = v40 - v41;
      if (v40 < v41)
      {
        _CreateAndLogError("_ProcessContinuation", 670, @"MIInstallerErrorDomain", 4, 0, 0, @"Internal error: totalProcessedEntryCount (%u) was less than reprocessCount (%u)", v37, v34[2].u32[0]);
        v71 = LABEL_100:;
LABEL_120:
        v85 = v71;

        v86 = v71;
LABEL_121:
        v87 = v86;

        v88 = v34[1];
        if (v88)
        {
          *v88 = v126;
          v126 = v88;
        }

        v89 = v34[3].i32[0];
        if ((v89 & 0x80000000) == 0)
        {
          close(v89);
          v34[3].i32[0] = -1;
        }

        *v34 = v127;
        v127 = v34;
        goto LABEL_126;
      }

      if (v40 == v41)
      {
        v43 = v34[3].u16[3];
      }

      else
      {
        if (v42 >= v39)
        {
          v34[2].i32[1] = v41 + v39;
          v34[3].i16[3] = v39;
          goto LABEL_69;
        }

        v43 = (v40 - v41);
        v34[3].i16[3] = v42;
        v34[2].i32[1] = v40;
      }

      v44 = v34[1];
      if (v43)
      {
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v47 = *(*&v44 + v46);
          v46 += v47;
          if (v46 > 0x4000)
          {
            break;
          }

          if (++v45 >= v43)
          {
            goto LABEL_44;
          }
        }

        _CreateAndLogError("_ProcessContinuation", 705, @"MIInstallerErrorDomain", 4, 0, 0, @"Read entry length %u for entry %hu but that put us off the end of the buffer", v37, v47);
        goto LABEL_100;
      }

      v46 = 0;
LABEL_44:
      v103 = v11;
      if (v43 < v39)
      {
        while (1)
        {
          v110 = 0;
          v111 = 0;
          v109 = 0;
          _ParseAttributeBuf(v128, *&v44 + v46, &v112, &v110, &v111, &v109);
          v49 = v111;
          if (!v111)
          {
            break;
          }

          v46 += v112;
          if (v46 > 0x4000)
          {
            v79 = @"MIInstallerErrorDomain";
            v101 = v112;
            v80 = @"Read entry length %u for entry %hu but that put us off the end of the buffer";
            v81 = 729;
            goto LABEL_114;
          }

          v50 = __errnum[2];
          if (__errnum[2])
          {
            v83 = *MEMORY[0x29EDB9EF8];
            strerror(__errnum[2]);
            _CreateAndLogError("_ProcessContinuation", 736, v83, v50, 0, 0, @"got error while processing entry %hu in %s : %s", v84, v43);
            goto LABEL_119;
          }

          v51 = (v114 - 1);
          if (!_PushPathBuf(&v125, v111, v51))
          {
            v79 = *MEMORY[0x29EDB9EF8];
            v101 = v49;
            v80 = @"Could not append element %s of length %zd to path %s because it would make the path longer than MAXPATHLEN";
            v81 = 743;
            v82 = 63;
            goto LABEL_118;
          }

          v52 = _CallClientBlock(v9, v128, v129, v49, v51, v130 + 1, &v112, &v119, v110, v105);
          if (v52 == 2)
          {
            v109 = 1;
          }

          else if (v52 == 1)
          {
            goto LABEL_131;
          }

          ++v34[3].i16[3];
          v34[2] = vadd_s32(v34[2], 0x100000001);
          if (DWORD1(v114) == 2)
          {
            if ((v109 & 1) == 0)
            {
              *v34 = v125;
              v125 = v34;
              ++v130;
              if (_CreateAndPushContinuation(&v125))
              {

                v11 = v103;
                goto LABEL_92;
              }

              v79 = *MEMORY[0x29EDB9EF8];
              v80 = @"Failed to create a continuation";
              v81 = 773;
              v82 = 12;
LABEL_118:
              _CreateAndLogError("_ProcessContinuation", v81, v79, v82, 0, 0, v80, v48, v101);
              v71 = LABEL_119:;
              v11 = v103;
              goto LABEL_120;
            }

            if (v12)
            {
              v53 = objc_autoreleasePoolPush();
              v54 = (*v102)(v38, v128);
              objc_autoreleasePoolPop(v53);
              if (!v54)
              {
LABEL_131:

                v97 = v34[1];
                v11 = v103;
                if (v97)
                {
                  *v97 = v126;
                  v126 = v97;
                }

                v98 = v34[3].i32[0];
                if ((v98 & 0x80000000) == 0)
                {
                  close(v98);
                  v34[3].i32[0] = -1;
                }

                *v34 = v127;
                v127 = v34;
                goto LABEL_98;
              }
            }
          }

          v55 = v129;
          if (v129)
          {
            v11 = v103;
            do
            {
              v56 = v55 - 1;
              v57 = v128[v55 - 1] == 47 || v55 == 1;
              --v55;
            }

            while (!v57);
            v55 = v56;
          }

          else
          {
            v11 = v103;
          }

          v43 = (v43 + 1);
          v128[v55] = 0;
          v129 = v55;
          if (v43 >= v34[3].u16[2])
          {
            goto LABEL_69;
          }
        }

        v79 = @"MIInstallerErrorDomain";
        v101 = v43;
        v80 = @"Entry %hu in %s did not include name information even though we requested it.";
        v81 = 722;
LABEL_114:
        v82 = 4;
        goto LABEL_118;
      }

LABEL_69:

      *&v112 = 0;
      v58 = _GetContinuationFD(&v125, v34, 1, &v112);
      v59 = v112;
      if (v58 == -1)
      {
        goto LABEL_129;
      }

      v60 = getattrlistbulk(v58, &v106, *&v34[1], 0x4000uLL, 32 * (HIDWORD(v108) != 0));
      if (!v60)
      {

        if (!v12 || (v9 & 1) != 0 && !v125)
        {
          goto LABEL_78;
        }

        v61 = objc_autoreleasePoolPush();
        if (!(*v102)(v38, v128))
        {
          v99 = v34[1];
          if (v99)
          {
            *v99 = v126;
            v126 = v99;
          }

          v100 = v34[3].i32[0];
          if ((v100 & 0x80000000) == 0)
          {
            close(v100);
            v34[3].i32[0] = -1;
          }

          *v34 = v127;
          v127 = v34;
          objc_autoreleasePoolPop(v61);
          goto LABEL_98;
        }

        objc_autoreleasePoolPop(v61);
LABEL_78:
        v62 = v129;
        if (v129)
        {
          do
          {
            v63 = v62 - 1;
            v64 = v128[v62 - 1] == 47 || v62 == 1;
            --v62;
          }

          while (!v64);
          v62 = v63;
        }

        v128[v62] = 0;
        v129 = v62;
        v65 = v34[1];
        if (v65)
        {
          *v65 = v126;
          v126 = v65;
        }

        v66 = v34[3].i32[0];
        if ((v66 & 0x80000000) == 0)
        {
          close(v66);
          v34[3].i32[0] = -1;
        }

        *v34 = v127;
        v127 = v34;
LABEL_92:
        v34 = v125;
        if (!v125)
        {
LABEL_98:
          _DestroyTraversalState(&v125);
          v32 = 1;
          goto LABEL_26;
        }

        goto LABEL_30;
      }

      if (v60 == -1)
      {
        v90 = *__error();
        v91 = *MEMORY[0x29EDB9EF8];
        v92 = v90;
        v93 = v34[2].u32[0];
        strerror(v90);
        v95 = _CreateAndLogError("_PopulateAttrBuf", 425, v91, v92, 0, 0, @"getattrlistbulk failed on entry %u in %s : %s", v94, v93);

        v59 = v95;
LABEL_129:
        v96 = v59;

        v86 = v59;
        goto LABEL_121;
      }

      v34[3].i16[2] = v60;
      v34[3].i16[3] = 0;
    }
  }

  v87 = _CreateAndLogError("TraverseDirectoryWithPostTraversal", 952, *MEMORY[0x29EDB9EF8], 12, 0, 0, @"Failed to locate an attrBuf", v36, v101);

LABEL_126:
  v30 = v87;
LABEL_127:
  a4 = v104;
LABEL_23:
  _DestroyTraversalState(&v125);
  if (a4)
  {
    v31 = v30;
    v32 = 0;
    *a4 = v30;
  }

  else
  {
    v32 = 0;
  }

LABEL_26:

  return v32;
}

uint64_t _GetContinuationFD(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a2 + 24);
  if (v4 == -1)
  {
    if (a3)
    {
      v8 = 1048832;
    }

    else
    {
      v8 = 0x200000;
    }

    v9 = a1 + 24;
    v10 = open((a1 + 24), v8);
    if ((v10 & 0x80000000) == 0)
    {
      v4 = v10;
      v5 = 0;
      *(a2 + 24) = v4;
      goto LABEL_16;
    }

    v11 = __error();
    v12 = *v11;
    v13 = *MEMORY[0x29EDB9EF8];
    if (v12 == 20 || v12 == 2)
    {
      strerror(*v11);
      v5 = _CreateError("_GetContinuationFD", 315, v13, v12, 0, 0, @"Failed to open %s : %s", v15, v9);
      if (!a4)
      {
LABEL_15:
        v4 = 0xFFFFFFFFLL;
        goto LABEL_16;
      }
    }

    else
    {
      strerror(*v11);
      v5 = _CreateAndLogError("_GetContinuationFD", 317, v13, v12, 0, 0, @"Failed to open %s : %s", v17, v9);
      if (!a4)
      {
        goto LABEL_15;
      }
    }

    v5 = v5;
    *a4 = v5;
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

  return v4;
}

uint64_t _ParseAttributeBuf(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, _BYTE *a6)
{
  *(a3 + 96) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = *a2;
  v10 = *(a2 + 20);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 20) = v10;
  v11 = *(a3 + 4);
  if ((v11 & 0x20000000) == 0)
  {
    v12 = (a2 + 24);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if ((v11 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(a3 + 24) = *(a2 + 24);
  v12 = (a2 + 28);
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = *v12;
  *(a3 + 28) = *v12;
  v14 = v12++ + v13;
  if ((v11 & 8) != 0)
  {
LABEL_7:
    v15 = *v12;
    v12 = (v12 + 4);
    *(a3 + 36) = v15;
  }

LABEL_8:
  if ((v11 & 0x8000) != 0)
  {
    v17 = *v12;
    v12 = (v12 + 4);
    *(a3 + 40) = v17;
    if ((v11 & 0x10000) == 0)
    {
LABEL_10:
      if ((v11 & 0x20000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v11 & 0x10000) == 0)
  {
    goto LABEL_10;
  }

  v18 = *v12;
  v12 = (v12 + 4);
  *(a3 + 44) = v18;
  if ((v11 & 0x20000) == 0)
  {
LABEL_11:
    if ((v11 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v19 = *v12;
  v12 = (v12 + 4);
  *(a3 + 48) = v19;
  if ((v11 & 0x40000) == 0)
  {
LABEL_12:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v21 = *v12;
    *(a3 + 56) = *v12;
    v16 = v12++ + v21;
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_18:
  v20 = *v12;
  v12 = (v12 + 4);
  *(a3 + 52) = v20;
  if ((v11 & 0x400000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v16 = 0;
  if ((v11 & 0x2000000) != 0)
  {
LABEL_20:
    v22 = *v12++;
    *(a3 + 64) = v22;
  }

LABEL_21:
  if ((v11 & 0x40000000) != 0)
  {
    v23 = *v12;
    v12 = (v12 + 4);
    *(a3 + 72) = v23;
  }

  if (*(a3 + 36) == 2)
  {
    v24 = *(a3 + 12);
    if ((v24 & 2) != 0)
    {
      v25 = *v12;
      v12 = (v12 + 4);
      *(a3 + 80) = v25;
      if (!v25)
      {
        *a6 = 1;
      }
    }

    if ((v24 & 4) != 0)
    {
      v26 = *v12;
      v12 = (v12 + 4);
      *(a3 + 84) = v26;
      if ((v26 & 3) != 0)
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          result = MOLogWrite();
        }

        *a6 = 1;
      }
    }
  }

  else
  {
    v28 = *(a3 + 16);
    if (v28)
    {
      v29 = *v12;
      v12 = (v12 + 4);
      *(a3 + 80) = v29;
    }

    if ((v28 & 4) != 0)
    {
      v30 = *v12++;
      *(a3 + 88) = v30;
    }
  }

  if ((*(a3 + 21) & 2) != 0)
  {
    *(a3 + 96) = *v12;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a4)
  {
    *a4 = v16;
  }

  return result;
}

uint64_t _CallClientBlock(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v18 = a10;
  v19 = *(a7 + 36);
  if ((a1 & 2) != 0 && v19 == 2)
  {
    v20 = 0;
  }

  else
  {
    v21 = a9;
    *a8 = *(a7 + 64);
    *(a8 + 8) = *(a7 + 88);
    *(a8 + 24) = a2;
    *(a8 + 32) = a3;
    *(a8 + 40) = a4;
    *(a8 + 48) = a5;
    *(a8 + 56) = *(a7 + 52);
    *(a8 + 60) = v19;
    v22 = *(a7 + 72);
    *(a8 + 64) = *(a7 + 80);
    *(a8 + 68) = v22;
    *(a8 + 72) = *(a7 + 40);
    *(a8 + 80) = *(a7 + 80);
    v23 = *(a7 + 48) & 0xFFF;
    *(a8 + 84) = v23;
    v24 = v19 - 1;
    if (v24 <= 6)
    {
      *(a8 + 84) = word_296A31EA8[v24] | v23;
    }

    if (a9)
    {
      v21 = *(a9 + 36) != -1;
    }

    *(a8 + 86) = v21;
    *(a8 + 87) = a6;
    v25 = objc_autoreleasePoolPush();
    v29 = 1;
    v26 = v18[2](v18, a8, &v29);
    if (v29)
    {
      v27 = 0;
    }

    else
    {
      v27 = 2;
    }

    if (v26)
    {
      v20 = v27;
    }

    else
    {
      v20 = 1;
    }

    objc_autoreleasePoolPop(v25);
  }

  return v20;
}

uint64_t MIBooleanValue(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

uint64_t MIArrayContainsOnlyClass(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id MIArrayFilteredToContainOnlyClass(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = a1;
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

uint64_t MIDictionaryContainsOnlyClasses(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __MIDictionaryContainsOnlyClasses_block_invoke;
  v8[3] = &unk_29EE50890;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_296A247A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MIDictionaryContainsOnlyClasses_block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id MIStringifyObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MIArrayifyThing(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (MIArrayContainsOnlyClass(v3, a2))
      {
        v4 = v3;
LABEL_7:
        v5 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v8[0] = v3;
        v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v3 allObjects];
        if (MIArrayContainsOnlyClass(v6, a2))
        {
          v5 = v6;
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

BOOL MICompareObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

uint64_t _removefile_error_callback(_removefile_state *a1, uint64_t a2, _DWORD *a3)
{
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    dst = 2;
  }

  else if (dst != 2 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    strerror(dst);
    MOLogWrite();
  }

  if (a3 && !*a3)
  {
    *a3 = dst;
  }

  return 0;
}

uint64_t _CopyfileStatusCallback(const char *a1, int a2, uint64_t a3, const char *a4, uint64_t a5, void *a6)
{
  if (a2 == 3)
  {
    v8 = a6;
    v9 = *__error();
    if ([v8 ignoreErrors])
    {
      if (a1)
      {
        if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_17;
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_17;
      }

      strerror(v9);
LABEL_16:
      MOLogWrite();
LABEL_17:
      v10 = 1;
LABEL_28:

      return v10;
    }

    if (v9 == 45)
    {
      memset(&v23, 0, sizeof(v23));
      if (lstat(a4, &v23))
      {
        v12 = *__error();
        _CreateError("_CopyfileStatusCallback", 263, *MEMORY[0x29EDB9EF8], v12, 0, 0, @"lstat returned an error when trying to determine type for %s", v13, a4);
        v20 = LABEL_27:;
        [v8 setError:v20];

        v10 = 2;
        goto LABEL_28;
      }

      v17 = v23.st_mode & 0xF000;
      if (v17 >= 0x6000)
      {
        if (v17 == 24576)
        {
          if (gLogHandle && *(gLogHandle + 44) < 5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v17 == 49152)
        {
          if (gLogHandle && *(gLogHandle + 44) < 5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v17 == 4096)
        {
          if (gLogHandle && *(gLogHandle + 44) < 5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v17 == 0x2000)
        {
          if (gLogHandle && *(gLogHandle + 44) < 5)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      v18 = *MEMORY[0x29EDB9EF8];
      if (a1)
      {
        v22 = a1;
        v15 = @"copyfile hit ENOTSUP at %d while copying %s to %s; src mode: 0%o";
        v16 = 284;
      }

      else
      {
        v22 = a4;
        v15 = @"copyfile hit ENOTSUP in source hierarchy while copying %s to %s; src mode: 0%o";
        v16 = 282;
      }

      v19 = 45;
    }

    else
    {
      v14 = *MEMORY[0x29EDB9EF8];
      strerror(v9);
      if (a1)
      {
        v22 = a1;
        v15 = @"copyfile failed at %d while copying %s to %s: %s (%d)";
        v16 = 293;
      }

      else
      {
        v22 = a4;
        v15 = @"copyfile failed in source hierarchy while copying %s to %s: %s (%d)";
        v16 = 291;
      }

      v18 = v14;
      v19 = v9;
    }

    _CreateError("_CopyfileStatusCallback", v16, v18, v19, 0, 0, v15, v11, v22);
    goto LABEL_27;
  }

  return 0;
}

void sub_296A268C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_296A272C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296A27DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_296A28070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296A282B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t _DTypeForVFSType(unsigned int a1)
{
  v1 = 0x10C0A0206040800uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 0xF;
}

void sub_296A28910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296A29484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296A295EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296A29D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _EnumerateExtendedAttributes(const char *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = open(a1, 0x200000);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    if (a2)
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    v11 = flistxattr(v8, 0, 0, v10);
    if (v11 < 0)
    {
      v26 = *__error();
      v27 = *MEMORY[0x29EDB9EF8];
      v28 = v26;
      strerror(v26);
      _CreateError("_CopyEAList", 1910, v27, v28, 0, 0, @"Could not get the length for extended attribute list for %s: %s", v29, a1);
    }

    else
    {
      v13 = v11;
      if (v11)
      {
        v14 = malloc_type_malloc(v11, 0xA4F24555uLL);
        if (v14)
        {
          v15 = v14;
          v16 = flistxattr(v9, v14, v13, v10);
          if (v16 < 0)
          {
            v42 = *__error();
            v43 = *MEMORY[0x29EDB9EF8];
            v44 = v42;
            strerror(v42);
            _CreateError("_CopyEAList", 1927, v43, v44, 0, 0, @"Could not get extended attribute list for %s: %s", v45, a1);
          }

          else
          {
            v18 = v16;
            if (v16)
            {
              v19 = 0;
              goto LABEL_17;
            }

            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              MOLogWrite();
            }

            _CreateError("_CopyEAList", 1931, @"MIInstallerErrorDomain", 140, 0, 0, @"No extended attributes found on %s", v17, a1);
          }
          v19 = ;
          free(v15);
LABEL_16:
          v34 = v19;

          v15 = 0;
          v18 = 0;
LABEL_17:
          v35 = v19;
          v24 = v35;
          if (v15)
          {
            if (v18)
            {
              v36 = v15;
              do
              {
                if (!v7[2](v7, v9, v36))
                {
                  break;
                }

                v37 = strlen(v36);
                v36 += v37 + 1;
                v18 -= v37 + 1;
              }

              while (v18);
            }

            v25 = 1;
            goto LABEL_28;
          }

          v38 = [v35 domain];
          v25 = [v38 isEqualToString:@"MIInstallerErrorDomain"];
          if (v25)
          {
            v39 = [v24 code];

            if (v39 != 140)
            {
              v25 = 0;
              goto LABEL_28;
            }

            v38 = v24;
            v24 = 0;
          }

LABEL_28:
          close(v9);
          goto LABEL_29;
        }

        v30 = *__error();
        v31 = *MEMORY[0x29EDB9EF8];
        v32 = v30;
        strerror(v30);
        _CreateError("_CopyEAList", 1920, v31, v32, 0, 0, @"Failed to malloc %zd bytes for extended attribute list for %s: %s", v33, v13);
      }

      else
      {
        _CreateError("_CopyEAList", 1913, @"MIInstallerErrorDomain", 140, 0, 0, @"No extended attributes found on %s", v12, a1);
      }
    }
    v19 = ;
    goto LABEL_16;
  }

  v20 = *__error();
  v21 = *MEMORY[0x29EDB9EF8];
  v22 = v20;
  strerror(v20);
  v24 = _CreateError("_EnumerateExtendedAttributes", 1960, v21, v22, 0, 0, @"Failed to open %s: %s", v23, a1);
  v25 = 0;
  v15 = 0;
LABEL_29:
  free(v15);
  if (a3 && (v25 & 1) == 0)
  {
    v40 = v24;
    *a3 = v24;
  }

  return v25;
}

id _DataForEAKey(char *name, int fd, void *a3)
{
  v6 = fgetxattr(fd, name, 0, 0, 0, 32);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v11 = *__error();
    v12 = *MEMORY[0x29EDB9EF8];
    v13 = v11;
    strerror(v11);
    _CreateError("_DataForEAKey", 1857, v12, v13, 0, 0, @"Could not get data length for extended attribute key %s: %s", v14, name);
    v15 = LABEL_8:;
    v16 = 0;
    goto LABEL_9;
  }

  v8 = v6;
  if (!v6)
  {
    v31 = name;
    v9 = @"Data for extended attribute key %s was empty";
    v10 = 1860;
    goto LABEL_7;
  }

  if (v6 > 0x1000)
  {
    v31 = name;
    v9 = @"Data length is more than 4 KB for extended attribute key %s: length is %zd bytes";
    v10 = 1863;
LABEL_7:
    _CreateError("_DataForEAKey", v10, @"MIInstallerErrorDomain", 4, 0, 0, v9, v7, v31);
    goto LABEL_8;
  }

  v20 = malloc_type_malloc(v6, 0x4E885ED5uLL);
  if (!v20)
  {
    v23 = *__error();
    v24 = *MEMORY[0x29EDB9EF8];
    v25 = v23;
    strerror(v23);
    _CreateError("_DataForEAKey", 1870, v24, v25, 0, 0, @"Failed to malloc %zd bytes for extended attribute key %s: %s", v26, v8);
    goto LABEL_8;
  }

  v16 = v20;
  v21 = fgetxattr(fd, name, v20, v8, 0, 32);
  if (v21 < 0)
  {
    v27 = *__error();
    v28 = *MEMORY[0x29EDB9EF8];
    v29 = v27;
    strerror(v27);
    _CreateError("_DataForEAKey", 1877, v28, v29, 0, 0, @"Failed to malloc %zd bytes for extended attribute key %s: %s", v30, v8);
  }

  else
  {
    if (v21)
    {
      v18 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v16 length:v21 freeWhenDone:1];
      v15 = 0;
      if (v18)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    _CreateError("_DataForEAKey", 1880, @"MIInstallerErrorDomain", 4, 0, 0, @"Data for key %s returned length 0, expected length %zd", v22, name);
  }
  v15 = ;
LABEL_9:
  free(v16);
  if (a3)
  {
    v17 = v15;
    v18 = 0;
    *a3 = v15;
  }

  else
  {
    v18 = 0;
  }

LABEL_12:

  return v18;
}

void sub_296A2ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_296A2AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CheckRealpathHasBasePrefix(void *a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  bzero(v25, 0x400uLL);
  realpath_DARWIN_EXTSN([v3 fileSystemRepresentation], v25);
  v5 = [MEMORY[0x29EDBA0F8] stringWithFileSystemRepresentation:v25];
  v6 = [v5 pathComponents];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v4 pathComponents];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    v19 = v4;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if (v10 >= [v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", v10), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, (v15 & 1) == 0))
        {
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            v16 = 0;
            v4 = v19;
          }

          else
          {
            [v3 fileSystemRepresentation];
            v4 = v19;
            v18 = [v19 path];
            MOLogWrite();

            v16 = 0;
          }

          goto LABEL_16;
        }

        ++v10;
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v16 = 1;
      v4 = v19;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_16:

  return v16;
}

void sub_296A2DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t immutable_open(int a1, char *a2, int a3, uint64_t a4)
{
  v4 = open(a2, a3, a4);
  v5 = v4;
  if ((v4 & 0x80000000) == 0)
  {
    if (fcntl(v4, 68, 1) < 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v6 = __error();
      v10 = strerror(*v6);
      MOLogWrite();
    }

    if (fcntl(v5, 48, 1, v10) < 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v7 = __error();
      v11 = strerror(*v7);
      MOLogWrite();
    }

    if (fcntl(v5, 76, 1, v11) < 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v8 = __error();
      strerror(*v8);
      MOLogWrite();
    }
  }

  return v5;
}

uint64_t bom_file_error_handler(uint64_t a1, uint64_t a2, int a3)
{
  v4 = BOMCopierUserData();
  if (v4)
  {
    *v4 = a3;
    *(v4 + 4) = 1;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    strerror(a3);
    MOLogWrite();
  }

  return 2;
}

uint64_t bom_fatal_error_handler()
{
  v0 = BOMCopierUserData();
  if (v0)
  {
    *(v0 + 4) = 1;
  }

  result = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    return MOLogWrite();
  }

  return result;
}

uint64_t bom_fatal_file_error_handler(uint64_t a1, uint64_t a2, int a3)
{
  result = BOMCopierUserData();
  if (result)
  {
    *result = a3;
    *(result + 4) = 1;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    strerror(a3);
    return MOLogWrite();
  }

  return result;
}

uint64_t bom_copier_copy_file_finished_handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = BOMCopierUserData();
  if (result)
  {
    *(result + 16) += a4;
  }

  return result;
}

unint64_t *bom_copier_copy_file_update_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = BOMCopierUserData();
  if (result)
  {
    v5.n128_f64[0] = (result[2] + a3) / result[1] * 100.0;
    v6 = *(result[3] + 16);
    v7 = result[3];

    return v6(v7, v5);
  }

  return result;
}

uint64_t create_new_header_for_hiding(uint64_t a1, void *a2, size_t *a3, int a4)
{
  v9 = 0;
  v10 = 0;
  if (!a2 || !a3)
  {
LABEL_7:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  *a3 = 0;
  if (!examine_binary(a1, &v9))
  {
    if ((v9 & 0x3E) != 0x2E)
    {
      return 0;
    }

    if (v10 < 2)
    {
      if (HIDWORD(v10) == HIDWORD(v9) - 1)
      {
        return create_fat_disk_header(HIDWORD(v10), a2, a3);
      }

      if (a4)
      {
        return create_reordered_hidden_disk_header(a1, a2, a3, HIDWORD(v9), HIDWORD(v10));
      }

      syslog(3, "arm64 slice at index %u, not last (nfat_arch = %u)\n");
    }

    else
    {
      syslog(3, "too many (%u) arm64 slices\n");
    }

    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t examine_binary(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  fat_header = 0;
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  *a2 = 0;
  *(a2 + 8) = 0;
  result = fstat(a1, &v20);
  if (result != -1)
  {
    if (read_or_error(v3, &fat_header, 8uLL, 0))
    {
      if (fat_header.magic != -1095041334)
      {
        return 0;
      }

      swap_fat_header(&fat_header, NX_LittleEndian);
      nfat_arch = fat_header.nfat_arch;
      *(a2 + 4) = fat_header.nfat_arch;
      if (read_fat_arch(v3, nfat_arch, &v21))
      {
        if (v21.cputype == 16777228)
        {
          v18 = 0u;
          v19 = 0u;
          if (v20.st_size > v21.offset && v21.size >= 0x1C && v20.st_size >= (v21.size + v21.offset) && v21.align <= 0x40)
          {
            if (v21.size + v21.offset > 0x1F)
            {
              if (read_or_error(v3, &v18, 0x20uLL, v21.offset) && v18 == -17958193 && HIDWORD(v18) == 2)
              {
                *a2 |= 0x10u;
                ++fat_header.nfat_arch;
              }
            }

            else
            {
              *__error() = 34;
            }
          }
        }

        if (fat_header.nfat_arch)
        {
          v6 = 0;
          while (1)
          {
            if (!read_fat_arch(v3, v6, &v21))
            {
              return 0xFFFFFFFFLL;
            }

            if (v21.cputype == 12)
            {
              *a2 |= 2u;
              v7 = 1;
            }

            else
            {
              v7 = 0;
              if (v21.cputype == 16777228)
              {
                *a2 |= 4u;
                ++*(a2 + 8);
                *(a2 + 12) = v6;
              }
            }

            v18 = 0u;
            v19 = 0u;
            if (v21.size + v21.offset <= 0x1F)
            {
              *__error() = 34;
              return 0xFFFFFFFFLL;
            }

            if (!read_or_error(v3, &v18, 0x20uLL, v21.offset))
            {
              return 0xFFFFFFFFLL;
            }

            if (v18 == -17958193)
            {
              break;
            }

            if (v18 == -17958194)
            {
              v8 = HIDWORD(v18);
              v9 = v19;
              v10 = 28;
              v11 = 28;
              goto LABEL_29;
            }

            syslog(5, "ignoring slice with magic %08x\n", v18);
LABEL_47:
            if (++v6 >= fat_header.nfat_arch)
            {
              return 0;
            }
          }

          v8 = HIDWORD(v18);
          v9 = v19;
          v10 = 32;
          v11 = 32;
LABEL_29:
          if (v8 == 2)
          {
            *a2 |= 0x20u;
            v11 = v10;
          }

          if (v7)
          {
            if (v9)
            {
              while (1)
              {
                v17 = 0;
                v12 = slice_pread(v3, &v17, 8uLL, v11, v21.offset, v21.size);
                v13 = v12;
                if (!v12)
                {
                  goto LABEL_42;
                }

                if (v17 == 37)
                {
                  break;
                }

                v11 += HIDWORD(v17);
                if (!--v9)
                {
                  goto LABEL_36;
                }
              }

              v15 = 0;
              v16 = 0;
              if (!slice_pread(v3, &v15, 0x10uLL, v11, v21.offset, v21.size))
              {
LABEL_42:
                v14 = 1;
                goto LABEL_43;
              }

              if (WORD1(v16) <= 6u)
              {
                *a2 |= 8u;
              }
            }

            else
            {
LABEL_36:
              v13 = 0;
            }

            v14 = 6;
LABEL_43:
            if (v14 != 6 || v13)
            {
              if (v14 != 6)
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              *a2 |= 8u;
            }
          }

          goto LABEL_47;
        }

        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t create_reordered_hidden_disk_header(uint64_t a1, void *a2, size_t *a3, unsigned int a4, unsigned int a5)
{
  if (a4 >= 0x401)
  {
    v5 = __error();
    v6 = 22;
LABEL_7:
    *v5 = v6;
    return 0xFFFFFFFFLL;
  }

  v11 = a1;
  v12 = 20 * a4 + 8;
  v13 = malloc_type_malloc(v12, 0x6C149251uLL);
  if (!v13)
  {
    v5 = __error();
    v6 = 12;
    goto LABEL_7;
  }

  v14 = v13;
  if (read_or_error(v11, v13, v12, 0))
  {
    result = 0;
    v16 = &v14[5 * a4 - 5];
    v17 = v16[6];
    v18 = &v14[5 * a5];
    v19 = *(v18 + 2);
    v16[6] = v18[6];
    v20 = *(v16 + 2);
    *(v16 + 2) = v19;
    *(v18 + 2) = v20;
    v18[6] = v17;
    v14[1] = bswap32(a4 - 1);
    *a2 = v14;
    *a3 = v12;
    return result;
  }

  free(v14);
  return 0xFFFFFFFFLL;
}

uint64_t create_fat_disk_header(unsigned int a1, void *a2, void *a3)
{
  v6 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *v7 = -1095041334;
    v7[1] = bswap32(a1);
    *a2 = v7;
    *a3 = 8;
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t create_new_header_for_unhiding(uint64_t a1, void *a2, void *a3)
{
  v6 = 0;
  v7 = 0;
  if (!a2 || !a3)
  {
LABEL_11:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  *a3 = 0;
  if (!examine_binary(a1, &v6))
  {
    if ((~v6 & 0x3E) != 0)
    {
      return 0;
    }

    if (v7 < 2)
    {
      if (HIDWORD(v7) == HIDWORD(v6))
      {
        return create_fat_disk_header(HIDWORD(v7) + 1, a2, a3);
      }

      syslog(3, "arm64 slice at index %u, not last (nfat_arch = %u)\n");
    }

    else
    {
      syslog(3, "too many (%u) arm64 slices\n");
    }

    goto LABEL_11;
  }

  return 0xFFFFFFFFLL;
}

uint64_t swizzle_archs_if_needed(char *a1, int a2, int a3, _BYTE *a4)
{
  v20 = 0;
  v21 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = open(a1, 256);
  v9 = v8;
  if (v8 == -1)
  {
    v10 = __error();
    v11 = strerror(*v10);
    syslog(3, "Could not open %s for reading: %s", a1, v11);
    goto LABEL_11;
  }

  if (a2)
  {
    if (!create_new_header_for_hiding(v8, &v21, &v20, a3))
    {
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  if (a3)
  {
    syslog(4, "allow_reorder not allowed for unhiding");
  }

  if (create_new_header_for_unhiding(v9, &v21, &v20))
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v20)
  {
    close(v9);
    v13 = open(a1, 258);
    LODWORD(v9) = v13;
    if (v13 == -1)
    {
      v17 = __error();
      strerror(*v17);
      syslog(3, "Could not open %s for writing: %s");
    }

    else
    {
      v14 = v20;
      v15 = pwrite(v13, v21, v20, 0);
      v16 = v15;
      if (v15 != v14 && v15 != -1)
      {
        *__error() = 5;
      }

      if (v16 == v14)
      {
        if (a4)
        {
          v12 = 0;
          *a4 = 1;
          goto LABEL_23;
        }
      }

      else
      {
        v18 = __error();
        strerror(*v18);
        syslog(3, "Could not write new header to executable: %s");
      }
    }
  }

  v12 = 0;
LABEL_23:
  if (v21)
  {
    free(v21);
  }

  if (v9 != -1)
  {
    close(v9);
  }

  return v12;
}

BOOL read_or_error(int a1, void *a2, size_t a3, off_t a4)
{
  v5 = pread(a1, a2, a3, a4);
  v6 = v5;
  if (v5 != a3 && v5 != -1)
  {
    *__error() = 5;
  }

  return v6 == a3;
}

BOOL read_fat_arch(int a1, int a2, fat_arch *a3)
{
  v4 = read_or_error(a1, a3, 0x14uLL, 20 * a2 + 8);
  if (v4)
  {
    swap_fat_arch(a3, 1u, NX_LittleEndian);
  }

  return v4;
}

BOOL slice_pread(int a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 < 0 || (a4 + a3) > a6 + a5)
  {
    *__error() = 34;
    return 0;
  }

  else
  {
    v7 = a5 + a4;

    return read_or_error(a1, a2, a3, v7);
  }
}

void MIFetchInfoForUsername_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = 136315138;
  v9 = a3;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_296A1B000, v6, 16, "getpwnam_r succeeded but no user was found with name %s", &v8);
  _os_crash_msg();
  __break(1u);
}

void MIFetchInfoForUsername_cold_2(void *a1, _OWORD *a2)
{
  v4 = *__error();
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v5 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = 136315138;
  v8 = strerror(v4);
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &dword_296A1B000, v5, 16, "Failed to get home dir path size: %s", &v7);
  _os_crash_msg();
  __break(1u);
}

void MIAssumeIdentity_cold_1()
{
  v2 = *MEMORY[0x29EDCA608];
  v0 = 136315138;
  v1 = "MIAssumeIdentity";
  _os_log_fault_impl(&dword_296A1B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "%s: Attempting to assume an identity of 0/0, which should be the default for the helper service", &v0, 0xCu);
}

void MIRestoreIdentity_cold_1()
{
  v2 = *MEMORY[0x29EDCA608];
  v0 = 136315138;
  v1 = "MIRestoreIdentity";
  _os_log_fault_impl(&dword_296A1B000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "%s: Attempting to restore an identity without having first assumed an identity", &v0, 0xCu);
}
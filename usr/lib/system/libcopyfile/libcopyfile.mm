xattr_flags_t xattr_flags_from_name(const char *a1)
{
  v2 = strrchr(a1, 35);
  if (v2)
  {
    result = (v2 + 1);
  }

  else
  {
    result = nameInDefaultList(a1);
    if (!result)
    {
      return result;
    }
  }

  v4 = *result;
  if (!*result)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = 67;
    v7 = &dword_299C6D734;
    do
    {
      if (v4 == v6)
      {
        v5 |= *v7;
      }

      else if (v4 == *(v7 - 3))
      {
        v5 &= ~*v7;
      }

      v6 = *(v7 + 4);
      v7 += 2;
    }

    while (v6);
    v8 = *++result;
    v4 = v8;
  }

  while (v8);
  return v5;
}

uint64_t nameInDefaultList(char *__s2)
{
  if (nameInDefaultList_onceToken != -1)
  {
    nameInDefaultList_cold_1();
  }

  v2 = *defaultPropertyTable;
  if (!*defaultPropertyTable)
  {
    return 0;
  }

  for (i = (defaultPropertyTable + 24); ; i += 3)
  {
    if (*(i - 1))
    {
      v4 = strlen(v2);
      if (!strncmp(v2, __s2, v4))
      {
        break;
      }
    }

    if (!strcmp(v2, __s2))
    {
      break;
    }

    v5 = *i;
    v2 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return *(i - 2);
}

char *__cdecl xattr_name_without_flags(const char *a1)
{
  v2 = strrchr(a1, 35);
  if (!v2)
  {
    v5 = strdup(a1);
    if (v5)
    {
      return v5;
    }

LABEL_5:
    v5 = 0;
    *__error() = 12;
    return v5;
  }

  v3 = v2 - a1;
  v4 = malloc_type_calloc(v2 - a1 + 1, 1uLL, 0x8E52961FuLL);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  strlcpy(v4, a1, v3 + 1);
  return v5;
}

int copyfile(const char *from, const char *to, copyfile_state_t state, copyfile_flags_t flags)
{
  v119 = *MEMORY[0x29EDCA608];
  v112 = state;
  if (!(from | to))
  {
    *__error() = 22;
    return -1;
  }

  v4 = flags;
  if ((copyfile_preamble(&v112, flags) & 0x80000000) != 0)
  {
    return -1;
  }

  v8 = v112;
  if (from)
  {
    v9 = *v112;
    if (*v112)
    {
      if (!strncmp(from, *v112, 0x400uLL))
      {
        goto LABEL_14;
      }

      if (*(v8 + 69) >= 2u)
      {
        v10 = *__error();
        syslog(7, "%s:%d:%s() replacing string %s (%s) -> (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1313, "copyfile", "src", from, *v8);
        *__error() = v10;
      }

      v11 = *(v8 + 4);
      if ((v11 & 0x80000000) == 0)
      {
        if (*(v8 + 69) >= 4u)
        {
          v12 = *__error();
          syslog(7, "%s:%d:%s() closing %s fd: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1313, "copyfile", "src", *(v8 + 4));
          *__error() = v12;
          v11 = *(v8 + 4);
        }

        close(v11);
        *(v8 + 4) = -2;
      }

      v9 = *v8;
      if (*v8)
      {
LABEL_14:
        free(v9);
        *v8 = 0;
      }
    }

    v13 = strdup(from);
    *v8 = v13;
    if (!v13)
    {
      return -1;
    }
  }

  if (to)
  {
    v14 = *(v8 + 1);
    if (v14)
    {
      if (!strncmp(to, *(v8 + 1), 0x400uLL))
      {
        goto LABEL_26;
      }

      if (*(v8 + 69) >= 2u)
      {
        v15 = *__error();
        syslog(7, "%s:%d:%s() replacing string %s (%s) -> (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1314, "copyfile", "dst", to, *(v8 + 1));
        *__error() = v15;
      }

      v16 = *(v8 + 6);
      if ((v16 & 0x80000000) == 0)
      {
        if (*(v8 + 69) >= 4u)
        {
          v17 = *__error();
          syslog(7, "%s:%d:%s() closing %s fd: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1314, "copyfile", "dst", *(v8 + 6));
          *__error() = v17;
          v16 = *(v8 + 6);
        }

        close(v16);
        *(v8 + 6) = -2;
      }

      v14 = *(v8 + 1);
      if (v14)
      {
LABEL_26:
        free(v14);
        *(v8 + 1) = 0;
      }
    }

    v18 = strdup(to);
    *(v8 + 1) = v18;
    if (!v18)
    {
      return -1;
    }
  }

  if ((*(v8 + 194) & 1) == 0 && stat(to, &v114) != -1 && stat(from, &v117) != -1 && statfs(from, &v118) != -1)
  {
    __strlcpy_chk();
    v115[2] = 0;
    v115[0] = 5;
    v115[1] = 0x20000;
    if (getattrlist(&v116, v115, v113, 0x24uLL, 0) != -1 && v117.st_dev == v114.st_dev)
    {
      if ((v113[4] & 1) == 0 || (v113[20] & 1) == 0)
      {
        v19 = realpath_DARWIN_EXTSN(from, 0);
        if (!v19)
        {
          goto LABEL_46;
        }

        v20 = v19;
        v21 = realpath_DARWIN_EXTSN(to, 0);
        if (!v21)
        {
          goto LABEL_40;
        }

        v22 = v21;
        if (strncasecmp(from, to, 0x400uLL))
        {
          free(v20);
          v20 = v22;
LABEL_40:
          free(v20);
          goto LABEL_46;
        }

LABEL_44:
        if ((*(v8 + 194) & 2) == 0)
        {
LABEL_125:
          v23 = 0;
          goto LABEL_74;
        }

        v25 = 0;
        v26 = 17;
        goto LABEL_102;
      }

      if (v117.st_ino == v114.st_ino)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_46:
  v27 = *(v8 + 48);
  if ((v27 & 0x8000) == 0)
  {
    if ((v27 & 0x3000000) == 0)
    {
      goto LABEL_59;
    }

    if (!*(v8 + 70))
    {
      if (v27)
      {
        v28 = 5;
      }

      else
      {
        v28 = 1;
      }

      if (lstat(*v8, &v118) || (v118.f_iosize & 0xD000 | 0x2000) != 0xA000)
      {
        *__error() = 22;
      }

      else if (((*(v8 + 194) & 0x20) == 0 || (remove(*(v8 + 1), v29) & 0x80000000) == 0 || *__error() == 2) && !clonefileat(-2, *v8, -2, *(v8 + 1), v28))
      {
        *(v8 + 49) |= 0x800u;
        if ((*(v8 + 194) & 0x10) != 0)
        {
          remove(*v8, v52);
        }

        goto LABEL_125;
      }

      v27 = *(v8 + 48);
    }

    if ((v27 & 0x2000000) == 0)
    {
      v27 = v27 & 0xFCF9FFF1 | 0x6000E;
      *(v8 + 48) = v27;
      v30 = *(v8 + 49);
      if ((v30 & 0x4000) == 0)
      {
        *(v8 + 49) = v30 | 0x8000;
      }

      v4 = v27;
LABEL_59:
      if ((v4 & 0x10000) != 0)
      {
        *&v118.f_bsize = 0;
        if (*v8)
        {
          if ((v27 & 4) != 0)
          {
            v23 = 4 * (listxattr(*v8, 0, 0, (v27 >> 18) & 1) > 0);
            v27 = *(v8 + 48);
          }

          else
          {
            v23 = 0;
          }

          if (v27)
          {
            v49 = MEMORY[0x29EDCA648];
            if ((v27 & 0x40000) == 0)
            {
              v49 = MEMORY[0x29EDCA668];
            }

            v49(*v8, v8 + 32, *(v8 + 23));
            if (!filesec_get_property(*(v8 + 23), FILESEC_ACL, &v118))
            {
              ++v23;
            }
          }

          if (*(v8 + 69) >= 2u)
          {
            v50 = *__error();
            syslog(7, "%s:%d:%s() check result: %d (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2426, "copyfile_check", v23, *v8);
            *__error() = v50;
          }

          if (*&v118.f_bsize)
          {
            acl_free(*&v118.f_bsize);
          }

          if (*(v8 + 28))
          {
            if ((*(v8 + 192) & 4) != 0)
            {
              v51 = 4;
            }

            else
            {
              v51 = 1;
            }

            v23 |= v51;
          }
        }

        else
        {
          *(v8 + 68) = 22;
          v23 = -1;
        }

        goto LABEL_73;
      }

      v32 = (v8 + 232);
      v31 = *(v8 + 29);
      if (v31)
      {
        filesec_free(v31);
        *v32 = 0;
      }

      v33 = filesec_init();
      *v32 = v33;
      if (v33)
      {
        if ((*(v8 + 194) & 8) != 0 && !lstat(*(v8 + 1), &v118) && (v118.f_iosize & 0xF000) == 0xA000)
        {
          v35 = *(v8 + 30);
          if (v35)
          {
            free(v35);
          }

          goto LABEL_210;
        }

        if (statx_np(*(v8 + 1), &v118, *(v8 + 29)))
        {
          v48 = *__error() == 2;
          v25 = v48;
LABEL_211:
          if ((copyfile_open(v8, v34) & 0x80000000) == 0)
          {
            fcntl(*(v8 + 4), 48, 1);
            fcntl(*(v8 + 6), 48, 1);
            fcntl(*(v8 + 6), 76, 1);
            v91 = copyfile_internal(v8, v4);
            if (v91 != -1)
            {
              v23 = v91;
              if (((v48 | ((v4 & 2) >> 1)) & 1) == 0)
              {
                fchown(*(v8 + 6), v118.f_bfree, HIDWORD(v118.f_bfree));
                fchmod(*(v8 + 6), v118.f_iosize);
              }

              reset_security(v8);
              if ((v4 & 0x100000) != 0 && *v8)
              {
                remove(*v8, v92);
              }

              goto LABEL_73;
            }
          }

          goto LABEL_218;
        }

        fixed = copyfile_fix_perms(v8 + 29);
        *(v8 + 30) = fixed;
        if (fixed)
        {
          if ((chmodx_np(*(v8 + 1), fixed) & 0x80000000) == 0)
          {
            v48 = 0;
            v25 = 0;
            *(v8 + 49) |= 0x1000u;
            goto LABEL_211;
          }

          if (*__error() != 45)
          {
            v90 = *__error();
            syslog(4, "setting security information: %m");
            *__error() = v90;
            filesec_free(*(v8 + 30));
LABEL_210:
            v48 = 0;
            v25 = 0;
            *(v8 + 30) = 0;
            goto LABEL_211;
          }
        }

        v48 = 0;
        v25 = 0;
        goto LABEL_211;
      }

      goto LABEL_97;
    }

    if (*(v8 + 68))
    {
LABEL_97:
      v25 = 0;
      goto LABEL_218;
    }

    v25 = 0;
    v26 = 45;
LABEL_102:
    *(v8 + 68) = v26;
LABEL_218:
    if (!v25 && (*(v8 + 49) & 0x1000) != 0)
    {
      v93 = *__error();
      chown(*(v8 + 1), v118.f_bfree, HIDWORD(v118.f_bfree));
      chmod(*(v8 + 1), v118.f_iosize);
      *__error() = v93;
    }

    v94 = *(v8 + 68);
    if (v94)
    {
      *__error() = v94;
      *(v8 + 68) = 0;
    }

    v23 = -1;
    goto LABEL_224;
  }

  v117.st_ino = 0;
  *&v117.st_dev = 0;
  if ((v27 & 0x2F10000) != 0 || (v38 = *(v8 + 8), v39 = *v8, (*&v117.st_dev = v39) == 0) || (v40 = *(v8 + 1)) == 0)
  {
    *__error() = 22;
    goto LABEL_70;
  }

  if ((v27 & 0x40000) != 0)
  {
    v41 = MEMORY[0x29EDCA6A8];
    v42 = MEMORY[0x29EDCA6A8](v39, &v118);
  }

  else
  {
    v41 = MEMORY[0x29EDCA6B8];
    v42 = MEMORY[0x29EDCA6B8](v39, &v118);
  }

  if (v42 == -1)
  {
    goto LABEL_70;
  }

  v102 = 0;
  v43 = v118.f_iosize & 0xF000;
  if (v41 == MEMORY[0x29EDCA6B8] && v43 == 0x4000)
  {
    if (lstat(v39, &v116) == -1)
    {
      goto LABEL_70;
    }

    v102 = (v116.st_mode & 0xF000) == 40960;
  }

  v44 = MEMORY[0x29EDCA6A8];
  if ((v27 & 0x80000) == 0)
  {
    v44 = MEMORY[0x29EDCA6B8];
  }

  if (v44(v40, &v118) == -1)
  {
    if (*__error() == 2 && basename(v39))
    {
      goto LABEL_131;
    }

LABEL_70:
    v23 = -1;
    goto LABEL_71;
  }

  f_iosize = v118.f_iosize;
  if (!basename(v39))
  {
    goto LABEL_70;
  }

  if ((f_iosize & 0xF000) == 0x4000)
  {
    v46 = strrchr(v39, 47);
    if (v46)
    {
      v46 = v46 - v39 + 1;
    }

    v47 = "/";
    goto LABEL_134;
  }

LABEL_131:
  v46 = strlen(v39);
  v107 = &unk_299C6D8B9;
  if (v43 != 0x4000 || v46 < 1)
  {
    goto LABEL_135;
  }

  v46 -= v39->__pn_.__r_.__value_.__s.__data_[v46 - 1] == 47;
  v47 = &unk_299C6D8B9;
LABEL_134:
  v107 = v47;
LABEL_135:
  v105 = v40;
  v106 = v46;
  __s1 = v39;
  v54 = 0;
  v55 = 0;
  if ((*(v8 + 97) & 0x104) != 0)
  {
    v56 = 20;
  }

  else
  {
    v56 = 21;
  }

  v108 = (*(v8 + 49) >> 7) & 0x40;
  v109 = v56;
  v110 = *(v8 + 26);
  v100 = v27 & 0xC0000;
  v57 = 1;
LABEL_139:
  v58 = v57;
  if ((v57 & 1) == 0 && (v54 & 1) == 0)
  {
LABEL_204:
    v23 = 0;
    goto LABEL_232;
  }

  if (v55)
  {
    fts_close(v55);
  }

  v55 = fts_open(&v117, v109 | v108, 0);
  while (2)
  {
    v59 = v54;
    do
    {
      while (1)
      {
        v60 = fts_read(v55);
        if (!v60)
        {
          v57 = 0;
          v54 = v59;
          if ((v58 & 1) == 0)
          {
            goto LABEL_204;
          }

          goto LABEL_139;
        }

        v61 = v60;
        if ((v60->fts_info & 0xFFFE) != 0xC)
        {
          break;
        }

        v59 = 1;
        if ((v58 & 1) == 0)
        {
          goto LABEL_150;
        }
      }
    }

    while ((v58 & 1) == 0);
    v54 = v59;
LABEL_150:
    *&v116.st_dev = 0;
    v62 = copyfile_state_alloc();
    if (!v62)
    {
LABEL_208:
      *__error() = 12;
      goto LABEL_231;
    }

    v63 = v62;
    *(v62 + 13) = *(v8 + 13);
    *(v62 + 70) = *(v8 + 70);
    if (*(v8 + 198))
    {
      *(v62 + 49) |= 0x10000u;
    }

    fts_dev = v61->fts_dev;
    if (v38 == fts_dev)
    {
      *(v62 + 49) |= *(v8 + 49) & 0x78;
      fts_dev = v38;
    }

    v111 = fts_dev;
    asprintf(&v116, "%s%s%s", v40, v107, &v61->fts_path[v106]);
    v65 = *&v116.st_dev;
    if (!*&v116.st_dev)
    {
      copyfile_state_free(v63);
      goto LABEL_208;
    }

    *(v63 + 32) = v61;
    v66 = *(v63 + 49);
    *(v63 + 49) = v66 | 0x20000;
    fts_info = v61->fts_info;
    if (fts_info <= 0xD)
    {
      if (((1 << fts_info) & 0x3108) != 0)
      {
        v68 = 0;
        v69 = 1;
        goto LABEL_159;
      }

      if (fts_info == 5)
      {
        goto LABEL_198;
      }

      if (fts_info == 6)
      {
        fts_path = v61->fts_path;
        if (v102)
        {
          v104 = v61->fts_path;
          v78 = strcmp(__s1, v104);
          fts_path = v104;
          if (!v78)
          {
            *(v63 + 49) = v66 | 0x60000;
          }
        }

        if (!v110)
        {
          if (copyfile(fts_path, v65, v63, v100 | 2) < 0)
          {
            goto LABEL_230;
          }

          goto LABEL_198;
        }

        v79 = (v110)(3, 1, v63, fts_path, v65, *(v8 + 27));
        if (v79 == 1)
        {
          goto LABEL_198;
        }

        if (v79 == 2)
        {
          goto LABEL_229;
        }

        v80 = copyfile(v61->fts_path, *&v116.st_dev, v63, v100 | 2);
        v73 = v61->fts_path;
        v74 = *&v116.st_dev;
        v75 = *(v8 + 27);
        if ((v80 & 0x80000000) == 0)
        {
          v76 = 3;
LABEL_169:
          if ((v110)(v76, 2, v63, v73, v74, v75) == 2)
          {
LABEL_229:
            *__error() = 0;
            goto LABEL_230;
          }

LABEL_198:
          v88 = *(v8 + 49) & 0xFFFFFF87;
          *(v8 + 49) = v88;
          *(v8 + 49) = *(v63 + 49) & 0x78 | v88;
          copyfile_state_free(v63);
          free(*&v116.st_dev);
LABEL_199:
          v38 = v111;
          v40 = v105;
          continue;
        }

        v89 = (v110)(3, 3, v63, v73, *&v116.st_dev, v75);
        if (v89)
        {
          if (v89 != 2)
          {
            goto LABEL_198;
          }

LABEL_230:
          v99 = *(v8 + 49) & 0xFFFFFF87;
          *(v8 + 49) = v99;
          *(v8 + 49) = *(v63 + 49) & 0x78 | v99;
          copyfile_state_free(v63);
          free(*&v116.st_dev);
          goto LABEL_231;
        }

LABEL_194:
        *__error() = 0;
        goto LABEL_198;
      }
    }

    break;
  }

  if (fts_info == 1)
  {
    *(v63 + 49) = v66 | 0x20001;
    if (v102 && !strcmp(__s1, v61->fts_path))
    {
      *(v63 + 49) = v66 | 0x60001;
    }

    v68 = 1;
    v69 = 2;
LABEL_159:
    v70 = v61->fts_path;
    v103 = v69;
    if (!v110)
    {
      goto LABEL_163;
    }

    v71 = v110();
    if (v71 == 1)
    {
      if (!v68 || fts_set(v55, v61, 4) != -1)
      {
        goto LABEL_198;
      }

      v81 = v61->fts_path;
      v82 = *&v116.st_dev;
      v83 = *(v8 + 27);
      v84 = 0;
    }

    else
    {
      if (v71 == 2)
      {
        goto LABEL_229;
      }

      v70 = v61->fts_path;
      v65 = *&v116.st_dev;
LABEL_163:
      if (v68)
      {
        v72 = 1225654285;
      }

      else
      {
        v72 = 1225654287;
      }

      if ((copyfile(v70, v65, v63, v72 & v27) & 0x80000000) == 0)
      {
        if (v110)
        {
          v73 = v61->fts_path;
          v74 = *&v116.st_dev;
          v75 = *(v8 + 27);
          v76 = v103;
          goto LABEL_169;
        }

        goto LABEL_198;
      }

      if (!v110)
      {
        goto LABEL_230;
      }

      v81 = v61->fts_path;
      v82 = *&v116.st_dev;
      v83 = *(v8 + 27);
      v84 = v103;
    }

    v85 = (v110)(v84, 3, v63, v81, v82, v83);
  }

  else
  {
    fts_errno = v61->fts_errno;
    *__error() = fts_errno;
    if (!v110)
    {
      goto LABEL_230;
    }

    v85 = (v110)(0, 3, v63, v61->fts_path, *&v116.st_dev, *(v8 + 27));
    if (v85 < 2)
    {
      goto LABEL_194;
    }
  }

  v87 = *(v8 + 49) & 0xFFFFFF87;
  *(v8 + 49) = v87;
  *(v8 + 49) = *(v63 + 49) & 0x78 | v87;
  copyfile_state_free(v63);
  free(*&v116.st_dev);
  if (v85 != 2)
  {
    goto LABEL_199;
  }

LABEL_231:
  v23 = -1;
LABEL_232:
  if (v55)
  {
    fts_close(v55);
  }

LABEL_71:
  if (*(v8 + 69))
  {
    v36 = *__error();
    v37 = __error();
    syslog(7, "%s:%d:%s() returning: %d errno %d\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1016, "copytree", v23, *v37);
    *__error() = v36;
  }

LABEL_73:
  if ((v23 & 0x80000000) == 0)
  {
LABEL_74:
    *__error() = 0;
  }

LABEL_224:
  v95 = v112;
  if (v112 && *(v112 + 69) >= 5u)
  {
    v96 = *__error();
    v97 = __error();
    syslog(7, "%s:%d:%s() returning %d errno %d\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1459, "copyfile", v23, *v97);
    *__error() = v96;
  }

  if (!state)
  {
    v98 = *__error();
    copyfile_state_free(v95);
    *__error() = v98;
  }

  return v23;
}

uint64_t copyfile_preamble(copyfile_state_t *a1, int a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v3 = copyfile_state_alloc();
    *a1 = v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (a2 < 0)
  {
    v5 = getenv("COPYFILE_DEBUG");
    if (v5)
    {
      v6 = v5;
      *__error() = 0;
      v7 = strtol(v6, 0, 0);
      *(v3 + 69) = v7;
      if (!v7)
      {
        if (*__error())
        {
          *(v3 + 69) = 1;
        }
      }
    }

    if (*(v3 + 69) >= 2u)
    {
      v8 = *__error();
      syslog(7, "%s:%d:%s() debug value set to: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1520, "copyfile_preamble", *(v3 + 69));
      *__error() = v8;
    }
  }

  if (*(v3 + 69) >= 2u)
  {
    v9 = *__error();
    syslog(7, "%s:%d:%s() setting flags: %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1531, "copyfile_preamble", *(v3 + 48));
    *__error() = v9;
  }

  result = 0;
  *(v3 + 48) = a2;
  return result;
}

copyfile_state_t copyfile_state_alloc(void)
{
  v0 = malloc_type_calloc(1uLL, 0x128uLL, 0x10B0040A2ED8E21uLL);
  v1 = v0;
  if (v0)
  {
    *&v2 = 0x100000001;
    *(&v2 + 1) = 0x100000001;
    *(v0 + 1) = v2;
    v3 = v0[23];
    if (v3)
    {
      filesec_free(v3);
      *(v1 + 23) = 0;
    }

    *(v1 + 23) = filesec_init();
  }

  else
  {
    *__error() = 12;
  }

  return v1;
}

uint64_t copyfile_data(void *a1, int a2)
{
  v108 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 18) & 0xF000) != 0x8000)
  {
    return 0;
  }

  v4 = a1[26];
  if (a2)
  {
    v5 = a1 + 5;
    v6 = a1 + 7;
    v7 = a1[22];
    goto LABEL_17;
  }

  v9 = *(a1 + 49);
  if ((v9 & 4) != 0)
  {
    if ((v9 & 0x80) != 0)
    {
      v10 = 0;
      if ((v9 & 0x100) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = lseek(*(a1 + 4), 0, 1) != 0;
      if ((*(a1 + 49) & 0x100) != 0)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_11;
      }
    }

    v11 = lseek(*(a1 + 6), 0, 1) != 0;
LABEL_11:
    if (!v10 && !v11 && !copyfile_set_bsdflags(a1, 32, -1) && !fstat(*(a1 + 6), &v107) && (v107.f_mntonname[28] & 0x20) != 0)
    {
      goto LABEL_160;
    }

    fremovexattr(*(a1 + 6), "com.apple.decmpfs", 32);
    fremovexattr(*(a1 + 6), "com.apple.ResourceFork", 32);
  }

  v5 = (a1 + 2);
  v6 = (a1 + 3);
  v7 = a1 + 4;
LABEL_17:
  v12 = *v6;
  if (fstatfs(*v5, &v107) == -1)
  {
    f_bsize = 0;
    f_iosize = *(v7 + 28);
  }

  else
  {
    f_bsize = v107.f_bsize;
    f_iosize = v107.f_iosize;
  }

  v15 = f_iosize;
  if (fstatfs(v12, &v107) == -1)
  {
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v16 = v107.f_bsize;
    if (v107.f_iosize >= v15)
    {
      LODWORD(v17) = v15;
    }

    else
    {
      LODWORD(v17) = v107.f_iosize;
    }

    v17 = v17;
    if (!v107.f_iosize)
    {
      v17 = v15;
    }
  }

  v18 = *(a1 + 71);
  if (f_bsize > v18)
  {
    v18 = v15;
  }

  v19 = *(a1 + 72);
  v20 = v18 < v19 || v16 > v19;
  if (v20)
  {
    v21 = v17;
  }

  else
  {
    v21 = *(a1 + 72);
  }

  v22 = v7[12];
  if (v22 < v18 && f_bsize != 0)
  {
    if (*(a1 + 69) >= 3u)
    {
      v24 = *__error();
      syslog(7, "%s:%d:%s() rounding up block size from fsize: %lld to multiple of %zu\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2879, "copyfile_get_bsizes", a1[16], f_bsize);
      *__error() = v24;
      v22 = v7[12];
    }

    if (v22 % f_bsize)
    {
      v25 = f_bsize - v22 % f_bsize;
    }

    else
    {
      v25 = 0;
    }

    v18 = v25 + v22;
    if (v21 >= v18)
    {
      v21 = v18;
    }
  }

  if (v21 >= 0x40000000)
  {
    v26 = 0x40000000;
  }

  else
  {
    v26 = v21;
  }

  if (v18 <= 0x40000000)
  {
    v27 = v21;
  }

  else
  {
    v27 = v26;
  }

  if (v18 >= 0x40000000)
  {
    v28 = 0x40000000;
  }

  else
  {
    v28 = v18;
  }

  *__error() = 0;
  if (*(a1 + 69) >= 3u)
  {
    v29 = *__error();
    syslog(7, "%s:%d:%s() input block size: %zu output block size: %zu\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2953, "copyfile_data", v28, v27);
    *__error() = v29;
  }

  if ((a2 & 1) == 0)
  {
    a1[33] = 0;
    if ((*(a1 + 195) & 8) == 0)
    {
LABEL_73:
      v30 = 16;
      v31 = 24;
      goto LABEL_74;
    }

    v32 = fpathconf(*(a1 + 4), 27);
    v33 = fpathconf(*(a1 + 6), 27);
    v34 = 3;
    if (v32 < v33)
    {
      v34 = 2;
    }

    v35 = fpathconf(a1[v34], 27);
    if (!f_bsize || !v16 || v35 < f_bsize || v35 < v16 || ((v103 = *(a1 + 4), __fd = *(a1 + 6), v36 = a1[16], f_bsize >= v16) ? (v37 = v16) : (v37 = f_bsize), v38 = a1[26], *__error() = 0, (*(a1 + 195) & 8) == 0))
    {
LABEL_71:
      if ((a1[24] & 8) == 0)
      {
        v39 = 0;
        *__error() = 45;
        goto LABEL_123;
      }

      goto LABEL_73;
    }

    sizea = v37;
    if ((v36 & 0x8000000000000000) != 0)
    {
      v71 = 0;
      v83 = 22;
      goto LABEL_166;
    }

    if (v36)
    {
      v66 = lseek(v103, 0, 1);
      v67 = lseek(__fd, 0, 1);
      if ((v66 & 0x8000000000000000) != 0 || v36 <= v66 || (v67 & 0x8000000000000000) != 0)
      {
        if (!*__error())
        {
          *__error() = 22;
        }

        v83 = *__error();
        syslog(4, "Invalid file descriptor offset, cannot perform a sparse copy: %m");
        goto LABEL_165;
      }

      if (v66 % sizea || v67 % sizea)
      {
        goto LABEL_71;
      }

      *v94 = v36 - v66;
      v96 = v67;
      v68 = lseek(v103, v66, 3);
      if (v68 == -1 || v68 == v36)
      {
        if (lseek(v103, v66, 0) != -1)
        {
          goto LABEL_71;
        }

        v71 = 0;
      }

      else
      {
        v69 = v68;
        if (ftruncate(__fd, v96) == -1)
        {
          v83 = *__error();
          syslog(4, "Could not zero destination file before copy: %m");
          goto LABEL_165;
        }

        if (ftruncate(__fd, *v94 + v96) == -1)
        {
          v83 = *__error();
          syslog(4, "Could not set destination file size before copy: %m");
          goto LABEL_165;
        }

        v70 = lseek(v103, v66, 4);
        if (v70 != -1)
        {
          v92 = v70;
          if (lseek(__fd, v70 + v96 - v66, 0) != -1)
          {
            v71 = malloc_type_malloc(sizea, 0x460B32B8uLL);
            if (v71)
            {
              v91 = read(v103, v71, sizea);
              if (v91 >= 1)
              {
                while (2)
                {
                  v90 = 0;
                  __nbytea = v91;
                  __buf = v71;
                  do
                  {
                    while (1)
                    {
                      v72 = write(__fd, __buf, __nbytea);
                      if (v72 != -1)
                      {
                        break;
                      }

                      v73 = *__error();
                      syslog(4, "writing to output file failed: %m");
                      *__error() = v73;
                      if (!v38)
                      {
                        goto LABEL_167;
                      }

                      v74 = v38(4, 3, a1, *a1, a1[1], a1[27]);
                      if (v74)
                      {
                        if (v74 != 1)
                        {
                          goto LABEL_167;
                        }

                        v61 = 0;
                        *__error() = 0;
                        goto LABEL_181;
                      }

                      *__error() = 0;
                    }

                    if (v72)
                    {
                      v90 = 0;
                      __nbytea -= v72;
                      __buf += v72;
                    }

                    else
                    {
                      v75 = v90 + 1;
                      v20 = v90++ < 5;
                      if (!v20)
                      {
                        v82 = *__error();
                        syslog(4, "writing to output %d times resulted in 0 bytes written: %m", v75);
                        *__error() = v82;
                        v83 = 35;
                        goto LABEL_166;
                      }
                    }

                    a1[33] += v72;
                    if (v38 && v38(4, 4, a1, *a1, a1[1], a1[27]) == 2)
                    {
                      v83 = 89;
                      goto LABEL_166;
                    }
                  }

                  while (__nbytea);
                  v92 += v91;
                  v76 = lseek(v103, v92, 3);
                  if (v76 == -1)
                  {
                    if (*__error() == 6)
                    {
                      break;
                    }

                    v83 = *__error();
                    syslog(4, "unable to find next hole in file during copy: %m", v88, v89);
                  }

                  else
                  {
                    if (v76 != v92)
                    {
                      if (lseek(v103, v92, 0) == -1)
                      {
                        goto LABEL_167;
                      }

LABEL_158:
                      v91 = read(v103, v71, sizea);
                      if (v91 > 0)
                      {
                        continue;
                      }

                      break;
                    }

                    v92 = lseek(v103, v92, 4);
                    if (v92 != -1)
                    {
                      if (lseek(__fd, v92 + v96 - v66, 0) == -1)
                      {
                        v83 = *__error();
                        syslog(4, "unable to advance dst to next data section: %m", v88, v89);
                        goto LABEL_166;
                      }

                      goto LABEL_158;
                    }

                    if (*__error() == 6)
                    {
                      break;
                    }

                    v83 = *__error();
                    syslog(4, "unable to advance src to next data section: %m", v88, v89);
                  }

                  goto LABEL_166;
                }
              }

              if ((v91 & 0x8000000000000000) == 0)
              {
                if (!(f_bsize % v16))
                {
                  if (lseek(v103, v66, 0) == -1 || lseek(__fd, v96, 0) == -1)
                  {
                    v87 = *__error();
                    syslog(4, "unable to reset file descriptors to punch holes: %m", v88, v89);
                  }

                  else
                  {
                    while (1)
                    {
                      v84 = lseek(v103, v69 + sizea, 4);
                      if (v84 == -1)
                      {
                        break;
                      }

                      v85 = v84;
                      *&v107.f_bsize = 0;
                      v107.f_blocks = v69 - v66 + v96;
                      v107.f_bfree = v84 - v69;
                      if (fcntl(__fd, 99, &v107) == -1)
                      {
                        v87 = *__error();
                        syslog(4, "unable to punch hole in destination file, offset %lld length %lld: %m");
                        goto LABEL_204;
                      }

                      v86 = lseek(v103, v85, 3);
                      v69 = v86;
                      if (v86 == -1 || v86 == v36)
                      {
                        if (v86 == -1 && *__error() != 6)
                        {
                          goto LABEL_209;
                        }

                        goto LABEL_180;
                      }
                    }

                    if (*__error() != 6)
                    {
LABEL_209:
                      v87 = *__error();
                      syslog(4, "lseek during hole punching failed: %m", v88, v89);
                      goto LABEL_204;
                    }

                    *&v107.f_bsize = 0;
                    v107.f_blocks = v69 - v66 + v96;
                    v107.f_bfree = v36 - v69 - v36 % sizea;
                    if (fcntl(__fd, 99, &v107) != -1)
                    {
                      goto LABEL_180;
                    }

                    v87 = *__error();
                    syslog(4, "unable to punch trailing hole in destination file, offset %lld: %m");
                  }

LABEL_204:
                  *__error() = v87;
                }

                goto LABEL_180;
              }

              v83 = *__error();
              __error();
              syslog(4, "error %d reading from %s: %m");
            }

            else
            {
              v83 = *__error();
              syslog(4, "No memory for copy buffer: %m", v88, v89);
            }

LABEL_166:
            *__error() = v83;
            goto LABEL_167;
          }

          v83 = *__error();
          syslog(4, "failed to set dst to first data section: %m");
LABEL_165:
          v71 = 0;
          goto LABEL_166;
        }

        v71 = 0;
        if (*__error() == 6)
        {
LABEL_180:
          v61 = 0;
          a1[33] = *v94;
LABEL_181:
          v77 = 1;
          if (!v71)
          {
LABEL_169:
            v39 = 0;
            if ((v77 & 1) == 0)
            {
LABEL_111:
              if (v61 == -1)
              {
                goto LABEL_123;
              }
            }

LABEL_170:
            v8 = 0;
LABEL_171:
            free(v39);
            return v8;
          }

LABEL_168:
          free(v71);
          goto LABEL_169;
        }
      }

LABEL_167:
      v77 = 0;
      *(a1 + 68) = *__error();
      v61 = -1;
      if (!v71)
      {
        goto LABEL_169;
      }

      goto LABEL_168;
    }

LABEL_160:
    v39 = 0;
    goto LABEL_170;
  }

  v30 = 20;
  v31 = 28;
LABEL_74:
  v40 = *(a1 + v30);
  v41 = *(a1 + v31);
  v42 = malloc_type_malloc(v28, 0xC7B43E05uLL);
  if (v42)
  {
    v43 = v42;
    if (a2)
    {
      v44 = (a1[22] + 96);
    }

    else
    {
      v44 = a1 + 16;
    }

    v45 = *v44;
    v46 = fstat(v41, &v107);
    v47 = *&v107.f_mntonname[16] << 9;
    if (v46)
    {
      v47 = 0;
    }

    v48 = __OFSUB__(v45, v47);
    v49 = v45 - v47;
    if (!((v49 < 0) ^ v48 | (v49 == 0)))
    {
      v105[0] = 0x300000000;
      v105[1] = 0;
      v106 = v49;
      if (*(a1 + 69) >= 3u)
      {
        v50 = *__error();
        syslog(7, "%s:%d:%s() preallocating %lld bytes on destination\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3020, "copyfile_data", v106);
        *__error() = v50;
      }

      fcntl(v41, 42, v105);
    }

    v51 = read(v40, v43, v28);
    v104 = v43;
    if (v51 >= 1)
    {
      v52 = v43;
      v95 = v28;
      __nbyte = v27;
      v53 = 0;
      size = 0;
      if (a2)
      {
        v54 = 5;
      }

      else
      {
        v54 = 4;
      }

      while (1)
      {
        *__fda = v53;
        if (v51 >= v27)
        {
          v55 = v27;
        }

        else
        {
          v55 = v51;
        }

        while (1)
        {
          v56 = write(v41, v52, v55);
          if (v56 != -1)
          {
            break;
          }

          v57 = *__error();
          syslog(4, "writing to output file got error: %m");
          *__error() = v57;
          if (!v4)
          {
            goto LABEL_122;
          }

          v58 = v4(v54, 3, a1, *a1, a1[1], a1[27]);
          if (v58 == 1)
          {
            v8 = 0;
            v39 = v104;
            goto LABEL_171;
          }

          v8 = v58;
          if (a2)
          {
            v39 = v104;
            if (!v58)
            {
              goto LABEL_171;
            }

            if (v58 == 2)
            {
              v62 = 89;
              goto LABEL_124;
            }

            goto LABEL_123;
          }

          if (v58)
          {
            goto LABEL_122;
          }

          *__error() = 0;
        }

        v59 = v56;
        if (v56)
        {
          v60 = 0;
          v51 -= v56;
          v52 += v56;
        }

        else
        {
          v60 = size + 1;
          if (size >= 5)
          {
            v79 = *__error();
            syslog(4, "writing to output %d times resulted in 0 bytes written: %m", size + 1);
            *__error() = v79;
            v80 = 35;
LABEL_174:
            *(a1 + 68) = v80;
            goto LABEL_122;
          }
        }

        size = v60;
        if ((a2 & 1) == 0)
        {
          a1[33] += v56;
          if (v4)
          {
            if (v4(4, 4, a1, *a1, a1[1], a1[27]) == 2)
            {
              v81 = __error();
              v80 = 89;
              *v81 = 89;
              goto LABEL_174;
            }
          }
        }

        v53 = v59 + *__fda;
        v27 = __nbyte;
        if (!v51)
        {
          v52 = v104;
          v51 = read(v40, v104, v95);
          size = 0;
          if (v51 < 1)
          {
            goto LABEL_109;
          }
        }
      }
    }

    v53 = 0;
LABEL_109:
    if (v51 < 0)
    {
      v63 = *__error();
      v64 = *a1;
      if (!*a1)
      {
        v64 = "(null src)";
      }

      v65 = "(rsrc)";
      if (a2)
      {
        v65 = &unk_299C6D8B9;
      }

      syslog(4, "reading from %s %s: %m", v64, v65);
      *__error() = v63;
LABEL_122:
      v39 = v104;
LABEL_123:
      v62 = *__error();
LABEL_124:
      *(a1 + 68) = v62;
      v8 = 0xFFFFFFFFLL;
      goto LABEL_171;
    }

    v61 = ftruncate(v41, v53) >> 31;
    v39 = v104;
    goto LABEL_111;
  }

  return 0xFFFFFFFFLL;
}

uint64_t copyfile_internal(void *a1, int a2)
{
  v181 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 6);
  if (v3 < 0 || (a1[2] & 0x80000000) != 0)
  {
    if (*(a1 + 69))
    {
      v13 = *__error();
      syslog(7, "%s:%d:%s() file descriptors not open (src: %d, dst: %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1548, "copyfile_internal", *(a1 + 4), *(a1 + 6));
      *__error() = v13;
    }

    *(a1 + 68) = 22;
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0x400000) != 0)
  {
    v5 = copyfile_pack(a1);
    if ((v5 & 0x80000000) != 0)
    {
      v15 = a1[1];
      if (v15)
      {
        unlink(v15);
      }
    }

    return v5;
  }

  if ((a2 & 0x800000) != 0)
  {
    if (a1[16] >= 65554)
    {
      v16 = 65554;
    }

    else
    {
      v16 = a1[16];
    }

    v17 = malloc_type_calloc(1uLL, v16, 0x936D7ACCuLL);
    if (!v17)
    {
      if (*(a1 + 69))
      {
        v32 = *__error();
        syslog(7, "%s:%d:%s() copyfile_unpack: calloc(1, %zu) returned NULL\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4688, "copyfile_unpack", v16);
        *__error() = v32;
      }

      return 0xFFFFFFFFLL;
    }

    v18 = v17;
    v19 = pread(*(a1 + 4), v17, v16, 0);
    v20 = v19;
    if (v19 < 0)
    {
      if (*(a1 + 69))
      {
        v33 = *__error();
        syslog(7, "%s:%d:%s() pread returned: %zd\n");
LABEL_78:
        *__error() = v33;
      }
    }

    else
    {
      if (v19 < v16)
      {
        if (*(a1 + 69))
        {
          v21 = *__error();
          syslog(7, "%s:%d:%s() pread couldn't read entire header: %d of %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4706, "copyfile_unpack", v20, a1[16]);
          *__error() = v21;
        }

        goto LABEL_79;
      }

      if (v19 >= 0x52 && *v18 == 118883584 && *(v18 + 4) == 512 && *(v18 + 24) == 512 && *(v18 + 26) == 150994944)
      {
        swap_adhdr(v18);
        v34 = flistxattr(*(a1 + 6), 0, 0, 0);
        v35 = v34;
        if (v34 < 1)
        {
          if (v34 < 0 && *__error() != 45 && *__error() != 1)
          {
            v5 = 0;
            goto LABEL_80;
          }
        }

        else
        {
          v5 = malloc_type_malloc(v34, 0x100004077774924uLL);
          if (!v5)
          {
            *(a1 + 68) = 12;
            goto LABEL_80;
          }

          v36 = flistxattr(*(a1 + 6), v5, v35, 0);
          if (v36 >= 1)
          {
            v37 = v5 + v36;
            v38 = v5;
            do
            {
              fremovexattr(*(a1 + 6), v38, 0);
              v38 += strlen(v38) + 1;
            }

            while (v38 < v37);
          }

          free(v5);
        }

        if (*(v18 + 34) >= 0x21u)
        {
          if (v16 <= 0x77)
          {
            v33 = *__error();
            syslog(4, "bad attribute header:  %zu < %zu: %m");
            goto LABEL_78;
          }

          swap_attrhdr(v18);
          if (*(v18 + 84) != 1096045650)
          {
            if ((*(a1 + 195) & 0x40) == 0)
            {
              goto LABEL_79;
            }

            v33 = *__error();
            syslog(4, "bad attribute header: %m");
            goto LABEL_78;
          }

          v119 = *(v18 + 118);
          if (*(v18 + 118))
          {
            v120 = 0;
            sizea = 0;
            v121 = v18 + v16;
            v122 = (v18 + 120);
            while (1)
            {
              if (v122 >= v121 || v122 < v18 || &v122[1] + 4 > v121)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v142 = *__error();
                  syslog(4, "Incomplete or corrupt attribute entry: %m");
                  goto LABEL_401;
                }

LABEL_402:
                *(a1 + 68) = 22;
LABEL_351:
                v5 = 0xFFFFFFFFLL;
                v128 = v18;
                goto LABEL_431;
              }

              v123 = vrev32_s8(*v122);
              *v122 = v123;
              v122[1].i16[0] = bswap32(v122[1].u16[0]) >> 16;
              v124 = v122[1].u8[2];
              if (v124 <= 1)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v142 = *__error();
                  syslog(4, "Corrupt attribute entry (only %d bytes): %m");
LABEL_401:
                  *__error() = v142;
                }

                goto LABEL_402;
              }

              __dsta = v120;
              if (v124 >= 0x81)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v156 = *__error();
                  syslog(4, "Corrupt attribute entry (name length is %d bytes): %m");
                  goto LABEL_409;
                }

                goto LABEL_410;
              }

              if (&v122[1] + v124 + 3 > v121)
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v156 = *__error();
                  syslog(4, "Incomplete or corrupt attribute entry: %m", v165);
                  goto LABEL_409;
                }

LABEL_410:
                v157 = 22;
                goto LABEL_414;
              }

              if (v122[1].i8[(v124 - 1) + 3])
              {
                if ((*(a1 + 195) & 0x40) != 0)
                {
                  v156 = *__error();
                  syslog(4, "Corrupt attribute entry (name is not NUL-terminated): %m", v165);
LABEL_409:
                  *__error() = v156;
                }

                goto LABEL_410;
              }

              if (*(a1 + 69) < 3u)
              {
                v126 = v123.u32[1];
              }

              else
              {
                v125 = *__error();
                syslog(7, "%s:%d:%s() extracting %s (%d bytes) at offset %u\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4878, "copyfile_unpack", &v122[1] + 3, v122->i32[1], v122->i32[0]);
                *__error() = v125;
                v126 = v122->u32[1];
              }

              v127 = malloc_type_malloc(v126, 0xFB7792E5uLL);
              if (!v127)
              {
                if (*(a1 + 69))
                {
                  v158 = *__error();
                  syslog(7, "%s:%d:%s() no memory for %u bytes\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4882, "copyfile_unpack", v122->i32[1]);
                  *__error() = v158;
                }

                v157 = 12;
LABEL_414:
                *(a1 + 68) = v157;
                v5 = 0xFFFFFFFFLL;
                v128 = v18;
LABEL_419:
                v120 = __dsta;
LABEL_431:
                free(v128);
                if (v120)
                {
LABEL_432:
                  v43 = v120;
LABEL_81:
                  free(v43);
                }

                if ((v5 & 0x80000000) == 0)
                {
                  return v5;
                }

                return 0xFFFFFFFFLL;
              }

              v128 = v127;
              v129 = pread(*(a1 + 4), v127, v122->u32[1], v122->u32[0]);
              v130 = v122->u32[1];
              if (v129 != v130)
              {
                if (*(a1 + 69))
                {
                  v159 = *__error();
                  syslog(7, "%s:%d:%s() failed to read %u bytes at offset %u\n\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4888, "copyfile_unpack", v122->i32[1], v122->i32[0]);
                  *__error() = v159;
                }

                *(a1 + 68) = 22;
                goto LABEL_418;
              }

              v131 = v129;
              if (!strcmp(&v122[1] + 3, "figgledidiggledy"))
              {
                goto LABEL_346;
              }

              if (strcmp(&v122[1] + 3, "com.apple.acl.text"))
              {
                v5 = copyfile_unpack_xattr(a1, v122, v128);
                if (v5 == -1)
                {
                  goto LABEL_418;
                }

                goto LABEL_347;
              }

              if (!v130)
              {
LABEL_346:
                v5 = 0;
              }

              else
              {
                __dsta = malloc_type_malloc(v131, 0x716E830CuLL);
                if (!__dsta)
                {
                  __dsta = 0;
LABEL_418:
                  free(v18);
                  v5 = 0xFFFFFFFFLL;
                  goto LABEL_419;
                }

                memcpy(__dsta, v128, v122->u32[1]);
                v5 = 0;
                sizea = v122->u32[1];
              }

LABEL_347:
              free(v128);
              v122 = (v122 + ((v122[1].u8[2] + 14) & 0x1FC));
              --v119;
              v120 = __dsta;
              if (!v119)
              {
                goto LABEL_350;
              }
            }
          }
        }

        sizea = 0;
        v120 = 0;
        v5 = 0;
LABEL_350:
        v132 = *(v18 + 30);
        if (v16 - 32 < v132)
        {
          goto LABEL_351;
        }

        v133 = v120;
        if (*(v18 + v132) | *(v18 + v132 + 8) | *(v18 + v132 + 16) | *(v18 + v132 + 24))
        {
          v134 = *(v18 + 30);
          if (*(a1 + 69) >= 3u)
          {
            v135 = *__error();
            syslog(7, "%s:%d:%s()  extracting %s (32 bytes)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 4961, "copyfile_unpack", "com.apple.FinderInfo");
            *__error() = v135;
          }

          v136 = a1[26];
          if (v136)
          {
            a1[31] = "com.apple.FinderInfo";
            v137 = v136(5, 1, a1, *a1, a1[1], a1[27]);
            a1[31] = 0;
            if (v137 == 1)
            {
              goto LABEL_375;
            }

            if (v137 == 2)
            {
              goto LABEL_367;
            }
          }

          v138 = fsetxattr(*(a1 + 6), "com.apple.FinderInfo", (v18 + *(v18 + 30)), 0x20uLL, 0, 0);
          v139 = a1[26];
          if (v138)
          {
            v5 = v138;
            if (!v139)
            {
              goto LABEL_430;
            }

            a1[31] = "com.apple.FinderInfo";
            v140 = v139(5, 3, a1, *a1, a1[1], a1[27]);
            a1[31] = 0;
            if (v140 != 2)
            {
              goto LABEL_430;
            }

            goto LABEL_367;
          }

          if (v139)
          {
            a1[31] = "com.apple.FinderInfo";
            v141 = v139(5, 2, a1, *a1, a1[1], a1[27]);
            a1[31] = 0;
            if (v141 == 2)
            {
LABEL_367:
              *(a1 + 68) = 89;
LABEL_368:
              v5 = 0xFFFFFFFFLL;
              goto LABEL_430;
            }
          }

          v5 = 0;
          if ((*(v18 + v134 + 8) & 0x40) != 0)
          {
            *(a1 + 49) |= 2u;
          }
        }

LABEL_375:
        if (*(v18 + 38) != 2)
        {
          goto LABEL_426;
        }

        v143 = *(v18 + 46);
        if (!v143)
        {
          goto LABEL_426;
        }

        v144 = *(v18 + 42);
        v145 = malloc_type_malloc(*(v18 + 46), 0x8DA8306AuLL);
        if (!v145)
        {
          if (*(a1 + 69))
          {
            v151 = *__error();
            syslog(7, "%s:%d:%s() could not allocate %zu bytes for rsrcforkdata\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5029, "copyfile_unpack", v143);
            *__error() = v151;
          }

          v5 = 0xFFFFFFFFLL;
          goto LABEL_426;
        }

        v146 = v145;
        if (fstat(*(a1 + 6), &v180) < 0)
        {
          if (*(a1 + 69))
          {
            v150 = *__error();
            syslog(7, "%s:%d:%s() couldn't stat destination file\n");
            goto LABEL_422;
          }

LABEL_424:
          v5 = 0xFFFFFFFFLL;
          goto LABEL_425;
        }

        v147 = pread(*(a1 + 4), v146, v143, v144);
        v148 = v147;
        if (v147 < v143)
        {
          v149 = *(a1 + 69);
          if (v147 == -1)
          {
            if (v149)
            {
              v150 = *__error();
              syslog(7, "%s:%d:%s() couldn't read resource fork\n");
              goto LABEL_422;
            }
          }

          else if (v149)
          {
            v150 = *__error();
            syslog(7, "%s:%d:%s() couldn't read resource fork (only read %d bytes of %d)\n");
LABEL_422:
            v5 = 0xFFFFFFFFLL;
LABEL_423:
            *__error() = v150;
            goto LABEL_425;
          }

          goto LABEL_424;
        }

        v152 = a1[26];
        if (!v152)
        {
          goto LABEL_452;
        }

        a1[31] = "com.apple.ResourceFork";
        v153 = v152(5, 1, a1, *a1, a1[1], a1[27]);
        a1[31] = 0;
        if (v153 == 1)
        {
LABEL_425:
          free(v146);
LABEL_426:
          if (v133)
          {
            v120 = v133;
            v5 = copyfile_unpack_acl(a1, sizea, v133);
            if (v5 == -1)
            {
              free(v18);
              v5 = 0xFFFFFFFFLL;
              goto LABEL_432;
            }
          }

          if ((a1[24] & 2) != 0)
          {
            copyfile_stat(a1);
            v5 = 0;
          }

LABEL_430:
          v128 = v18;
          v120 = v133;
          goto LABEL_431;
        }

        if (v153 != 2)
        {
LABEL_452:
          if (fsetxattr(*(a1 + 6), "com.apple.ResourceFork", v146, v148, 0, 0))
          {
            if (v148 == 286 && (v180.f_iosize & 0xF000) == 0x4000 && !memcmp(v146, &empty_rsrcfork_header, 0x11EuLL))
            {
              if (*(a1 + 69) >= 2u)
              {
                v164 = *__error();
                syslog(7, "%s:%d:%s() not setting empty resource fork on directory\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5086, "copyfile_unpack");
                v150 = 0;
                v5 = 0;
                *__error() = v164;
                goto LABEL_423;
              }
            }

            else
            {
              v154 = a1[26];
              if (!v154 || (a1[31] = "com.apple.ResourceFork", v155 = v154(5, 3, a1, *a1, a1[1], a1[27]), a1[31] = 0, v155))
              {
                if (*(a1 + 69))
                {
                  v150 = *__error();
                  syslog(7, "%s:%d:%s() error %d setting resource fork attribute\n");
                  goto LABEL_422;
                }

                goto LABEL_424;
              }
            }

            v150 = 0;
LABEL_449:
            v5 = 0;
            goto LABEL_423;
          }

          v160 = a1[26];
          if (!v160 || (a1[31] = "com.apple.ResourceFork", v161 = v160(5, 2, a1, *a1, a1[1], a1[27]), a1[31] = 0, v161 != 2))
          {
            if (*(a1 + 69) >= 3u)
            {
              v162 = *__error();
              syslog(7, "%s:%d:%s() extracting %s (%d bytes)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5117, "copyfile_unpack", "com.apple.ResourceFork", v143);
              *__error() = v162;
            }

            if ((a1[24] & 2) != 0 || (acl[1] = 0, acl[2] = 0, acl[0] = 0x140000000005, *&v179.st_dev = *v180.f_fsid.val, *&v179.st_uid = *&v180.f_files, !fsetattrlist(*(a1 + 6), acl, &v179, 0x20uLL, 0)))
            {
              v5 = 0;
              goto LABEL_425;
            }

            v150 = *__error();
            v163 = a1[1];
            if (!v163)
            {
              v163 = "(null dst)";
            }

            syslog(4, "%s: set times: %m", v163);
            goto LABEL_449;
          }
        }

        *(a1 + 68) = 89;
        free(v146);
        goto LABEL_368;
      }

      if ((*(a1 + 195) & 0x40) != 0)
      {
        v33 = *__error();
        syslog(4, "Not a valid Apple Double header: %m");
        goto LABEL_78;
      }
    }

LABEL_79:
    v5 = 0xFFFFFFFFLL;
LABEL_80:
    v43 = v18;
    goto LABEL_81;
  }

  if ((a2 & 4) == 0)
  {
    goto LABEL_6;
  }

  v22 = flistxattr(v3, 0, 0, 0);
  v23 = v22;
  if (v22 < 1)
  {
    if (v22 < 0)
    {
      goto LABEL_123;
    }

    goto LABEL_101;
  }

  v24 = 0;
  v25 = 0;
  v26 = -3;
  do
  {
    if (v23 <= v25)
    {
      v23 = v25;
      v28 = v24;
    }

    else
    {
      if (v23 >= 0x2000001)
      {
        v27 = *__error();
        syslog(4, "destination's xattr list size (%zu) exceeds the threshold (%d); trying to allocate: %m", v23, 0x2000000);
        *__error() = v27;
      }

      v28 = malloc_type_realloc(v24, v23, 0x6CB93339uLL);
      if (!v28)
      {
LABEL_127:
        if (!v24)
        {
          goto LABEL_226;
        }

        goto LABEL_225;
      }
    }

    v25 = v23;
    v29 = flistxattr(*(a1 + 6), v28, v23, 0);
    if ((v29 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v44 = &v28[v29 - 1];
        if (*v44)
        {
          *v44 = 0;
        }

        v45 = v28;
        do
        {
          if (strncmp(v45, "figgledidiggledy", v44 - v45))
          {
            fremovexattr(*(a1 + 6), v45, 0);
          }

          v45 += strlen(v45) + 1;
        }

        while (v45 <= v44);
      }

      goto LABEL_99;
    }

    if (*__error() != 34 || v26 == 0)
    {
      goto LABEL_99;
    }

    v31 = flistxattr(*(a1 + 6), 0, 0, 0);
    v23 = v31;
    ++v26;
    v24 = v28;
  }

  while (v31 >= 1);
  if (v31 < 0)
  {
    if (v28)
    {
      free(v28);
    }

    goto LABEL_123;
  }

LABEL_99:
  if (v28)
  {
    free(v28);
  }

LABEL_101:
  if ((a1[24] & 8) != 0 && (*(a1 + 148) & 0x20) != 0 && doesdecmpfs(*(a1 + 4)))
  {
    v46 = doesdecmpfs(*(a1 + 6));
    v47 = !v46;
    v48 = 32 * v46;
  }

  else
  {
    v48 = 0;
    v47 = 1;
  }

  v49 = flistxattr(*(a1 + 4), 0, 0, v48);
  if (v49 < 1)
  {
    goto LABEL_122;
  }

  v168 = v47;
  v24 = 0;
  v50 = 0;
  v51 = -3;
  while (1)
  {
    if (v49 <= v50)
    {
      v49 = v50;
      v53 = v24;
    }

    else
    {
      if (v49 >= 0x2000001)
      {
        v52 = *__error();
        syslog(4, "source's xattr list size (%zu) exceeds the threshold (%d); trying to allocate: %m", v49, 0x2000000);
        *__error() = v52;
      }

      v53 = malloc_type_realloc(v24, v49, 0x181ABAFuLL);
      if (!v53)
      {
        goto LABEL_127;
      }
    }

    v50 = v49;
    v54 = flistxattr(*(a1 + 4), v53, v49, v48);
    v5 = v54;
    if ((v54 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 34 || v51 == 0)
    {
      goto LABEL_219;
    }

    v49 = flistxattr(*(a1 + 4), 0, 0, v48);
    ++v51;
    v24 = v53;
    if (v49 <= 0)
    {
      if (v53)
      {
        free(v53);
      }

LABEL_122:
      if (v49)
      {
LABEL_123:
        if (*__error() != 45)
        {
          if (*__error() == 1)
          {
            v5 = 0;
          }

          else
          {
            v5 = 0xFFFFFFFFLL;
          }

          goto LABEL_319;
        }
      }

LABEL_6:
      v5 = 0;
LABEL_7:
      if ((a2 & 0x8000008) != 0)
      {
        v5 = copyfile_data(a1, 0);
        if ((v5 & 0x80000000) != 0)
        {
          v39 = *__error();
          syslog(4, "error processing data: %m");
          *__error() = v39;
          v40 = a1[1];
          if (v40 && unlink(v40))
          {
            v41 = *__error();
            v42 = *a1;
            if (!*a1)
            {
              v42 = "(null src)";
            }

            syslog(4, "%s: remove: %m", v42);
            *__error() = v41;
          }

          return v5;
        }
      }

      if ((a2 & 3) == 0)
      {
        goto LABEL_281;
      }

      acl[0] = 0;
      obj_p = 0;
      acl_p = 0;
      v6 = filesec_init();
      if (!v6)
      {
        v5 = 0xFFFFFFFFLL;
        goto LABEL_283;
      }

      v7 = v6;
      if ((a1[24] & 1) == 0)
      {
        goto LABEL_12;
      }

      if (filesec_get_property(a1[23], FILESEC_ACL, acl))
      {
        if (*__error() == 2)
        {
          acl[0] = 0;
          goto LABEL_90;
        }

LABEL_91:
        v5 = 0xFFFFFFFFLL;
LABEL_274:
        filesec_free(v7);
        if (acl[0])
        {
          acl_free(acl[0]);
        }

        if (obj_p)
        {
          acl_free(obj_p);
        }

        if (acl_p)
        {
          acl_free(acl_p);
        }

        if ((v5 & 0x80000000) == 0)
        {
LABEL_281:
          if ((a2 & 2) != 0)
          {
            copyfile_stat(a1);
            return 0;
          }

          return v5;
        }

LABEL_283:
        v110 = *__error();
        syslog(4, "error processing security information: %m");
        goto LABEL_284;
      }

LABEL_90:
      if (fstatx_np(*(a1 + 6), &v179, v7))
      {
        goto LABEL_91;
      }

      if (filesec_get_property(v7, FILESEC_ACL, &obj_p))
      {
        if (*__error() != 2)
        {
          goto LABEL_91;
        }

        obj_p = 0;
        v97 = 1;
      }

      else
      {
        v97 = obj_p == 0;
      }

      if (!acl[0] && v97)
      {
LABEL_12:
        v5 = 0;
      }

      else
      {
        acl_p = acl_init(4);
        if (!acl_p)
        {
          goto LABEL_91;
        }

        if (acl[0])
        {
          *&v180.f_bsize = 0;
          entry_p = 0;
          v5 = 0;
          if (!acl_get_entry(acl[0], 0, &v180))
          {
            v5 = 0;
            do
            {
              flagset_p = 0;
              acl_get_flagset_np(*&v180.f_bsize, &flagset_p);
              if (!acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
              {
                if (acl_create_entry(&acl_p, &entry_p) == -1)
                {
                  goto LABEL_91;
                }

                v98 = acl_copy_entry(entry_p, *&v180.f_bsize);
                if (v98 == -1)
                {
                  goto LABEL_91;
                }

                v5 = v98;
                if (*(a1 + 69) >= 2u)
                {
                  v99 = *__error();
                  v100 = *a1;
                  v101 = a1[1];
                  if (!*a1)
                  {
                    v100 = "(null src)";
                  }

                  if (!v101)
                  {
                    v101 = "(null tmp)";
                  }

                  syslog(7, "%s:%d:%s() copied acl entry from %s to %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3193, "copyfile_security", v100, v101);
                  *__error() = v99;
                }
              }

              if (*&v180.f_bsize)
              {
                v102 = -1;
              }

              else
              {
                v102 = 0;
              }
            }

            while (!acl_get_entry(acl[0], v102, &v180));
          }
        }

        else
        {
          v5 = 0;
        }

        if (obj_p)
        {
          *&v180.f_bsize = 0;
          flagset_p = 0;
          entry_p = 0;
          if (!acl_get_entry(obj_p, 0, &v180))
          {
            do
            {
              acl_get_flagset_np(*&v180.f_bsize, &flagset_p);
              if (acl_get_flag_np(flagset_p, ACL_ENTRY_INHERITED))
              {
                if (acl_create_entry(&acl_p, &entry_p) == -1)
                {
                  goto LABEL_91;
                }

                v111 = acl_copy_entry(entry_p, *&v180.f_bsize);
                if (v111 == -1)
                {
                  goto LABEL_91;
                }

                v5 = v111;
                if (a1 && *(a1 + 69) >= 2u)
                {
                  v112 = *__error();
                  v113 = *a1;
                  v114 = a1[1];
                  if (!*a1)
                  {
                    v113 = "(null dst)";
                  }

                  if (!v114)
                  {
                    v114 = "(null tmp)";
                  }

                  syslog(7, "%s:%d:%s() copied acl entry from %s to %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3217, "copyfile_security", v113, v114);
                  *__error() = v112;
                }
              }

              if (*&v180.f_bsize)
              {
                v115 = -1;
              }

              else
              {
                v115 = 0;
              }
            }

            while (!acl_get_entry(obj_p, v115, &v180));
          }
        }

        v116 = filesec_set_property(a1[23], FILESEC_ACL, &acl_p);
        if (a1 && !v116 && *(a1 + 69) >= 3u)
        {
          v117 = *__error();
          syslog(7, "%s:%d:%s() altered acl\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3224, "copyfile_security");
          *__error() = v117;
        }
      }

      v8 = filesec_dup(a1[23]);
      if (!v8)
      {
        goto LABEL_91;
      }

      v9 = v8;
      v10 = *(a1 + 18);
      if ((a1[24] & 2) == 0 || (v11 = *(a1 + 49), (v11 & 0x4000) != 0))
      {
        v12 = 1;
      }

      else if ((v11 & 0x8000) != 0 || fstatfs(*(a1 + 4), &v180) != -1 && (v180.f_flags & 8) != 0 || (v12 = 1, fstatfs(*(a1 + 6), &v180) != -1) && (v180.f_flags & 8) != 0)
      {
        LOWORD(v180.f_bsize) = 0;
        if (filesec_get_property(v9, FILESEC_MODE, &v180) || (v180.f_bsize & 0xC00) == 0)
        {
          v12 = 1;
        }

        else
        {
          LOWORD(v180.f_bsize) &= 0xF3FFu;
          v12 = filesec_set_property(v9, FILESEC_MODE, &v180) == 0;
        }

        v10 &= 0xF3FFu;
      }

      v103 = a1[24] & 3;
      if (v103 > 1)
      {
        if (v103 == 2)
        {
          fchmod(*(a1 + 6), v10);
        }

        else
        {
LABEL_256:
          if (!v12 || fchmodx_np(*(a1 + 6), v9) < 0)
          {
            *&v180.f_bsize = 0;
            if ((a1[24] & 2) != 0 && fchmod(*(a1 + 6), v10) == -1)
            {
              v104 = *__error();
              v105 = "(null string)";
              v106 = a1[1];
              if (!v106)
              {
                v106 = "(null string)";
              }

              if (*a1)
              {
                v105 = *a1;
              }

              syslog(4, "could not change mode of destination file %s to match source file %s: %m", v106, v105);
              *__error() = v104;
            }

            fchown(*(a1 + 6), *(a1 + 12), *(a1 + 13));
            if (!filesec_get_property(v9, FILESEC_ACL, &v180))
            {
              if (MEMORY[0x29C2B03F0](*(a1 + 6), *&v180.f_bsize) == -1)
              {
                v107 = *__error();
                v108 = "(null string)";
                v109 = a1[1];
                if (!v109)
                {
                  v109 = "(null string)";
                }

                if (*a1)
                {
                  v108 = *a1;
                }

                syslog(4, "could not apply acl to destination file %s from source file %s: %m", v109, v108);
                *__error() = v107;
              }

              acl_free(*&v180.f_bsize);
            }
          }
        }
      }

      else if (v103)
      {
        filesec_set_property(v9, FILESEC_OWNER, 0);
        filesec_set_property(v9, FILESEC_GROUP, 0);
        filesec_set_property(v9, FILESEC_MODE, 0);
        goto LABEL_256;
      }

      filesec_free(v9);
      goto LABEL_274;
    }
  }

  if (!v54)
  {
LABEL_219:
    if (v53)
    {
      free(v53);
    }

    goto LABEL_319;
  }

  v56 = &v53[v54 - 1];
  if (*v56)
  {
    *v56 = 0;
  }

  v57 = malloc_type_malloc(0x1000uLL, 0x89F80090uLL);
  if (!v57)
  {
    v24 = v53;
LABEL_225:
    free(v24);
LABEL_226:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_320;
  }

  v58 = v57;
  v59 = 0;
  size = 4096;
  v60 = v53;
  v167 = &v53[v5 - 1];
  while (1)
  {
    v61 = a1[31];
    if (v61)
    {
      free(v61);
      a1[31] = 0;
    }

    v62 = v56 - v60;
    if (strncmp(v60, "figgledidiggledy", v56 - v60))
    {
      v63 = *(a1 + 70);
      if (!v63 || xattr_preserve_for_intent(v60, v63))
      {
        a1[31] = strdup(v60);
        v64 = a1[26];
        if (!v64)
        {
          goto LABEL_143;
        }

        v65 = v64(5, 1, a1, *a1, a1[1], a1[27]);
        if (v65 != 1)
        {
          break;
        }
      }
    }

LABEL_209:
    v70 = v58;
LABEL_210:
    v60 += strlen(v60) + 1;
    v58 = v70;
    v5 = v59;
    if (v60 > v56)
    {
      goto LABEL_315;
    }
  }

  if (v65 == 2)
  {
    goto LABEL_313;
  }

LABEL_143:
  if (strncmp(v60, "com.apple.ResourceFork", v56 - v60))
  {
    __dst = v59;
    v66 = fgetxattr(*(a1 + 4), v60, 0, 0, 0, v48);
    if (v66 < 0)
    {
      v70 = v58;
LABEL_174:
      v59 = __dst;
      goto LABEL_210;
    }

    v67 = v66;
    v68 = -3;
    while (1)
    {
      if (v67 <= size)
      {
        v70 = v58;
        v67 = size;
      }

      else
      {
        if (v67 >= 0x2000001)
        {
          v69 = *__error();
          syslog(4, "xattr named %s has size (%zu), which exceeds the threshold (%d); trying to allocate: %m", v60, v67, 0x2000000);
          *__error() = v69;
        }

        v70 = malloc_type_realloc(v58, v67, 0x84D193BuLL);
        if (!v70)
        {
          free(v58);
          size = 0;
          v56 = v167;
          goto LABEL_187;
        }
      }

      size = v67;
      v71 = fgetxattr(*(a1 + 4), v60, v70, v67, 0, v48);
      if ((v71 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() == 34 && v68 != 0)
      {
        v67 = fgetxattr(*(a1 + 4), v60, 0, 0, 0, v48);
        ++v68;
        v58 = v70;
        if ((v67 & 0x8000000000000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_158;
    }

    v84 = v71;
    v56 = v167;
    v59 = __dst;
    if (!strncmp(v60, "com.apple.decmpfs", v62))
    {
      if (v84 < 0x10 || *v70 != 1668116582)
      {
        goto LABEL_210;
      }

      v86 = v70[1];
      if ((v86 - 7) >= 8 && (v86 - 3) >= 2)
      {
        if (v86 == 5)
        {
          if (*(a1 + 69) >= 3u)
          {
            v96 = *__error();
            syslog(7, "%s:%d:%s() compression_type <5> on attribute com.apple.decmpfs for src file %s is not copied.\n");
            goto LABEL_218;
          }
        }

        else
        {
          v96 = *__error();
          syslog(4, "Invalid compression_type <%d> on attribute %s for src file %s: %m");
LABEL_218:
          *__error() = v96;
        }

LABEL_158:
        v56 = v167;
        goto LABEL_174;
      }

      if (!v168)
      {
        *(a1 + 49) |= 4u;
      }
    }

    if (fsetxattr(*(a1 + 6), v60, v70, v84, 0, v48) < 0)
    {
      if (*__error() == 1 && !strcmp(v60, "com.apple.root.installed"))
      {
        goto LABEL_210;
      }

      v85 = a1[26];
      if (!v85)
      {
        v95 = *__error();
        syslog(4, "could not set attributes %s on destination file descriptor: %m", v60);
        *__error() = v95;
LABEL_187:
        v59 = 0xFFFFFFFFLL;
        goto LABEL_210;
      }

      if (v85(5, 3, a1, *a1, a1[1], a1[27]) == 2)
      {
        v59 = 0xFFFFFFFFLL;
LABEL_314:
        *(a1 + 68) = 89;
        v58 = v70;
        v5 = v59;
        goto LABEL_315;
      }
    }

    v58 = v70;
    goto LABEL_207;
  }

  if ((*(a1 + 197) & 4) == 0)
  {
    v73 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", 0, 0, 0, v48);
    if (v73 < 0)
    {
      v59 = 0;
      v5 = 45;
LABEL_203:
      if (*(a1 + 69) >= 2u)
      {
        __dstb = *__error();
        v91 = v59;
        v92 = *(a1 + 68);
        v93 = __error();
        v166 = v92;
        v59 = v91;
        syslog(7, "%s:%d:%s() Resource fork copy (fsetxattr) failed (%d - state %d - errno %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3731, "copyfile_xattr", v5, v166, *v93);
        *__error() = __dstb;
      }

      v83 = *(a1 + 68);
      goto LABEL_206;
    }

    v74 = size;
    if (size < 0x100000 && v73 > size)
    {
      if (v73 >= 0x100000)
      {
        v75 = 0x100000;
      }

      else
      {
        v75 = v73;
      }

      v76 = v75;
      v58 = reallocf(v58, v75);
      if (!v58)
      {
        v90 = *__error();
        syslog(4, "realloc for resource fork failed: %m");
        size = 0;
        *__error() = v90;
LABEL_202:
        v59 = 0xFFFFFFFFLL;
        v5 = 0xFFFFFFFFLL;
        goto LABEL_203;
      }

      v74 = v76;
    }

    size = v74;
    v77 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", v58, v74, 0, v48);
    if (v77 < 1)
    {
      v79 = 1;
      goto LABEL_194;
    }

    v78 = 0;
    do
    {
      if (fsetxattr(*(a1 + 6), "com.apple.ResourceFork", v58, v77, v78, v48) < 0)
      {
        v88 = *__error();
        syslog(4, "writing to resource fork got error: %m");
        *__error() = v88;
        v89 = a1[26];
        if (v89)
        {
          if (v89(5, 3, a1, *a1, a1[1], a1[27]) != 2)
          {
            goto LABEL_200;
          }

          *(a1 + 68) = 89;
        }

        goto LABEL_202;
      }

      v78 += v77;
      v77 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", v58, size, v78, v48);
    }

    while (v77 >= 1);
    v79 = v78 == 0;
LABEL_194:
    if ((v77 & 0x8000000000000000) == 0 || (v87 = *__error(), syslog(4, "resource fork getxattr failed: %m"), *__error() = v87, v79))
    {
LABEL_200:
      v59 = 0;
      goto LABEL_207;
    }

    goto LABEL_202;
  }

  v59 = copyfile_data(a1, 1);
  if (!v59)
  {
LABEL_207:
    v94 = a1[26];
    if (v94 && v94(5, 2, a1, *a1, a1[1], a1[27]) == 2)
    {
      v59 = 0xFFFFFFFFLL;
LABEL_313:
      v70 = v58;
      goto LABEL_314;
    }

    goto LABEL_209;
  }

  if (*(a1 + 69) >= 2u)
  {
    v80 = *__error();
    v81 = *(a1 + 68);
    v82 = __error();
    syslog(7, "%s:%d:%s() Resource fork copy (fd) failed (%d - state %d - errno %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 3713, "copyfile_xattr", v59, v81, *v82);
    *__error() = v80;
  }

  v83 = *(a1 + 68);
  v5 = v59;
LABEL_206:
  if (v83 != 89)
  {
    goto LABEL_207;
  }

LABEL_315:
  if (v53)
  {
    free(v53);
  }

  free(v58);
  v118 = a1[31];
  if (v118)
  {
    free(v118);
    a1[31] = 0;
  }

LABEL_319:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_320:
  if (*__error() != 45 && *__error() != 1)
  {
    v110 = *__error();
    syslog(4, "error processing extended attributes: %m");
LABEL_284:
    *__error() = v110;
  }

  return v5;
}

uint64_t copyfile_stat(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 36);
  v3 = v2 & 0xFFF;
  v4 = *(a1 + 196);
  if ((v4 & 0x4000) == 0)
  {
    if ((v4 & 0x8000) != 0 || (fstatfs(*(a1 + 16), &v12) != -1 ? (v5 = (v12.f_flags & 8) == 0) : (v5 = 1), !v5 || (fstatfs(*(a1 + 24), &v12) != -1 ? (v6 = (v12.f_flags & 8) == 0) : (v6 = 1), !v6)))
    {
      v3 = v2 & 0x3FF;
    }
  }

  v11[1] = 0;
  v11[2] = 0;
  v11[0] = 0x140000000005;
  v7 = *(a1 + 64);
  *&v12.f_bsize = *(a1 + 80);
  *&v12.f_bfree = v7;
  fsetattrlist(*(a1 + 24), v11, &v12, 0x20uLL, 0);
  fchown(*(a1 + 24), *(a1 + 48), *(a1 + 52));
  fchmod(*(a1 + 24), v3);
  v8 = *(a1 + 148);
  if ((*(a1 + 192) & 0x10000000) != 0)
  {
    v9 = 1573056;
  }

  else
  {
    v9 = 1572992;
  }

  result = copyfile_set_bsdflags(a1, (*(a1 + 196) << 14) & 0x8000 | v8 & 0xFFE7FF3F, v9);
  if ((v8 & 0x60026) == 0x20)
  {
    return fsetattrlist(*(a1 + 24), v11, &v12, 0x20uLL, 0);
  }

  return result;
}

uint64_t copyfile_open(const char **a1, std::error_code *a2)
{
  v81 = *MEMORY[0x29EDCA608];
  if (*a1 && *(a1 + 4) == -2)
  {
    v3 = MEMORY[0x29EDCA648];
    if ((a1[24] & 0x40000) == 0)
    {
      v3 = MEMORY[0x29EDCA668];
    }

    if (v3())
    {
      v4 = *__error();
      syslog(4, "stat on %s: %m");
LABEL_147:
      *__error() = v4;
      return 0xFFFFFFFFLL;
    }

    v14 = *(a1 + 18) & 0xF000;
    switch(v14)
    {
      case 16384:
        v5 = 0;
        v15 = 1;
        v16 = 1;
        break;
      case 40960:
        v36 = 0;
        v16 = 0;
        v5 = 0;
        v37 = *(a1 + 48);
        v38 = 0x200000;
        v15 = 1;
        v39 = 0x200000;
LABEL_68:
        if ((v37 & 0x400000) != 0)
        {
          v40 = v39;
        }

        else
        {
          v40 = v38;
        }

        if ((v37 & 0x400000) != 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = v16;
        }

        v41 = open(*a1, v40, 0);
        *(a1 + 4) = v41;
        if (v41 < 0)
        {
          v4 = *__error();
LABEL_146:
          syslog(4, "open on %s: %m");
          goto LABEL_147;
        }

        if (*(a1 + 69) >= 2u)
        {
          v42 = *__error();
          syslog(7, "%s:%d:%s() open successful on source (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1959, "copyfile_open", *a1);
          *__error() = v42;
          v41 = *(a1 + 4);
        }

        *(a1 + 49) |= 0x80u;
        if (fstat(v41, &v79))
        {
          v4 = *__error();
          syslog(4, "fstat on open fd failed for %s\n: %m");
          goto LABEL_147;
        }

        if (*(a1 + 8) == v79.st_dev && a1[5] == v79.st_ino)
        {
          v55 = *(a1 + 18) & 0xF000;
          if (v55 == (v79.st_mode & 0xF000))
          {
            if ((*(a1 + 198) & 2) != 0)
            {
              if (!a1[32])
              {
                *__error() = 2;
                *(a1 + 68) = 2;
                v54 = *__error();
                syslog(4, "missing FTS entry during recursive copy\n: %m");
                goto LABEL_112;
              }

              if (!lstat(*a1, &v79))
              {
                v67 = 0;
                v68 = *(a1[32] + 44);
                if (v68 > 0xB)
                {
                  if (v68 - 12 <= 1)
                  {
                    v67 = -24576;
                  }
                }

                else if (v68 == 1 || v68 == 6)
                {
                  v67 = 0x4000;
                }

                else if (v68 == 8)
                {
                  v67 = 0x8000;
                }

                if ((*(a1 + 198) & 4) != 0)
                {
                  LOWORD(v55) = -24576;
                }

                else
                {
                  LOWORD(v55) = v67;
                }

LABEL_187:
                if ((v79.st_mode & 0xF000) != v55)
                {
                  *__error() = 9;
                  *(a1 + 68) = 9;
                  v4 = *__error();
                  syslog(4, "file type (%u) does not match expected %u on %s\n: %m");
                  goto LABEL_147;
                }

                if (v15)
                {
                  goto LABEL_204;
                }

                v69 = *(a1 + 48);
                if ((v69 & 4) == 0)
                {
                  goto LABEL_204;
                }

                if ((v69 & 8) != 0 && (*(a1 + 148) & 0x20) != 0)
                {
                  v70 = 32 * doesdecmpfs(*(a1 + 4));
                  v69 = *(a1 + 48);
                }

                else
                {
                  v70 = 0;
                }

                v71 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", 0, 0, 0, (v69 >> 18) & 1 | v70);
                *__error() = 0;
                if (v71 <= 0x100000)
                {
                  goto LABEL_204;
                }

                if (*(a1 + 69) >= 2u)
                {
                  v72 = *__error();
                  syslog(7, "%s:%d:%s() %s has large resource fork, will use namedfork to copy\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2083, "copyfile_open", *a1);
                  *__error() = v72;
                }

                snprintf(&v80, 0x400uLL, "%s%s", *a1, "/..namedfork/rsrc");
                v73 = malloc_type_malloc(0x90uLL, 0x1000040B72DA15FuLL);
                a1[22] = v73;
                if (v73)
                {
                  v74 = MEMORY[0x29EDCA6A8];
                  if ((a1[24] & 0x40000) == 0)
                  {
                    v74 = MEMORY[0x29EDCA6B8];
                  }

                  if (v74(&v80, v73))
                  {
                    v75 = *__error();
                    syslog(4, "stat on %s: %m", &v80);
                    *__error() = v75;
                    free(a1[22]);
                    a1[22] = 0;
                  }

                  else if (a1[22])
                  {
                    v77 = open(&v80, v40, 0);
                    *(a1 + 5) = v77;
                    if ((v77 & 0x80000000) == 0)
                    {
                      if (*(a1 + 69) >= 2u)
                      {
                        v78 = *__error();
                        syslog(7, "%s:%d:%s() open successful on source rsrc (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2111, "copyfile_open", &v80);
                        *__error() = v78;
                      }

                      *(a1 + 49) |= 0x400u;
                      goto LABEL_204;
                    }
                  }
                }

                v76 = *__error();
                syslog(4, "malloc/stat/open on %s: %m", &v80);
                *__error() = v76;
                *__error() = 0;
LABEL_204:
                v7 = v36 | ((v37 & 0x400000) >> 22);
                goto LABEL_8;
              }
            }

            else
            {
              v56 = MEMORY[0x29EDCA6A8];
              if ((a1[24] & 0x40000) == 0)
              {
                v56 = MEMORY[0x29EDCA6B8];
              }

              if (!v56(*a1, &v79))
              {
                goto LABEL_187;
              }
            }

            v4 = *__error();
            syslog(4, "repeat stat on %s\n: %m");
            goto LABEL_147;
          }
        }

        v59 = *__error();
        syslog(4, "file %s changed behind our feet: %m", *a1);
        *__error() = v59;
        v43 = 9;
LABEL_159:
        *(a1 + 68) = v43;
        return 0xFFFFFFFFLL;
      case 32768:
        v15 = 0;
        v16 = 0;
        v5 = 1;
        break;
      default:
        if (strcmp(*a1, "/dev/null") || (a1[24] & 7) == 0)
        {
          v43 = 45;
          goto LABEL_159;
        }

        v5 = 0;
        v16 = 0;
        v15 = 1;
        break;
    }

    v38 = 0;
    v37 = *(a1 + 48);
    v39 = (v37 >> 10) & 0x100;
    v36 = 1;
    goto LABEL_68;
  }

  v5 = 0;
  v6 = 0;
  LOBYTE(v7) = 1;
LABEL_8:
  v8 = a1[1];
  if (!v8 || *(a1 + 6) != -2)
  {
    goto LABEL_153;
  }

  v9 = *(a1 + 48);
  if ((v9 & 0x8000008) != 0)
  {
    v10 = 2561;
  }

  else
  {
    v10 = 2560;
  }

  if ((v9 & 0x800000) != 0)
  {
    v11 = 2560;
  }

  else
  {
    v11 = v10;
  }

  if ((v9 & 0x400000) != 0)
  {
    v12 = 2561;
  }

  else
  {
    v12 = v11;
  }

  if ((v9 & 0x200000) != 0 && remove(v8, a2) < 0 && *__error() != 2)
  {
    v4 = *__error();
    syslog(4, "%s: remove: %m");
    goto LABEL_147;
  }

  if ((*(a1 + 194) & 8) != 0)
  {
    v17 = lstat(a1[1], &v80);
    if ((v80.f_iosize & 0xF000) == 0xA000)
    {
      v18 = 0x200000;
    }

    else
    {
      v18 = 256;
    }

    if (v17 == -1)
    {
      v13 = 256;
    }

    else
    {
      v13 = v18;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *(a1 + 49);
  if ((v19 & 8) == 0)
  {
    v20 = fstatfs(*(a1 + 4), &v80);
    if (v20 == -1 || (v80.f_flags & 0x80) == 0)
    {
      if (v20 == -1)
      {
        goto LABEL_127;
      }

      v21 = *(a1 + 49);
    }

    else
    {
      v21 = *(a1 + 49) | 0x10;
    }

    v19 = v21 | 8;
    *(a1 + 49) = v19;
  }

  v22 = 0xFFFFFFFFLL;
  v23 = v6 | v5;
  if (v6 | v5)
  {
    if ((v19 & 0x210) == 0x10)
    {
      v22 = fcntl(*(a1 + 4), 63);
      if ((v22 & 0x80000000) != 0)
      {
        v4 = *__error();
        __error();
        syslog(4, "GET_PROT_CLASS failed on (%s) with error <%d>: %m");
        goto LABEL_147;
      }
    }
  }

  if (v7)
  {
    if (!v6)
    {
      for (i = 0; ; i = 1)
      {
        v44 = v12 & 0xFFFFF9FE;
        while (1)
        {
          while (1)
          {
            v45 = a1[1];
            v46 = *(a1 + 18) | 0x80u;
            if ((statfs(v45, &v80) != -1 || *__error() == 2 && dirname_r(v45, &v79) && statfs(&v79, &v80) != -1) && (v80.f_flags & 0x80) != 0)
            {
              v47 = open_dprotected_np(v45, v12 | v13, v22, 0, v46);
            }

            else
            {
              v47 = open(v45, v12 | v13, v46);
            }

            *(a1 + 6) = v47;
            if ((v47 & 0x80000000) == 0)
            {
              goto LABEL_57;
            }

            v48 = *__error();
            if (v48 != 13)
            {
              break;
            }

            if (chmod(a1[1], *(a1 + 18) & 0xF7F | 0x80))
            {
              if (*__error() == 2)
              {
                *__error() = 13;
              }

LABEL_145:
              v4 = *__error();
              goto LABEL_146;
            }

            *(a1 + 49) |= 0x1000u;
          }

          if (v48 != 21)
          {
            break;
          }

          if (*(a1 + 69) >= 3u)
          {
            v49 = *__error();
            syslog(7, "%s:%d:%s() open failed because it is a directory (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2301, "copyfile_open", a1[1]);
            *__error() = v49;
          }

          v50 = *(a1 + 48);
          if ((v50 & 0x20000) != 0)
          {
            v12 = v44;
            if ((v50 & 0x800000) == 0)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v12 = v44;
            if ((v50 & 0x800008) == 8)
            {
              goto LABEL_145;
            }
          }
        }

        if (v48 != 17)
        {
          goto LABEL_145;
        }

        if (*(a1 + 69) >= 3u)
        {
          v51 = *__error();
          syslog(7, "%s:%d:%s() open failed, retrying (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2268, "copyfile_open", a1[1]);
          *__error() = v51;
        }

        v52 = *(a1 + 48);
        if ((v52 & 0x20000) != 0)
        {
          goto LABEL_145;
        }

        v12 &= ~0x200u;
        if ((v52 & 0x400008) != 0)
        {
          if (*(a1 + 69) >= 4u)
          {
            v53 = *__error();
            syslog(7, "%s:%d:%s() truncating existing file (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2278, "copyfile_open", a1[1]);
            *__error() = v53;
          }

          v12 |= 0x400u;
        }
      }
    }

    if (mkdir(a1[1], *(a1 + 18) & 0xE3F | 0x1C0) == -1)
    {
      if (*__error() != 17 || (*(a1 + 194) & 2) != 0)
      {
        v4 = *__error();
        syslog(4, "Cannot make directory %s: %m");
        goto LABEL_147;
      }

      if (*(a1 + 198))
      {
        if (lstat(a1[1], &v80) == -1)
        {
          v60 = "Cannot lstat destination %s: %m";
          goto LABEL_174;
        }

        if ((v80.f_iosize & 0xF000) == 0xA000)
        {
          *__error() = 9;
          *(a1 + 68) = 9;
          v60 = "Destination %s already exists as a symlink, refusing to copy: %m";
LABEL_174:
          v66 = *__error();
          syslog(4, v60, a1[1]);
          *__error() = v66;
          return 0xFFFFFFFFLL;
        }
      }
    }

    v24 = open(a1[1], v13);
    *(a1 + 6) = v24;
    if (v24 == -1)
    {
      v4 = *__error();
      syslog(4, "Cannot open directory %s for reading: %m");
      goto LABEL_147;
    }

    i = 1;
    goto LABEL_57;
  }

  v26 = a1[16];
  if (v26)
  {
    v27 = (v26 + 1);
  }

  else
  {
    v27 = 1025;
  }

  v28 = malloc_type_calloc(1uLL, v27, 0x71385709uLL);
  if (!v28)
  {
    v54 = *__error();
    syslog(4, "cannot allocate %zd bytes: %m");
LABEL_112:
    *__error() = v54;
    return 0xFFFFFFFFLL;
  }

  v29 = v28;
  if (readlink(*a1, v28, v27 - 1) == -1)
  {
    v61 = *__error();
    syslog(4, "cannot readlink %s: %m");
  }

  else
  {
    if (symlink(v29, a1[1]) != -1 || *__error() == 17 && (*(a1 + 194) & 2) == 0)
    {
      free(v29);
      v30 = open(a1[1], 0x200000);
      *(a1 + 6) = v30;
      if (v30 == -1)
      {
        v4 = *__error();
        syslog(4, "Cannot open symlink %s for reading: %m");
        goto LABEL_147;
      }

      i = 0;
LABEL_57:
      if (*(a1 + 69) >= 2u)
      {
        v31 = *__error();
        syslog(7, "%s:%d:%s() open successful on destination (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2312, "copyfile_open", a1[1]);
        *__error() = v31;
      }

      v32 = *(a1 + 49);
      LOWORD(v33) = v32 | 0x100;
      *(a1 + 49) = v32 | 0x100;
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_60;
      }

      if ((v32 & 0x20) != 0)
      {
LABEL_164:
        if (v23 != 0 && (i & 1) != 0 && (v33 & 0x240) == 0x40)
        {
          if (fcntl(*(a1 + 6), 64, v22))
          {
            v4 = *__error();
            __error();
            syslog(4, "SET_PROT_CLASS failed on (%s) with error <%d>: %m");
            goto LABEL_147;
          }

          v33 = *(a1 + 49);
        }

LABEL_60:
        if ((v33 & 0x400) == 0)
        {
          goto LABEL_153;
        }

        snprintf(&v80, 0x400uLL, "%s%s", a1[1], "/..namedfork/rsrc");
        v34 = open(&v80, 1537, *(a1 + 18) | 0x80u);
        *(a1 + 7) = v34;
        if (v34 == -1)
        {
          v62 = *__error();
          syslog(4, "open on %s: %m", &v80);
          *__error() = v62;
          free(a1[22]);
          a1[22] = 0;
          if (close(*(a1 + 5)))
          {
            v63 = *__error();
            syslog(4, "error closing source rsrc file descriptor: %m");
            *__error() = v63;
          }

          v35 = 0;
          *(a1 + 5) = -1;
          *(a1 + 49) &= ~0x400u;
        }

        else
        {
          if (*(a1 + 69) < 2u)
          {
            goto LABEL_153;
          }

          v35 = *__error();
          syslog(7, "%s:%d:%s() open successful on destination rsrc (%s)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2373, "copyfile_open", &v80);
        }

        *__error() = v35;
LABEL_153:
        if ((a1[3] & 0x80000000) == 0 && (a1[2] & 0x80000000) == 0)
        {
          return 0;
        }

        if (*(a1 + 69))
        {
          v65 = *__error();
          syslog(7, "%s:%d:%s() file descriptors not open (src: %d, dst: %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 2381, "copyfile_open", *(a1 + 4), *(a1 + 6));
          *__error() = v65;
        }

        v43 = 22;
        goto LABEL_159;
      }

      v57 = fstatfs(*(a1 + 6), &v80);
      if (v57 != -1 && (v80.f_flags & 0x80) != 0)
      {
        v58 = *(a1 + 49) | 0x40;
LABEL_163:
        v33 = v58 | 0x20;
        *(a1 + 49) = v33;
        goto LABEL_164;
      }

      if (v57 != -1)
      {
        v58 = *(a1 + 49);
        goto LABEL_163;
      }

LABEL_127:
      v4 = *__error();
      __error();
      syslog(4, "failed to determine copy protection on (%s) with error <%d>: %m");
      goto LABEL_147;
    }

    v61 = *__error();
    syslog(4, "Cannot make symlink %s: %m");
  }

  *__error() = v61;
  free(v29);
  return 0xFFFFFFFFLL;
}

uint64_t copyfile_set_bsdflags(uint64_t a1, int a2, int a3)
{
  if (fstat(*(a1 + 24), &v11))
  {
    if (a3)
    {
      if (*(a1 + 276))
      {
        v6 = *__error();
        __error();
        syslog(7, "%s:%d:%s() couldn't stat destination file for st_flags (%d)\n");
LABEL_18:
        *__error() = v6;
      }

      return *__error();
    }

    v7 = 0;
  }

  else
  {
    v7 = v11.st_flags & a3;
  }

  v8 = 4;
  do
  {
    v9 = v7 | a2;
    v12[0] = v11.st_flags;
    v12[1] = v7 | a2;
    v13 = -1;
    *__error() = 0;
    if (ffsctl(*(a1 + 24), 0xC00C4114uLL, v12, 0))
    {
      if (*__error() != 35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11.st_flags == v13)
      {
        return 0;
      }

      v11.st_flags = v13;
      v7 = v13 & a3;
    }

    --v8;
  }

  while (v8);
  v9 = v7 | a2;
LABEL_15:
  result = fchflags(*(a1 + 24), v9);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 276))
  {
    v6 = *__error();
    __error();
    syslog(7, "%s:%d:%s() fchflags failed on %s (%d)\n");
    goto LABEL_18;
  }

  return *__error();
}

void reset_security(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 24);
  if ((v1 & 0x80000000) == 0)
  {
    v3 = *(a1 + 16);
    if (v3 < 0 || (*(a1 + 192) & 2) == 0)
    {
      v3 = v1;
    }

    fstat(v3, &v11);
    if ((*(a1 + 196) & 1) == 0)
    {
      v4 = *(a1 + 24);
      v14 = 0;
      v5 = filesec_init();
      if (v5)
      {
        if (fstatx_np(v4, &v12, v5))
        {
          if (*__error() != 45)
          {
LABEL_10:
            if (v14)
            {
              acl_free(v14);
            }

            if (v5)
            {
              filesec_free(v5);
            }

            return;
          }
        }

        else
        {
          if (filesec_get_property(v5, FILESEC_ACL, &v14) || acl_get_entry(v14, 0, &entry_p))
          {
            goto LABEL_10;
          }

          v6 = entry_p;
          v7 = geteuid();
          mbr_uid_to_uuid(v7, uu);
          qualifier = acl_get_qualifier(v6);
          v9 = 1;
          v17 = acl_init(1);
          if (v17)
          {
            add_uberace(&v17);
            if (!acl_get_entry(v17, 0, &v16))
            {
              acl_get_permset(v16, &permset_p);
              acl_get_tag_type(v6, &tag_type_p);
              acl_get_permset(v6, &v19);
              if (tag_type_p == ACL_EXTENDED_ALLOW && *qualifier == *uu && qualifier[1] == *&uu[8])
              {
                v9 = *permset_p != *v19;
              }
            }
          }

          if (qualifier)
          {
            acl_free(qualifier);
          }

          if (v17)
          {
            acl_free(v17);
          }

          if (v9)
          {
            goto LABEL_10;
          }

          *uu = v11.st_mode & 0xFFF;
          if (!acl_delete_entry(v14, entry_p) && !filesec_set_property(v5, FILESEC_ACL, &v14) && !filesec_set_property(v5, FILESEC_MODE, uu) && !fchmodx_np(v4, v5))
          {
            goto LABEL_10;
          }
        }
      }

      fchmod(v4, v11.st_mode & 0xFFF);
      goto LABEL_10;
    }
  }
}

int copyfile_state_free(copyfile_state_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2)
  {
    filesec_free(v2);
  }

  v3 = *(a1 + 29);
  if (v3)
  {
    filesec_free(v3);
  }

  v4 = *(a1 + 30);
  if (v4)
  {
    filesec_free(v4);
  }

  if (*a1)
  {
    v5 = *(a1 + 4);
    if (v5 < 0 || (close(v5), *a1))
    {
      v6 = *(a1 + 5);
      if ((v6 & 0x80000000) == 0)
      {
        close(v6);
      }
    }
  }

  if (!*(a1 + 1))
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 6);
  if (v7 < 0)
  {
    v8 = 0;
  }

  else
  {
    if (close(v7))
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (!*(a1 + 1))
    {
      goto LABEL_24;
    }
  }

  v10 = *(a1 + 7);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v8 < 0)
  {
LABEL_26:
    v11 = *__error();
    syslog(4, "error closing files: %m");
    *__error() = v11;
    v9 = -1;
    goto LABEL_27;
  }

LABEL_25:
  v9 = 0;
LABEL_27:
  v12 = *(a1 + 31);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 22);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 1);
  if (v14)
  {
    free(v14);
  }

  if (*a1)
  {
    free(*a1);
  }

  free(a1);
  return v9;
}

int fcopyfile(int from_fd, int to_fd, copyfile_state_t a3, copyfile_flags_t flags)
{
  v23 = a3;
  if ((to_fd | from_fd) < 0)
  {
    v18 = __error();
    v19 = 22;
LABEL_28:
    *v18 = v19;
    return -1;
  }

  if ((copyfile_preamble(&v23, flags) & 0x80000000) != 0)
  {
    return -1;
  }

  v8 = v23;
  if (v23 && *(v23 + 69) >= 2u)
  {
    v9 = *__error();
    syslog(7, "%s:%d:%s() set src_fd <- %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1042, "fcopyfile", from_fd);
    *__error() = v9;
  }

  if (*(v8 + 4) == -2)
  {
    *(v8 + 4) = from_fd;
    if (fstatx_np(from_fd, (v8 + 32), *(v8 + 23)))
    {
      if (*__error() != 45 && *__error() != 1)
      {
        v21 = *__error();
        syslog(4, "fstatx_np on src fd %d: %m", *(v8 + 4));
        *__error() = v21;
        return -1;
      }

      fstat(*(v8 + 4), (v8 + 32));
    }
  }

  v10 = *(v8 + 18) & 0xF000;
  if (v10 != 0x4000 && v10 != 0x8000 && v10 != 40960)
  {
    v18 = __error();
    v19 = 45;
    goto LABEL_28;
  }

  if (*(v8 + 69) >= 2u)
  {
    v11 = *__error();
    syslog(7, "%s:%d:%s() set dst_fd <- %d\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1070, "fcopyfile", to_fd);
    *__error() = v11;
  }

  v12 = *(v8 + 6);
  if (v12 == -2)
  {
    *(v8 + 6) = to_fd;
    v12 = to_fd;
  }

  v13 = fstat(v12, &v22);
  fchmod(*(v8 + 6), v22.st_mode & 0xE7F | 0x180);
  v14 = copyfile_internal(v8, flags);
  if ((v13 & 0x80000000) == 0 && (*(v8 + 192) & 2) == 0)
  {
    v15 = *__error();
    fchmod(*(v8 + 6), v22.st_mode & 0xFFF);
    *__error() = v15;
  }

  v16 = *(v8 + 68);
  if (v16)
  {
    *__error() = v16;
    *(v8 + 68) = 0;
  }

  if (!a3)
  {
    v17 = *__error();
    copyfile_state_free(v8);
    *__error() = v17;
  }

  if ((v14 & 0x80000000) == 0)
  {
    *__error() = 0;
  }

  return v14;
}

_filesec *copyfile_fix_perms(filesec_t *a1)
{
  obj_p = 0;
  v1 = filesec_dup(*a1);
  v2 = v1;
  if (v1)
  {
    if (!filesec_get_property(v1, FILESEC_ACL, &obj_p) && (add_uberace(&obj_p) || filesec_set_property(v2, FILESEC_ACL, &obj_p)) || !filesec_get_property(v2, FILESEC_MODE, &v5) && (~v5 & 0x180) != 0 && (v5 |= 0x180u, filesec_set_property(v2, FILESEC_MODE, &v5)))
    {
      filesec_free(v2);
      v2 = 0;
    }

    if (obj_p)
    {
      acl_free(obj_p);
    }
  }

  return v2;
}

int copyfile_state_get(copyfile_state_t s, uint32_t flag, void *dst)
{
  if (dst)
  {
    switch(flag)
    {
      case 1u:
        result = 0;
        v5 = *(s + 4);
        goto LABEL_21;
      case 2u:
        result = 0;
        v8 = *s;
        goto LABEL_25;
      case 3u:
        result = 0;
        v5 = *(s + 6);
        goto LABEL_21;
      case 4u:
        result = 0;
        v8 = *(s + 1);
        goto LABEL_25;
      case 5u:
        result = 0;
        v8 = *(s + 28);
        goto LABEL_25;
      case 6u:
        result = 0;
        v8 = *(s + 26);
        goto LABEL_25;
      case 7u:
        result = 0;
        v8 = *(s + 27);
        goto LABEL_25;
      case 8u:
        result = 0;
        v8 = *(s + 33);
        goto LABEL_25;
      case 9u:
        result = 0;
        v8 = *(s + 31);
        goto LABEL_25;
      case 0xAu:
        result = 0;
        v9 = (*(s + 49) >> 11) & 1;
        goto LABEL_28;
      case 0xBu:
      case 0xDu:
        result = 0;
        v5 = *(s + 71);
        goto LABEL_21;
      case 0xCu:
        result = 0;
        v5 = *(s + 72);
        goto LABEL_21;
      case 0xEu:
        result = 0;
        v9 = (*(s + 49) >> 13) & 1;
LABEL_28:
        *dst = v9;
        return result;
      case 0xFu:
        result = 0;
        v5 = (*(s + 49) >> 9) & 1;
        goto LABEL_21;
      case 0x10u:
        result = 0;
        v5 = (*(s + 49) >> 14) & 1;
        goto LABEL_21;
      case 0x11u:
        result = 0;
        v8 = *(s + 32);
LABEL_25:
        *dst = v8;
        return result;
      case 0x12u:
        result = 0;
        v5 = HIWORD(*(s + 49)) & 1;
        goto LABEL_21;
      default:
        if (flag != 256)
        {
          v6 = __error();
          v7 = 22;
          goto LABEL_5;
        }

        result = 0;
        v5 = *(s + 70);
LABEL_21:
        *dst = v5;
        break;
    }
  }

  else
  {
    v6 = __error();
    v7 = 14;
LABEL_5:
    *v6 = v7;
    return -1;
  }

  return result;
}

int copyfile_state_set(copyfile_state_t s, uint32_t flag, const void *src)
{
  if (src)
  {
    switch(flag)
    {
      case 1u:
        result = 0;
        *(s + 4) = *src;
        return result;
      case 2u:
        v9 = strdup(src);
        result = 0;
        *s = v9;
        return result;
      case 3u:
        result = 0;
        *(s + 6) = *src;
        return result;
      case 4u:
        v8 = strdup(src);
        result = 0;
        *(s + 1) = v8;
        return result;
      case 5u:
        if (*(s + 28))
        {
          *(s + 28) = 0;
        }

        if (!*src)
        {
          return 0;
        }

        result = 0;
        *(s + 28) = 0;
        return result;
      case 6u:
        result = 0;
        *(s + 26) = src;
        return result;
      case 7u:
        result = 0;
        *(s + 27) = src;
        return result;
      case 8u:
      case 9u:
      case 0xAu:
      case 0x11u:
        goto LABEL_8;
      case 0xBu:
        result = 0;
        *(s + 71) = *src;
        return result;
      case 0xCu:
        result = 0;
        v10 = *src;
        goto LABEL_27;
      case 0xDu:
        result = 0;
        v10 = *src;
        *(s + 71) = *src;
LABEL_27:
        *(s + 72) = v10;
        return result;
      case 0xEu:
        if (*src != 1)
        {
          return 0;
        }

        result = 0;
        v7 = *(s + 49) | 0x2000;
LABEL_34:
        *(s + 49) = v7;
        return result;
      case 0xFu:
        v12 = *(s + 49);
        result = 0;
        if (*src)
        {
          v7 = v12 | 0x200;
        }

        else
        {
          v7 = v12 & 0xFFFFFDFF;
        }

        goto LABEL_34;
      case 0x10u:
        v13 = *(s + 49);
        result = 0;
        if (*src)
        {
          v7 = v13 | 0x4000;
        }

        else
        {
          v7 = v13 & 0xFFFFBFFF;
        }

        goto LABEL_34;
      case 0x12u:
        v11 = *(s + 49);
        result = 0;
        if (*src)
        {
          v7 = v11 | 0x10000;
        }

        else
        {
          v7 = v11 & 0xFFFEFFFF;
        }

        goto LABEL_34;
      default:
        if (flag == 256)
        {
          result = 0;
          *(s + 70) = *src;
          return result;
        }

LABEL_8:
        v5 = __error();
        v6 = 22;
        break;
    }
  }

  else
  {
    v5 = __error();
    v6 = 14;
  }

  *v5 = v6;
  return -1;
}

uint64_t add_uberace(acl_t *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = getuid();
  if (!mbr_uid_to_uuid(v2, uu))
  {
    result = acl_create_entry_np(a1, &entry_p, 0);
    if (result == -1)
    {
      return result;
    }

    if (acl_get_permset(entry_p, &permset_p) == -1)
    {
      v4 = "acl_get_permset: %m";
    }

    else if (acl_clear_perms(permset_p) == -1)
    {
      v4 = "acl_clear_permset: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_DATA) == -1)
    {
      v4 = "add ACL_WRITE_DATA: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_ATTRIBUTES) == -1)
    {
      v4 = "add ACL_WRITE_ATTRIBUTES: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_EXTATTRIBUTES) == -1)
    {
      v4 = "add ACL_WRITE_EXTATTRIBUTES: %m";
    }

    else if (acl_add_perm(permset_p, ACL_APPEND_DATA) == -1)
    {
      v4 = "add ACL_APPEND_DATA: %m";
    }

    else if (acl_add_perm(permset_p, ACL_WRITE_SECURITY) == -1)
    {
      v4 = "add ACL_WRITE_SECURITY: %m";
    }

    else if (acl_add_perm(permset_p, ACL_SYNCHRONIZE) == -1)
    {
      v4 = "add ACL_SYNCHRONIZE: %m";
    }

    else if (acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW) == -1)
    {
      v4 = "set ACL_EXTENDED_ALLOW: %m";
    }

    else if (acl_set_permset(entry_p, permset_p) == -1)
    {
      v4 = "acl_set_permset: %m";
    }

    else
    {
      if (acl_set_qualifier(entry_p, uu) != -1)
      {
        return 0;
      }

      v4 = "acl_set_qualifier: %m";
    }

    v5 = *__error();
    syslog(4, v4);
    *__error() = v5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t copyfile_pack(void *a1)
{
  v130[1] = *MEMORY[0x29EDCA608];
  v2 = malloc_type_calloc(1uLL, 0x10012uLL, 0x1000040A9FC9F90uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x10012uLL, 0x44AFB0AEuLL);
  if (!v4)
  {
    free(v3);
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v128 = v4 + 65554;
  *v3 = 0x2000000051607;
  *(v3 + 12) = 2;
  *(v3 + 26) = xmmword_299C6D600;
  *(v3 + 42) = 82;
  *(v3 + 1) = *"Mac OS X        ";
  *(v3 + 84) = 1096045650;
  *(v3 + 24) = 120;
  v6 = (v3 + 15);
  v7 = *(a1 + 48);
  if (v7)
  {
    v130[0] = 0;
    if (filesec_get_property(a1[23], FILESEC_ACL, v130) < 0)
    {
      if (*(a1 + 69) < 2u)
      {
        v8 = 0;
      }

      else
      {
        v27 = *__error();
        v28 = __error();
        syslog(7, "%s:%d:%s() no acl entries found (errno = %d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5417, "copyfile_pack", *v28);
        v8 = 0;
        *__error() = v27;
      }
    }

    else
    {
      strcpy(v5, "com.apple.acl.text");
      v128 = v5 + 19;
      v8 = 19;
    }

    if (v130[0])
    {
      acl_free(v130[0]);
    }

    if ((a1[24] & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_36:
    v29 = 0;
    goto LABEL_69;
  }

  v8 = 0;
  if ((v7 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_5:
  v9 = 65554 - v8;
  v10 = flistxattr(*(a1 + 4), &v5[v8], 65554 - v8, 0);
  if (v10 <= 0 && *(a1 + 69) >= 2u)
  {
    v11 = *__error();
    v12 = __error();
    syslog(7, "%s:%d:%s() no extended attributes found (%d)\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5433, "copyfile_pack", *v12);
    *__error() = v11;
  }

  if (v10 >= v9)
  {
    v13 = 65554 - v8;
  }

  else
  {
    v13 = v10;
  }

  if (v10 <= v9)
  {
    v9 = v13;
  }

  else if (*(a1 + 69))
  {
    v14 = *__error();
    syslog(7, "%s:%d:%s() extended attribute list too long\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5437, "copyfile_pack");
    *__error() = v14;
  }

  v16 = (v9 & ~(v9 >> 63)) + v8;
  if (v16 > 0x10012)
  {
    goto LABEL_183;
  }

  v125 = v5;
  v126 = v8;
  v128 = &v5[v16];
  if (v9 >= 1 && !*v128)
  {
    v17 = malloc_type_calloc(0xAuLL, 8uLL, 0x10040436913F5uLL);
    if (v17)
    {
      v18 = v17;
      v19 = v125;
      *v18 = v125;
      v20 = memchr(v19, 0, v16);
      if (v20)
      {
        v21 = v20;
        v22 = 10;
        v23 = 1;
        do
        {
          if (v23 == v22)
          {
            v22 += 10;
            v24 = malloc_type_realloc(v18, 8 * v22, 0x80040B8603338uLL);
            if (!v24)
            {
              goto LABEL_44;
            }

            v18 = v24;
          }

          v25 = v23 + 1;
          v18[v23] = v21 + 1;
          v21 = memchr(v21 + 1, 0, v128 - (v21 + 1));
          ++v23;
        }

        while (v21);
        v26 = v25 - 1;
      }

      else
      {
        v26 = 0;
      }

      v30 = v26;
      qsort_b(v18, v26, 8uLL, &__block_literal_global);
      v31 = malloc_type_malloc(v16, 0xE75E526DuLL);
      if (v31)
      {
        v32 = v31;
        v127 = v3;
        if (v30)
        {
          v33 = v18;
          v34 = v31;
          do
          {
            v35 = *v33++;
            v36 = strlen(v35) + 1;
            memcpy(v34, v35, v36);
            v34 += v36;
            --v30;
          }

          while (v30);
        }

        __memcpy_chk();
        free(v32);
        v3 = v127;
      }

      free(v18);
    }
  }

LABEL_44:
  if (v16)
  {
    v37 = v3;
    v38 = 0;
    v39 = 120;
    v40 = v6;
    v41 = v125;
    while (1)
    {
      v42 = strlen(v41) + 1;
      if (!strcmp(v41, "com.apple.FinderInfo") || !strcmp(v41, "com.apple.ResourceFork"))
      {
        goto LABEL_64;
      }

      if (!strcmp(v41, "figgledidiggledy"))
      {
        v38 = 1;
      }

      if (v42 >= 0x80)
      {
        v42 = 128;
      }

      v43 = *(a1 + 70);
      if (v43 && !xattr_preserve_for_intent(v41, v43))
      {
        v49 = v128;
        memmove(v41, &v41[v42], v128 - &v41[v42]);
        v128 = &v49[-v42];
        v42 = 0;
LABEL_64:
        v3 = v37;
        goto LABEL_65;
      }

      if (a1[26])
      {
        MEMORY[0x2A1C7C4A8]();
        v44 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
        memmove(v44, v41, v42);
        v44[v42 - 1] = 0;
        a1[31] = v44;
        v45 = (a1[26])(5, 1, a1, *a1, a1[1], a1[27]);
        a1[31] = 0;
        if (v45 == 1)
        {
          v48 = v128;
          memmove(v41, &v41[v42], v128 - &v41[v42]);
          v128 = &v48[-v42];
          v42 = 0;
          v3 = v37;
          goto LABEL_65;
        }

        if (v45 == 2)
        {
          *(a1 + 68) = 89;
          v15 = 0xFFFFFFFFLL;
          v66 = 0;
          goto LABEL_210;
        }
      }

      v40[1].i8[2] = v42;
      v40[1].i16[0] = 0;
      if (&v41[v42] > v128)
      {
        v66 = 0;
        v15 = 0xFFFFFFFFLL;
LABEL_210:
        v3 = v37;
LABEL_211:
        v5 = v125;
        goto LABEL_187;
      }

      memmove(&v40[1] + 3, v41, v42);
      if (*(a1 + 69) >= 2u)
      {
        v46 = *__error();
        syslog(7, "%s:%d:%s() copied name [%s]\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5506, "copyfile_pack", &v40[1] + 3);
        *__error() = v46;
      }

      v47 = (v42 + 14) & 0x1FC;
      v39 += v47;
      v3 = v37;
      if (v39 >= 65554)
      {
LABEL_202:
        v66 = 0;
LABEL_203:
        v15 = 0xFFFFFFFFLL;
        goto LABEL_211;
      }

      ++*(v37 + 59);
      *(v37 + 24) += v47;
LABEL_65:
      v41 += v42;
      v40 = (v3 + v39);
      if (v41 >= v128)
      {
        v29 = v38 != 0;
        v3 = v37;
        goto LABEL_68;
      }
    }
  }

  v29 = 0;
LABEL_68:
  v5 = v125;
  v8 = v126;
LABEL_69:
  if (a1[28] && !v29)
  {
    strlcpy(&v5[v8], "figgledidiggledy", 65554 - v8);
  }

  if (v5 >= v128)
  {
    v15 = 0;
    v98 = 1;
LABEL_152:
    v99 = *(v3 + 24);
    v100 = *(v3 + 25) + v99;
    *(v3 + 42) = v100;
    *(v3 + 34) = v100 - *(v3 + 30);
    *(v3 + 23) = v100;
    if (v98)
    {
      goto LABEL_176;
    }

    v101 = a1[26];
    if (v101)
    {
      a1[31] = "com.apple.ResourceFork";
      v102 = 1;
      v103 = v101(5, 1, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v103 == 1)
      {
        v106 = 0;
        goto LABEL_170;
      }

      if (v103 == 2)
      {
        goto LABEL_165;
      }
    }

    v104 = fgetxattr(*(a1 + 4), "com.apple.ResourceFork", 0, 0, 0, 0);
    if ((v104 & 0x8000000000000000) != 0)
    {
      if ((*(a1 + 195) & 0x40) != 0)
      {
        v108 = *__error();
        v109 = __error();
        syslog(4, "skipping attr %s due to error %d: %m", "com.apple.ResourceFork", *v109);
        goto LABEL_185;
      }

      goto LABEL_183;
    }

    v105 = v104;
    if (v104 >> 31)
    {
      v106 = 0;
      v107 = 22;
LABEL_166:
      *(a1 + 68) = v107;
      goto LABEL_167;
    }

    v110 = a1[26];
    if (v110)
    {
      a1[31] = "com.apple.ResourceFork";
      a1[33] = 0;
      v111 = v110(5, 4, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v111 == 2)
      {
LABEL_165:
        v106 = 0;
        v107 = 89;
        goto LABEL_166;
      }
    }

    v106 = malloc_type_malloc(v105, 0x8E04C892uLL);
    if (v106)
    {
      if (fgetxattr(*(a1 + 4), "com.apple.ResourceFork", v106, v105, 0, 0) == v105)
      {
        if (pwrite(*(a1 + 6), v106, v105, *(v3 + 42)) != v105 && (*(a1 + 195) & 0x40) != 0)
        {
          v120 = *__error();
          syslog(4, "couldn't write resource fork: %m");
          *__error() = v120;
        }

        v121 = a1[26];
        if (!v121 || v121(5, 2, a1, *a1, a1[1], a1[27]) != 2)
        {
          if (*(a1 + 69) >= 3u)
          {
            v122 = *__error();
            syslog(7, "%s:%d:%s() copied %zd bytes of %s data @ offset 0x%08x\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5322, "copyfile_pack_rsrcfork", v105, "com.apple.ResourceFork", *(v3 + 42));
            *__error() = v122;
          }

          *(v3 + 46) = v105;
          v102 = 1;
LABEL_170:
          if (a1[31])
          {
            a1[31] = 0;
          }

          if (v106)
          {
            free(v106);
          }

          if (v102)
          {
            v15 = 0;
            v99 = *(v3 + 24);
LABEL_176:
            v113 = v99;
            len_p = v99;
            swap_adhdr(v3);
            v114 = *(v3 + 84);
            *(v3 + 84) = vrev32q_s8(v114);
            *(v3 + 25) = bswap32(*(v3 + 25));
            *(v3 + 58) = bswap32(*(v3 + 58)) >> 16;
            i = *(v3 + 59);
            v116 = bswap32(i) >> 16;
            *(v3 + 59) = v116;
            if (v114.i32[0] == 1381258305)
            {
              LOWORD(i) = v116;
            }

            for (i = i; i; --i)
            {
              v117 = (v6[1].u8[2] + 14) & 0x1FC;
              *v6 = vrev32_s8(*v6);
              v6[1].i16[0] = bswap32(v6[1].u16[0]) >> 16;
              v6 = (v6 + v117);
            }

            v118 = pwrite(*(a1 + 6), v3, v113, 0);
            if (v118 == len_p)
            {
              v66 = 0;
              goto LABEL_187;
            }

            if ((*(a1 + 195) & 0x40) == 0)
            {
              goto LABEL_183;
            }

            v108 = *__error();
            syslog(4, "couldn't write file header: %m");
LABEL_185:
            v66 = 0;
            *__error() = v108;
            goto LABEL_186;
          }

LABEL_183:
          v66 = 0;
LABEL_186:
          v15 = 0xFFFFFFFFLL;
          goto LABEL_187;
        }

LABEL_167:
        v112 = a1[26];
        if (v112)
        {
          v102 = v112(5, 3, a1, *a1, a1[1], a1[27]) == 0;
        }

        else
        {
          v102 = 0;
        }

        goto LABEL_170;
      }

      if ((*(a1 + 195) & 0x40) == 0)
      {
        goto LABEL_167;
      }

      v123 = *__error();
      syslog(4, "couldn't read entire resource fork: %m");
    }

    else
    {
      v123 = *__error();
      syslog(4, "malloc: %m");
    }

    *__error() = v123;
    goto LABEL_167;
  }

  LODWORD(v126) = 0;
  v15 = 0;
  v50 = "com.apple.acl.text";
  v51 = v6;
  v125 = v5;
  v52 = v5;
  v53 = "com.apple.FinderInfo";
  v127 = v3;
  while (1)
  {
    v54 = strlen(v52);
    if (!strcmp(v52, v50))
    {
      v130[0] = 0;
      if (filesec_get_property(a1[23], FILESEC_ACL, v130) < 0)
      {
        if (*__error() != 2 && (*(a1 + 195) & 0x40) != 0)
        {
          v76 = *__error();
          syslog(4, "getting acl: %m");
          *__error() = v76;
        }

        v66 = 0;
        len_p = 0;
      }

      else
      {
        v60 = v54;
        v61 = v15;
        v15 = v50;
        v62 = v53;
        v63 = acl_to_text(v130[0], &len_p);
        if (v63)
        {
          v64 = v63;
          v65 = malloc_type_malloc(++len_p, 0x40435213uLL);
          v66 = v65;
          if (v65)
          {
            memcpy(v65, v64, len_p);
          }

          else
          {
            len_p = 0;
          }

          acl_free(v64);
        }

        else
        {
          v66 = 0;
        }

        if (*(a1 + 69) >= 2u)
        {
          v77 = *__error();
          syslog(7, "%s:%d:%s() copied acl (%ld) %p\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5227, "copyfile_pack_acl", len_p, v66);
          *__error() = v77;
        }

        v53 = v62;
        v50 = v15;
        LODWORD(v15) = v61;
        v54 = v60;
        v3 = v127;
      }

      if (v130[0])
      {
        acl_free(v130[0]);
      }

LABEL_119:
      v78 = len_p;
      v51->i32[1] = len_p;
      v79 = *(v3 + 25);
      v80 = (v79 + *(v3 + 24));
      v51->i32[0] = v80;
      *(v3 + 25) = v79 + v78;
      v81 = pwrite(*(a1 + 6), v66, v78, v80);
      if (v81 == len_p)
      {
        v15 = v15;
      }

      else
      {
        v15 = 1;
      }

      free(v66);
      if (*(a1 + 69) >= 3u)
      {
        v59 = *__error();
        syslog(7, "%s:%d:%s() copied %ld bytes of %s data @ offset 0x%08x\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 5729, "copyfile_pack", len_p, v52, v51->i32[0]);
LABEL_124:
        *__error() = v59;
      }

LABEL_125:
      v51 = (v51 + ((v51[1].u8[2] + 14) & 0x1FC));
      goto LABEL_126;
    }

    if (a1[28] && !strcmp(v52, "figgledidiggledy"))
    {
      v66 = 0;
      goto LABEL_119;
    }

    if (strcmp(v52, v53))
    {
      break;
    }

    v67 = a1[26];
    if (v67)
    {
      a1[31] = v53;
      v68 = v67(5, 1, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v68 == 1)
      {
        goto LABEL_126;
      }

      if (v68 == 2)
      {
        goto LABEL_159;
      }

      a1[33] = 0;
      v69 = (a1[26])(5, 4, a1, *a1, a1[1], a1[27]);
      a1[31] = 0;
      if (v69 == 2)
      {
        goto LABEL_159;
      }
    }

    v70 = fgetxattr(*(a1 + 4), v52, v3 + *(v3 + 30), 0x20uLL, 0, 0);
    len_p = v70;
    if (v70 < 0)
    {
      v82 = a1[26];
      if (v82)
      {
        a1[31] = strdup(v52);
        v83 = v82(5, 3, a1, *a1, a1[1], a1[27]);
        v84 = a1[31];
        if (v84)
        {
          free(v84);
          a1[31] = 0;
        }

        if (v83 == 2)
        {
          goto LABEL_202;
        }
      }

      if ((*(a1 + 195) & 0x40) == 0)
      {
        goto LABEL_126;
      }

      v85 = *__error();
      __error();
      syslog(4, "skipping attr %s due to error %d: %m");
      goto LABEL_143;
    }

    v71 = *(a1 + 48);
    if (v70 == 32)
    {
      if ((v71 & 0x40000000) != 0)
      {
        v72 = *__error();
        syslog(4, " copied 32 bytes of %s data @ offset 0x%08x: %m", v53, *(v3 + 30));
        *__error() = v72;
      }

      v73 = a1[26];
      if (v73)
      {
        a1[31] = strdup(v52);
        v74 = v73(5, 2, a1, *a1, a1[1], a1[27]);
        v75 = a1[31];
        if (v75)
        {
          free(v75);
          a1[31] = 0;
        }

        if (v74 == 2)
        {
          goto LABEL_202;
        }
      }

      goto LABEL_126;
    }

    if ((v71 & 0x40000000) != 0)
    {
      v85 = *__error();
      syslog(4, "unexpected size (%ld) for %s: %m");
LABEL_143:
      *__error() = v85;
    }

LABEL_126:
    v52 += v54 + 1;
    if (v52 >= v128)
    {
      v98 = v126 == 0;
      v5 = v125;
      goto LABEL_152;
    }
  }

  if (!strcmp(v52, "com.apple.ResourceFork"))
  {
    LODWORD(v126) = 1;
    goto LABEL_126;
  }

  v55 = a1[26];
  if (v55)
  {
    a1[31] = strdup(v52);
    a1[33] = 0;
    v56 = v55(5, 4, a1, *a1, a1[1], a1[27]);
    v57 = a1[31];
    if (v57)
    {
      free(v57);
      a1[31] = 0;
    }

    if (v56 == 2)
    {
LABEL_159:
      v66 = 0;
      *(a1 + 68) = 89;
      goto LABEL_203;
    }
  }

  v58 = fgetxattr(*(a1 + 4), v52, 0, 0, 0, 0);
  len_p = v58;
  if (!v58)
  {
    goto LABEL_125;
  }

  if ((v58 & 0x8000000000000000) != 0)
  {
    if ((*(a1 + 195) & 0x40) != 0)
    {
      v86 = *__error();
      v87 = __error();
      syslog(4, "skipping attr %s due to error %d: %m", v52, *v87);
      *__error() = v86;
    }

    v88 = a1[26];
    if (v88)
    {
      a1[31] = strdup(v52);
      v89 = v88(5, 3, a1, *a1, a1[1], a1[27]);
      v90 = a1[31];
      if (v90)
      {
        free(v90);
        a1[31] = 0;
      }

      if (v89 == 2)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_125;
  }

  if (v58 >= 0x1000001)
  {
    if ((*(a1 + 195) & 0x40) != 0)
    {
      v59 = *__error();
      syslog(4, "skipping attr %s (too big): %m", v52);
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v91 = malloc_type_malloc(v58, 0x6505565EuLL);
  if (!v91)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_126;
  }

  v66 = v91;
  v92 = v54;
  v93 = v15;
  v15 = v50;
  v94 = v53;
  len_p = fgetxattr(*(a1 + 4), v52, v91, len_p, 0, 0);
  v95 = a1[26];
  if (!v95)
  {
    goto LABEL_149;
  }

  a1[31] = strdup(v52);
  v96 = v95(5, 2, a1, *a1, a1[1], a1[27]);
  v97 = a1[31];
  if (v97)
  {
    free(v97);
    a1[31] = 0;
  }

  if (v96 != 2)
  {
LABEL_149:
    v53 = v94;
    v50 = v15;
    LODWORD(v15) = v93;
    v54 = v92;
    v3 = v127;
    goto LABEL_119;
  }

  *(a1 + 68) = 89;
  v15 = 0xFFFFFFFFLL;
  v5 = v125;
  v3 = v127;
LABEL_187:
  free(v3);
  free(v5);
  if (v66)
  {
    free(v66);
  }

  if (!v15)
  {
    copyfile_stat(a1);
  }

  return v15;
}

int8x8_t swap_adhdr(int8x8_t *a1)
{
  LODWORD(v1) = a1[3].u16[0];
  v2 = bswap32(v1) >> 16;
  result = *a1;
  v4 = vrev32_s8(*a1);
  if (a1->u32[0] != 333319)
  {
    LOWORD(v1) = v2;
  }

  *a1 = v4;
  a1[3].i16[0] = v2;
  if (v1)
  {
    v1 = v1;
    v5 = (&a1[4] + 2);
    do
    {
      result = vrev32_s8(*(v5 - 2));
      *(v5 - 1) = result;
      *v5 = bswap32(*v5);
      v5 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

int8x16_t swap_attrhdr(uint64_t a1)
{
  result = vrev32q_s8(*(a1 + 84));
  *(a1 + 84) = result;
  *(a1 + 100) = bswap32(*(a1 + 100));
  *(a1 + 116) = bswap32(*(a1 + 116)) >> 16;
  *(a1 + 118) = bswap32(*(a1 + 118)) >> 16;
  return result;
}

uint64_t copyfile_unpack_xattr(void *a1, uint64_t a2, void *value)
{
  if (!*(a1 + 70) && xattr_preserve_for_intent((a2 + 11), 0) != 1)
  {
    return 0;
  }

  v6 = a1[26];
  if (v6)
  {
    a1[31] = strdup((a2 + 11));
    a1[33] = 0;
    v7 = v6(5, 1, a1, *a1, a1[1], a1[27]);
    v8 = a1[31];
    if (v8)
    {
      free(v8);
      a1[31] = 0;
    }

    if (v7 == 2)
    {
      goto LABEL_12;
    }
  }

  v9 = (a2 + 11);
  v10 = fsetxattr(*(a1 + 6), (a2 + 11), value, *(a2 + 4), 0, 0);
  v11 = *__error();
  if (v10 != -1 || v11 == 1 && !strcmp((a2 + 11), "com.apple.root.installed"))
  {
    v12 = a1[26];
    *__error() = v11;
    if (v12)
    {
      a1[31] = strdup((a2 + 11));
      a1[33] = *(a2 + 4);
      v13 = (a1[26])(5, 2, a1, *a1, a1[1], a1[27]);
      v14 = a1[31];
      if (v14)
      {
        free(v14);
        a1[31] = 0;
      }

      if (v13 == 2)
      {
LABEL_12:
        *(a1 + 68) = 89;
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  *__error() = v11;
  if ((*(a1 + 195) & 0x40) != 0)
  {
    v16 = *__error();
    syslog(4, "error %d setting attribute %s: %m", v11, v9);
    *__error() = v16;
  }

  v17 = a1[26];
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  a1[31] = strdup(v9);
  v18 = v17(5, 3, a1, *a1, a1[1], a1[27]);
  v19 = a1[31];
  if (v19)
  {
    free(v19);
    a1[31] = 0;
  }

  if (v18 == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t copyfile_unpack_acl(uint64_t a1, unsigned int a2, char *buf_p)
{
  if (buf_p[a2 - 1])
  {
    v6 = malloc_type_malloc(a2 + 1, 0x19B2062DuLL);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    memcpy(v6, buf_p, a2);
    v7[a2] = 0;
    v22[0] = acl_from_text(v7);
    free(v7);
    if (v22[0])
    {
      goto LABEL_4;
    }

    return 0;
  }

  v22[0] = acl_from_text(buf_p);
  if (!v22[0])
  {
    return 0;
  }

LABEL_4:
  v8 = filesec_init();
  if (!v8 || (v9 = fstatx_np(*(a1 + 24), &v21, v8), (v9 & 0x80000000) != 0) || (v10 = v9, filesec_set_property(v8, FILESEC_ACL, v22) < 0))
  {
LABEL_36:
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 1;
    while (fchmodx_np(*(a1 + 24), v8) < 0)
    {
      if (*__error() != 45 || (v11 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (filesec_set_property(*(a1 + 184), FILESEC_ACL, 0) == -1)
      {
        if (*(a1 + 276) >= 5u)
        {
          v13 = *__error();
          v14 = *(a1 + 8);
          if (!v14)
          {
            v14 = "(null dst)";
          }

          syslog(7, "%s:%d:%s() unsetting acl attribute on %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1867, "copyfile_unset_acl", v14);
          *__error() = v13;
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      if (filesec_set_property(*(a1 + 184), FILESEC_UUID, 0) == -1)
      {
        if (*(a1 + 276) >= 5u)
        {
          v15 = *__error();
          v16 = *(a1 + 8);
          if (!v16)
          {
            v16 = "(null dst)";
          }

          syslog(7, "%s:%d:%s() unsetting uuid attribute on %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1872, "copyfile_unset_acl", v16);
          *__error() = v15;
        }

        v12 = 1;
      }

      if (filesec_set_property(*(a1 + 184), FILESEC_GRPUUID, 0) == -1)
      {
        if (*(a1 + 276) >= 5u)
        {
          v17 = *__error();
          v18 = *(a1 + 8);
          if (!v18)
          {
            v18 = "(null dst)";
          }

          syslog(7, "%s:%d:%s() unsetting group uuid attribute on %s\n", "/Library/Caches/com.apple.xbs/Sources/copyfile/copyfile.c", 1877, "copyfile_unset_acl", v18);
          *__error() = v17;
        }

LABEL_35:
        v19 = *__error();
        syslog(4, "setting security information: %m");
        *__error() = v19;
        goto LABEL_36;
      }

      v11 = 0;
      if (v12)
      {
        goto LABEL_35;
      }
    }

    if (!v10)
    {
      *(a1 + 196) |= 0x1000u;
    }
  }

  acl_free(v22[0]);
  filesec_free(v8);
  return v10;
}

BOOL doesdecmpfs(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = 0;
  if (!fstatfs(a1, &v4))
  {
    __strlcpy_chk();
    v3[2] = 0;
    v3[0] = 5;
    v3[1] = 0x20000;
    if (getattrlist(v5, v3, v2, 0x24uLL, 0) != -1 && (v2[6] & 1) != 0 && (v2[22] & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

char *__cdecl xattr_name_with_flags(const char *a1, xattr_flags_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  __s = 0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 35;
  v3 = 67;
  v4 = &byte_299C6D738;
  v5 = 1;
  v6 = v16;
  do
  {
    if ((*(v4 - 1) & a2) != 0)
    {
      *v6 = v3;
      if (v5 >= 65)
      {
        v8 = __error();
        result = 0;
        *v8 = 63;
        return result;
      }

      ++v5;
    }

    v7 = *v4;
    v4 += 8;
    v3 = v7;
    v6 = &v15 + v5;
  }

  while (v7);
  if (v5 != 1)
  {
    v10 = nameInDefaultList(a1);
    if (v10 && !strcmp(v10, v16))
    {
      v11 = strdup(a1);
      __s = v11;
      if (v11)
      {
LABEL_13:
        if (strlen(v11) >= 0x80)
        {
          free(v11);
          __s = 0;
          v12 = __error();
          v13 = 63;
LABEL_17:
          *v12 = v13;
          return __s;
        }

        return __s;
      }
    }

    else
    {
      asprintf(&__s, "%s%s", a1, &v15);
      v11 = __s;
      if (__s)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v12 = __error();
    v13 = 12;
    goto LABEL_17;
  }

  __s = strdup(a1);
  if (!__s)
  {
    goto LABEL_16;
  }

  return __s;
}

int xattr_intent_with_flags(xattr_operation_intent_t a1, xattr_flags_t a2)
{
  v2 = 1;
  v3 = &dword_29F286D98;
  while (v2 != a1)
  {
    v4 = *v3;
    v3 += 4;
    v2 = v4;
    if (!v4)
    {
      return (a2 & 4) == 0;
    }
  }

  return (*(*(v3 - 1) + 16))();
}

int xattr_preserve_for_intent(const char *a1, xattr_operation_intent_t a2)
{
  v3 = xattr_flags_from_name(a1);
  v4 = 1;
  v5 = &dword_29F286D98;
  while (v4 != a2)
  {
    v6 = *v5;
    v5 += 4;
    v4 = v6;
    if (!v6)
    {
      return (v3 & 4) == 0;
    }
  }

  v8 = *(*(v5 - 1) + 16);

  return v8();
}

uint64_t __nameInDefaultList_block_invoke()
{
  result = _xpc_runtime_is_app_sandboxed();
  v1 = defaultUnboxedPropertyTable;
  if (result)
  {
    v1 = defaultSandboxedPropertyTable;
  }

  defaultPropertyTable = v1;
  return result;
}
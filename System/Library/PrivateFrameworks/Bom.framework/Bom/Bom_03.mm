uint64_t _copyDir(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char *a8, size_t a9, int a10, unsigned __int8 a11)
{
  v17 = a11;
  v67 = a5;
  v66 = 0;
  v65 = 0uLL;
  v64 = 0uLL;
  if (!*(a1 + 12712) && *a2 == *(a1 + 236) && *(a2 + 8) == *(a1 + 240))
  {
    return 0;
  }

  v18 = (a1 + 11616);
  v19 = BOMFSObjectTypeForMode(*(a2 + 4));
  v20 = *(a1 + 2296);
  *v18 = 0;
  *(a1 + 12641) = 0;
  v21 = *(a1 + 88);
  v22 = v21 ? v21(a1, v20, v19, 0) : 0;
  v23 = *(a1 + 168) ? 2 : v22;
  if (v23 == 1)
  {
    return 0;
  }

  if (v23 == 2)
  {
    return 2;
  }

  v57 = a6;
  v58 = a4;
  if (*v18)
  {
    LODWORD(v63) = 0;
    v25 = (a1 + 10592);
    v24 = _checkForDestinationConflict(a1, (a1 + 10592), a2, a3, &v67, &v63);
    if (v63 == 1)
    {
      return v24;
    }
  }

  else
  {
    v24 = 0;
    v25 = (a1 + 3328);
  }

  if (!*(a1 + 12641) || *(a1 + 12712))
  {
    v56 = a9;
    v26 = v25;
    path_p = (a1 + 248);
    goto LABEL_20;
  }

  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
  {
    __error();
    v31 = a1;
  }

  else
  {
    path_p = (a1 + 11617);
    if ((*(a2 + 4) & 0xF000) == 0x4000)
    {
      v56 = a9;
      v26 = v25;
      v19 = v19;
LABEL_20:
      v55 = a8;
      if (*(a1 + 12712) || *(a1 + 12716) != 3 || (*(a2 + 118) & 1) == 0)
      {
LABEL_25:
        v28 = *(a1 + 12716);
        if (v28 == 3)
        {
          if (v67)
          {
            v29 = v17;
            if (v17 || !*(a1 + 12822))
            {
              goto LABEL_45;
            }
          }

          else
          {
            v29 = v17;
            if (v17)
            {
              goto LABEL_45;
            }
          }

          if (!_makeDestDir(a1, v26, 1, a2, &v66))
          {
LABEL_45:
            v32 = v66;
            v33 = v66 != 0;
            if (v66)
            {
              v51 = *(a2 + 4);
              v34 = strdup(v26);
            }

            else
            {
              v51 = 0;
              v34 = v26;
            }

            v53 = v67;
            v52 = v67 | v29;
            if (v52)
            {
              v35 = v33;
            }

            else
            {
              v36 = *(a2 + 32);
              v64 = *(a2 + 48);
              v65 = v36;
              if (!v32)
              {
                v37 = strdup(v34);
                v35 = 1;
LABEL_53:
                v38 = *(a1 + 12712);
                if (v38 == 2)
                {
                  if (!*(a1 + 12776))
                  {
                    goto LABEL_89;
                  }

                  if (*(a1 + 12769))
                  {
                    File = BOMPKZipGetFile(*(a1 + 12752));
                    BOMFileSetPartialRead(File, 1);
                    v40 = BOMPKZipGetFile(*(a1 + 12752));
                    if (BOMFileSetCompression(v40, 1, 1, *(a1 + 12792)))
                    {
                      goto LABEL_103;
                    }

                    v50 = v35;
                    v41 = BOMPKZipGetFile(*(a1 + 12752));
                      ;
                    }

                    v42 = BOMPKZipGetFile(*(a1 + 12752));
                    if (BOMFileSetCompression(v42, 0, 1, *(a1 + 12792)))
                    {
                      __error();
                      v24 = _checkCopyFileError(a1);
                      if ((v50 & 1) == 0)
                      {
                        return v24;
                      }

LABEL_104:
                      free(v37);
                      return v24;
                    }

                    v45 = BOMPKZipGetFile(*(a1 + 12752));
                    BOMFileSetPartialRead(v45, 0);
                    v35 = v50;
                  }

                  v62 = 0;
                  v46 = BOMPKZipGetFile(*(a1 + 12752));
                  if (BOMFileRead(v46, &v62, 4uLL) != 4)
                  {
                    goto LABEL_103;
                  }

                  if (v62 != 134695760)
                  {
                    goto LABEL_103;
                  }

                  v61 = 0;
                  v63 = 0;
                  v60 = 0;
                  if (BOMPKZipReadDataDescriptor(*(a1 + 12752), *(a1 + 12812), &v61, &v63, &v60))
                  {
                    goto LABEL_103;
                  }

                  v38 = *(a1 + 12712);
                }

                if (v38 <= 1)
                {
                  if (v38)
                  {
                    if (v38 != 1)
                    {
                      goto LABEL_92;
                    }

                    v47 = _copyFromCPIO(a1, a2, a3, v55, v56, v53);
                  }

                  else
                  {
                    v47 = _copyFromDirToDir(a1, a2, (v57 + v58), a7 - v58, &v55[v58], v56 - v58, a10);
                  }

                  goto LABEL_91;
                }

                if (v38 != 2)
                {
                  if (v38 == 3)
                  {
                    v24 = 2;
                    if ((v35 & 1) == 0)
                    {
                      return v24;
                    }

                    goto LABEL_104;
                  }

LABEL_92:
                  if (v24)
                  {
                    goto LABEL_93;
                  }

                  if (v52 || *(a1 + 12712))
                  {
                    goto LABEL_97;
                  }

                  if (*(a1 + 12716) == 3)
                  {
                    if (!*(a1 + 170) && !*(a1 + 169) || (v49 = _copyExtendedAttributes(a1, path_p, a2, 0, 0), !v49))
                    {
                      if (!*(a1 + 171))
                      {
                        goto LABEL_97;
                      }

                      v49 = _copyACLs(a1, path_p, 0, 0, 0);
                      if (!v49)
                      {
                        goto LABEL_97;
                      }
                    }
                  }

                  else
                  {
                    v49 = _copyAppleDoubleToArchive(a1, path_p, a2, 0);
                    if (!v49)
                    {
LABEL_97:
                      if (v66)
                      {
                        if ((*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), v37, v51) == -1)
                        {
                          goto LABEL_103;
                        }

                        v53 = v67;
                      }

                      if (*(a1 + 12716) != 3 || v53 | v29 || !set_timestamps_0(v37, &v65, &v64))
                      {
                        if (!*(a1 + 12712))
                        {
                          v48 = *(a1 + 96);
                          if (v48)
                          {
                            v48(a1, *(a1 + 2296), v19, 0, 0);
                            v24 = 0;
                            if ((v35 & 1) == 0)
                            {
                              return v24;
                            }

                            goto LABEL_104;
                          }
                        }

                        v24 = 0;
                        goto LABEL_93;
                      }

LABEL_103:
                      __error();
                      v24 = _checkCopyFileError(a1);
                      if ((v35 & 1) == 0)
                      {
                        return v24;
                      }

                      goto LABEL_104;
                    }
                  }

                  v24 = v49;
LABEL_93:
                  if (!v35)
                  {
                    return v24;
                  }

                  goto LABEL_104;
                }

LABEL_89:
                v47 = _copyFromPKZip(a1, a2, a3, v55, v56);
LABEL_91:
                v24 = v47;
                goto LABEL_92;
              }

              v35 = 1;
            }

            v37 = v34;
            goto LABEL_53;
          }
        }

        else
        {
          v29 = v17;
          v30 = v26;
          if (!*v18)
          {
            v30 = *(a1 + 2296);
          }

          strncpy((a1 + 7424), v30, 0x400uLL);
          if (v17)
          {
            goto LABEL_45;
          }

          if (v28 == 4)
          {
            if (!BOMCPIOWriteDirectory(*(a1 + 12736), (a1 + 7424), a2))
            {
              goto LABEL_45;
            }
          }

          else if (!BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 7424), a2, 0, 0))
          {
            goto LABEL_45;
          }
        }

LABEL_44:
        __error();
        return _checkCopyFileError(a1);
      }

      v27 = BOM_malloc(0x400uLL);
      v63 = 0;
      if (BOMHardLinkTableGetPathAndData(*a1, *a2, *(a2 + 8), v27, &v63))
      {
        BOMHardLinkTableSetPathAndData(*a1, *a2, *(a2 + 8), v26, (a2 + 96), 8uLL);
        free(v27);
        goto LABEL_25;
      }

      if (v67 && (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), v26))
      {
        free(v27);
        goto LABEL_44;
      }

      v44 = (*(*(a1 + 12832) + 240))(*(*(a1 + 12832) + 8), v27, v26);
      free(v27);
      if (v44)
      {
        v17 = a11;
        if (*__error() != 18)
        {
          goto LABEL_44;
        }

        goto LABEL_25;
      }

      return 0;
    }

    v31 = a1;
  }

  return _checkCopyFileError(v31);
}

uint64_t _copyLink(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = (a1 + 11616);
  v44 = a4;
  v43 = 0;
  v8 = BOMFSObjectTypeForMode(*(a2 + 4));
  if (*(a1 + 12712))
  {
    v9 = (a1 + 248);
  }

  else
  {
    v9 = *(a1 + 2296);
  }

  *v7 = 0;
  v7[1025] = 0;
  v10 = *(a1 + 88);
  if (v10)
  {
    v11 = v10(a1, v9, v8, 0);
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 168))
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 1)
  {
    v12 = 0;
LABEL_16:
    if (*(a1 + 12712) == 1)
    {
      if (_skipCPIOFile(a1, a2))
      {
        return 2;
      }

      else
      {
        return v12;
      }
    }

    return v12;
  }

  if (v12 == 2)
  {
    return v12;
  }

  if (*v7)
  {
    v42 = 0;
    v13 = (a1 + 10592);
    v14 = _checkForDestinationConflict(a1, (a1 + 10592), a2, a3, &v44, &v42);
    if (v42 == 1)
    {
LABEL_14:
      v12 = v14;
      goto LABEL_16;
    }
  }

  else
  {
    v13 = (a1 + 3328);
  }

  if (v7[1025] && !*(a1 + 12712))
  {
    v16 = (a1 + 11617);
    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
    {
      goto LABEL_83;
    }

    if ((*(a2 + 4) & 0xF000) != 0xA000)
    {
      v19 = a1;
      goto LABEL_84;
    }
  }

  else
  {
    v16 = (a1 + 248);
  }

  v17 = 0;
  v18 = *(a1 + 12712);
  if (v18 <= 1)
  {
    if (!v18)
    {
      v17 = (*(*(a1 + 12832) + 256))(*(*(a1 + 12832) + 8), v16, *(a1 + 8), *(a1 + 16));
      if (v17 == -1)
      {
        goto LABEL_83;
      }

LABEL_37:
      *(*(a1 + 8) + v17) = 0;
      v20 = *(a1 + 12716);
      switch(v20)
      {
        case 5:
          v28 = crc32(0, 0, 0);
          if (*v7)
          {
            v29 = v13;
          }

          else
          {
            v29 = v9;
          }

          strncpy((a1 + 7424), v29, 0x400uLL);
          v30 = crc32(v28, *(a1 + 8), v17);
          if (BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 7424), a2, v30, v17))
          {
            goto LABEL_83;
          }

          File = BOMPKZipGetFile(*(a1 + 12760));
          if (BOMFileWrite(File, *(a1 + 8), v17) != v17)
          {
            goto LABEL_83;
          }

          break;
        case 4:
          if (*v7)
          {
            v27 = v13;
          }

          else
          {
            v27 = v9;
          }

          strncpy((a1 + 7424), v27, 0x400uLL);
          if (BOMCPIOWriteSymlink(*(a1 + 12736), (a1 + 7424), a2, *(a1 + 8)))
          {
            goto LABEL_83;
          }

          break;
        case 3:
          if (!*(a1 + 173) || !v44 || (*(a3 + 4) & 0xF000) != 0xA000)
          {
            goto LABEL_46;
          }

          v21 = (*(*(a1 + 12832) + 256))(*(*(a1 + 12832) + 8), v13, a1 + 8448, 1024);
          if (v21 == -1)
          {
            goto LABEL_83;
          }

          *(a1 + 8448 + v21) = 0;
          if (v17 != v21 || strcmp(*(a1 + 8), (a1 + 8448)))
          {
LABEL_46:
            _parentPath(v13, (a1 + 7424), 0x400uLL);
            __strlcat_chk();
            if (!(*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424) || (*(*(a1 + 12832) + 248))(*(*(a1 + 12832) + 8), *(a1 + 8), a1 + 7424))
            {
              goto LABEL_83;
            }

            if (*(a1 + 12712) == 1)
            {
              v22 = _chPerms(a1, (a1 + 7424), a2, &v43, 1);
              v23 = *(a1 + 12832);
              v24 = *(v23 + 224);
              v25 = *(v23 + 8);
              if (v22)
              {
                v24(v25, a1 + 7424);
                __error();
                v26 = a1;
                return _checkCopyFileError(v26);
              }

              if (!v24(v25, v13) || *__error() == 2 || *__error() == 63)
              {
                v36 = BOM_malloc(0x18uLL);
                if (!v36 || (v37 = v36, v38 = strlen(v13), v39 = strlen((a1 + 7424)), v41 = strlen(v9), *v37 = BOM_malloc(v38 + 1), v37[1] = BOM_malloc(v39 + 1), v40 = BOM_malloc(v41 + 1), v37[2] = v40, !*v37) || !v37[1] || !v40)
                {
                  v26 = a1;
                  return _checkCopyFileError(v26);
                }

                memcpy(*v37, v13, v38 + 1);
                memcpy(v37[1], (a1 + 7424), v39 + 1);
                memcpy(v37[2], v9, v41 + 1);
                BOMStackPush(*(a1 + 40), v37);
                v32 = 1;
LABEL_64:
                if (!*(a1 + 12712))
                {
                  if (*(a1 + 12716) == 3)
                  {
                    if (*(a1 + 170) || *(a1 + 169))
                    {
                      v14 = _copyExtendedAttributes(a1, v16, a2, 0, 0);
                      if (v14)
                      {
                        goto LABEL_14;
                      }
                    }

                    if (*(a1 + 171))
                    {
                      v14 = _copyACLs(a1, v16, 0, 1, 0);
                      if (v14)
                      {
                        goto LABEL_14;
                      }
                    }
                  }

                  else
                  {
                    v14 = _copyAppleDoubleToArchive(a1, v16, a2, 0);
                    if (v14)
                    {
                      goto LABEL_14;
                    }
                  }
                }

                if ((v32 & 1) == 0)
                {
                  v33 = *(a1 + 96);
                  if (v33)
                  {
                    v33(a1, v9, v8, 0, 0);
                  }
                }

                return 0;
              }

LABEL_98:
              __error();
              v26 = a1;
              return _checkCopyFileError(v26);
            }

            if ((*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, v13))
            {
LABEL_83:
              __error();
              v19 = a1;
              goto LABEL_84;
            }

            if (_chPerms(a1, v13, a2, &v43, 1))
            {
              (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), v13);
              goto LABEL_98;
            }
          }

          break;
      }

      v32 = 0;
      goto LABEL_64;
    }

    if (v18 != 1)
    {
      goto LABEL_37;
    }

    v17 = *(a2 + 96);
    if (v17 >= 1025)
    {
      v14 = _checkCopyFileError(a1);
      goto LABEL_14;
    }

    v34 = BOMCPIORead(*(a1 + 12728), *(a1 + 8), *(a2 + 96));
LABEL_71:
    if (v34 != v17)
    {
      goto LABEL_83;
    }

    goto LABEL_37;
  }

  if (v18 != 2)
  {
    if (v18 != 3)
    {
      goto LABEL_37;
    }

    return 2;
  }

  v17 = *(a2 + 96);
  if (v17 < 1025)
  {
    v35 = BOMPKZipGetFile(*(a1 + 12752));
    v34 = BOMFileRead(v35, *(a1 + 8), v17);
    goto LABEL_71;
  }

  v19 = a1;
LABEL_84:

  return _checkCopyFileError(v19);
}

uint64_t _copyDevice(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 11616);
  v5 = BOMFSObjectTypeForMode(*(a2 + 4));
  if (*(a1 + 12712))
  {
    v6 = a1 + 248;
  }

  else
  {
    v6 = *(a1 + 2296);
  }

  *v4 = 0;
  v4[1025] = 0;
  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = v7(a1, v6, v5, 0);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 168))
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 1)
  {
    return 0;
  }

  if (v9 == 2)
  {
    return 2;
  }

  memset(v17, 0, sizeof(v17));
  if (!*v4)
  {
    v11 = (a1 + 3328);
    goto LABEL_17;
  }

  v15 = 0;
  v11 = (a1 + 10592);
  result = _checkForDestinationConflict(a1, (a1 + 10592), a2, v17, &v16, &v15);
  if (v15 != 1)
  {
LABEL_17:
    if (v4[1025] && !*(a1 + 12712))
    {
      if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
      {
        goto LABEL_34;
      }

      if ((*(a2 + 4) & 0xB000 | 0x4000) != 0x6000)
      {
        v14 = a1;
        return _checkCopyFileError(v14);
      }
    }

    v12 = *(a1 + 12716);
    if (v12 != 4)
    {
      if (v12 == 3)
      {
        _parentPath(v11, (a1 + 7424), 0x400uLL);
        __strlcat_chk();
        if (!(*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424) || (*(*(a1 + 12832) + 176))(*(*(a1 + 12832) + 8), a1 + 7424, *(a2 + 4), *(a2 + 24)) || (*(*(a1 + 12832) + 192))(*(*(a1 + 12832) + 8), a1 + 7424, *(a2 + 16), *(a2 + 20)) || set_timestamps_0((a1 + 7424), (a2 + 32), (a2 + 48)) || (*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, a1 + 3328))
        {
          goto LABEL_34;
        }
      }

      goto LABEL_28;
    }

    __strlcpy_chk();
    if (!BOMCPIOWriteDevice(*(a1 + 12736), (a1 + 7424), a2))
    {
LABEL_28:
      v13 = *(a1 + 96);
      if (v13)
      {
        v13(a1, v6, v5, 0, 0);
      }

      return 0;
    }

LABEL_34:
    __error();
    v14 = a1;
    return _checkCopyFileError(v14);
  }

  return result;
}

void *_unlockAFSCFileLock(void *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      result = AFSCUnlockFile();
      if (result)
      {
        return fprintf(*MEMORY[0x277D85DF8], "Could not unlock AFSC file: %d\n", result);
      }
    }
  }

  return result;
}

uint64_t _skipCPIOFile(uint64_t a1, uint64_t a2)
{
  BOMCPIOSeek();
  if (v3 != -1)
  {
    return 0;
  }

  v5 = __error();
  v6 = strerror(*v5);
  BOMCopierNotifyFatalError(a1, "cpio seek error: %s", v7, v8, v9, v10, v11, v12, v6);
  return 2;
}

uint64_t _skipPKZipFile()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v43 = *MEMORY[0x277D85DE8];
  v4 = v0 + 12288;
  File = BOMPKZipGetFile(*(v0 + 12752));
  v6 = File;
  if (!*(v3 + 12776))
  {
    goto LABEL_22;
  }

  BOMFileSetPartialRead(File, 1);
  if (*(v4 + 481) && BOMFileSetCompression(v6, 1, 1, *(v3 + 12792)))
  {
    v7 = __error();
    v36 = strerror(*v7);
    v14 = "pkzip set compression (1,1) error: %s";
LABEL_11:
    BOMCopierNotifyFatalError(v3, v14, v8, v9, v10, v11, v12, v13, v36);
    return 2;
  }

  while (!BOMFileEndOfCompressionStream(v6))
  {
    if ((BOMFileRead(v6, v42, 0x20000uLL) & 0x8000000000000000) != 0)
    {
      v16 = __error();
      v36 = strerror(*v16);
      v14 = "pkzip read seek error: %s";
      goto LABEL_11;
    }
  }

  if (*(v4 + 481) && BOMFileSetCompression(v6, 0, 1, *(v3 + 12792)))
  {
    v15 = __error();
    v36 = strerror(*v15);
    v14 = "pkzip set compression (0,1) error: %s";
    goto LABEL_11;
  }

  BOMFileSetPartialRead(v6, 0);
  v41 = 0;
  if (BOMFileRead(v6, &v41, 4uLL) != 4)
  {
    v19 = "pkzip read span error: %s";
LABEL_20:
    v20 = __error();
    v37 = strerror(*v20);
    BOMCopierNotifyFatalError(v3, v19, v21, v22, v23, v24, v25, v26, v37);
    return 2;
  }

  if (v41 != 134695760)
  {
    v19 = "pkzip spanning doesn't match: %s";
    goto LABEL_20;
  }

  v40 = 0;
  v38 = 0;
  v39 = 0;
  if (BOMPKZipReadDataDescriptor(*(v3 + 12752), *(v4 + 524), &v40, &v39, &v38))
  {
    v18 = __error();
    v36 = strerror(*v18);
    v14 = "Could not read pkzip data descriptor: %s";
    goto LABEL_11;
  }

  *(v2 + 96) = v38;
  v27 = BOMPKZipGetFile(*(v3 + 12752));
  BOMFileSetPartialRead(v27, 1);
LABEL_22:
  if (*(v4 + 481))
  {
    v28 = BOMPKZipGetFile(*(v3 + 12752));
    if (BOMFileSetCompression(v28, 0, 1, *(v3 + 12792)))
    {
      return 2;
    }
  }

  if (*(v3 + 12776))
  {
    return 0;
  }

  v29 = *(v3 + 12752);
  NumLocalHeaders = BOMPKZipGetNumLocalHeaders(v29);
  result = BOMPKZipGetFileCompressedSize(v29, NumLocalHeaders - 1);
  if (result)
  {
    v31 = result;
    while (1)
    {
      v32 = v31 >= 0x20000 ? 0x20000 : v31;
      v33 = BOMFileRead(v6, v42, v32);
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      v34 = v33;
      result = 0;
      v31 -= v34;
      if (!v31)
      {
        return result;
      }
    }

    v35 = __error();
    v36 = strerror(*v35);
    v14 = "pkzip seek error: %s";
    goto LABEL_11;
  }

  return result;
}

uint64_t _copyDataFork(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, int *a7, int a8)
{
  v285 = *MEMORY[0x277D85DE8];
  v282 = 0;
  v283 = 0;
  v280 = 0;
  v281 = 0;
  v278 = 0;
  v279 = 0;
  v261 = *(a1 + 197);
  if (a6)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a1 + 173) != 0;
  }

  v260 = *(a1 + 12716);
  if (v260 == 5)
  {
    HIDWORD(v279) = crc32(0, 0, 0);
  }

  v15 = (a1 + 11616);
  if (*(a1 + 12712))
  {
    v16 = (a1 + 248);
  }

  else
  {
    v16 = *(a1 + 2296);
  }

  v274 = a3;
  v258 = a4;
  v262 = v16;
  if (*(a1 + 12716) != 3)
  {
    if (*v15)
    {
      v24 = (a1 + 10592);
    }

    else
    {
      v24 = v16;
    }

    strncpy((a1 + 7424), v24, 0x400uLL);
    goto LABEL_33;
  }

  v17 = 10592;
  if (!*v15)
  {
    v17 = 3328;
  }

  if (*(a1 + 12823) || (a8 & 1) != 0)
  {
    strncpy((a1 + 7424), (a1 + v17), 0x400uLL);
    goto LABEL_22;
  }

  _parentPath((a1 + v17), (a1 + 7424), 0x400uLL);
  __strlcat_chk();
  if ((*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424))
  {
    if (*(a1 + 12716) != 3)
    {
      goto LABEL_33;
    }

LABEL_22:
    if (*(a3 + 6) < 2u)
    {
LABEL_33:
      if (*(a1 + 204) == 1)
      {
        v26 = strdup((a1 + 3328));
        if (!v26)
        {
          v35 = __error();
          v247 = strerror(*v35);
          BOMCopierNotifyFatalError(a1, "Could not duplicate %s: %s", v36, v37, v38, v39, v40, v41, a1 + 3328, v247);
LABEL_74:
          __error();
          v50 = _checkCopyFileError(a1);
          goto LABEL_75;
        }

        v27 = v26;
        if (!dirname_r((a1 + 3328), v26))
        {
          v42 = __error();
          v248 = strerror(*v42);
          BOMCopierNotifyFatalError(a1, "Could not dirname %s: %s", v43, v44, v45, v46, v47, v48, a1 + 3328, v248);
          goto LABEL_40;
        }

        memset(&v284, 0, sizeof(v284));
        if (stat(v27, &v284))
        {
          v28 = __error();
          v246 = strerror(*v28);
          BOMCopierNotifyFatalError(a1, "Could not stat %s: %s", v29, v30, v31, v32, v33, v34, v27, v246);
LABEL_40:
          free(v27);
          goto LABEL_74;
        }

        free(v27);
        if (*a3 == v284.st_dev)
        {
          if (!copyfile(a2, (a1 + 3328), 0, 0x200000Fu))
          {
            v51 = 0;
            v52 = 0;
            v265 = 0;
            v266 = 0;
            v53 = 0;
            v54 = 0;
            v94 = 0;
            v257 = 0;
            v268 = 0;
            v264 = 0;
            v255 = 0;
            v50 = 0;
            v95 = 2;
LABEL_131:
            *a7 = v95;
            goto LABEL_161;
          }

          if (*__error() != 45)
          {
            v99 = __error();
            v253 = strerror(*v99);
            BOMCopierNotifyFatalError(a1, "Could not clone %s to %s: %s", v100, v101, v102, v103, v104, v105, a2, a1 + 3328, v253);
            goto LABEL_74;
          }
        }
      }

      v49 = *(a1 + 12712);
      if (v49 > 1)
      {
        if (v49 == 2)
        {
          File = BOMPKZipGetFile(*(a1 + 12752));
          v283 = File;
          if (*(a1 + 12796))
          {
            if (*(a1 + 12800))
            {
              v270 = a8;
              v50 = 0;
            }

            else
            {
              v93 = *(a1 + 128);
              if (!v93)
              {
                v110 = "No password was provided and the client did not provide a callback for retrieving the PKZip encryption key";
                goto LABEL_143;
              }

              v50 = v93(a1, a1 + 248, a1 + 12800);
              if (v50 == 2)
              {
LABEL_75:
                v51 = 0;
                v52 = 0;
                v265 = 0;
                v53 = 0;
                goto LABEL_76;
              }

              v270 = a8;
              File = v283;
            }

            if (BOMFileRead(File, &v284, 0xCuLL) != 12)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v60 = BOMFileSetKeys(v283, *(a1 + 12800));
              for (i = 0; i != 12; ++i)
              {
                v62 = *(&v284.st_dev + i);
                v63 = decrypt_byte(v60) ^ v62;
                update_keys(v60, v63);
              }

              if (*(a1 + 12811) == v63)
              {
                break;
              }

              free(*(a1 + 12800));
              *(a1 + 12800) = 0;
              v70 = *(a1 + 128);
              if (!v70)
              {
                BOMCopierNotifyFatalError(a1, "The password appears to be invalid and the client did not provide a callback for retrieving a new PKZip encryption key", v64, v65, v66, v67, v68, v69);
LABEL_142:
                v110 = "The password provided for the encrypted PKZip archive appears to be invalid";
LABEL_143:
                BOMCopierNotifyFatalError(a1, v110, v18, v19, v20, v21, v22, v23);
                v50 = 2;
                goto LABEL_75;
              }

              v50 = v70(a1, a1 + 248, a1 + 12800);
              if (v50 == 2)
              {
                goto LABEL_142;
              }
            }

            v111 = v283;
            v112 = *(a1 + 12752);
            NumLocalHeaders = BOMPKZipGetNumLocalHeaders(v112);
            FileCompressedSize = BOMPKZipGetFileCompressedSize(v112, NumLocalHeaders - 1);
            BOMFileSetEncryptedRemainder(v111, FileCompressedSize - 12);
            a3 = v274;
            a8 = v270;
          }

          else
          {
            v50 = 0;
          }

          if (*(a1 + 12769))
          {
            if (BOMFileSetCompression(v283, 1, 1, *(a1 + 12792)))
            {
              goto LABEL_74;
            }

            *(a3 + 96) = -1;
          }

          if (*(a1 + 12776))
          {
            BOMFileSetPartialRead(v283, 1);
            if (!*(a1 + 12769))
            {
              v96 = *(a1 + 12752);
              v97 = BOMPKZipGetNumLocalHeaders(v96);
              FileUncompressedSize = BOMPKZipGetFileUncompressedSize(v96, v97 - 1);
              *(a3 + 96) = FileUncompressedSize;
              if (!FileUncompressedSize)
              {
                BOMFileSetDataDescriptor(v283, 1);
                *(a3 + 96) = -1;
              }
            }
          }

LABEL_53:
          v52 = *(a3 + 96);
          if (!v14)
          {
            v255 = 0;
            v264 = 0;
            v53 = 0;
            HIDWORD(v281) = 0;
            goto LABEL_61;
          }

          v269 = a8;
          v55 = *(a1 + 16);
          if (v52 == -1)
          {
            v82 = 0;
            v53 = 0;
            do
            {
              v83 = BOMFileRead(v283, (*(a1 + 8) + v82), v55 - v82);
              if ((v83 & 0x8000000000000000) != 0)
              {
                __error();
                v50 = _checkCopyFileError(a1);
                v51 = 0;
                v265 = 0;
                v266 = 0;
                v54 = 0;
                v268 = 0;
                __src = 0;
                v257 = 0;
                v264 = 0;
                v255 = 0;
                v52 = -1;
                goto LABEL_261;
              }

              v82 += v83;
              v53 += v83;
            }

            while (v82 < v55 && !BOMFileEndOfCompressionStream(v283));
          }

          else
          {
            if (v52 >= v55)
            {
              v56 = *(a1 + 16);
            }

            else
            {
              v56 = v52;
            }

            v53 = BOMFileRead(v283, *(a1 + 8), v56);
            if (v53 < 0)
            {
              __error();
              v50 = _checkCopyFileError(a1);
              v51 = 0;
              v265 = 0;
              v266 = 0;
              v53 = 0;
              v54 = 0;
              v268 = 0;
              __src = 0;
              v257 = 0;
              v264 = 0;
              v255 = 0;
              LOBYTE(v14) = 1;
              goto LABEL_261;
            }
          }

          v84 = BOMArchFlagForHeader(*(a1 + 8), v53);
          if (v84 != 1)
          {
            if (v84 != 2)
            {
              v85 = 0;
              v88 = 0;
              v264 = 0;
              v255 = 0;
              goto LABEL_129;
            }

            __srca = *(a1 + 8);
            v85 = bswap32(__srca[1]);
            v86 = (20 * v85 + 8);
            v87 = BOM_malloc(v86);
            v54 = v87;
            if (v87)
            {
              v267 = v87 + 8;
              memmove(v87, __srca, v86);
              v264 = v54;
              _fat_header_big_to_host(v54, v86);
              v88 = v267;
              v255 = 1;
LABEL_129:
              if (_determine_thin_type_and_archs(v88, v85, a6, &v280, &v281, &v281 + 1, 0))
              {
                v51 = 0;
                v265 = 0;
                v266 = 0;
                v54 = 0;
                v94 = 0;
                v257 = 0;
                v268 = 0;
                v50 = 0;
                v95 = 1;
                goto LABEL_131;
              }

              if (HIDWORD(v281))
              {
                v57 = (20 * v281 + 8);
                v106 = BOM_malloc(v57);
                a8 = v269;
                if (!v106)
                {
                  v268 = 0;
                  __src = v57;
                  v51 = 0;
                  v265 = 0;
                  v266 = 0;
                  v54 = 0;
                  v257 = 0;
                  goto LABEL_261;
                }

                v107 = (v106 + 2);
                *v106 = -889275714;
                v108 = v281;
                v266 = v106;
                v106[1] = v281;
                _sortFatArchsByOffset(v280, v108);
                if (HIDWORD(v281) == 1)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = v57;
                }

                _createNewFatArchArray(v280, v281, v107, v109);
                v58 = 0;
                v257 = v107;
                v54 = (*(v107 + 20 * v281 - 8) + *(v107 + 20 * v281 - 12));
LABEL_79:
                __src = v57;
                if (*(a1 + 12716) != 4 || (v58 & *(a1 + 12996)) != 1)
                {
                  v81 = 0;
                  v268 = 0;
                  v51 = v58;
                  goto LABEL_170;
                }

                if (*(a1 + 12997) != 1)
                {
                  v81 = 0;
                  v268 = 0;
                  v51 = 1;
                  goto LABEL_170;
                }

                if (!*(a1 + 13000))
                {
                  BOMCopierNotifyFatalError(a1, "Previous split file path is NULL", v18, v19, v20, v21, v22, v23);
                  v265 = 0;
                  v268 = 0;
                  v51 = 1;
                  goto LABEL_261;
                }

                v71 = BOM_malloc(0xFFuLL);
                if (v71)
                {
                  v72 = v71;
                  if (basename_r(*(a1 + 13000), v71))
                  {
                    v271 = a8;
                    v73 = BOM_malloc(0x400uLL);
                    if (v73)
                    {
                      v74 = v73;
                      if (dirname_r(*(a1 + 13000), v73))
                      {
                        __s = 0;
                        asprintf(&__s, "%s/._%s", v74, v72);
                        if (__s)
                        {
                          v75 = *(v274 + 112);
                          *&v284.st_size = *(v274 + 96);
                          *&v284.st_blksize = v75;
                          *v284.st_qspare = *(v274 + 128);
                          v76 = *(v274 + 16);
                          *&v284.st_dev = *v274;
                          *&v284.st_uid = v76;
                          v77 = *(v274 + 48);
                          v284.st_atimespec = *(v274 + 32);
                          v284.st_mtimespec = v77;
                          v78 = *(v274 + 80);
                          v284.st_ctimespec = *(v274 + 64);
                          v284.st_birthtimespec = v78;
                          v284.st_mode = -32348;
                          v284.st_size = 164;
                          if (!BOMCPIOWriteHeader(*(a1 + 12736), __s, &v284))
                          {
                            v79 = BOMCPIOGetFile(*(a1 + 12736));
                            if (BOMFileWrite(v79, inject_apple_double_bytes_0, 0xA4uLL) == 164)
                            {
                              free(__s);
                              free(v72);
                              free(v74);
                              v80 = 0;
LABEL_157:
                              a8 = v271;
                              goto LABEL_158;
                            }
                          }

                          __error();
                          v50 = _checkCopyFileError(a1);
                        }

                        else
                        {
                          v145 = __error();
                          v146 = strerror(*v145);
                          BOMCopierNotifyFatalError(a1, "Could not construct insert entry path: %s\n", v147, v148, v149, v150, v151, v152, v146);
                          v50 = 2;
                        }

                        v80 = 5;
                        goto LABEL_157;
                      }

                      v137 = *(a1 + 13000);
                      v138 = __error();
                      v250 = strerror(*v138);
                      BOMCopierNotifyFatalError(a1, "Could not get dirname of %s: %s\n", v139, v140, v141, v142, v143, v144, v137, v250);
                    }

                    else
                    {
                      v130 = __error();
                      v244 = strerror(*v130);
                      BOMCopierNotifyFatalError(a1, "Could not allocate parent path buffer: %s\n", v131, v132, v133, v134, v135, v136, v244);
                    }

                    v50 = 2;
                    v80 = 5;
                    a8 = v271;
LABEL_158:
                    v51 = 1;
                    if (v80 != 5)
                    {
                      v268 = 0;
                      v81 = 0;
                      goto LABEL_170;
                    }

                    v265 = 0;
                    v268 = 0;
                    while (1)
                    {
LABEL_261:
                      while (1)
                      {
                        v200 = v51 & 1;
                        while (1)
                        {
                          if (v282 && *(a1 + 12716) == 3)
                          {
                            if (BOMFileClose(v282))
                            {
                              v201 = v50 == 0;
                            }

                            else
                            {
                              v201 = 0;
                            }

                            if (v201)
                            {
                              __error();
                              v50 = _checkCopyFileError(a1);
                            }

                            v282 = 0;
                          }

                          if (!v50 && v200)
                          {
                            if (v14)
                            {
                              LOBYTE(v14) = 0;
                            }

                            if (v52 > v53)
                            {
                              break;
                            }
                          }

                          *(a1 + 12997) = v200;
                          if (!v200 || (*(a1 + 12996) & 1) == 0)
                          {
                            goto LABEL_283;
                          }

                          v202 = *(a1 + 13000);
                          if (v202)
                          {
                            free(v202);
                            *(a1 + 13000) = 0;
                          }

                          v203 = strdup((a1 + 7424));
                          *(a1 + 13000) = v203;
                          if (v203)
                          {
LABEL_283:
                            BOMFileSetDataDescriptor(v283, 0);
                            if (v283)
                            {
                              v206 = v264;
                              if (!*(a1 + 12712))
                              {
                                v207 = BOMFileClose(v283);
                                if (!v50 && v207)
                                {
                                  __error();
                                  v50 = _checkCopyFileError(a1);
                                }

                                v283 = 0;
                              }
                            }

                            else
                            {
                              v206 = v264;
                            }

                            if (v206)
                            {
                              free(v206);
                            }

                            if (v280)
                            {
                              free(v280);
                            }

                            if (v266)
                            {
                              free(v266);
                            }

                            if (v268)
                            {
                              free(v268);
                            }

                            return v50;
                          }

                          v204 = __error();
                          v205 = *(a1 + 64);
                          v50 = 2;
                          if (v205)
                          {
                            v205(a1, a1 + 8448, *v204);
                          }
                        }

                        v50 = 0;
                        if (v54 >= v52 - v53)
                        {
                          v54 = v52 - v53;
                        }

                        v51 = 1;
                        a8 = 1;
                        v81 = v265;
LABEL_170:
                        v155 = *(a1 + 12716);
                        v265 = v81;
                        v256 = v51;
                        if (v155 != 3)
                        {
                          break;
                        }

                        v156 = 16 * (*(a1 + 12814) == 0);
                        if (a5)
                        {
                          v157 = *(a1 + 12823) == 0;
                        }

                        else
                        {
                          v157 = 1;
                        }

                        if (v157)
                        {
                          v158 = 1;
                        }

                        else
                        {
                          v158 = a8;
                        }

                        if ((v158 & 1) != 0 || !(*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424))
                        {
                          if (a8)
                          {
                            v160 = 521;
                          }

                          else
                          {
                            v160 = 2561;
                          }

                          if (BOMFileOpenWithSys(&v282, a1 + 7424, v160, 384, v156, *(a1 + 12832)))
                          {
                            if (*__error() != 2 || !*(a1 + 12712) || _mkdirs_parent(a1, a1 + 7424) || (!a8 ? (v161 = 1537) : (v161 = 521), BOMFileOpenWithSys(&v282, a1 + 7424, v161, 384, v156, *(a1 + 12832)) || (v162 = *(v274 + 96), v162 >= 1) && BOMFilePreallocate(v282, v162)))
                            {
LABEL_205:
                              __error();
                              v50 = _checkCopyFileError(a1);
                              v94 = __src;
LABEL_206:
                              v51 = v256;
                              goto LABEL_161;
                            }
                          }

                          if (*(a1 + 207) == 1 || *(a1 + 208) == 1 || *(a1 + 211) == 1)
                          {
                            FileDescriptor = BOMFileGetFileDescriptor(v282);
                            v81 = v265;
                            if (FileDescriptor == -1)
                            {
                              goto LABEL_218;
                            }

                            v164 = FileDescriptor;
                            if (*(a1 + 211) == 1 && fcntl(FileDescriptor, 64, *(a1 + 212)))
                            {
                              goto LABEL_205;
                            }

                            v94 = __src;
                            if (*(a1 + 207) == 1 && fcntl(v164, 68, 1) || *(a1 + 208) == 1 && fcntl(v164, 76, 1))
                            {
                              __error();
                              v50 = _checkCopyFileError(a1);
                              goto LABEL_206;
                            }
                          }

                          v81 = v265;
LABEL_218:
                          v265 = v81;
                          if (!HIDWORD(v281))
                          {
                            v193 = BOM_calloc(0xA8uLL, 1uLL);
                            if (!v193)
                            {
                              goto LABEL_260;
                            }

                            v167 = v193;
                            *v193 = a1;
                            v194 = v282;
                            v193[1] = v283;
                            v193[2] = v194;
                            v193[3] = v262;
                            v193[4] = v52;
                            v193[5] = v54;
                            if (v14)
                            {
                              v195 = 1;
                              *(v193 + 14) = 1;
                              v193[8] = v53;
                              *(v193 + 18) = 1;
                              v193[10] = 0;
                              v193[11] = *(a1 + 8);
                              v193[12] = 0;
                              v193[13] = 0;
                              v196 = v53;
                              v192 = v261;
                              if (v256)
                              {
                                *(v193 + 28) = 2;
                                v193[15] = v54 - v53;
                                *(v193 + 32) = 1;
                                v193[17] = v53;
                                v193[18] = 0;
                                v193[19] = v53;
                                v193[20] = 0;
                                v53 = v54;
                                v195 = 2;
LABEL_245:
                                *(v193 + 12) = v195;
                                goto LABEL_246;
                              }
                            }

                            else
                            {
                              v196 = 0;
                              v195 = 0;
                              v192 = v261;
                              if (v256)
                              {
                                *(v193 + 14) = 2;
                                v193[8] = v54;
                                v195 = 1;
                                *(v193 + 18) = 1;
                                v193[10] = v53;
                                v193[11] = 0;
                                v193[12] = v53;
                                v193[13] = 0;
                                v53 += v54;
                                goto LABEL_245;
                              }
                            }

                            if (v54 == -1 || v54 > v53)
                            {
                              v197 = &v193[7 * v195 + 7];
                              *v197 = 3;
                              *(v197 + 8) = 0;
                              *(v197 + 16) = 1;
                              *(v197 + 24) = v53;
                              *(v197 + 32) = 0;
                              *(v197 + 40) = v196;
                              *(v197 + 48) = 0;
                              ++v195;
                            }

                            goto LABEL_245;
                          }

                          v166 = BOM_calloc(168 * v281 + 168, 1uLL);
                          if (!v166)
                          {
                            goto LABEL_260;
                          }

                          v167 = v166;
                          v168 = 0;
                          v169 = 0;
                          *v166 = a1;
                          v170 = v282;
                          v166[1] = v283;
                          v166[2] = v170;
                          v166[3] = v262;
                          v166[4] = v52;
                          v254 = v54;
                          v166[5] = v54;
                          v171 = v166 + 7;
                          if (HIDWORD(v281) == 2)
                          {
                            v169 = __src;
                            v172 = BOM_malloc(__src);
                            if (!v172)
                            {
                              v268 = 0;
                              v54 = v254;
                              goto LABEL_260;
                            }

                            v173 = v172;
                            memmove(v172, v266, __src);
                            _fat_header_host_to_big(v173, __src);
                            v168 = 1;
                            *(v167 + 56) = 1;
                            *(v167 + 64) = __src;
                            *(v167 + 72) = 1;
                            *(v167 + 80) = 0;
                            *(v167 + 88) = v173;
                            v268 = v173;
                            *(v167 + 96) = 0;
                            *(v167 + 104) = 0;
                          }

                          if (v281 >= 1)
                          {
                            v174 = 0;
                            v175 = (v257 + 8);
                            while (1)
                            {
                              v176 = *(v280 + v174);
                              v178 = *v175;
                              v175 += 5;
                              v177 = v178;
                              v179 = v178 - v169;
                              if (v178 <= v169)
                              {
                                v177 = v169;
                              }

                              else
                              {
                                v180 = &v171[7 * v168];
                                *v180 = 0;
                                v180[1] = v179;
                                *(v180 + 4) = 1;
                                v180[3] = 0;
                                v180[4] = 0;
                                v180[5] = v169;
                                v180[6] = 0;
                                ++v168;
                              }

                              v181 = *(v176 + 8);
                              v182 = *(v176 + 12);
                              v183 = v53 - v181;
                              if (v53 <= v181)
                              {
                                break;
                              }

                              v184 = (v182 + v181);
                              v185 = v184 > v53;
                              v186 = v184 - v53;
                              if (!v185)
                              {
                                v189 = &v171[7 * v168];
                                v190 = 1;
                                *v189 = 1;
                                v189[1] = v182;
                                *(v189 + 4) = 1;
                                v189[3] = 0;
                                v189[4] = *(a1 + 8) + v181;
LABEL_233:
                                v189[5] = v177;
                                v189[6] = 0;
                                v169 = v177 + v182;
                                goto LABEL_234;
                              }

                              v187 = &v171[7 * v168];
                              *v187 = 1;
                              v187[1] = v183;
                              *(v187 + 4) = 1;
                              v187[3] = 0;
                              v187[4] = *(a1 + 8) + v181;
                              v187[5] = v177;
                              v187[6] = 0;
                              v188 = v183 + v177;
                              v190 = 2;
                              *(v187 + 14) = 2;
                              v187[8] = v186;
                              *(v187 + 18) = 1;
                              v187[10] = v53;
                              v187[11] = 0;
                              v187[12] = v188;
                              v187[13] = 0;
                              v169 = v186 + v188;
LABEL_234:
                              v168 += v190;
                              if (++v174 >= v281)
                              {
                                goto LABEL_235;
                              }
                            }

                            v189 = &v171[7 * v168];
                            *v189 = 2;
                            v189[1] = v182;
                            v190 = 1;
                            *(v189 + 4) = 1;
                            v189[3] = v181;
                            v189[4] = 0;
                            goto LABEL_233;
                          }

LABEL_235:
                          v191 = &v171[7 * v168];
                          *v191 = 4;
                          v191[1] = 0;
                          *(v191 + 4) = 1;
                          v191[3] = v52;
                          v191[4] = 0;
                          v191[5] = 0;
                          v191[6] = 0;
                          *(v167 + 48) = v168 + 1;
                          v192 = v261;
                          v54 = v254;
LABEL_246:
                          _normalizeBomCopySpecification(v167, 0x1000u, *(a1 + 16), &v278);
                          if ((*(v274 + 116) & 0x40000020) == 0x20 && *(a1 + 195) && *(v278 + 4) == *(v278 + 5))
                          {
                            *(a1 + 196) = 0;
                          }

                          else
                          {
                            BOMFileSetAFSCCompression(v282);
                            if (v260 == 5)
                            {
                              v198 = &v279 + 1;
                            }

                            else
                            {
                              v198 = 0;
                            }

                            if (v192)
                            {
                              v199 = &v279;
                            }

                            else
                            {
                              v199 = 0;
                            }

                            v50 = _executeBomCopySpecification(v278, 0x1000u, *(a1 + 16), v198, v199, v53);
                          }

                          if (v192)
                          {
                            *(a1 + 200) = v279;
                          }

                          free(v167);
                          free(v278);
                          v278 = 0;
                          if (!v50)
                          {
                            if (a5)
                            {
                              if (*(a1 + 173))
                              {
                                if (*(a1 + 12716) == 3 && !*a7 && (v255 || (v216 = *(a1 + 184)) != 0 && BOMPatternMatch(v216, *(a1 + 2296))))
                                {
                                  if (*(a1 + 12936))
                                  {
                                    v215 = *(a1 + 10576);
                                    if (__ROR8__(0x8F5C28F5C28F5C29 * v215, 1) <= 0x51EB851EB851EB8uLL)
                                    {
                                      v230 = *(a1 + 10584);
                                      if (v230)
                                      {
                                        free(v230);
                                      }

                                      *&v284.st_dev = 0;
                                      v284.st_ino = 0;
                                      uuid_generate_random(&v284);
                                      v231 = malloc_type_malloc(0x25uLL, 0x23F37419uLL);
                                      uuid_unparse(&v284, v231);
                                      v232 = malloc_type_malloc(0x400uLL, 0xF03DE4A2uLL);
                                      *(a1 + 10584) = v232;
                                      snprintf(v232, 0x400uLL, "%s/%.2s/%.2s/%.2s/%s", *(a1 + 12936), v231, v231 + 2, v231 + 4, v231);
                                      free(v231);
                                      if (_mkdirs(a1, *(a1 + 10584)))
                                      {
                                        v233 = *(a1 + 10584);
                                        v234 = __error();
                                        v235 = *(a1 + 64);
                                        if (v235)
                                        {
                                          v235(a1, v233, *v234);
                                        }

                                        v50 = 0;
                                        goto LABEL_260;
                                      }

                                      v215 = *(a1 + 10576);
                                    }

                                    *(a1 + 10576) = v215 + 1;
                                    snprintf((a1 + 8448), 0x400uLL, "%s/%lu");
                                  }

                                  else
                                  {
                                    ++*(a1 + 10576);
                                    snprintf((a1 + 8448), 0x400uLL, "%s.dittoKeptBinary.%d.%lu");
                                  }

                                  v217 = *(a1 + 12832);
                                  v218 = *(v217 + 8);
                                  if ((*(v258 + 4) & 0xF000) == 0x8000)
                                  {
                                    v219 = (*(v217 + 240))(v218, a1 + 3328, a1 + 8448);
                                  }

                                  else
                                  {
                                    v219 = (*(v217 + 264))(v218, a1 + 3328, a1 + 8448);
                                  }

                                  if (v219)
                                  {
                                    v220 = __error();
                                    v211 = *(a1 + 64);
                                    v50 = 2;
                                    if (!v211)
                                    {
                                      goto LABEL_260;
                                    }

                                    v212 = *v220;
                                    v214 = a1;
                                    v213 = a1 + 8448;
                                    goto LABEL_339;
                                  }

                                  v221 = *(a1 + 176);
                                  if (v221)
                                  {
                                    v222 = strlen((a1 + 8448));
                                    if (BOMFileWrite(v221, (a1 + 8448), v222) != v222)
                                    {
                                      v236 = __error();
                                      v252 = strerror(*v236);
                                      BOMCopierNotifyFatalError(a1, "can't write %s to keepBinariesList: %s", v237, v238, v239, v240, v241, v242, a1 + 8448, v252);
                                      goto LABEL_352;
                                    }

                                    if (BOMFileWrite(*(a1 + 176), "\n", 1uLL) != 1)
                                    {
                                      v223 = __error();
                                      v245 = strerror(*v223);
                                      BOMCopierNotifyFatalError(a1, "can't write to keepBinariesList: %s", v224, v225, v226, v227, v228, v229, v245, v251);
LABEL_352:
                                      v50 = 2;
                                      goto LABEL_260;
                                    }
                                  }
                                }
                              }
                            }

                            v50 = 0;
                            if (*(a1 + 12712) != 2)
                            {
                              goto LABEL_356;
                            }

                            if (*(a1 + 12769) && BOMFileSetCompression(v283, 0, 1, *(a1 + 12792)))
                            {
LABEL_324:
                              __error();
                              v50 = _checkCopyFileError(a1);
                              goto LABEL_260;
                            }

                            BOMFileClearEncrypted(v283);
                            v50 = 0;
                            if (!*(a1 + 12776) || ((BOMFileSetPartialRead(v283, 0), BOMFileSetDataDescriptor(v283, 0), v276 = 0, BOMFileRead(v283, &v276, 4uLL) == 4) && v276 == 134695760 && (v275 = 0, *&v284.st_dev = 0, __s = 0, !BOMPKZipReadDataDescriptor(*(a1 + 12752), *(a1 + 12812), &v275, &v284, &__s)) ? (v208 = 0, v50 = 0, *(v274 + 96) = __s) : (__error(), v50 = _checkCopyFileError(a1), v208 = 5), v208 != 5))
                            {
LABEL_356:
                              if (*(a1 + 12716) == 5 && *(v274 + 96))
                              {
                                if (BOMFileSetCompression(v282, 0, 0, *(a1 + 12792)))
                                {
                                  goto LABEL_324;
                                }

                                v209 = BOMFileOffset(v282) - v265;
                                v284.st_dev = 134695760;
                                v265 = v209;
                                if (BOMFileWrite(v282, &v284, 4uLL) != 4)
                                {
                                  goto LABEL_324;
                                }

                                if (BOMPKZipWriteDataDescriptor(*(a1 + 12760), HIDWORD(v279), v209, *(v274 + 96)))
                                {
                                  v210 = __error();
                                  v211 = *(a1 + 64);
                                  v50 = 2;
                                  if (v211)
                                  {
                                    v212 = *v210;
                                    v213 = a1 + 8448;
                                    v214 = a1;
LABEL_339:
                                    v211(v214, v213, v212);
                                  }
                                }
                              }
                            }
                          }

LABEL_260:
                          v51 = v256;
                        }

                        else
                        {
                          __error();
                          v50 = _checkCopyFileError(a1);
                          v94 = __src;
LABEL_161:
                          __src = v94;
                          v153 = *(a1 + 12712);
                          switch(v153)
                          {
                            case 3:
                              v50 = 2;
                              break;
                            case 2:
                              *(v274 + 96) = 0;
                              v154 = _skipPKZipFile();
                              goto LABEL_166;
                            case 1:
                              *(v274 + 96) -= v53;
                              v154 = _skipCPIOFile(a1, v274);
LABEL_166:
                              if (v154)
                              {
                                v50 = 2;
                              }

                              else
                              {
                                v50 = v50;
                              }

                              break;
                          }
                        }
                      }

                      if (v54 == -1)
                      {
                        v159 = 0;
                      }

                      else
                      {
                        v159 = v54;
                      }

                      *(v274 + 96) = v159;
                      if (v155 == 4)
                      {
                        if (!BOMCPIOWriteHeader(*(a1 + 12736), (a1 + 7424), v274))
                        {
                          v282 = BOMCPIOGetFile(*(a1 + 12736));
                          goto LABEL_218;
                        }
                      }

                      else if (!BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 7424), v274, 0, 0))
                      {
                        v165 = BOMPKZipGetFile(*(a1 + 12760));
                        v282 = v165;
                        if (v54 < 1)
                        {
                          goto LABEL_218;
                        }

                        if (!BOMFileSetCompression(v165, 1, 0, *(a1 + 12792)))
                        {
                          v81 = BOMFileOffset(v282);
                          goto LABEL_218;
                        }
                      }

                      __error();
                      v50 = _checkCopyFileError(a1);
                    }
                  }

                  v122 = *(a1 + 13000);
                  v123 = __error();
                  v249 = strerror(*v123);
                  BOMCopierNotifyFatalError(a1, "Could not get basename of %s: %s\n", v124, v125, v126, v127, v128, v129, v122, v249);
                }

                else
                {
                  v115 = __error();
                  v243 = strerror(*v115);
                  BOMCopierNotifyFatalError(a1, "Could not allocate last path component buffer: %s\n", v116, v117, v118, v119, v120, v121, v243);
                }

                v50 = 2;
                v80 = 5;
                goto LABEL_158;
              }

              a8 = v269;
LABEL_61:
              if (v52 >> 33 && *(a1 + 12824))
              {
                v57 = 0;
                v257 = 0;
                v266 = 0;
                v58 = 1;
                v54 = 0x40000000;
              }

              else
              {
                v58 = 0;
                v57 = 0;
                v257 = 0;
                v266 = 0;
                v54 = v52;
              }

              goto LABEL_79;
            }

            v51 = 0;
            v265 = 0;
LABEL_77:
            v268 = 0;
            __src = 0;
            v257 = 0;
            v266 = 0;
            v264 = 0;
            v255 = 0;
            goto LABEL_261;
          }

          v89 = *(a1 + 8);
          v90 = BOM_malloc(0x1CuLL);
          if (v90)
          {
            *v90 = 0x1CAFEBABELL;
            v88 = &v90[1];
            v91 = 0;
            v92 = *v89;
            if (*v89 > -17958195)
            {
              if (v92 == -17958193 || v92 == -17958194)
              {
                v91 = *(v89 + 4);
              }
            }

            else if (v92 == -822415874 || v92 == -805638658)
            {
              v91 = vrev32_s8(*(v89 + 4));
            }

            v90[1] = v91;
            v90[2].i32[1] = v52;
            v90[3].i32[0] = 0;
            v85 = 1;
            v255 = 1;
            v90[2].i32[0] = 0;
            v264 = v90;
            goto LABEL_129;
          }

          v51 = 0;
          v265 = 0;
LABEL_76:
          v54 = 0;
          goto LABEL_77;
        }

        if (v49 == 3)
        {
          v51 = 0;
          v52 = 0;
          v265 = 0;
          v266 = 0;
          v53 = 0;
          v54 = 0;
          v268 = 0;
          __src = 0;
          v257 = 0;
          v264 = 0;
          v255 = 0;
          v50 = 0;
          goto LABEL_261;
        }
      }

      else
      {
        if (v49)
        {
          v50 = 0;
          if (v49 == 1)
          {
            v50 = 0;
            v283 = BOMCPIOGetFile(*(a1 + 12728));
          }

          goto LABEL_53;
        }

        if (BOMFileOpenWithSys(&v283, a2, 0, 0, 16 * (*(a1 + 12813) == 0), *(a1 + 12832)))
        {
          goto LABEL_74;
        }
      }

      v50 = 0;
      goto LABEL_53;
    }

    __s = 0;
    if (BOMHardLinkTableGetPathAndData(*a1, *a3, *(a3 + 8), &v284, &__s))
    {
      BOMHardLinkTableSetPathAndData(*a1, *a3, *(a3 + 8), (a1 + 3328), (a3 + 96), 8uLL);
      goto LABEL_33;
    }

    if (*__s != *(a3 + 96))
    {
      goto LABEL_33;
    }

    if (!a5 || !(*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 3328))
    {
      if (!(*(*(a1 + 12832) + 240))(*(*(a1 + 12832) + 8), &v284, a1 + 3328))
      {
        v50 = 0;
        *a7 = 2;
        goto LABEL_145;
      }

      if (*__error() == 18)
      {
        goto LABEL_33;
      }
    }

    __error();
    v50 = _checkCopyFileError(a1);
LABEL_145:
    v51 = 0;
    v52 = 0;
    v265 = 0;
    v266 = 0;
    v53 = 0;
    v54 = 0;
    v94 = 0;
    v257 = 0;
    v268 = 0;
    v264 = 0;
    v255 = 0;
    goto LABEL_161;
  }

  __error();

  return _checkCopyFileError(a1);
}

uint64_t _copyAppleDoubleToArchive(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 12716) == 3 || ((v8 = a1 + 11616, v9 = *(a1 + 2296), *(a1 + 11616)) ? (v10 = (a1 + 10592)) : (v10 = *(a1 + 2296)), (strncpy((a1 + 7424), v10, 0x400uLL), BOMAppleDoublePathToADPath((a1 + 7424), (a1 + 5376)), *(a1 + 169)) ? (v15 = 4980740) : (v15 = 4980736), !*(a1 + 171) ? (v11 = v15) : (v11 = v15 + 1), ((*(*(a1 + 12832) + 344))(*(*(a1 + 12832) + 8), a2, 0, 0, v11 | 0x10000) & v11) == 0))
  {
LABEL_24:
    v14 = 0;
    if (a4)
    {
      *a4 = 1;
    }

    return v14;
  }

  if (!issetugid())
  {
    getenv("TMPDIR");
  }

  if (__strlcpy_chk() < 0x400 && __strlcat_chk() < 0x400)
  {
    if (!(*(*(a1 + 12832) + 336))(*(*(a1 + 12832) + 8), a1 + 7424))
    {
      goto LABEL_27;
    }

    if ((*(*(a1 + 12832) + 344))(*(*(a1 + 12832) + 8), a2, a1 + 7424, 0, v11))
    {
      if (*__error() == 1 && *(a1 + 12840))
      {
        goto LABEL_24;
      }

LABEL_27:
      __error();
      v12 = a1;
      goto LABEL_17;
    }

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 7424, v30))
    {
      __error();
LABEL_30:
      v14 = _checkCopyFileError(a1);
      (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
      return v14;
    }

    v16 = v31;
    v17 = *(v8 + 1197) == 0;
    v29 = 0;
    if (BOMFileOpenWithSys(&v29, a1 + 7424, 0, 0, 16 * v17, *(a1 + 12832)) && *__error() != 2)
    {
      __error();
      goto LABEL_30;
    }

    (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
    *(a3 + 96) = v16;
    *(a3 + 4) = *(a3 + 4) & 0x1B6 | 0x8000;
    v18 = *(a1 + 12716);
    if (v18 == 5)
    {
      if (*(v8 + 1152))
      {
        snprintf(__str, 0x400uLL, "./%s/%s", "__MACOSX", (a1 + 5378));
        _parentPath(__str, v34, 0x400uLL);
        if (_insertQuarantinePath(*(a1 + 12760), v34, 1))
        {
          goto LABEL_66;
        }

        __strlcpy_chk();
      }

      if (BOMPKZipWriteLocalHeader(*(a1 + 12760), (a1 + 5376), a3, 0, 0))
      {
        goto LABEL_66;
      }

      File = BOMPKZipGetFile(*(a1 + 12760));
      if (BOMFileSetCompression(File, 1, 0, *(a1 + 12792)))
      {
        goto LABEL_66;
      }

      v28 = BOMFileOffset(File);
      if (v16)
      {
LABEL_39:
        v21 = 0;
        v22 = 0;
        while (!*(a1 + 168))
        {
          if (v16 - v21 >= 0x20000)
          {
            v23 = 0x20000;
          }

          else
          {
            v23 = v16 - v21;
          }

          if (BOMFileRead(v29, *(a1 + 8), v23) != v23 || BOMFileWrite(File, *(a1 + 8), v23) != v23)
          {
            goto LABEL_66;
          }

          v21 += v23;
          if (a4)
          {
            v24 = *(a1 + 104);
            if (v24)
            {
              v24(a1, v9, *(a3 + 96) + v21);
            }
          }

          if (*(a1 + 12716) == 5)
          {
            v22 = crc32(v22, *(a1 + 8), v23);
          }

          if (v21 >= v16)
          {
            goto LABEL_60;
          }
        }

        BOMFileClose(v29);
        return 2;
      }
    }

    else
    {
      if (v18 != 4)
      {
        BOMFileClose(v29);
        v19 = a1;
        return _checkCopyFileError(v19);
      }

      if (BOMCPIOWriteHeader(*(a1 + 12736), (a1 + 5376), a3))
      {
        goto LABEL_66;
      }

      File = BOMCPIOGetFile(*(a1 + 12736));
      v28 = 0;
      if (v16)
      {
        goto LABEL_39;
      }
    }

    v22 = 0;
LABEL_60:
    if (*(a1 + 12716) != 5)
    {
      goto LABEL_68;
    }

    if (!BOMFileSetCompression(File, 0, 0, *(a1 + 12792)))
    {
      v25 = BOMFileOffset(File);
      *__str = 134695760;
      if (BOMFileWrite(File, __str, 4uLL) == 4)
      {
        if (BOMPKZipWriteDataDescriptor(*(a1 + 12760), v22, v25 - v28, *(a3 + 96)))
        {
          BOMFileClose(v29);
          v26 = __error();
          v27 = *(a1 + 64);
          if (v27)
          {
            v27(a1, a1 + 8448, *v26);
          }

          return 2;
        }

LABEL_68:
        BOMFileClose(v29);
        v14 = 0;
        if (a4)
        {
          *a4 = 0;
        }

        return v14;
      }
    }

LABEL_66:
    BOMFileClose(v29);
    __error();
    v19 = a1;
    return _checkCopyFileError(v19);
  }

  v12 = a1;
LABEL_17:

  return _checkCopyFileError(v12);
}

uint64_t change_flags_0(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v10 = -1;
  if (!fsctl(a2, 0xC00C4114uLL, v9, 0))
  {
    v8 = v9[0] == v10;
    return !v8;
  }

  if (*__error() != 25 && *__error() != 45)
  {
    return 1;
  }

  result = (*(*(a1 + 12832) + 208))(*(*(a1 + 12832) + 8), a2, a4);
  if (result)
  {
    v8 = *__error() == 45;
    return !v8;
  }

  return result;
}

void *_parentPath(char *a1, void *a2, size_t a3)
{
  v6 = strrchr(a1, 47);
  if (v6)
  {
    v7 = v6 - a1;
    result = memcpy(a2, a1, v6 - a1);
    *(a2 + v7) = 0;
  }

  else
  {

    return strlcpy(a2, ".", a3);
  }

  return result;
}

uint64_t _insertQuarantinePath(uint64_t a1, char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  if (BOMPKZipLookupQuarantinePath(a1, a2, &v16))
  {
    return 0xFFFFFFFFLL;
  }

  if (v16)
  {
    return 0;
  }

  _parentPath(a2, v17, 0x401uLL);
  if (*v17 != 46 && _insertQuarantinePath(a1, v17, a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    WORD2(v7) = 16893;
    LODWORD(v8) = geteuid();
    DWORD1(v8) = getegid();
    *&v9 = time(0);
    *&v10 = time(0);
    *&v11 = time(0);
    *&v13 = 748;
    if (BOMPKZipWriteLocalHeader(a1, a2, &v7, 0, 0))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (BOMPKZipStoreQuarantinePath(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t _copyFromCPIO(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, int a6)
{
  v81 = 0;
  v9 = (a1 + 248);
  v10 = strlen((a1 + 248));
  v11 = BOM_malloc(v10 + 2);
  if (!v11)
  {
    return 2;
  }

  v12 = v11;
  memmove(v11, v9, v10);
  v79 = v12;
  if (v10)
  {
    v13 = v10 + 1;
    v12[v10] = 47;
    v12[v10 + 1] = 0;
  }

  else
  {
    v13 = 0;
  }

  v71 = 0;
  v72 = 0;
  v15 = 0;
  v16 = 0;
  v74 = 0;
  v73 = 1;
  v17 = v13;
  v76 = v13;
  while (1)
  {
    v82 = 0;
    v18 = v79;
    if (*(a1 + 12721) == 1)
    {
      *__error() = 0;
      __strlcpy_chk();
      v19 = BOMCPIOReadHeader(*(a1 + 12728), v9, a2);
      if (v19)
      {
        break;
      }
    }

    v26 = v9;
    if (*v9 == 46)
    {
      if (*(a1 + 249) == 47)
      {
        v26 = (a1 + 249);
      }

      else
      {
        v26 = v9;
      }
    }

    if (strlcpy(a4, v26, a5) >= a5)
    {
      v57 = *(a1 + 64);
      if (v57)
      {
        v57(a1, v26, 63);
      }

      goto LABEL_119;
    }

    if ((!a6 || *(a1 + 12822)) && *v26 == 46 && (!v26[1] || v26[1] == 47 && !v26[2]))
    {
      if (_chPerms(a1, (a1 + 3328), a2, &v81, 1))
      {
        v27 = __error();
        v28 = *(a1 + 64);
        if (v28)
        {
          v28(a1, a1 + 3328, *v27);
        }
      }

      LOWORD(v74) = *(a2 + 4);
    }

    if (strncmp(v9, v79, v17))
    {
      *(a1 + 12721) = 0;
      v79[(v17 - 1)] = 0;
      v56 = *(a1 + 96);
      v55 = v72;
      if (v56)
      {
        goto LABEL_92;
      }

      goto LABEL_93;
    }

    v35 = 1;
    *(a1 + 12721) = 1;
    if (*(a1 + 169) && *(a1 + 12716) == 3 && (*(a2 + 4) & 0xF000) == 0x8000)
    {
      v35 = BOMAppleDoubleIsADFile(v9) == 0;
    }

    if (!*(a1 + 12824) || (*(a2 + 4) & 0xF000) != 0x8000)
    {
      goto LABEL_40;
    }

    v36 = strcmp((a1 + 7424), v9);
    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = v16;
    }

    if (*(a2 + 96) == 0x40000000 && !v37)
    {
      v38 = 0;
      v16 = 1;
      goto LABEL_41;
    }

    if ((v37 == 2 || v37 == 1) && !v36)
    {
      v16 = 2;
      v38 = 1;
    }

    else
    {
LABEL_40:
      v38 = 0;
      v16 = 0;
    }

LABEL_41:
    if (*(a1 + 12716) == 3 && (v39 = _checkForDestinationConflict(a1, (a1 + 3328), a2, a3, &v81 + 1, &v82), v82 == 1))
    {
      v47 = v39;
      if (v39 > 1 || _skipCPIOFile(a1, a2))
      {
        goto LABEL_119;
      }

      v48 = HIDWORD(v74);
      if (v47 == 1)
      {
        v48 = 1;
      }

      HIDWORD(v74) = v48;
      v17 = v76;
    }

    else
    {
      v40 = *(a1 + 152);
      if (v40)
      {
        FSObjectAtPath = BOMBomGetFSObjectAtPath(v40, v9);
        if (!FSObjectAtPath)
        {
          goto LABEL_49;
        }

        BOMFSObjectFree(FSObjectAtPath);
      }

      v42 = *(a1 + 160);
      if (!v42)
      {
        v43 = *(a2 + 4);
        goto LABEL_53;
      }

      LODWORD(v42) = BOMBomFSObjectExistsAtPath(v42, *(a1 + 2296));
      v43 = *(a2 + 4);
      if (!v42 || (v43 & 0xF000) == 0x4000)
      {
LABEL_53:
        HIDWORD(v45) = (v43 & 0xF000) - 0x2000;
        LODWORD(v45) = HIDWORD(v45);
        v44 = v45 >> 13;
        if (v44 <= 1)
        {
          if (!v44)
          {
LABEL_61:
            v46 = _copyDevice(a1, a2);
            goto LABEL_68;
          }

          if (v44 == 1)
          {
            v46 = _copyDir(a1, a2, a3, 0, HIBYTE(v81), 0, 0, a4, a5, 0, v42);
            goto LABEL_68;
          }
        }

        else
        {
          switch(v44)
          {
            case 2:
              goto LABEL_61;
            case 4:
              v46 = _copyLink(a1, a2, a3, SHIBYTE(v81));
LABEL_68:
              if (v46 == 1)
              {
                HIDWORD(v74) = 1;
              }

              else if (v46 == 2)
              {
                goto LABEL_119;
              }

              break;
            case 3:
              v46 = _copyFile(a1, a2, a3, SHIBYTE(v81), *(a1 + 136), &v82, v38);
              goto LABEL_68;
          }
        }

        v17 = v76;
        if (!v35 && (v82 & 0xFFFFFFFD) == 0)
        {
          v49 = v71;
          if (v71)
          {
            if (v71 == v15)
            {
              v50 = BOM_realloc(v72, 32 * v71);
              v49 = 2 * v71;
            }

            else
            {
              v50 = v72;
            }
          }

          else
          {
            v50 = BOM_malloc(0x40uLL);
            v49 = 4;
          }

          if (!v50)
          {
            BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double files.", v29, v30, v31, v32, v33, v34);
            v18 = v79;
            goto LABEL_115;
          }

          v71 = v49;
          v72 = v50;
          if (*(a1 + 11616))
          {
            v51 = 10592;
          }

          else
          {
            v51 = 3328;
          }

          v52 = strlen((a1 + v51));
          v53 = malloc_type_malloc(v52 + 1, 0x998EE93FuLL);
          strlcpy(v53, (a1 + v51), v52 + 1);
          v54 = &v72[16 * v15];
          *v54 = v53;
          v54[1] = v52;
          v17 = v76;
          ++v15;
          --v73;
        }
      }

      else
      {
LABEL_49:
        if (_skipCPIOFile(a1, a2))
        {
          goto LABEL_119;
        }

        v82 = 1;
        v17 = v76;
      }
    }
  }

  if (v19 == 3)
  {
    v67 = "bad file format";
  }

  else
  {
    if (v19 == 4)
    {
      v55 = v72;
      if (v17 >= 2)
      {
        v79[(v17 - 1)] = 0;
        v56 = *(a1 + 96);
        if (v56)
        {
LABEL_92:
          v56(a1, v79, 2, 0, 0);
        }
      }

LABEL_93:
      if (v55)
      {
        v80 = 0;
        if (v15)
        {
          v58 = 0;
          do
          {
            v59 = &v55[16 * v58];
            if (*v59)
            {
              __strlcpy_chk();
              __strlcat_chk();
              BOMAppleDoubleADPathToPath(*v59, (a1 + 7424));
              HIDWORD(v74) = _mergeAppleDouble(a1, &v80);
              if (!v80)
              {
                (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 1272);
              }

              v60 = v58 + 1;
              if (v58 + 1 < v15)
              {
                v61 = v73 + v58;
                v62 = &v55[16 * v58 + 16];
                do
                {
                  v63 = *v62;
                  if (*v62 && *(v59 + 1) == *(v62 + 8) && !strcmp(*v59, *v62))
                  {
                    free(v63);
                    *v62 = 0;
                    *(v62 + 8) = 0;
                  }

                  v62 += 16;
                }

                while (!__CFADD__(v61++, 1));
              }

              free(*v59);
              *v59 = 0;
              *(v59 + 1) = 0;
              v58 = v60;
            }

            else
            {
              ++v58;
            }
          }

          while (v58 != v15);
        }

        free(v55);
        v18 = v79;
      }

      *a4 = 0;
      if (v81)
      {
        if ((*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), a1 + 3328, v74))
        {
          v65 = __error();
          v66 = *(a1 + 64);
          if (v66)
          {
            v66(a1, a1 + 3328, *v65);
          }
        }
      }

LABEL_115:
      v14 = HIDWORD(v74);
      goto LABEL_125;
    }

    v68 = __error();
    v67 = strerror(*v68);
  }

  BOMCopierNotifyFatalError(a1, "cpio read error: %s", v20, v21, v22, v23, v24, v25, v67);
LABEL_119:
  if (v72)
  {
    if (v15)
    {
      v69 = v72;
      do
      {
        free(*v69);
        *v69 = 0;
        v69 += 2;
        --v15;
      }

      while (v15);
    }

    free(v72);
  }

  v14 = 2;
  v18 = v79;
LABEL_125:
  free(v18);
  return v14;
}

uint64_t _copyFromPKZip(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t a5)
{
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v10 = (a1 + 248);
  v11 = strlen((a1 + 248));
  v12 = BOM_malloc(v11 + 2);
  if (!v12)
  {
    return 2;
  }

  v13 = v12;
  v14 = v11;
  memmove(v12, v10, v11);
  if (v11)
  {
    ++v11;
    v13[v14] = 47;
    v13[v11] = 0;
  }

  if (BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
  {
    v21 = "Couldn't read PKZip signature";
LABEL_6:
    BOMCopierNotifyFatalError(a1, v21, v15, v16, v17, v18, v19, v20);
    v22 = 2;
    goto LABEL_7;
  }

  v24 = (a1 + 12288);
  v25 = *(a1 + 12772);
  if (v25 == 2)
  {
    v22 = 0;
    *(a1 + 12721) = 0;
    goto LABEL_7;
  }

  if (v25 != 1)
  {
    v21 = "Incorrect pkzip signature";
    goto LABEL_6;
  }

  v88 = a3;
  v89 = 0;
  v83 = 0;
  v26 = 0;
  v27 = v11;
  v22 = 0;
  v82 = v27;
  __n = v27;
  __dst = a4;
  v86 = (a1 + 7424);
  v87 = (a1 + 249);
  while (1)
  {
    v96 = 0;
    if (!v24[433])
    {
      goto LABEL_19;
    }

    if (BOMPKZipReadLocalHeader(*(a1 + 12752), v10, a2, &v95, &v94, (a1 + 12796), (a1 + 12776), (a1 + 12808), (a1 + 12812)))
    {
      v69 = "Couldn't read pkzip local header";
      goto LABEL_113;
    }

    v34 = v94;
    if (v94)
    {
      if (v94 == 8)
      {
        v34 = 1;
        goto LABEL_18;
      }

      v69 = "Unknown compression type";
LABEL_113:
      BOMCopierNotifyFatalError(a1, v69, v28, v29, v30, v31, v32, v33);
      goto LABEL_114;
    }

LABEL_18:
    v24[481] = v34;
    if (!*(a1 + 12776) && !*(a2 + 96))
    {
      v44 = v95;
      if (v95 >= 1)
      {
        v45 = 0;
        while (1)
        {
          v46 = v44 - v45;
          v47 = v46 >= 1024 ? 1024 : v46;
          File = BOMPKZipGetFile(*(a1 + 12752));
          if (BOMFileRead(File, _copyFromPKZip_junk, v47) != v47)
          {
            break;
          }

          v45 += v47;
          v44 = v95;
          if (v45 == v95)
          {
            v95 = 0;
            v24[481] = 0;
            goto LABEL_19;
          }
        }

        v69 = "Couldn't extract junk data";
        goto LABEL_113;
      }
    }

LABEL_19:
    v35 = v10;
    if (*v10 == 46)
    {
      if (*v87 == 47)
      {
        v35 = (a1 + 249);
      }

      else
      {
        v35 = v10;
      }
    }

    if (strlcpy(__dst, v35, a5) >= a5)
    {
      v70 = *(a1 + 64);
      if (v70)
      {
        v70(a1, v35, 63);
      }

LABEL_114:
      v22 = 2;
LABEL_115:
      if (!v89)
      {
        goto LABEL_7;
      }

      if (v26)
      {
        v81 = v89;
        do
        {
          free(*v81);
          *v81 = 0;
          v81[1] = 0;
          v81 += 2;
          --v26;
        }

        while (v26);
      }

      v73 = v89;
LABEL_120:
      free(v73);
      goto LABEL_7;
    }

    if (strncmp(v10, v13, __n))
    {
      break;
    }

    v24[433] = 1;
    if ((*(a2 + 4) & 0xF000) == 0x8000 && BOMAppleDoubleIsADFile(v10) && *(a1 + 169))
    {
      if (*(a1 + 12716) != 3)
      {
        goto LABEL_59;
      }

      if (v24[480])
      {
        v42 = *v10;
        if (v42 == 46 && *v87 == 47)
        {
          v43 = 2;
        }

        else
        {
          v43 = v42 == 47;
        }

        if (!strncmp("__MACOSX", &v10[v43], 8uLL))
        {
          _parentPath(v10, v86, 0x400uLL);
          if (_insertQuarantinePath(*(a1 + 12752), v86, 0))
          {
            __error();
            _checkCopyFileError(a1);
            goto LABEL_114;
          }
        }
      }

      v49 = v83;
      v84 = v24;
      if (v83)
      {
        if (v83 == v26)
        {
          v50 = BOM_realloc(v89, 32 * v83);
          v49 = 2 * v83;
        }

        else
        {
          v50 = v89;
        }
      }

      else
      {
        v50 = BOM_malloc(0x40uLL);
        v49 = 4;
      }

      if (!v50)
      {
        BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double files.", v36, v37, v38, v39, v40, v41);
        goto LABEL_7;
      }

      v83 = v49;
      v51 = strlen((a1 + 3328));
      v52 = malloc_type_malloc(v51 + 1, 0x1BD052CBuLL);
      strlcpy(v52, (a1 + 3328), v51 + 1);
      v89 = v50;
      v53 = &v50[2 * v26];
      *v53 = v52;
      v53[1] = v51;
      ++v26;
      v24 = v84;
    }

    if (*(a1 + 12716) == 3)
    {
      v54 = _checkForDestinationConflict(a1, (a1 + 3328), a2, v88, &v93, &v96);
      if (v96 == 1)
      {
        v55 = v54;
        if (v54 > 1 || _skipPKZipFile())
        {
          goto LABEL_114;
        }

        if (v55 == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v22;
        }

        goto LABEL_78;
      }
    }

LABEL_59:
    v56 = *(a1 + 152);
    if (v56)
    {
      FSObjectAtPath = BOMBomGetFSObjectAtPath(v56, v10);
      if (!FSObjectAtPath)
      {
        goto LABEL_65;
      }

      BOMFSObjectFree(FSObjectAtPath);
    }

    v58 = *(a1 + 160);
    if (v58)
    {
      LODWORD(v58) = BOMBomFSObjectExistsAtPath(v58, *(a1 + 2296));
      v59 = *(a2 + 4);
      if (v58 && (v59 & 0xF000) != 0x4000)
      {
LABEL_65:
        if (_skipPKZipFile())
        {
          goto LABEL_114;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v59 = *(a2 + 4);
    }

    HIDWORD(v61) = (v59 & 0xF000) - 0x2000;
    LODWORD(v61) = HIDWORD(v61);
    v60 = v61 >> 13;
    if (v60 == 1)
    {
      v62 = _copyDir(a1, a2, v88, 0, v93, 0, 0, __dst, a5, 0, v58);
    }

    else
    {
      if (v60 != 3)
      {
        goto LABEL_76;
      }

      v62 = _copyFile(a1, a2, v88, v93, *(a1 + 136), &v96, 0);
    }

    if (v62 == 1)
    {
      v22 = 1;
    }

    else if (v62 == 2)
    {
      v22 = v62;
      goto LABEL_115;
    }

LABEL_76:
    if (v24[433] && BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
    {
      BOMCopierNotifyFatalError(a1, "Couldn't read pkzip signature.", v63, v64, v65, v66, v67, v68);
      goto LABEL_115;
    }

LABEL_78:
    if (*(a1 + 12772) != 1)
    {
      goto LABEL_87;
    }
  }

  v24[433] = 0;
  v13[v82 - 1] = 0;
  v71 = *(a1 + 96);
  if (v71)
  {
    v71(a1, v13, 2, 0, 0);
  }

LABEL_87:
  *__dst = 0;
  v24[433] = 0;
  if (v82 >= 2)
  {
    v13[v82 - 1] = 0;
    v72 = *(a1 + 96);
    if (v72)
    {
      v72(a1, v13, 2, 0, 0);
    }
  }

  v73 = v89;
  if (v89)
  {
    if (v26)
    {
      v85 = v24;
      v74 = 0;
      do
      {
        v75 = &v73[2 * v74];
        if (*v75)
        {
          __strlcpy_chk();
          __strlcat_chk();
          BOMAppleDoubleADPathToPath(*v75, (a1 + 8448));
          if (v85[480] && (v76 = *(a1 + 12780), !strncmp(*(a1 + 12784), (a1 + 8448), v76)))
          {
            __strlcpy_chk();
            strlcpy(v86 + v76 - 8, (a1 + 8448 + v76 + 1), 1024 - (v76 - 8));
          }

          else
          {
            __strlcpy_chk();
          }

          v92 = 0;
          v22 = _mergeAppleDouble(a1, &v92);
          if (!v92)
          {
            (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 1272);
          }

          v77 = v74 + 1;
          if (v74 + 1 < v26)
          {
            v78 = v26 - 1 - v74;
            v79 = &v89[2 * v74 + 2];
            do
            {
              v80 = *v79;
              if (*v79 && *(v75 + 1) == *(v79 + 8) && !strcmp(*v75, *v79))
              {
                free(v80);
                *v79 = 0;
                *(v79 + 8) = 0;
              }

              v79 += 16;
              --v78;
            }

            while (v78);
          }

          free(*v75);
          *v75 = 0;
          *(v75 + 1) = 0;
          v74 = v77;
          v73 = v89;
        }

        else
        {
          ++v74;
        }
      }

      while (v74 != v26);
    }

    goto LABEL_120;
  }

LABEL_7:
  free(v13);
  return v22;
}

uint64_t _mergeAppleDouble(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 169) || *(a1 + 171))
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    memset(v17, 0, sizeof(v17));
    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 1272, v17))
    {
      __error();
      return _checkCopyFileError(a1);
    }

    if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 7424, v17))
    {
      *__error() = 0;
      v4 = 0;
      if (a2)
      {
        *a2 = 0;
      }

      return v4;
    }

    v15 = v19;
    v16 = v18;
    v14 = 0;
    if (!*(a1 + 12848) && !*(a1 + 195) || (v14 = AFSCLockFilePath()) != 0)
    {
      if (*(a1 + 170) || *(a1 + 169))
      {
        v6 = 9175044;
      }

      else
      {
        v6 = 9175040;
      }

      if (*(a1 + 171))
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = v6;
      }

      if (copyfile((a1 + 1272), (a1 + 7424), 0, v7) < 0)
      {
        if (*__error() == 45)
        {
          *a2 = 0;
        }

        goto LABEL_28;
      }

      file = acl_get_file((a1 + 7424), ACL_TYPE_EXTENDED);
      if (file)
      {
        v9 = file;
        v10 = acl_init(0);
        if (!v10 || (v11 = v10, v12 = acl_set_file((a1 + 7424), ACL_TYPE_EXTENDED, v10), free(v11), v12) || (v13 = acl_set_file((a1 + 7424), ACL_TYPE_EXTENDED, v9), acl_free(v9), v13))
        {
LABEL_28:
          __error();
LABEL_34:
          v4 = _checkCopyFileError(a1);
LABEL_35:
          _unlockAFSCFileLock(&v14);
          return v4;
        }
      }

      if (!set_timestamps_0((a1 + 7424), &v16, &v15) || *__error() == 13)
      {
        v4 = 0;
        if (a2)
        {
          *a2 = 0;
        }

        goto LABEL_35;
      }
    }

    __error();
    goto LABEL_34;
  }

  v4 = 0;
  if (a2)
  {
    *a2 = 1;
  }

  return v4;
}

uint64_t _enforceDestinationLocation(uint64_t a1, char *a2)
{
  memset(&v14, 0, sizeof(v14));
  if (lstat(a2, &v14))
  {
    if (*__error() == 2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if ((v14.st_mode & 0xF000) == 0xA000)
  {
    memset(&v13, 0, sizeof(v13));
    if (stat(a2, &v13))
    {
LABEL_6:
      v10 = __error();
      v11 = *(a1 + 64);
      if (v11)
      {
        v11(a1, a2, *v10);
      }

      return 0xFFFFFFFFLL;
    }

    if (v14.st_dev != v13.st_dev)
    {
      BOMCopierNotifyFatalError(a1, "%s exists on a different device from its target", v4, v5, v6, v7, v8, v9, a2);
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t _resolveDestinationPath(uint64_t a1, char *a2, char *a3)
{
  bzero(a3, 0x400uLL);
  if (*a2 != 47 && !getcwd(a3, 0x400uLL))
  {
    v47 = __error();
    v58 = strerror(*v47);
    v46 = "Could not get current working directory: %s\n";
    goto LABEL_18;
  }

  v6 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v46 = "Could not allocate unresolved prefix\n";
LABEL_18:
    BOMCopierNotifyFatalError(a1, v46, v7, v8, v9, v10, v11, v12, v58);
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  v14 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (v14)
  {
    v21 = v14;
    while (1)
    {
      v22 = strchr(a2, 47);
      v29 = v22;
      if (v22)
      {
        v30 = v22 - a2;
        if ((v22 - a2) >= 0x400)
        {
          BOMCopierNotifyFatalError(a1, "Unresolved path component too large: %ld\n", v23, v24, v25, v26, v27, v28, v22 - a2, v59);
          goto LABEL_28;
        }

        strncpy(v13, a2, 0x400uLL);
        v13[v30] = 0;
        v31 = snprintf(v21, 0x400uLL, "%s/%s", a3, v13);
        if (v31 >= 0x400)
        {
          BOMCopierNotifyFatalError(a1, "Could not construct path to resolve: %s %s %ld\n", v32, v33, v34, v35, v36, v37, a3, v13, v31);
          goto LABEL_28;
        }

        a2 = v29 + 1;
      }

      else
      {
        v38 = snprintf(v21, 0x400uLL, "%s/%s", a3, a2);
        if (v38 >= 0x400)
        {
          BOMCopierNotifyFatalError(a1, "Could not construct path to resolve: %s %s %ld\n", v39, v40, v41, v42, v43, v44, a3, a2, v38);
          goto LABEL_28;
        }

        a2 = 0;
      }

      if (!(*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), v21, a3))
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_14;
      }
    }

    if (*__error() == 2)
    {
      if (!a2)
      {
LABEL_14:
        free(v21);
        free(v13);
        return 0;
      }

      v48 = strlen(a3);
      v49 = strlen(a2);
      if (v48 + v49 + 2 <= 0x3FF)
      {
        *&a3[strlen(a3)] = 47;
        strncat(a3, a2, 0x400uLL);
        goto LABEL_14;
      }

      BOMCopierNotifyFatalError(a1, "Concatenated path too large: %s %s %ld\n", v50, v51, v52, v53, v54, v55, a3, a2, v48 + v49 + 2);
    }

    else
    {
      v56 = __error();
      v57 = *(a1 + 64);
      if (v57)
      {
        v57(a1, v21, *v56);
      }
    }

LABEL_28:
    free(v21);
  }

  else
  {
    BOMCopierNotifyFatalError(a1, "Could not allocate path to resolve\n", v15, v16, v17, v18, v19, v20);
  }

  free(v13);
  return 0xFFFFFFFFLL;
}

uint64_t _restoreSymlinks(uint64_t a1, int a2)
{
  v4 = 0;
  while (!BOMStackIsEmpty(*(a1 + 40)))
  {
    v5 = BOMStackPop(*(a1 + 40));
    if ((*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), v5[1], *v5))
    {
      v6 = *v5;
      v7 = __error();
      v8 = *(a1 + 64);
      if (v8)
      {
        v8(a1, v6, *v7);
      }

      if (!a2)
      {
        free(*v5);
        free(v5[1]);
        free(v5[2]);
        free(v5);
        return 1;
      }

      v4 = 1;
    }

    else
    {
      v9 = *(a1 + 96);
      if (v9)
      {
        v9(a1, v5[2], 3, 0, 0);
      }
    }

    free(*v5);
    free(v5[1]);
    free(v5[2]);
    free(v5);
  }

  return v4;
}

uint64_t BOMCopierPrepareMatchContext(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v37 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 42, "BOMCopierPrepareMatchContext", "match_context is NULL");
    return v37;
  }

  TypeID = CFArrayGetTypeID();
  if (!a1)
  {
    goto LABEL_42;
  }

  v7 = TypeID;
  Value = CFDictionaryGetValue(a1, @"archs");
  v9 = Value;
  if (Value && CFGetTypeID(Value) != v7)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 61, "BOMCopierPrepareMatchContext", "kBOMCopierOptionArchitectureArrayKey is not a CFArrayRef");
    return 1;
  }

  v10 = CFDictionaryGetTypeID();
  v11 = CFDictionaryGetValue(a1, @"fallbackForSubtype");
  v12 = v11;
  if (v11 && CFGetTypeID(v11) != v10)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 75, "BOMCopierPrepareMatchContext", "kBOMCopierOptionArchitectureFallbackKey is not a CFDictionaryRef");
    return 1;
  }

  if (!v9)
  {
LABEL_42:
    v15 = 0;
    LODWORD(Count) = 0;
LABEL_43:
    v37 = 0;
    *a2 = Count;
    *(a2 + 8) = v15;
    return v37;
  }

  Count = CFArrayGetCount(v9);
  v14 = malloc_type_calloc(Count, 0x20uLL, 0x101004001FB615FuLL);
  if (!v14)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 92, "BOMCopierPrepareMatchContext", "Could not allocate bom_cpu_type_list");
    return 1;
  }

  v15 = v14;
  v41 = v7;
  v43 = CFStringGetTypeID();
  if (Count < 1)
  {
    goto LABEL_43;
  }

  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v16);
    if (!ValueAtIndex)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 105, "BOMCopierPrepareMatchContext", "Could not retrieve item %d from architecture list");
LABEL_59:
      v39 = v15;
      goto LABEL_60;
    }

    v18 = ValueAtIndex;
    if (v43 != CFGetTypeID(ValueAtIndex))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 112, "BOMCopierPrepareMatchContext", "Item %d from architecture list is not a CFString");
      goto LABEL_59;
    }

    if (!CFStringGetCString(v18, buffer, 255, 0x8000100u))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 120, "BOMCopierPrepareMatchContext", "Item %d from architecture list could not converted to a UTF8 string");
      goto LABEL_59;
    }

    v19 = BOMGetArchInfoFromName(buffer);
    if (!v19)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 128, "BOMCopierPrepareMatchContext", "Could not resolve architecture info for %s");
      goto LABEL_59;
    }

    v20 = v19;
    v21 = BOMGetArchInfoFromCpuType(*(v19 + 2), -1);
    if (!v21)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 136, "BOMCopierPrepareMatchContext", "Could not resolve family architecture info for %s");
      goto LABEL_59;
    }

    v22 = *(v20 + 3);
    v23 = *(v21 + 2);
    v24 = v22 == *(v21 + 3);
    v26 = v22 != 3 || v23 != 16777223;
    if (v22)
    {
      v27 = 0;
    }

    else
    {
      v27 = v23 == 16777228;
    }

    if (v27)
    {
      v26 = 0;
    }

    v28 = v15 + 32 * v16;
    *v28 = v23;
    v29 = v24 && v26;
    *(v28 + 4) = v29;
    if (v29)
    {
      v22 = -1;
    }

    *(v28 + 8) = v22;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    if (!v12)
    {
      goto LABEL_39;
    }

    v30 = CFDictionaryGetValue(v12, v18);
    if (!v30)
    {
      goto LABEL_39;
    }

    v31 = v30;
    if (v41 != CFGetTypeID(v30))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 172, "BOMCopierPrepareMatchContext", "Corresponding fallback entry for item %d from architecture list is not a CFArray");
      goto LABEL_59;
    }

    v40 = v15;
    v32 = CFArrayGetCount(v31);
    if (v32 >= 1)
    {
      break;
    }

LABEL_38:
    v15 = v40;
LABEL_39:
    if (++v16 == Count)
    {
      goto LABEL_43;
    }
  }

  v33 = v32;
  v34 = 0;
  v42 = malloc_type_calloc(v32, 4uLL, 0x100004052888210uLL);
  *(v28 + 16) = v42;
  *(v28 + 24) = v33;
  while (1)
  {
    v35 = CFArrayGetValueAtIndex(v31, v34);
    if (!v35)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 193, "BOMCopierPrepareMatchContext", "Could not retrieve item %d from fallback list");
      goto LABEL_52;
    }

    v36 = v35;
    if (v43 != CFGetTypeID(v35))
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 201, "BOMCopierPrepareMatchContext", "Item %d from fallback list is not a CFString");
      goto LABEL_52;
    }

    if (!CFStringGetCString(v36, __s2, 255, 0x8000100u))
    {
      break;
    }

    v42[v34++] = *(BOMGetArchInfoFromName(__s2) + 3);
    if (v33 == v34)
    {
      goto LABEL_38;
    }
  }

  BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 210, "BOMCopierPrepareMatchContext", "Item %d from fallback list could not converted to a UTF8 string");
LABEL_52:
  free(v42);
  v39 = v40;
LABEL_60:
  free(v39);
  return 1;
}

uint64_t BOMCopierReleaseMatchContext(unsigned int *a1, void *a2)
{
  if (a1)
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    if (v3)
    {
      v5 = v4 + 2;
      do
      {
        if (*v5)
        {
          free(*v5);
        }

        v5 += 4;
        --v3;
      }

      while (v3);
    }

    else if (!v4)
    {
LABEL_11:
      v6 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      return v6;
    }

    free(v4);
    goto LABEL_11;
  }

  v6 = 22;
  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 250, "BOMCopierReleaseMatchContext", "match_context is NULL");
  return v6;
}

uint64_t BOMCopierMatchBinary(uint64_t a1, unsigned int *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      a2[4] = 2;
      *(a2 + 5) = 0;
      *(a2 + 7) = 0;
      *(a2 + 5) = 0;
      ArchCount = BOMCopierSourceEntryGetArchCount(a1);
      v9 = ArchCount;
      v48 = malloc_type_calloc(ArchCount, 0x28uLL, 0x1000040DFF313CCuLL);
      if (!v48)
      {
        v31 = *__error();
        v32 = __error();
        v33 = strerror(*v32);
        BOMCopierErrorCapture(a3, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 323, "BOMCopierMatchBinary", "Could not allocate empty match record list: %s", v33);
        return 1;
      }

      Size = BOMCopierSourceEntryGetSize(a1);
      v10 = *a2;
      v47 = *a2 == 0;
      if (*a2)
      {
        v11 = 0;
      }

      else
      {
        v11 = ArchCount;
      }

      if (v10)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v44 = v12;
      v46 = ArchCount;
      if (ArchCount)
      {
        v13 = 0;
        v14 = v10 == 0;
        if (v6)
        {
          v15 = v10 == 0;
        }

        else
        {
          v15 = 1;
        }

        while (1)
        {
          memset(v49, 0, sizeof(v49));
          if (BOMCopierSourceEntryGetArchRecord(a1, v13, v49, a3))
          {
            break;
          }

          v16 = &v48[40 * v13];
          *v16 = v14;
          v17 = v49[0];
          v18 = DWORD1(v49[0]);
          *(v16 + 1) = v49[0];
          *(v16 + 2) = v18;
          *(v16 + 1) = *(v49 + 8);
          *(v16 + 4) = *(&v49[1] + 1);
          if (v15)
          {
LABEL_21:
            if (!v47 && v6)
            {
              for (i = 0; i < v6; ++i)
              {
                v22 = (v7 + 32 * i);
                if ((v22[1] & 1) != 0 || (v24 = v22[6], !v24))
                {
                  v23 = 0;
                }

                else
                {
                  v25 = 0;
                  v23 = 0;
                  v26 = *v22;
                  v27 = 4 * v24;
                  do
                  {
                    if (v17 == v26 && v18 == *(*(v22 + 2) + v25))
                    {
                      v23 = 1;
                      *v16 = 1;
                      ++v11;
                    }

                    v25 += 4;
                  }

                  while (v27 != v25);
                }

                if (v23)
                {
                  break;
                }
              }
            }
          }

          else
          {
            v19 = 0;
            v20 = v7 + 4;
            while (v17 != *(v20 - 4) || (*v20 & 1) == 0 && ((*(v20 + 4) ^ v18) & 0xFFFFFF) != 0)
            {
              ++v19;
              v20 += 32;
              if (v19 >= v6)
              {
                goto LABEL_21;
              }
            }

            *v16 = 1;
            ++v11;
          }

          if (++v13 == v9)
          {
            goto LABEL_39;
          }
        }

        v36 = __error();
        BOMCopierErrorCapture(a3, *v36, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 347, "BOMCopierMatchBinary", "Could not get arch record for index %d", MEMORY[0x277D85E38]);
        free(v48);
        return 1;
      }

LABEL_39:
      if (v11 == v46)
      {
        v29 = 1;
        v30 = Size;
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          v30 = Size;
          if (!v46)
          {
            v29 = 3;
LABEL_66:
            v28 = 0;
            a2[4] = v29;
            a2[5] = v46;
            *(a2 + 3) = v48;
            a2[8] = v11;
            *(a2 + 5) = v30;
            return v28;
          }

          v34 = (v48 + 24);
          v35 = v9;
          do
          {
            if (*(v34 - 24) == 1)
            {
              *(v34 - 1) = 0;
              v30 = *v34;
            }

            v34 += 5;
            --v35;
          }

          while (v35);
          v29 = 3;
        }

        else
        {
          v30 = Size;
          v29 = v44;
          if (v11 < v46)
          {
            BinaryType = BOMCopierSourceEntryGetBinaryType(a1);
            v38 = 20;
            if (BinaryType == 4)
            {
              v38 = 32;
            }

            v30 = v38 * v11 + 8;
            v39 = v48 + 32;
            v40 = v9;
            do
            {
              if (*(v39 - 32) == 1)
              {
                v41 = (v30 + (1 << *v39) - 1) & -(1 << *v39);
                *(v39 - 2) = v41;
                v30 = v41 + *(v39 - 1);
              }

              v39 += 10;
              --v40;
            }

            while (v40);
            v29 = 4;
          }
        }
      }

      else
      {
        v30 = 0;
        v29 = 2;
      }

      if (v46)
      {
        v42 = v48 + 16;
        do
        {
          if ((*(v42 - 2) & 1) == 0)
          {
            *v42 = -1;
          }

          v42 += 5;
          --v9;
        }

        while (v9);
      }

      goto LABEL_66;
    }

    v28 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 294, "BOMCopierMatchBinary", "match_context is NULL");
  }

  else
  {
    v28 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierMatchRecord.c", 288, "BOMCopierMatchBinary", "source_entry is NULL");
  }

  return v28;
}

uint64_t BOMFSOArchInfoInitialize()
{
  v0 = MEMORY[0x28223BE20]();
  v33 = *MEMORY[0x277D85DE8];
  if (*(v1 + 96) >= 4096)
  {
    v2 = 4096;
  }

  else
  {
    v2 = *(v1 + 96);
  }

  if (*v0 != 1)
  {
    return 0;
  }

  v3 = v0;
  v4 = *(v0 + 24);
  if (v4)
  {
    v2 = *(v0 + 32);
    goto LABEL_7;
  }

  v26 = *(v0 + 16);
  if (v26 != -1)
  {
    if (*(v0 + 144))
    {
      snprintf(__str, 0x401uLL, "%s/%s", *(v0 + 144), *(v0 + 72));
      v26 = *(v3 + 16);
    }

    if ((*(*(v3 + 160) + 64))(*(*(v3 + 160) + 8), v26, 0, 0) < 0)
    {
      return 0;
    }

    v4 = v32;
    if ((*(*(v3 + 160) + 48))(*(*(v3 + 160) + 8), *(v3 + 16), v32, v2) == v2)
    {
LABEL_7:
      if (v2 < 8)
      {
        return 0;
      }

      v5 = *(v3 + 16);
      if (BOMArchFlagForHeader(v4, v2) == 2)
      {
        v6 = bswap32(*(v4 + 1));
        v7 = 20 * v6 + 8;
        if (v7 <= v2 || v5 != -1 && (*(*(v3 + 160) + 48))(*(*(v3 + 160) + 8), v5, &v4[v2]) == v7 - v2)
        {
          *(v3 + 40) |= 2 << B_ARCHOFFT;
          *(v3 + 104) = v6;
          *(v3 + 112) = BOM_malloc(24 * v6);
          if (v6 >= 1)
          {
            v8 = 0;
            v9 = 24 * v6;
            for (i = (v4 + 20); ; i += 5)
            {
              v11 = *(i - 3);
              if (*v4 == -889275714)
              {
                v12 = *(v3 + 112) + v8;
                *v12 = v11;
                v13 = *(i - 2);
                *(v12 + 4) = v13;
                v14 = *i;
                *(v12 + 8) = v14;
                v15 = *(i - 1);
              }

              else
              {
                v16 = *(v3 + 112) + v8;
                *v16 = bswap32(v11);
                v13 = *(i - 2);
                *(v16 + 4) = bswap32(v13);
                v14 = bswap32(*i);
                *(v16 + 8) = v14;
                v15 = bswap32(*(i - 1));
              }

              if ((*(v3 + 40) & B_CKSUMS) == 0)
              {
                goto LABEL_28;
              }

              v17 = v15;
              v18 = v14 + v15;
              if (v18 > *(v3 + 64))
              {
                v19 = *(v3 + 72);
                v20 = BOMGetArchInfoFromCpuType(v11, v13);
                if (v20)
                {
                  v21 = *v20;
                }

                else
                {
                  v30 = v11;
                  v21 = _cpuNameForType_generic;
                  snprintf(_cpuNameForType_generic, 0x50uLL, "<cputype %d, subtype %d>", v30, v13);
                }

                v24 = BOMExceptionHandlerMessage("file %s is corrupt: slice for %s extends beyond length of file. (%lu > %lld)\n", v19, v21, v18, *(v3 + 64));
                v25 = __error();
                _BOMExceptionHandlerCall(v24, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/FSObject/BOMFSOArchInfo.c", 470, *v25);
                goto LABEL_28;
              }

              *__str = 0;
              v22 = *(v3 + 24);
              if (v22)
              {
                if (BOMCRC32ForBuffer(v22 + v17, __str, v14))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if ((*(*(v3 + 160) + 64))(*(*(v3 + 160) + 8), v5) == -1)
                {
                  v23 = 0;
                  goto LABEL_25;
                }

                if (BOMCRC32ForFileDesc(v5, __str, v14))
                {
LABEL_23:
                  *__str = 0;
                }
              }

              v23 = *__str;
LABEL_25:
              *(*(v3 + 112) + v8 + 16) = v23;
LABEL_28:
              v8 += 24;
              if (v9 == v8)
              {
                return 1;
              }
            }
          }

          return 1;
        }
      }

      if (v2 < 0x1C)
      {
        return 0;
      }

      v28 = *v4;
      if (*v4 != -822415874)
      {
        if (v28 == -17958194)
        {
LABEL_44:
          v29 = *(v4 + 4);
LABEL_50:
          _handleMachO_common(v3, v29.i32[0], v29.i32[1]);
          return 1;
        }

        if (v2 < 0x20)
        {
          return 0;
        }

        if (v28 != -805638658)
        {
          if (v28 != -17958193)
          {
            return 0;
          }

          goto LABEL_44;
        }
      }

      v29 = vrev32_s8(*(v4 + 4));
      goto LABEL_50;
    }
  }

  return 1;
}

void BOMFSOArchInfoRelease(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 112) = 0;
}

uint64_t BOMFSOArchInfoCopy(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 104);
    *(a2 + 104) = v5;
    v6 = BOM_malloc(24 * v5);
    *(a2 + 112) = v6;
    if (v6)
    {
      if (*(a2 + 104))
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(a2 + 112) + v7;
          v10 = (*(a1 + 112) + v7);
          v11 = *v10;
          *(v9 + 16) = *(v10 + 2);
          *v9 = v11;
          ++v8;
          v7 += 24;
        }

        while (v8 < *(a2 + 104));
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMFSOArchInfoContainsArchitecture(uint64_t a1, int a2)
{
  if ((B_ARCH & *(a1 + 40)) == 0)
  {
    return 0;
  }

  if (!((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT))
  {
    return 0;
  }

  v2 = *(a1 + 104);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 112);
  while (1)
  {
    v4 = *v3;
    v3 += 6;
    if (v4 == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t BOMFSOArchInfoArchCount(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return a1[26];
  }

  else
  {
    return 0;
  }
}

uint64_t BOMFSOArchInfoGetArch(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 24 * a2);
  }
}

uint64_t BOMFSOArchInfoGetArchSubtype(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 24 * a2 + 4);
  }
}

uint64_t BOMFSOArchInfoGetArchSize(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 104) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 112) + 24 * a2 + 8);
  }
}

uint64_t BOMFSOArchInfoThinKeepingArchs(uint64_t a1, int *a2, unsigned int a3)
{
  if ((B_ARCH & *(a1 + 40)) == 0)
  {
    return 1;
  }

  if ((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT != 2)
  {
    return 0;
  }

  v6 = BOM_malloc(24 * *(a1 + 104));
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (a3)
      {
        v11 = *(a1 + 112) + 24 * v9;
        v12 = a3;
        v13 = a2;
        while (1)
        {
          v14 = *v13++;
          if (*v11 == v14)
          {
            break;
          }

          if (!--v12)
          {
            goto LABEL_12;
          }
        }

        v15 = &v6[24 * v10];
        v16 = *v11;
        *(v15 + 2) = *(v11 + 16);
        *v15 = v16;
        ++v10;
        v8 = *(a1 + 104);
      }

LABEL_12:
      ++v9;
    }

    while (v9 < v8);
  }

  else
  {
    v10 = 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 104) = v10;
  *(a1 + 108) = 0;
  *(a1 + 112) = v7;
  result = 0;
  if (v10 == 1)
  {
    *(a1 + 64) = *(v7 + 1);
    *(a1 + 88) = *(v7 + 4);
  }

  return result;
}

uint64_t BOMFSOArchInfoThinKeepingArchsAndSubArchs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((B_ARCH & *(a1 + 40)) == 0)
  {
    return 1;
  }

  if ((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT != 2)
  {
    return 0;
  }

  v6 = BOM_malloc(24 * *(a1 + 104));
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (a3)
      {
        v11 = *(a1 + 112) + 24 * v9;
        v12 = a3;
        v13 = (a2 + 8);
        while (*v11 != *(v13 - 2) || (*(v13 - 1) & 1) == 0 && ((*v13 ^ *(v11 + 4)) & 0xFFFFFF) != 0)
        {
          v13 += 8;
          if (!--v12)
          {
            goto LABEL_14;
          }
        }

        v14 = &v6[24 * v10];
        v15 = *v11;
        *(v14 + 2) = *(v11 + 16);
        *v14 = v15;
        ++v10;
        v8 = *(a1 + 104);
      }

LABEL_14:
      ++v9;
    }

    while (v9 < v8);
  }

  else
  {
    v10 = 0;
  }

  v17 = *(a1 + 112);
  if (v17)
  {
    free(v17);
  }

  *(a1 + 104) = v10;
  *(a1 + 108) = 0;
  *(a1 + 112) = v7;
  result = 0;
  if (v10 == 1)
  {
    *(a1 + 64) = *(v7 + 1);
    *(a1 + 88) = *(v7 + 4);
  }

  return result;
}

void BOMFSOArchInfoSet(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      free(v6);
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 40) &= ~B_ARCH;
    }

    if (a2)
    {
      *(a1 + 104) = a2;
      v7 = BOM_malloc(24 * a2);
      v8 = 0;
      *(a1 + 112) = v7;
      do
      {
        v9 = *(a1 + 112) + v8;
        v10 = *(a3 + v8);
        *(v9 + 16) = *(a3 + v8 + 16);
        *v9 = v10;
        v8 += 24;
      }

      while (24 * a2 != v8);
      if (a2 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      *(a1 + 40) |= B_ARCH | (v11 << B_ARCHOFFT);
    }
  }
}

uint64_t _handleMachO_common(uint64_t a1, int a2, int a3)
{
  *(a1 + 40) |= 1 << B_ARCHOFFT;
  *(a1 + 104) = 1;
  v6 = BOM_malloc(0x18uLL);
  *(a1 + 112) = v6;
  v6[1] = *(a1 + 64);
  *v6 = a2;
  *(v6 + 1) = a3;
  result = BOMFSObjectChecksum(a1);
  *(*(a1 + 112) + 16) = result;
  return result;
}

uint64_t BOMFSObjectArchiveLength(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 40);
  if ((B_STAT & v2) != 0)
  {
    v3 = BOMFSOTypeInfoArchiveLength(a1);
    if (v3 < 0)
    {
      return -1;
    }

    v4 = v3 + 30;
    v2 = *(a1 + 40);
  }

  else
  {
    v4 = 4;
  }

  if ((B_ARCH & v2) == 0)
  {
    goto LABEL_9;
  }

  v5 = BOMFSOArchInfoArchiveLength(a1);
  if (v5 < 0)
  {
    return -1;
  }

  v4 += v5;
  v2 = *(a1 + 40);
LABEL_9:
  if ((B_OPAQUEDATA & v2) != 0)
  {
    v4 += *(a1 + 128) + 4;
  }

  return v4;
}

uint64_t BOMFSObjectArchive(uint64_t a1, unsigned __int8 *a2)
{
  result = 1;
  if (a1 && a2)
  {
    BOMStreamWriteUInt8(a1, *a2);
    BOMStreamWriteUInt8(a1, 1);
    BOMStreamWriteUInt16(a1, *(a2 + 20));
    v5 = *(a2 + 20);
    if ((B_STAT & v5) != 0)
    {
      BOMStreamWriteUInt16(a1, *(a2 + 21));
      BOMStreamWriteUInt32(a1, *(a2 + 11));
      BOMStreamWriteUInt32(a1, *(a2 + 12));
      BOMStreamWriteUInt32(a1, *(a2 + 14));
      BOMStreamWriteUInt32(a1, *(a2 + 16));
      BOMFSOTypeInfoArchive(a1, a2);
      v5 = *(a2 + 20);
    }

    if ((B_ARCH & v5) != 0)
    {
      BOMFSOArchInfoArchive(a1, a2);
      v5 = *(a2 + 20);
    }

    if ((B_OPAQUEDATA & v5) != 0)
    {
      BOMStreamWriteUInt32(a1, *(a2 + 32));
      BOMStreamWriteBuffer(a1, *(a2 + 15), *(a2 + 16));
    }

    return 0;
  }

  return result;
}

_DWORD *BOMFSObjectUnarchive(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  UInt8 = BOMStreamReadUInt8(a1);
  v3 = BOMStreamReadUInt8(a1);
  if ((UInt8 - 6) <= 0xFFFFFFFA)
  {
    fprintf(*MEMORY[0x277D85DF8], "filesystem object has an invalid type: 0x%X\nCannot dearchive.\n");
    return 0;
  }

  if (v3 != 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "filesystem object has an invalid version: 0x%X\nCannot dearchive.\n");
    return 0;
  }

  Sys = BOMStreamGetSys(a1);
  v5 = BOMFSObjectNewWithSys(UInt8, Sys);
  if (v5)
  {
    UInt16 = BOMStreamReadUInt16(a1);
    *(v5 + 20) = UInt16;
    if ((B_STAT & UInt16) != 0)
    {
      *(v5 + 21) = BOMStreamReadUInt16(a1);
      v5[11] = BOMStreamReadUInt32(a1);
      v5[12] = BOMStreamReadUInt32(a1);
      *(v5 + 7) = BOMStreamReadUInt32(a1);
      *(v5 + 8) = BOMStreamReadUInt32(a1);
      UInt16 = *(v5 + 20);
      if ((B_STAT & UInt16) != 0)
      {
        if (BOMFSOTypeInfoUnarchive(a1, v5))
        {
          goto LABEL_19;
        }

        UInt16 = *(v5 + 20);
      }
    }

    if ((B_ARCH & UInt16) != 0)
    {
      if (BOMFSOArchInfoUnarchive(a1, v5))
      {
        goto LABEL_19;
      }

      UInt16 = *(v5 + 20);
    }

    if ((B_OPAQUEDATA & UInt16) != 0)
    {
      UInt32 = BOMStreamReadUInt32(a1);
      *(v5 + 16) = UInt32;
      v8 = BOM_malloc(UInt32);
      *(v5 + 15) = v8;
      if (v8)
      {
        BOMStreamReadBuffer(a1, v8, *(v5 + 16));
        return v5;
      }

LABEL_19:
      BOMFSObjectFree(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t BOMFSObjectTypeForMode(int a1)
{
  if ((a1 - 4096) >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_241C78F18[(a1 - 4096) >> 12];
  }
}

char *BOMNameForFSObjectType(int a1)
{
  if ((a1 - 6) >= 0xFFFFFFFB)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return &gTypeStrings[10 * v1];
}

void *BOMFSObjectNew(int a1)
{
  v2 = BOM_malloczero(0xA8uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v2[20] = BomSys_default();
  }

  return v3;
}

_DWORD *BOMFSObjectNewWithSys(int a1, void *a2)
{
  v4 = BOM_malloczero(0xA8uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    if (!a2)
    {
      a2 = BomSys_default();
    }

    *(v5 + 20) = a2;
  }

  return v5;
}

_DWORD *BOMFSObjectNewFromPathWithSys(char *a1, __int16 a2, unsigned int (**a3)(void, char *, __int128 *))
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (v3[12](v3[1], a1, &v30))
  {
    return 0;
  }

  v8 = BOMFSObjectTypeForMode(WORD2(v30));
  if (v8 == 5)
  {
    return 0;
  }

  if (!v8)
  {
    fprintf(*MEMORY[0x277D85DF8], "file '%s' is an unknown file type\n", a1);
    return 0;
  }

  v6 = BOMFSObjectNewWithSys(v8, v3);
  if (!v6)
  {
    return v6;
  }

  v9 = strlen(a1);
  v10 = BOM_malloc(v9 + 1);
  *(v6 + 9) = v10;
  if (!v10)
  {
LABEL_24:
    v20 = *(v6 + 10);
    if (v20)
    {
      free(v20);
    }

    free(v6);
    return 0;
  }

  memmove(v10, a1, v9 + 1);
  v11 = strrchr(a1, 47);
  v12 = a1;
  if (v11)
  {
    if (v11[1])
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }
  }

  v13 = strlen(v12);
  v14 = BOM_malloc(v13 + 1);
  *(v6 + 10) = v14;
  if (!v14)
  {
    v19 = *(v6 + 9);
    if (v19)
    {
      free(v19);
    }

    goto LABEL_24;
  }

  memmove(v14, v12, v13 + 1);
  *(v6 + 20) = a2;
  v15 = a2 & 1;
  if (a2)
  {
    *(v6 + 21) = WORD2(v30);
    *(v6 + 11) = v31;
    *(v6 + 7) = v33;
    *(v6 + 8) = v36;
  }

  if ((a2 & 0xFFF) != 0 && *v6 == 1)
  {
    v16 = v3[23](v3[1], a1, 4);
    v17 = v3[1];
    if (v16 == -1)
    {
      v3[25](v17, a1, (WORD2(v30) & 0xFFF | 0x124u));
      v18 = (v3[2])(v3[1], a1, 0, 0);
      v3[25](v3[1], a1, (WORD2(v30) & 0xFFF));
    }

    else
    {
      v18 = (v3[2])(v17, a1, 0, 0);
    }

    if (v18 == -1)
    {
      BOMFSObjectFree(v6);
      return 0;
    }

    v6[4] = v18;
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
    a2 = *(v6 + 20);
    v15 = a2 & 1;
  }

  if (v15)
  {
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v21 = v30;
    v22 = v31;
    BOMFSOTypeInfoInitialize(v6, &v21);
    a2 = *(v6 + 20);
  }

  if ((a2 & 4) != 0)
  {
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v21 = v30;
    v22 = v31;
    BOMFSOArchInfoInitialize();
  }

  if (*v6 == 1 && (v6[10] & 0xFFF) != 0)
  {
    (v3[4])(v3[1], v6[4]);
    *(v6 + 3) = 0;
    *(v6 + 4) = 0;
  }

  return v6;
}

void BOMFSObjectFree(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      free(v3);
    }

    BOMFSOTypeInfoRelease(a1);
    BOMFSOArchInfoRelease(a1);
    v4 = *(a1 + 120);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 144);
    if (v5 && *(a1 + 152))
    {
      free(v5);
    }

    free(a1);
  }
}

uint64_t BOMFSObjectENewFromPathWithSys(char *a1, __int128 *a2, int a3, __int16 a4, void *a5)
{
  v10 = BOMFSObjectTypeForMode(*(a2 + 2));
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (!a5)
  {
    a5 = BomSys_default();
  }

  v12 = BOMFSObjectNewWithSys(v11, a5);
  v13 = v12;
  if (v12)
  {
    v12[4] = -1;
    v14 = strlen(a1);
    v15 = BOM_malloc(v14 + 1);
    *(v13 + 72) = v15;
    if (!v15)
    {
      goto LABEL_18;
    }

    memmove(v15, a1, v14 + 1);
    v16 = strrchr(a1, 47);
    v17 = a1;
    if (v16)
    {
      if (v16[1])
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = v16;
      }
    }

    v18 = strlen(v17);
    v19 = BOM_malloc(v18 + 1);
    *(v13 + 80) = v19;
    if (v19)
    {
      memmove(v19, v17, v18 + 1);
      *(v13 + 40) = a4;
      v20 = a4 & 1;
      if (a4)
      {
        *(v13 + 42) = *(a2 + 2);
        *(v13 + 44) = *(a2 + 2);
        *(v13 + 56) = *(a2 + 6);
        *(v13 + 64) = *(a2 + 12);
      }

      if ((a4 & 0xFFF) == 0 || *v13 != 1)
      {
        goto LABEL_29;
      }

      if (a3 != -1)
      {
        *(v13 + 16) = a3;
LABEL_28:
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
LABEL_29:
        if (v20)
        {
          v25 = a2[7];
          v39 = a2[6];
          v40 = v25;
          v41 = a2[8];
          v26 = a2[3];
          v35 = a2[2];
          v36 = v26;
          v27 = a2[5];
          v37 = a2[4];
          v38 = v27;
          v28 = a2[1];
          v33 = *a2;
          v34 = v28;
          BOMFSOTypeInfoInitialize(v13, &v33);
          a4 = *(v13 + 40);
        }

        if ((a4 & 4) != 0)
        {
          v29 = a2[7];
          v39 = a2[6];
          v40 = v29;
          v41 = a2[8];
          v30 = a2[3];
          v35 = a2[2];
          v36 = v30;
          v31 = a2[5];
          v37 = a2[4];
          v38 = v31;
          v32 = a2[1];
          v33 = *a2;
          v34 = v32;
          BOMFSOArchInfoInitialize();
        }

        if (*v13 == 1 && (*(v13 + 40) & 0xFFF) != 0)
        {
          *(v13 + 24) = 0;
          *(v13 + 32) = 0;
          if (a3 == -1)
          {
            (*(a5 + 4))(*(a5 + 1), *(v13 + 16));
            *(v13 + 16) = -1;
          }
        }

        return v13;
      }

      v22 = (*(a5 + 23))(*(a5 + 1), a1, 4);
      v23 = *(a5 + 1);
      if (v22 == -1)
      {
        (*(a5 + 25))(v23, a1, *(a2 + 2) & 0xFFF | 0x124u);
        *(v13 + 16) = (*(a5 + 2))(*(a5 + 1), a1, 0, 0);
        (*(a5 + 25))(*(a5 + 1), a1, *(a2 + 2) & 0xFFF);
        v24 = *(v13 + 16);
      }

      else
      {
        v24 = (*(a5 + 2))(v23, a1, 0, 0);
        *(v13 + 16) = v24;
      }

      if (v24 != -1)
      {
        a4 = *(v13 + 40);
        v20 = a4 & 1;
        goto LABEL_28;
      }
    }

    else
    {
LABEL_18:
      if (a3 == -1 && *(v13 + 16) != -1)
      {
        (*(a5 + 4))(*(a5 + 1));
      }
    }

    BOMFSObjectFree(v13);
    return 0;
  }

  return v13;
}

void *BOMFSObjectCopy(__int128 *a1)
{
  v2 = BOMFSObjectNewWithSys(*a1, *(a1 + 20));
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = a1[2];
  v5 = *a1;
  *(v2 + 1) = a1[1];
  *(v2 + 2) = v4;
  *v2 = v5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[6];
  *(v2 + 5) = a1[5];
  *(v2 + 6) = v8;
  *(v2 + 3) = v6;
  *(v2 + 4) = v7;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  *(v2 + 20) = *(a1 + 20);
  *(v2 + 8) = v10;
  *(v2 + 9) = v11;
  *(v2 + 7) = v9;
  v2[4] = 0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v12 = *(a1 + 9);
  if (v12)
  {
    v13 = strlen(v12);
    v14 = BOM_malloc(v13 + 1);
    v3[9] = v14;
    if (!v14)
    {
      goto LABEL_16;
    }

    strlcpy(v14, *(a1 + 9), v13 + 1);
  }

  v15 = *(a1 + 10);
  if (v15)
  {
    v16 = strlen(v15);
    v17 = BOM_malloc(v16 + 1);
    v3[10] = v17;
    if (!v17)
    {
      goto LABEL_16;
    }

    strlcpy(v17, *(a1 + 10), v16 + 1);
  }

  if (BOMFSOArchInfoCopy(a1, v3) || BOMFSOTypeInfoCopy(a1, v3))
  {
    return 0;
  }

  if (*(a1 + 15))
  {
    v18 = BOM_malloc(*(a1 + 16));
    v3[15] = v18;
    if (v18)
    {
      memmove(v18, *(a1 + 15), *(a1 + 16));
      goto LABEL_13;
    }

LABEL_16:
    v22 = v3[9];
    if (v22)
    {
      free(v22);
    }

    v23 = v3[10];
    if (v23)
    {
      free(v23);
    }

    v24 = v3[15];
    if (v24)
    {
      free(v24);
    }

    v25 = v3[18];
    if (v25)
    {
      free(v25);
    }

    free(v3);
    return 0;
  }

LABEL_13:
  v19 = *(a1 + 18);
  if (v19)
  {
    v20 = strlen(v19);
    v21 = BOM_malloc(v20 + 1);
    v3[18] = v21;
    if (v21)
    {
      strlcpy(v21, *(a1 + 18), v20 + 1);
      *(a1 + 152) = 1;
      return v3;
    }

    goto LABEL_16;
  }

  return v3;
}

_DWORD *BOMFSObjectNewFromPathDeferredWithSys(uint64_t a1, char *a2, __int16 a3, const char *a4, int a5, void *a6)
{
  v12 = BOMFSObjectTypeForMode(*(a1 + 4));
  v13 = BOMFSObjectNewWithSys(v12, a6);
  if (v13)
  {
    v14 = strlen(a2);
    v15 = BOM_malloc(v14 + 1);
    *(v13 + 9) = v15;
    if (v15)
    {
      memmove(v15, a2, v14 + 1);
      v16 = strrchr(a2, 47);
      v17 = a2;
      if (v16)
      {
        if (v16[1])
        {
          v17 = v16 + 1;
        }

        else
        {
          v17 = v16;
        }
      }

      v18 = strlen(v17);
      v19 = BOM_malloc(v18 + 1);
      *(v13 + 10) = v19;
      if (v19)
      {
        memmove(v19, v17, v18 + 1);
        *(v13 + 20) = a3;
        if (a5)
        {
          v20 = strlen(a4);
          v21 = BOM_malloc(v20 + 1);
          *(v13 + 18) = v21;
          memmove(v21, a4, v20 + 1);
          *(v13 + 152) = 1;
          if ((a3 & 1) == 0)
          {
LABEL_10:
            *(v13 + 68) = 0;
            return v13;
          }
        }

        else
        {
          *(v13 + 18) = a4;
          if ((a3 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v13 + 21) = *(a1 + 4);
        *(v13 + 11) = *(a1 + 16);
        v24 = *(a1 + 96);
        *(v13 + 7) = *(a1 + 48);
        *(v13 + 8) = v24;
        BOMFSOTypeInfoInitializeDeferred(v13, a1, a2, 1u);
        *(v13 + 68) = 1;
        return v13;
      }

      v22 = *(v13 + 9);
      if (v22)
      {
        free(v22);
      }
    }

    v23 = *(v13 + 10);
    if (v23)
    {
      free(v23);
    }

    free(v13);
    return 0;
  }

  return v13;
}

_DWORD *BOMFSObjectNewFromPathStringWithSys(const __CFString *a1, __int16 a2, unsigned int (**a3)(void, char *, __int128 *))
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v7 = 0;
LABEL_5:
    v9 = BOMFSObjectNewFromPathWithSys(CStringPtr, a2, a3);
    goto LABEL_6;
  }

  v7 = BOM_malloc(0x2800uLL);
  CString = CFStringGetCString(a1, v7, 10240, 0x8000100u);
  v9 = 0;
  if (v7)
  {
    v10 = CString;
    CStringPtr = v7;
    if (v10)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  if (v7)
  {
    free(v7);
  }

  return v9;
}

uint64_t BOMFSObjectPathName(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t BOMFSObjectShortName(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

CFStringRef BOMFSObjectPathNameString(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], result[2].info, 0x8000100u);
  }

  return result;
}

CFStringRef BOMFSObjectShortNameString(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], result[2].data, 0x8000100u);
  }

  return result;
}

uint64_t BOMFSObjectMode(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 42);
  }

  return result;
}

uint64_t _loadStatInfo(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 136))
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  snprintf(__str, 0x401uLL, "%s/%s", *(a1 + 144), *(a1 + 72));
  if ((*(*(a1 + 160) + 96))(*(*(a1 + 160) + 8), __str, &v4))
  {
    fprintf(*MEMORY[0x277D85DF8], "stat error for '%s'\n", __str);
    return 1;
  }

  else
  {
    *(a1 + 42) = WORD2(v4);
    *(a1 + 44) = v5;
    v3 = v10;
    *(a1 + 56) = v7;
    *(a1 + 64) = v3;
    BOMFSOTypeInfoInitializeDeferred(a1, &v4, __str, 1u);
    result = 0;
    *(a1 + 136) |= 1u;
  }

  return result;
}

uint64_t BOMFSObjectUserID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 44);
  }

  return result;
}

uint64_t BOMFSObjectGroupID(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 48);
  }

  return result;
}

uint64_t BOMFSObjectModTime(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 56);
  }

  return result;
}

uint64_t BOMFSObjectSize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144))
    {
      if ((*(result + 136) & 1) == 0)
      {
        _loadStatInfo(result);
      }
    }

    return *(v1 + 64);
  }

  return result;
}

uint64_t BOMFSObjectPathID(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t BOMFSObjectSetPathID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 4) = a2;
  }

  return result;
}

uint64_t BOMFSObjectParentPathID(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t BOMFSObjectSetParentPathID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void BOMFSObjectSetPathName(uint64_t a1, char *__s, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      free(v6);
    }

    if (__s && a3)
    {
      v7 = strlen(__s);
      v8 = BOM_malloc(v7 + 1);
      *(a1 + 72) = v8;

      memmove(v8, __s, v7 + 1);
    }

    else
    {
      *(a1 + 72) = __s;
    }
  }
}

void BOMFSObjectSetShortName(uint64_t a1, char *__s, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      free(v6);
    }

    if (__s && a3)
    {
      v7 = strlen(__s);
      v8 = BOM_malloc(v7 + 1);
      *(a1 + 80) = v8;

      memmove(v8, __s, v7 + 1);
    }

    else
    {
      *(a1 + 80) = __s;
    }
  }
}

uint64_t BOMFSObjectSetFlags(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetMode(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 42) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetUserID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 44) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetGroupID(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 48) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetModTime(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 56) = a2;
  }

  return result;
}

uint64_t BOMFSObjectSetSize(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 64) = a2;
  }

  return result;
}

uint64_t BOMFSObjectOpaqueData(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t BOMFSObjectOpaqueDataSize(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t BOMFSObjectSetOpaqueData(uint64_t a1, const void *a2, size_t a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  v9 = (a1 + 120);
  v8 = *(a1 + 120);
  if (v8)
  {
    free(v8);
  }

  v10 = *(a1 + 40);
  if (a2 && a3)
  {
    *(a1 + 40) = v10 | 0x10;
    *(a1 + 128) = a3;
    if (a4)
    {
      v11 = BOM_malloc(a3);
      *v9 = v11;
      if (v11)
      {
        memmove(v11, a2, a3);
        return 0;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      result = 0;
      *v9 = a2;
    }
  }

  else
  {
    result = 0;
    *(a1 + 40) = v10 & 0xFFEF;
    *v9 = 0;
    v9[1] = 0;
  }

  return result;
}

uint64_t BOMFSObjectBlockID(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t BOMFSObjectSetBlockID(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 12) = a2;
    }
  }

  return result;
}

uint64_t BOMFSObjectSetVisitOrder(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 156) = a2;
  }

  return result;
}

uint64_t BOMFSObjectChecksum(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 2) == 0)
    {
      _loadCksumInfo(result);
    }

    return BOMFSOTypeInfoChecksum(v1);
  }

  return result;
}

uint64_t _loadCksumInfo(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(result + 136) & 2) != 0)
  {
    return result;
  }

  v1 = result;
  result = _loadStatInfo(result);
  if (result)
  {
    return result;
  }

  if (*v1 != 1 || (*(v1 + 40) & 2) == 0)
  {
    goto LABEL_10;
  }

  snprintf(__str, 0x401uLL, "%s/%s", *(v1 + 144), *(v1 + 72));
  v2 = (*(*(v1 + 160) + 184))(*(*(v1 + 160) + 8), __str, 4);
  v3 = *(v1 + 160);
  v4 = *(v3 + 8);
  if (v2 == -1)
  {
    (*(v3 + 200))(v4, __str, *(v1 + 42) & 0xFFF | 0x124u);
    v5 = (*(*(v1 + 160) + 16))(*(*(v1 + 160) + 8), __str, 0, 0);
    result = (*(*(v1 + 160) + 200))(*(*(v1 + 160) + 8), __str, *(v1 + 42) & 0xFFF);
  }

  else
  {
    result = (*(v3 + 16))(v4, __str, 0, 0);
    v5 = result;
  }

  if (v5 != -1)
  {
    *(v1 + 16) = v5;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
LABEL_10:
    result = BOMFSOTypeInfoInitializeDeferred(v1, 0, __str, 2u);
    *(v1 + 136) |= 2u;
    if (*v1 == 1 && (*(v1 + 40) & 2) != 0)
    {
      result = (*(*(v1 + 160) + 32))(*(*(v1 + 160) + 8), *(v1 + 16));
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
    }
  }

  return result;
}

uint64_t BOMFSObjectSymlinkTarget(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 1) == 0)
    {
      _loadStatInfo(result);
    }

    return BOMFSOTypeInfoSymlinkTarget(v1);
  }

  return result;
}

CFStringRef BOMFSObjectSymlinkTargetString(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    if (result[4].data && (result[4].info & 1) == 0)
    {
      _loadStatInfo(result);
    }

    return BOMFSOTypeInfoSymlinkTargetString(v1);
  }

  return result;
}

_DWORD *BOMFSObjectSetSymlinkTarget(_DWORD *result, char *a2, int a3)
{
  if (result)
  {
    *(result + 20) |= 1u;
    return BOMFSOTypeInfoSetSymlinkTarget(result, a2, a3);
  }

  return result;
}

uint64_t BOMFSObjectDeviceID(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 144) && (*(a1 + 136) & 1) == 0)
  {
    _loadStatInfo(a1);
  }

  return BOMFSOTypeInfoDeviceID(a1);
}

_DWORD *BOMFSObjectSetChecksum(_DWORD *result, int a2)
{
  if (result)
  {
    return BOMFSOTypeInfoSetChecksum(result, a2);
  }

  return result;
}

_DWORD *BOMFSObjectSetDeviceID(_DWORD *result, int a2)
{
  if (result)
  {
    *(result + 20) |= 1u;
    return BOMFSOTypeInfoSetDeviceID(result, a2);
  }

  return result;
}

const char *BOMFSObjectSummary(const char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    v7 = result;
    if (*(result + 18))
    {
      _loadCksumInfo(result);
      _loadArchInfo(v7);
    }

    return BOMFSOTypeInfoSummary(v7, v6, v5, v4);
  }

  return result;
}

uint64_t _loadArchInfo(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(result + 136) & 4) != 0)
  {
    return result;
  }

  v1 = result;
  result = _loadStatInfo(result);
  if (result)
  {
    return result;
  }

  snprintf(__str, 0x401uLL, "%s/%s", *(v1 + 144), *(v1 + 72));
  if (*v1 == 1 && (*(v1 + 40) & 4) != 0)
  {
    v2 = (*(*(v1 + 160) + 184))(*(*(v1 + 160) + 8), __str, 4);
    v3 = *(v1 + 160);
    v4 = *(v3 + 8);
    if (v2 == -1)
    {
      (*(v3 + 200))(v4, __str, *(v1 + 42) & 0xFFF | 0x124u);
      v5 = (*(*(v1 + 160) + 16))(*(*(v1 + 160) + 8), __str, 0, 0);
      result = (*(*(v1 + 160) + 200))(*(*(v1 + 160) + 8), __str, *(v1 + 42) & 0xFFF);
    }

    else
    {
      result = (*(v3 + 16))(v4, __str, 0, 0);
      v5 = result;
    }

    if (v5 == -1)
    {
      return result;
    }

    *(v1 + 16) = v5;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  result = BOMFSOArchInfoInitialize();
  if (*v1 == 1 && (*(v1 + 40) & 4) != 0)
  {
    result = (*(*(v1 + 160) + 32))(*(*(v1 + 160) + 8), *(v1 + 16));
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  *(v1 + 136) |= 4u;
  return result;
}

uint64_t BOMFSObjectSummaryWithFormat(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = a3;
  if (*(a1 + 144))
  {
    _loadCksumInfo(a1);
    _loadArchInfo(a1);
  }

  return BOMFSOTypeInfoSummaryWithFormat(a1, a2, v4);
}

const char *BOMFSObjectParseSummary(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = BomSys_default();

    return BOMFSOTypeInfoParseSummaryWithSys(v1, v2);
  }

  return result;
}

const char *BOMFSObjectParseSummaryWithSys(const char *result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      a2 = BomSys_default();
    }

    return BOMFSOTypeInfoParseSummaryWithSys(v2, a2);
  }

  return result;
}

uint64_t BOMFSObjectIsBinaryObject(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    if (*v1 == 1)
    {
      v2 = *(v1 + 40);
      if (v2 > 0xFFF)
      {
        return (v2 >> 2) & 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMFSObjectContainsArchitecture(uint64_t a1, int a2)
{
  if (*(a1 + 144) && (*(a1 + 136) & 4) == 0)
  {
    _loadArchInfo(a1);
  }

  return BOMFSOArchInfoContainsArchitecture(a1, a2);
}

uint64_t BOMFSObjectArchCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoArchCount(v1);
  }

  return result;
}

uint64_t BOMFSObjectGetArch(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoGetArch(v3, a2);
  }

  return result;
}

uint64_t BOMFSObjectGetArchSubtype(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoGetArchSubtype(v3, a2);
  }

  return result;
}

uint64_t BOMFSObjectGetArchSize(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 144) && (*(result + 136) & 4) == 0)
    {
      _loadArchInfo(result);
    }

    return BOMFSOArchInfoGetArchSize(v3, a2);
  }

  return result;
}

uint64_t BOMFSObjectThinKeepingArchs(uint64_t a1, int *a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      if (*(a1 + 144) && (*(a1 + 136) & 4) == 0)
      {
        _loadArchInfo(a1);
      }

      return BOMFSOArchInfoThinKeepingArchs(a1, a2, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BOMFSObjectThinKeepingArchsAndSubArchs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      if (*(a1 + 144) && (*(a1 + 136) & 4) == 0)
      {
        _loadArchInfo(a1);
      }

      return BOMFSOArchInfoThinKeepingArchsAndSubArchs(a1, a2, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BOMFSObjectSetArchInfo(uint64_t a1, int a2, uint64_t a3)
{
  if (a1)
  {
    BOMFSOArchInfoSet(a1, a2, a3);
  }
}

unsigned __int8 *BOMFSObjectTypeFromRawData(unsigned __int8 *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void capture_error(void *a1, uint64_t a2, int a3, uint64_t a4, const char *a5, ...)
{
  va_start(va, a5);
  v19 = 0;
  if (a1 && !*a1)
  {
    v20 = 0;
    v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x105004057D267B0uLL);
    if (v10)
    {
      v11 = v10;
      va_copy(v20, va);
      if (vasprintf(&v19, a5, va) < 0)
      {
        v16 = *MEMORY[0x277D85DF8];
        v17 = __error();
        v18 = strerror(*v17);
        fprintf(v16, "Could not create error message: %s\n", v18);
      }

      else
      {
        v12 = v19;
        if (v19)
        {
          *v11 = a2;
          v11[2] = a3;
          *(v11 + 2) = "Oct 10 2025";
          *(v11 + 3) = a4;
          *(v11 + 4) = v12;
          v11[10] = *__error();
          *a1 = v11;
          return;
        }

        fwrite("Error message is NULL\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      free(v11);
    }

    else
    {
      v13 = *MEMORY[0x277D85DF8];
      v14 = __error();
      v15 = strerror(*v14);
      fprintf(v13, "Could not allocate error state: %s\n", v15);
    }
  }
}

void release_error(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;

    free(a1);
  }
}

char *BOMCopierSourceEntryTypeString(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return 0;
  }

  else
  {
    return off_278D13578[a1];
  }
}

_DWORD *BOMCopierSourceEntryNew(int a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x150uLL, 0x1030040944BAE5BuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = a1;
    if (once != -1)
    {
      BOMCopierSourceEntryNew_cold_1();
    }

    v6 = global_groupID;
    v5[21] = global_userID;
    v5[22] = v6;
    *(v5 + 46) = -32348;
    v13.tv_sec = 0;
    *&v13.tv_usec = 0;
    gettimeofday(&v13, 0);
    tv_sec = v13.tv_sec;
    v8 = 1000 * v13.tv_usec;
    *(v5 + 13) = v13.tv_sec;
    *(v5 + 14) = v8;
    *(v5 + 15) = tv_sec;
    *(v5 + 16) = v8;
    *(v5 + 17) = tv_sec;
    *(v5 + 18) = v8;
    v5[81] = -1;
  }

  else
  {
    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    BOMCopierErrorCapture(a2, v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 514, "BOMCopierSourceEntryNew", "Could not allocate %ld bytes for BOMCopierSourceEntry: %s", 336, v11);
  }

  return v5;
}

uint64_t __BOMCopierSourceEntryNew_block_invoke()
{
  global_userID = geteuid();
  result = getegid();
  global_groupID = result;
  return result;
}

_DWORD *BOMCopierSourceEntryNewFromPath(char *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 557, "BOMCopierSourceEntryNewFromPath", "Invalid path");
    return 0;
  }

  v4 = a2;
  memset(&v24, 0, sizeof(v24));
  if (lstat(a1, &v24))
  {
    v6 = *__error();
    v7 = __error();
    strerror(*v7);
    BOMCopierErrorCapture(a3, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 572, "BOMCopierSourceEntryNewFromPath", "Could not stat %s: %s");
    return 0;
  }

  v10 = mode_to_source_entry_type(v24.st_mode);
  v11 = BOMCopierSourceEntryNew(v10, a3);
  v8 = v11;
  if (!v11)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 581, "BOMCopierSourceEntryNewFromPath", "Could not create BOMCopierSourceEntry for type %d", v10);
    return v8;
  }

  *v11 = 1;
  v12 = resolve_path(a1, v10 == 9, a3);
  *(v8 + 16) = v12;
  if (!v12)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 593, "BOMCopierSourceEntryNewFromPath", "Could not resolve %s");
    goto LABEL_29;
  }

  v13 = v12;
  v14 = strdup(a1);
  *(v8 + 24) = v14;
  if (!v14)
  {
    v19 = *__error();
    v20 = __error();
    strerror(*v20);
    BOMCopierErrorCapture(a3, v19, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 602, "BOMCopierSourceEntryNewFromPath", "Could not duplicate path %s: %s");
    goto LABEL_29;
  }

  if (v10 == 9)
  {
    bzero(__s1, 0x400uLL);
    v15 = readlink(v13, __s1, 0x400uLL);
    if (v15 == -1)
    {
      if (*__error() != 13)
      {
        v22 = *__error();
        v23 = __error();
        strerror(*v23);
        BOMCopierErrorCapture(a3, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 620, "BOMCopierSourceEntryNewFromPath", "Could not readlink %s: %s\n");
        goto LABEL_29;
      }
    }

    else if (v15 >= 1)
    {
      __s1[v15] = 0;
      v16 = strdup(__s1);
      *(v8 + 48) = v16;
      if (!v16)
      {
        v17 = *__error();
        v18 = __error();
        strerror(*v18);
        BOMCopierErrorCapture(a3, v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 633, "BOMCopierSourceEntryNewFromPath", "Could not duplicate %s: %s\n");
LABEL_29:
        BOMCopierSourceEntryFree(v8);
        return 0;
      }
    }
  }

  *(v8 + 84) = *&v24.st_uid;
  st_mtimespec = v24.st_mtimespec;
  *(v8 + 104) = v24.st_atimespec;
  *(v8 + 64) = v24.st_dev;
  *(v8 + 72) = v24.st_ino;
  *(v8 + 80) = v24.st_nlink;
  *(v8 + 92) = v24.st_mode;
  *(v8 + 96) = v24.st_size;
  *(v8 + 120) = st_mtimespec;
  *(v8 + 136) = v24.st_ctimespec;
  *(v8 + 152) = v24.st_flags;
  if ((v4 & 2) != 0 && v10 == 8 && parse_regular_file(v8, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 672, "BOMCopierSourceEntryNewFromPath", "Could not parse the regular file");
    goto LABEL_29;
  }

  if (capture_extended_attributes(v8, v4, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 686, "BOMCopierSourceEntryNewFromPath", "Could not capture extended attributes");
    goto LABEL_29;
  }

  if ((v4 & 0x20) != 0 && capture_acl(v8, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 700, "BOMCopierSourceEntryNewFromPath", "Could not capture access control list");
    goto LABEL_29;
  }

  return v8;
}

uint64_t mode_to_source_entry_type(int a1)
{
  if ((a1 - 4096) >> 13 > 6)
  {
    return 0;
  }

  else
  {
    return dword_241C78F48[(a1 - 4096) >> 12];
  }
}

char *resolve_path(char *a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    result = realpath_DARWIN_EXTSN(a1, 0);
    if (result)
    {
      return result;
    }

    v8 = *__error();
    v9 = __error();
    strerror(*v9);
    BOMCopierErrorCapture(a3, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5372, "resolve_path", "Could not realpath %s: %s\n");
    return 0;
  }

  if (dirname_r(a1, v22) != v22)
  {
    v5 = *__error();
    v6 = __error();
    strerror(*v6);
    BOMCopierErrorCapture(a3, v5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5386, "resolve_path", "Could not dirname %s: %s\n");
    return 0;
  }

  v10 = realpath_DARWIN_EXTSN(v22, 0);
  if (!v10)
  {
    v15 = *__error();
    __error();
    v16 = __error();
    strerror(*v16);
    BOMCopierErrorCapture(a3, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5393, "resolve_path", "Could not realpath %s %d: %s\n", v22);
    return 0;
  }

  v11 = v10;
  if (basename_r(a1, v21) != v21)
  {
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    BOMCopierErrorCapture(a3, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5400, "resolve_path", "Could not basename %s: %s\n", a1, v14);
    free(v11);
    return 0;
  }

  v20 = 0;
  v17 = asprintf(&v20, "%s/%s", v11, v21);
  free(v11);
  if (v17 < 0 || (result = v20) == 0)
  {
    v18 = *__error();
    v19 = __error();
    strerror(*v19);
    BOMCopierErrorCapture(a3, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5413, "resolve_path", "Could not construct resolved path from %s + %s: %s\n", v22);
    return 0;
  }

  return result;
}

uint64_t BOMCopierSourceEntryFree(unsigned int *a1)
{
  if (!a1)
  {
    BOMCopierErrorCapture(0, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1739, "BOMCopierSourceEntryFree", "Invalid source_entry");
    return 1;
  }

  v2 = a1[81];
  if (v2 != -1)
  {
    close(v2);
  }

  if (*(a1 + 320) == 1)
  {
    if (!*(a1 + 2))
    {
      v6 = 1;
      fwrite("Could not get actual path", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      return v6;
    }

    v3 = a1[1];
    if (v3 - 8 >= 3)
    {
      if (v3 == 6 && rmdir(*(a1 + 2)))
      {
        v7 = *MEMORY[0x277D85DF8];
        v8 = __error();
        strerror(*v8);
        fprintf(v7, "Could not rmdir %s: %s");
        return 1;
      }
    }

    else if (unlink(*(a1 + 2)))
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = __error();
      strerror(*v5);
      fprintf(v4, "Could not unlink %s: %s");
      return 1;
    }
  }

  v9 = *(a1 + 5);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 4);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 3);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 2);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 6);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a1 + 7);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a1 + 25);
  if (v15)
  {
    free(v15);
  }

  v16 = *(a1 + 21);
  if (v16)
  {
    free(v16);
  }

  v17 = *(a1 + 30);
  if (v17)
  {
    free(v17);
  }

  if (a1[52])
  {
    v18 = 0;
    v19 = 0;
    do
    {
      free(*(*(a1 + 27) + v18));
      v20 = *(*(a1 + 27) + v18 + 16);
      if (v20)
      {
        free(v20);
      }

      ++v19;
      v18 += 24;
    }

    while (v19 < a1[52]);
  }

  v21 = *(a1 + 27);
  if (v21)
  {
    free(v21);
  }

  v22 = *(a1 + 28);
  if (v22)
  {
    free(v22);
  }

  v23 = *(a1 + 39);
  if (v23)
  {
    free(v23);
  }

  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  free(a1);
  return 0;
}

uint64_t parse_regular_file(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (*(a1 + 156))
    {
      v4 = 1;
      v5 = 4096;
      goto LABEL_10;
    }
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  Size = BOMCopierSourceEntryGetSize(a1);
  if (Size >= 0x1000)
  {
    v5 = 4096;
  }

  else
  {
    v5 = Size;
  }

  if (!Size)
  {
    return 0;
  }

  v4 = 0;
LABEL_10:
  v7 = malloc_type_malloc(0x1000uLL, 0xA8685CB7uLL);
  if (!v7)
  {
    v12 = *__error();
    v13 = __error();
    v14 = strerror(*v13);
    BOMCopierErrorCapture(a2, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4014, "parse_regular_file", "Could not allocate %lld bytes for parse buffer: %s", 4096, v14);
    return 1;
  }

  v8 = v7;
  v9 = BOMCopierSourceEntryRead(a1, v7, v5, a2);
  v10 = v9;
  if (v4)
  {
    if (!v9)
    {
      free(v8);
      return 0;
    }

    if (v9 == -1)
    {
      BOMCopierSourceEntryGetPath(a1);
      v11 = 1;
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4029, "parse_regular_file", "Could not read %lu bytes from %s");
LABEL_24:
      free(v8);
      return v11;
    }
  }

  else if (v9 != v5)
  {
    BOMCopierSourceEntryGetPath(a1);
    v11 = 1;
    BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4045, "parse_regular_file", "Could not read %lu bytes from %s");
    goto LABEL_24;
  }

  *(a1 + 160) = 4096;
  *(a1 + 168) = v8;
  *(a1 + 176) = v9;
  if (v9 < 0x1C)
  {
    return 0;
  }

  v11 = 0;
  v15 = *v8;
  if (*v8 <= -822415875)
  {
    v16 = 3;
    if (v15 > -889275715)
    {
      if (v15 != -889275714)
      {
        v17 = -889275713;
        goto LABEL_33;
      }
    }

    else if (v15 != -1095041334)
    {
      v17 = -1078264118;
LABEL_33:
      if (v15 != v17)
      {
        return v11;
      }

      v16 = 4;
    }

    v21 = *v8;
    count = *v8;
    if ((v15 & 0xFEFFFFFF) == 0xBEBAFECA)
    {
      v22 = BOMHostByteOrder();
      BOMSwapFatHeader(&count, v22);
      LODWORD(v23) = HIDWORD(count);
    }

    else
    {
      v23 = HIDWORD(v21);
    }

    v27 = v23;
    v28 = malloc_type_calloc(v23, 0x20uLL, 0x1000040E0EAB150uLL);
    if (!v28)
    {
      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      BOMCopierErrorCapture(a2, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4245, "parse_regular_file", "Could not allocate BOMCopierArchRecord: %s", v33);
      v11 = 1;
      goto LABEL_24;
    }

    v25 = v28;
    if (v15 == -1078264118 || v15 == -889275713)
    {
      v30 = 32;
    }

    else
    {
      v30 = 20;
    }

    if (v10 < v30 * (v23 + 1) + 8)
    {
      v11 = 0;
      v8 = v28;
      goto LABEL_24;
    }

    v46 = v16;
    if (v23)
    {
      v34 = v8 + 8;
      v35 = v28;
      do
      {
        if (v15 == -889275714 || v15 == -1095041334)
        {
          memset(v48, 0, 20);
          __memcpy_chk();
          if (v15 == -1095041334)
          {
            v37 = BOMHostByteOrder();
            BOMSwapFatArch(v48, 1u, v37);
          }

          *v35 = v48[0].i64[0];
          *&v38 = v48[0].u32[2];
          *(&v38 + 1) = v48[0].u32[3];
          *(v35 + 1) = v38;
          v39 = v48[1].u32[0];
        }

        else
        {
          memset(v48, 0, sizeof(v48));
          __memcpy_chk();
          if (v15 == -1078264118)
          {
            v40 = BOMHostByteOrder();
            BOMSwapFatArch64(v48, 1u, v40);
          }

          *v35 = v48[0].i64[0];
          *(v35 + 1) = *(v48 + 8);
          v39 = v48[1].u32[2];
        }

        v35[3] = v39;
        v34 = (v34 + v30);
        v35 += 4;
        --v27;
      }

      while (v27);
    }

    v19 = v46;
LABEL_77:
    v11 = 0;
    *(a1 + 192) = v19;
    *(a1 + 196) = v23;
    *(a1 + 200) = v25;
    return v11;
  }

  v19 = 1;
  if (v15 > -17958195)
  {
    if (v15 != -17958194)
    {
      v20 = -17958193;
LABEL_39:
      if (v15 != v20)
      {
        return v11;
      }

      if (v9 >= 0x20)
      {
        v19 = 2;
        goto LABEL_42;
      }

      return 0;
    }
  }

  else if (v15 != -822415874)
  {
    v20 = -805638658;
    goto LABEL_39;
  }

LABEL_42:
  v24 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v24)
  {
    v25 = v24;
    if (v15 == -17958194 || v15 == -822415874)
    {
      v48[0] = *v8;
      *(v48 + 12) = *(v8 + 12);
      if (v15 == -822415874)
      {
        v26 = BOMHostByteOrder();
        BOMSwapMachHeader(v48, v26);
      }
    }

    else
    {
      v44 = *(v8 + 1);
      v48[0] = *v8;
      v48[1] = v44;
      if (v15 == -805638658)
      {
        v45 = BOMHostByteOrder();
        BOMSwapMachHeader64(v48, v45);
      }
    }

    *v25 = *(v48[0].i64 + 4);
    v25[1] = 0;
    v25[2] = *(a1 + 96);
    v25[3] = 0;
    LODWORD(v23) = 1;
    goto LABEL_77;
  }

  v41 = *__error();
  v42 = __error();
  v43 = strerror(*v42);
  BOMCopierErrorCapture(a2, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4159, "parse_regular_file", "Could not allocate BOMCopierArchRecord: %s", v43);
  free(v8);
  return 1;
}

ssize_t capture_extended_attributes(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 0x1C) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v6 = 0;
  }

  if ((a2 & 0x10) != 0)
  {
    v8 = 33;
  }

  else
  {
    v8 = 1;
  }

  result = listxattr(v6, 0, 0, v8);
  if (result)
  {
    v9 = result;
    if (result == -1)
    {
      if (*__error() == 1 || *__error() == 45 || *__error() == 13)
      {
        return 0;
      }

      v10 = *__error();
      v11 = __error();
      strerror(*v11);
      BOMCopierErrorCapture(a3, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4419, "capture_extended_attributes", "Could not listxattr %s: %s");
      return 1;
    }

    v12 = malloc_type_malloc(result, 0xDBEC89DBuLL);
    if (v12)
    {
      v13 = v12;
      if (listxattr(v6, v12, v9, v8) == v9)
      {
        LODWORD(v14) = 0;
        v15 = &v13[v9];
        v16 = v13;
        do
        {
          v14 = (v14 + 1);
          v16 += strlen(v16) + 1;
        }

        while (v16 < v15);
        __base = malloc_type_calloc(v14, 0x18uLL, 0x10100406AB5462FuLL);
        if (__base)
        {
          v17 = 0;
          v18 = v13;
          v19 = 0;
          v36 = v18;
          while (1)
          {
            if ((a2 & 4) != 0)
            {
              if ((a2 & 8) != 0)
              {
                goto LABEL_30;
              }

              if (string_compare(v18, "com.apple.FinderInfo"))
              {
                v20 = string_compare(v18, "com.apple.ResourceFork") != 0;
                if ((a2 & 0x10) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_31;
              }
            }

            else if ((a2 & 8) != 0)
            {
              if (string_compare(v18, "com.apple.FinderInfo"))
              {
                v20 = string_compare(v18, "com.apple.ResourceFork") == 0;
                if ((a2 & 0x10) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_31;
              }

LABEL_30:
              v20 = 1;
              if ((a2 & 0x10) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_31;
            }

            v20 = 0;
            if ((a2 & 0x10) == 0)
            {
LABEL_35:
              if (v20)
              {
                goto LABEL_36;
              }

              goto LABEL_38;
            }

LABEL_31:
            if (!string_compare(v18, "com.apple.decmpfs") || string_compare(v18, "com.apple.ResourceFork") == 0 || v20)
            {
LABEL_36:
              v21 = strdup(v18);
              __base[3 * v19] = v21;
              if (!v21)
              {
                v32 = *__error();
                v33 = __error();
                strerror(*v33);
                BOMCopierErrorCapture(a3, v32, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4559, "capture_extended_attributes", "Could not duplicate %s: %s");
LABEL_53:
                free(__base);
                v31 = v36;
                goto LABEL_54;
              }

              ++v17;
              ++v19;
            }

LABEL_38:
            v18 += strlen(v18) + 1;
            if (v18 >= v15)
            {
              if (v17)
              {
                v22 = v17;
                v23 = __base + 1;
                v24 = v17;
                while (1)
                {
                  v25 = getxattr(v6, *(v23 - 1), 0, 0, 0, v8);
                  if (v25 == -1)
                  {
                    break;
                  }

                  *v23 = v25;
                  v23 += 3;
                  if (!--v24)
                  {
                    goto LABEL_50;
                  }
                }

                v34 = *__error();
                v35 = __error();
                strerror(*v35);
                BOMCopierErrorCapture(a3, v34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4592, "capture_extended_attributes", "Could not getxattr size for %s: %s");
                goto LABEL_53;
              }

              v22 = 0;
LABEL_50:
              qsort(__base, v22, 0x18uLL, xattr_compare);
              *(a1 + 208) = v17;
              *(a1 + 216) = __base;
              free(v36);
              return 0;
            }
          }
        }

        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        BOMCopierErrorCapture(a3, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4478, "capture_extended_attributes", "Could not allocate extended attribute list: %s");
      }

      else
      {
        v28 = *__error();
        BOMCopierErrorCapture(a3, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4444, "capture_extended_attributes", "%ld does not match %ld\n");
      }

      v31 = v13;
LABEL_54:
      free(v31);
    }

    else
    {
      v26 = *__error();
      v27 = __error();
      strerror(*v27);
      BOMCopierErrorCapture(a3, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4437, "capture_extended_attributes", "Could not allocate %ld bytes for name buffer: %s\n");
    }

    return 1;
  }

  return result;
}

uint64_t capture_acl(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v4 = 0;
  }

  if (*(a1 + 4) == 9)
  {
    link_np = acl_get_link_np(v4, ACL_TYPE_EXTENDED);
  }

  else
  {
    link_np = acl_get_file(v4, ACL_TYPE_EXTENDED);
  }

  v6 = link_np;
  if (link_np)
  {
    len_p = 0;
    v7 = acl_to_text(link_np, &len_p);
    if (v7)
    {
      v8 = v7;
      acl_free(v6);
      result = 0;
      v10 = len_p;
      *(a1 + 224) = v8;
      *(a1 + 232) = v10;
      return result;
    }

    v11 = *__error();
    v12 = __error();
    strerror(*v12);
    BOMCopierErrorCapture(a2, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4692, "capture_acl", "Could not convert ACL to text for %s: %s");
  }

  else
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v13 = *__error();
    v14 = __error();
    strerror(*v14);
    BOMCopierErrorCapture(a2, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4676, "capture_acl", "Could not retrieve ACL for %s: %s");
  }

  return 1;
}

_DWORD *BOMCopierSourceEntryNewFromResourceFork(const char *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = realpath_DARWIN_EXTSN(a1, 0);
    if (v4)
    {
      v5 = v4;
      v29 = 0;
      if (asprintf(&v29, "%s%s", v4, "/..namedfork/rsrc") < 0)
      {
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        BOMCopierErrorCapture(a2, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 753, "BOMCopierSourceEntryNewFromResourceFork", "Could not constructed resolved rsrc path: %s", v14);
        free(v5);
      }

      else
      {
        free(v5);
        memset(&v28, 0, sizeof(v28));
        if (lstat(v29, &v28))
        {
          v6 = *__error();
          v7 = __error();
          strerror(*v7);
          BOMCopierErrorCapture(a2, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 764, "BOMCopierSourceEntryNewFromResourceFork", "Could not stat %s: %s");
        }

        else
        {
          v15 = BOMCopierSourceEntryNew(8, a2);
          v10 = v15;
          if (!v15)
          {
            BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 771, "BOMCopierSourceEntryNewFromResourceFork", "Could not create BOMCopierSourceEntry for regular file");
            return v10;
          }

          *v15 = 2;
          *(v15 + 2) = v29;
          if (asprintf(v15 + 3, "%s%s", a1, "/..namedfork/rsrc") == -1 || !*(v10 + 3))
          {
            v18 = *__error();
            v19 = __error();
            strerror(*v19);
            BOMCopierErrorCapture(a2, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 785, "BOMCopierSourceEntryNewFromResourceFork", "Could not constructed entry rsrc path: %s");
          }

          else if (__s1 == dirname_r(a1, __s1))
          {
            v20 = strdup(__s1);
            *(v10 + 4) = v20;
            if (v20)
            {
              if (v30 == basename_r(a1, v30))
              {
                if (asprintf(v10 + 5, "%s%s", v30, "/..namedfork/rsrc") != -1 && *(v10 + 5))
                {
                  *(v10 + 21) = *&v28.st_uid;
                  st_mtimespec = v28.st_mtimespec;
                  *(v10 + 26) = v28.st_atimespec;
                  v10[16] = v28.st_dev;
                  *(v10 + 9) = v28.st_ino;
                  *(v10 + 40) = v28.st_nlink;
                  *(v10 + 46) = v28.st_mode;
                  *(v10 + 12) = v28.st_size;
                  *(v10 + 30) = st_mtimespec;
                  *(v10 + 34) = v28.st_ctimespec;
                  v10[38] = v28.st_flags;
                  return v10;
                }

                v26 = *__error();
                v27 = __error();
                strerror(*v27);
                BOMCopierErrorCapture(a2, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 813, "BOMCopierSourceEntryNewFromResourceFork", "Could not constructed entry rsrc name: %s");
              }

              else
              {
                v21 = *__error();
                v22 = __error();
                strerror(*v22);
                BOMCopierErrorCapture(a2, v21, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 806, "BOMCopierSourceEntryNewFromResourceFork", "Could not basename_r %s: %s");
              }
            }

            else
            {
              v23 = *__error();
              v24 = __error();
              strerror(*v24);
              BOMCopierErrorCapture(a2, v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 799, "BOMCopierSourceEntryNewFromResourceFork", "Could not duplicate %s: %s");
            }
          }

          else
          {
            v16 = *__error();
            v17 = __error();
            strerror(*v17);
            BOMCopierErrorCapture(a2, v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 792, "BOMCopierSourceEntryNewFromResourceFork", "Could not dirname_r %s: %s");
          }
        }
      }
    }

    else
    {
      v8 = *__error();
      __error();
      v9 = __error();
      strerror(*v9);
      BOMCopierErrorCapture(a2, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 745, "BOMCopierSourceEntryNewFromResourceFork", "Could not realpath %s %d: %s\n", a1);
    }
  }

  else
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 732, "BOMCopierSourceEntryNewFromResourceFork", "Invalid path");
  }

  return 0;
}

uint64_t BOMCopierSourceEntryNewFromFTSENT(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 850, "BOMCopierSourceEntryNewFromFTSENT", "Invalid filesystem_entry");
    return 0;
  }

  v6 = *(a1 + 88);
  if (v6 <= 4)
  {
    if (*(a1 + 88) > 2u)
    {
      if (v6 == 3)
      {
        v7 = mode_to_source_entry_type(*(*(a1 + 96) + 4));
        goto LABEL_25;
      }

      if (v6 == 4)
      {
        v7 = 2;
        goto LABEL_25;
      }
    }

    else
    {
      if (v6 == 1)
      {
        v7 = 6;
        goto LABEL_25;
      }

      if (v6 == 2)
      {
        v7 = 1;
        goto LABEL_25;
      }
    }
  }

  else if (*(a1 + 88) <= 7u)
  {
    if (v6 == 5)
    {
      v7 = 3;
      goto LABEL_25;
    }

    if (v6 == 6)
    {
      v7 = 13;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v6)
    {
      case 8u:
        v7 = 8;
        goto LABEL_25;
      case 0xCu:
        v7 = 9;
        goto LABEL_25;
      case 0xEu:
        v7 = 11;
        goto LABEL_25;
    }
  }

  v7 = 0;
LABEL_25:
  v8 = BOMCopierSourceEntryNew(v7, a3);
  v9 = v8;
  if (v8)
  {
    *v8 = 3;
    v10 = copy_string(*(a1 + 48), *(a1 + 64));
    *(v9 + 16) = v10;
    if (!v10)
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 877, "BOMCopierSourceEntryNewFromFTSENT", "Could not duplicate %s");
      goto LABEL_48;
    }

    v11 = copy_string(*(a1 + 48), *(a1 + 64));
    *(v9 + 24) = v11;
    if (!v11)
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 886, "BOMCopierSourceEntryNewFromFTSENT", "Could not duplicate %s");
      goto LABEL_48;
    }

    if (v7 == 9)
    {
      bzero(v20, 0x400uLL);
      v12 = readlink(*(a1 + 40), v20, 0x400uLL);
      if (v12 == -1)
      {
        v15 = *__error();
        v16 = __error();
        strerror(*v16);
        BOMCopierErrorCapture(a3, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 899, "BOMCopierSourceEntryNewFromFTSENT", "Could not readlink %s: %s\n");
        goto LABEL_48;
      }

      v20[v12] = 0;
      v13 = copy_string(v20, v12);
      *(v9 + 48) = v13;
      if (!v13)
      {
        v18 = __error();
        strerror(*v18);
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 909, "BOMCopierSourceEntryNewFromFTSENT", "Could not duplicate %s: %s\n");
        goto LABEL_48;
      }
    }

    v14 = *(a1 + 96);
    *(v9 + 64) = *v14;
    *(v9 + 72) = *(v14 + 8);
    *(v9 + 80) = *(v14 + 6);
    *(v9 + 92) = *(v14 + 4);
    *(v9 + 84) = *(v14 + 16);
    *(v9 + 96) = *(v14 + 96);
    *(v9 + 104) = *(v14 + 32);
    *(v9 + 120) = *(v14 + 48);
    *(v9 + 136) = *(v14 + 64);
    *(v9 + 152) = *(v14 + 116);
    if ((a2 & 1) != 0 && v7 == 8)
    {
      *(v9 + 321) = 1;
    }

    if ((a2 & 2) != 0 && v7 == 8 && parse_regular_file(v9, a3))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 961, "BOMCopierSourceEntryNewFromFTSENT", "Could not parse the regular file");
LABEL_48:
      BOMCopierSourceEntryFree(v9);
      return 0;
    }

    if (capture_extended_attributes(v9, a2, a3))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 975, "BOMCopierSourceEntryNewFromFTSENT", "Could not capture extended attributes");
      goto LABEL_48;
    }

    if ((a2 & 0x20) != 0)
    {
      v17 = capture_acl(v9, a3);
      if (v17)
      {
        BOMCopierErrorCapture(a3, v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 989, "BOMCopierSourceEntryNewFromFTSENT", "Could not capture access control list");
        goto LABEL_48;
      }
    }
  }

  else
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 865, "BOMCopierSourceEntryNewFromFTSENT", "Could not create BOMCopierSourceEntry from %d", v7);
  }

  return v9;
}

_BYTE *copy_string(const void *a1, size_t a2)
{
  v4 = a2 + 1;
  v5 = malloc_type_malloc(a2 + 1, 0x64BDC953uLL);
  v6 = v5;
  if (v5)
  {
    memcpy(v5, a1, a2);
    v6[a2] = 0;
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = __error();
    v9 = strerror(*v8);
    fprintf(v7, "Could not allocate copy buffer of %ld bytes: %s\n", v4, v9);
  }

  return v6;
}

uint64_t BOMCopierSourceEntryNewFromFSObject(const char *a1, uint64_t a2, __int16 a3, void *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1023, "BOMCopierSourceEntryNewFromFSObject", "Invalid source_path");
    return 0;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1029, "BOMCopierSourceEntryNewFromFSObject", "Invalid fso");
    return 0;
  }

  v8 = BOMFSObjectMode(a2);
  v9 = BOMFSObjectPathName(a2);
  if (!v9)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1047, "BOMCopierSourceEntryNewFromFSObject", "Could not retrieve path from fso\n");
    return 0;
  }

  v10 = v9;
  v11 = mode_to_source_entry_type(v8);
  if (*v10 == 46)
  {
    v12 = *(v10 + 1) == 0;
    if (*(v10 + 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = 6;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  v17 = BOMCopierSourceEntryNew(v16, a4);
  v14 = v17;
  if (!v17)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1063, "BOMCopierSourceEntryNewFromFSObject", "Could not create BOMCopierSourceEntry from %d", v16);
    return v14;
  }

  *v17 = 4;
  v18 = strdup(v10);
  *(v14 + 24) = v18;
  if (!v18)
  {
    v21 = __error();
    strerror(*v21);
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1076, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate fso_path %s: %s\n");
    goto LABEL_65;
  }

  v55 = 0;
  if (v12)
  {
    v19 = strdup(a1);
    v55 = v19;
    if (!v19)
    {
      v20 = __error();
      strerror(*v20);
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1087, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s\n");
      goto LABEL_65;
    }
  }

  else if (asprintf(&v55, "%s/%s", a1, (v10 + 2)) == -1 || (v19 = v55) == 0)
  {
    v30 = __error();
    strerror(*v30);
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1097, "BOMCopierSourceEntryNewFromFSObject", "Could not construct path from %s and %s: %s\n", a1);
    goto LABEL_65;
  }

  memset(&v54, 0, sizeof(v54));
  v22 = lstat(v19, &v54);
  if (v22)
  {
    if (*__error() != 13 && *__error() != 1)
    {
      v34 = *__error();
      v35 = __error();
      strerror(*v35);
      BOMCopierErrorCapture(a4, v34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1121, "BOMCopierSourceEntryNewFromFSObject", "Could not lstat %s: %s\n");
      goto LABEL_65;
    }

    if ((a3 & 0x100) == 0)
    {
      v23 = *__error();
      v24 = __error();
      strerror(*v24);
      BOMCopierErrorCapture(a4, v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1113, "BOMCopierSourceEntryNewFromFSObject", "Could not lstat %s: %s\n");
      goto LABEL_65;
    }
  }

  v53 = 0;
  v25 = resolve_path(v55, v16 == 9, &v53);
  *(v14 + 16) = v25;
  if (!v25)
  {
    Code = BOMCopierErrorGetCode(v53);
    if (Code == 13 || Code == 1)
    {
      if ((a3 & 0x100) == 0)
      {
        v32 = *__error();
        v33 = __error();
        strerror(*v33);
        BOMCopierErrorCapture(a4, v32, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1137, "BOMCopierSourceEntryNewFromFSObject", "Could not resolve path for %s: %s\n");
        goto LABEL_65;
      }

      BOMCopierErrorFree(v53);
      goto LABEL_49;
    }

    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1147, "BOMCopierSourceEntryNewFromFSObject", "Could not resolve %s", v55);
    BOMCopierSourceEntryFree(v14);
    free(v55);
    return 0;
  }

  if (v22)
  {
LABEL_49:
    v36 = v55;
    v37 = strdup(v55);
    *(v14 + 16) = v37;
    if (v37)
    {
      free(v36);
      if (v16 == 9)
      {
        v38 = BOMFSObjectSymlinkTarget(a2);
        if (!v38)
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1183, "BOMCopierSourceEntryNewFromFSObject", "Could not get symlink target from fso\n", v51, v52);
          goto LABEL_65;
        }

        v39 = strdup(v38);
        *(v14 + 48) = v39;
        if (!v39)
        {
          v48 = __error();
          strerror(*v48);
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1191, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s\n");
          goto LABEL_65;
        }
      }

      *(v14 + 92) = BOMFSObjectMode(a2);
      *(v14 + 84) = BOMFSObjectUserID(a2);
      *(v14 + 88) = BOMFSObjectGroupID(a2);
      v40 = BOMFSObjectSize(a2);
      *(v14 + 104) = 0;
      *(v14 + 112) = 0;
      *(v14 + 96) = v40;
      *(v14 + 120) = BOMFSObjectModTime(a2);
      *(v14 + 128) = 0;
      *(v14 + 136) = 0;
      *(v14 + 144) = 0;
      *(v14 + 152) = 0;
      return v14;
    }

    v41 = *__error();
    v42 = v55;
    v43 = __error();
    v44 = strerror(*v43);
    BOMCopierErrorCapture(a4, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1165, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s", v42, v44);
    free(v55);
LABEL_65:
    BOMCopierSourceEntryFree(v14);
    return 0;
  }

  free(v55);
  if (v16 == 9)
  {
    bzero(__s1, 0x400uLL);
    v26 = readlink(*(v14 + 16), __s1, 0x400uLL);
    if (v26 == -1)
    {
      v46 = *__error();
      v47 = __error();
      strerror(*v47);
      BOMCopierErrorCapture(a4, v46, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1226, "BOMCopierSourceEntryNewFromFSObject", "Could not readlink %s: %s\n");
      goto LABEL_65;
    }

    __s1[v26] = 0;
    v27 = strdup(__s1);
    *(v14 + 48) = v27;
    if (!v27)
    {
      v49 = *__error();
      v50 = __error();
      strerror(*v50);
      BOMCopierErrorCapture(a4, v49, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1236, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s\n");
      goto LABEL_65;
    }
  }

  *(v14 + 84) = *&v54.st_uid;
  st_mtimespec = v54.st_mtimespec;
  *(v14 + 104) = v54.st_atimespec;
  *(v14 + 64) = v54.st_dev;
  *(v14 + 72) = v54.st_ino;
  *(v14 + 80) = v54.st_nlink;
  *(v14 + 92) = v54.st_mode;
  *(v14 + 96) = v54.st_size;
  *(v14 + 120) = st_mtimespec;
  *(v14 + 136) = v54.st_ctimespec;
  *(v14 + 152) = v54.st_flags;
  if ((a3 & 0x80) != 0)
  {
    *(v14 + 84) = BOMFSObjectUserID(a2);
  }

  if ((a3 & 2) != 0 && v16 == 8)
  {
    v29 = parse_regular_file(v14, a4);
    if (v29)
    {
      BOMCopierErrorCapture(a4, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1280, "BOMCopierSourceEntryNewFromFSObject", "Could not parse the regular file", v51, v52);
      goto LABEL_65;
    }
  }

  v45 = capture_extended_attributes(v14, a3, a4);
  if (v45)
  {
    BOMCopierErrorCapture(a4, v45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1294, "BOMCopierSourceEntryNewFromFSObject", "Could not capture extended attributes", v51, v52);
    goto LABEL_65;
  }

  if ((a3 & 0x20) != 0 && capture_acl(v14, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1308, "BOMCopierSourceEntryNewFromFSObject", "Could not capture access control list", v51, v52);
    goto LABEL_65;
  }

  return v14;
}

uint64_t BOMCopierSourceEntryNewFromLibarchive(uint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1343, "BOMCopierSourceEntryNewFromLibarchive", "Invalid archive");
    return 0;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1349, "BOMCopierSourceEntryNewFromLibarchive", "Invalid archive_entry");
    return 0;
  }

  v8 = archive_entry_mode();
  v9 = mode_to_source_entry_type(v8);
  v10 = BOMCopierSourceEntryNew(v9, 0);
  v11 = v10;
  if (!v10)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1364, "BOMCopierSourceEntryNewFromLibarchive", "Could not create BOMCopierSourceEntry from %d", v9);
    return v11;
  }

  *v10 = 5;
  v12 = archive_entry_pathname();
  v13 = strlen(v12) - 1;
  if (v12[v13] == 47)
  {
    v14 = strdup(v12);
    if (!v14)
    {
      v24 = *__error();
      v25 = __error();
      strerror(*v25);
      BOMCopierErrorCapture(a4, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1386, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s");
      goto LABEL_22;
    }

    v15 = v14;
    v14[v13] = 0;
    v12 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = strdup(v12);
  *(v11 + 24) = v16;
  if (!v16)
  {
    v20 = *__error();
    v21 = __error();
    strerror(*v21);
    BOMCopierErrorCapture(a4, v20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1398, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s");
LABEL_22:
    BOMCopierSourceEntryFree(v11);
    return 0;
  }

  v17 = strdup(v12);
  *(v11 + 16) = v17;
  if (!v17)
  {
    v22 = *__error();
    v23 = __error();
    strerror(*v23);
    BOMCopierErrorCapture(a4, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1406, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s");
    goto LABEL_22;
  }

  if (v15)
  {
    free(v15);
  }

  *(v11 + 256) = a1;
  *(v11 + 264) = a2;
  *(v11 + 64) = archive_entry_dev();
  *(v11 + 72) = archive_entry_ino();
  *(v11 + 80) = archive_entry_nlink();
  *(v11 + 92) = archive_entry_mode();
  *(v11 + 84) = archive_entry_uid();
  *(v11 + 88) = archive_entry_gid();
  *(v11 + 96) = archive_entry_size();
  *(v11 + 104) = archive_entry_atime();
  *(v11 + 112) = archive_entry_atime_nsec();
  *(v11 + 120) = archive_entry_mtime();
  *(v11 + 128) = archive_entry_mtime_nsec();
  *(v11 + 136) = archive_entry_ctime();
  *(v11 + 144) = archive_entry_ctime_nsec();
  if ((a3 & 0x200) != 0)
  {
    v18 = *(v11 + 92);
    if ((v18 & 0xF000) == 0x4000)
    {
      v19 = v18 | 0x1ED;
    }

    else if ((*(v11 + 92) & 0xE00) != 0)
    {
      v19 = -32348;
    }

    else
    {
      v19 = v18 | 0x1A4;
    }

    *(v11 + 92) = v19;
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      return v11;
    }

    v27 = archive_entry_symlink();
    if (v27)
    {
      v28 = strdup(v27);
      *(v11 + 48) = v28;
      if (v28)
      {
        *(v11 + 96) = strlen(v28);
        return v11;
      }

      v29 = *__error();
      v30 = __error();
      strerror(*v30);
      BOMCopierErrorCapture(a4, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1461, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s\n");
    }

    else
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1453, "BOMCopierSourceEntryNewFromLibarchive", "Could not get symlink target from Libarchive entry\n");
    }

    goto LABEL_22;
  }

  if ((a3 & 2) != 0 && parse_regular_file(v11, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1480, "BOMCopierSourceEntryNewFromLibarchive", "Could not parse the regular file");
    goto LABEL_22;
  }

  return v11;
}

uint64_t BOMCopierSourceEntryNewFromDataArchive(uint64_t a1, _DWORD *a2, __int16 a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1500, "BOMCopierSourceEntryNewFromDataArchive", "Invalid data_archive");
    return 0;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1506, "BOMCopierSourceEntryNewFromDataArchive", "Invalid data_archive_entry");
    return 0;
  }

  type = data_archive_entry_get_type(a2);
  v9 = data_archive_entry_mode(a2);
  v10 = mode_to_source_entry_type(v9);
  v11 = v10;
  if (type == 3)
  {
    switch(v10)
    {
      case 6:
        v11 = 14;
        break;
      case 9:
        v11 = 16;
        break;
      case 8:
        v11 = 15;
        break;
      default:
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1533, "BOMCopierSourceEntryNewFromDataArchive", "Unexpected post order entry type: %u");
        return 0;
    }
  }

  v12 = BOMCopierSourceEntryNew(v11, a4);
  v13 = v12;
  if (!v12)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1541, "BOMCopierSourceEntryNewFromDataArchive", "Could not create BOMCopierSourceEntry from %d", v11);
    return v13;
  }

  *v12 = 6;
  v14 = data_archive_entry_path(a2);
  v15 = strlen(v14) - 1;
  if (v14[v15] == 47)
  {
    v16 = strdup(v14);
    if (!v16)
    {
      v28 = *__error();
      v29 = __error();
      strerror(*v29);
      BOMCopierErrorCapture(a4, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1563, "BOMCopierSourceEntryNewFromDataArchive", "Could not duplicate %s: %s");
      goto LABEL_41;
    }

    v17 = v16;
    v16[v15] = 0;
    v14 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = strdup(v14);
  *(v13 + 24) = v18;
  if (!v18)
  {
    v24 = *__error();
    v25 = __error();
    strerror(*v25);
    BOMCopierErrorCapture(a4, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1575, "BOMCopierSourceEntryNewFromDataArchive", "Could not duplicate %s: %s");
LABEL_41:
    BOMCopierSourceEntryFree(v13);
    return 0;
  }

  v19 = strdup(v14);
  *(v13 + 16) = v19;
  if (!v19)
  {
    v26 = *__error();
    v27 = __error();
    strerror(*v27);
    BOMCopierErrorCapture(a4, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1583, "BOMCopierSourceEntryNewFromDataArchive", "Could not duplicate %s: %s");
    goto LABEL_41;
  }

  if (v17)
  {
    free(v17);
  }

  *(v13 + 272) = a1;
  *(v13 + 280) = a2;
  *(v13 + 64) = data_archive_entry_dev(a2);
  *(v13 + 72) = data_archive_entry_inode(a2);
  *(v13 + 80) = data_archive_entry_nlink(a2);
  *(v13 + 92) = data_archive_entry_mode(a2);
  *(v13 + 84) = data_archive_entry_uid(a2);
  *(v13 + 88) = data_archive_entry_gid(a2);
  v20 = data_archive_entry_size(a2);
  if ((v11 - 15) >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  *(v13 + 96) = v21;
  *(v13 + 104) = data_archive_entry_atime(a2);
  *(v13 + 112) = data_archive_entry_atime_nsec(a2);
  *(v13 + 120) = data_archive_entry_mtime(a2);
  *(v13 + 128) = data_archive_entry_atime_nsec(a2);
  *(v13 + 136) = data_archive_entry_ctime(a2);
  *(v13 + 144) = data_archive_entry_atime_nsec(a2);
  *(v13 + 156) = data_archive_entry_is_streamed(a2);
  if ((a3 & 0x200) != 0)
  {
    v22 = *(v13 + 92);
    if ((v22 & 0xF000) == 0x4000)
    {
      v23 = v22 | 0x1ED;
    }

    else if ((*(v13 + 92) & 0xE00) != 0)
    {
      v23 = -32348;
    }

    else
    {
      v23 = v22 | 0x1A4;
    }

    *(v13 + 92) = v23;
  }

  if ((a3 & 2) != 0 && v11 == 8 && parse_regular_file(v13, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1649, "BOMCopierSourceEntryNewFromDataArchive", "Could not parse the regular file");
    goto LABEL_41;
  }

  return v13;
}

uint64_t BOMCopierSourceEntryNewFromAppleArchive(uint64_t a1, AAHeader header, unsigned __int8 a3, void *a4)
{
  value[128] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1669, "BOMCopierSourceEntryNewFromAppleArchive", "Invalid aa_decoder");
    return 0;
  }

  if (!header)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1675, "BOMCopierSourceEntryNewFromAppleArchive", "Invalid header");
    return 0;
  }

  value[0] = 0;
  v9.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v9);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, value), FieldUInt <= 1) ? (v12 = 1) : (v12 = FieldUInt), v12 < 1))
  {
LABEL_25:
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1686, "BOMCopierSourceEntryNewFromAppleArchive", "Unknown source entry type");
    return 0;
  }

  if (SLODWORD(value[0]) > 75)
  {
    if (SLODWORD(value[0]) > 82)
    {
      if (LODWORD(value[0]) == 83)
      {
        v13 = 10;
        goto LABEL_32;
      }

      if (LODWORD(value[0]) == 87)
      {
        v13 = 11;
        goto LABEL_32;
      }
    }

    else
    {
      if (LODWORD(value[0]) == 76)
      {
        v13 = 9;
        goto LABEL_32;
      }

      if (LODWORD(value[0]) == 80)
      {
        v13 = 4;
        goto LABEL_32;
      }
    }

    goto LABEL_25;
  }

  if (SLODWORD(value[0]) > 67)
  {
    if (LODWORD(value[0]) == 68)
    {
      v13 = 6;
      goto LABEL_32;
    }

    if (LODWORD(value[0]) == 70)
    {
      v14 = 0;
      v13 = 8;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (LODWORD(value[0]) == 66)
  {
    v13 = 7;
    goto LABEL_32;
  }

  if (LODWORD(value[0]) != 67)
  {
    goto LABEL_25;
  }

  v13 = 5;
LABEL_32:
  v14 = 1;
LABEL_33:
  v17 = BOMCopierSourceEntryNew(v13, 0);
  v15 = v17;
  if (!v17)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1693, "BOMCopierSourceEntryNewFromAppleArchive", "Could not create BOMCopierSourceEntry from %d", v13);
    return v15;
  }

  *v17 = 7;
  *(v17 + 36) = a1;
  *(v17 + 37) = header;
  v17[76] = 5521732;
  FieldCount = AAHeaderGetFieldCount(header);
  if (FieldCount)
  {
    v19 = FieldCount;
    v20 = 0;
    while (1)
    {
      FieldType = AAHeaderGetFieldType(header, v20);
      v22 = FieldType;
      if (FieldType < 0)
      {
        BOMCopierErrorCapture(a4, FieldType, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5541, "populate_source_entry_from_apple_archive", "Could not get field type from AppleArchive header index %u: %d");
        goto LABEL_159;
      }

      FieldKey = AAHeaderGetFieldKey(header, v20);
      if (!FieldKey.ikey)
      {
        BOMCopierErrorCapture(a4, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5548, "populate_source_entry_from_apple_archive", "Could not get field key from AppleArchive header index %u: %u");
        goto LABEL_159;
      }

      if (v22 >= 5)
      {
        if (v22 != 5)
        {
          BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5633, "populate_source_entry_from_apple_archive", "Unknown AppleArchive field type: %u");
          goto LABEL_159;
        }

        v24 = FieldKey;
        if (FieldKey.ikey != 5521732)
        {
          break;
        }
      }

LABEL_39:
      if (v19 == ++v20)
      {
        goto LABEL_52;
      }
    }

    value[0] = 0;
    offset.tv_sec = 0;
    FieldBlob = AAHeaderGetFieldBlob(header, v20, value, &offset);
    if (FieldBlob < 0)
    {
      BOMCopierErrorCapture(a4, FieldBlob, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5593, "populate_source_entry_from_apple_archive", "Could not get AppleArchive blob: %d");
      goto LABEL_159;
    }

    v26 = v14;
    v27 = *(v15 + 308);
    v28 = v27 + 1;
    v29 = malloc_type_realloc(*(v15 + 312), 32 * (v27 + 1), 0xEF11D041uLL);
    if (!v29)
    {
      v88 = *__error();
      v89 = __error();
      strerror(*v89);
      BOMCopierErrorCapture(a4, v88, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5604, "populate_source_entry_from_apple_archive", "Could not allocate blob list: %s");
      goto LABEL_159;
    }

    v30 = &v29[32 * v27];
    *v30 = v24;
    *(v30 + 2) = value[0];
    *(v30 + 1) = offset.tv_sec;
    v31 = a3 >> 5;
    v14 = v26;
    if (v24.ikey != 4997953)
    {
      if (v24.ikey != 5521752)
      {
LABEL_50:
        *(v15 + 308) = v28;
        *(v15 + 312) = v29;
        goto LABEL_39;
      }

      v31 = a3 >> 2;
    }

    v30[24] = v31 & 1;
    goto LABEL_50;
  }

LABEL_52:
  bzero(value, 0x400uLL);
  length = 0;
  v32.ikey = 5521744;
  v33 = AAHeaderGetKeyIndex(header, v32);
  if ((v33 & 0x80000000) != 0)
  {
    v36 = 0;
LABEL_140:
    BOMCopierErrorCapture(a4, v36, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5654, "populate_source_entry_from_apple_archive", "Could not get path from AppleArchive: %d");
    goto LABEL_159;
  }

  v34 = value;
  FieldString = AAHeaderGetFieldString(header, v33, 0x400uLL, value, &length);
  if (FieldString <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = FieldString;
  }

  if (v36 <= 0)
  {
    goto LABEL_140;
  }

  if (!length)
  {
    v34 = ".";
  }

  v37 = strdup(v34);
  *(v15 + 24) = v37;
  if (!v37)
  {
    v83 = *__error();
    v84 = __error();
    strerror(*v84);
    BOMCopierErrorCapture(a4, v83, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5671, "populate_source_entry_from_apple_archive", "Could not duplicate %s: %s");
    goto LABEL_159;
  }

  v38 = strdup(value);
  *(v15 + 16) = v38;
  if (!v38)
  {
    v85 = *__error();
    v86 = __error();
    strerror(*v86);
    BOMCopierErrorCapture(a4, v85, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5678, "populate_source_entry_from_apple_archive", "Could not duplicate %s: %s");
    goto LABEL_159;
  }

  if (*(v15 + 4) == 9)
  {
    bzero(&offset, 0x400uLL);
    v94 = 0;
    v39.ikey = 4935244;
    v40 = AAHeaderGetKeyIndex(header, v39);
    if ((v40 & 0x80000000) != 0 || ((v41 = AAHeaderGetFieldString(header, v40, 0x400uLL, &offset, &v94), v41 <= 1) ? (v42 = 1) : (v42 = v41), v42 <= 0))
    {
      v87 = *__error();
      BOMCopierErrorCapture(a4, v87, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5694, "populate_source_entry_from_apple_archive", "Could not get symlink target path: %d");
      goto LABEL_159;
    }

    v43 = strdup(&offset);
    *(v15 + 48) = v43;
    if (!v43)
    {
      v90 = *__error();
      v91 = __error();
      strerror(*v91);
      BOMCopierErrorCapture(a4, v90, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5701, "populate_source_entry_from_apple_archive", "Could not duplicate %s: %s\n");
      goto LABEL_159;
    }
  }

  v94 = 0;
  v44.ikey = 5653828;
  v45 = AAHeaderGetKeyIndex(header, v44);
  if ((v45 & 0x80000000) == 0)
  {
    v46 = AAHeaderGetFieldUInt(header, v45, &v94);
    if (v46 <= 1)
    {
      v47 = 1;
    }

    else
    {
      v47 = v46;
    }

    if (v47 < 0)
    {
      BOMCopierErrorCapture(a4, v47, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5714, "populate_source_entry_from_apple_archive", "Could not get AppleArchive device: %d");
LABEL_159:
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1706, "BOMCopierSourceEntryNewFromAppleArchive", "Could not populate source entry from AppleArchive");
      goto LABEL_160;
    }

    if (v46 <= 1)
    {
      *(v15 + 64) = v94;
    }
  }

  v48.ikey = 5197385;
  v49 = AAHeaderGetKeyIndex(header, v48);
  if ((v49 & 0x80000000) != 0)
  {
    goto LABEL_82;
  }

  v50 = AAHeaderGetFieldUInt(header, v49, &v94);
  if (v50 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v50;
  }

  if (v51 < 0)
  {
    BOMCopierErrorCapture(a4, v51, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5726, "populate_source_entry_from_apple_archive", "Could not get AppleArchive inode: %d");
    goto LABEL_159;
  }

  if (v50 <= 1)
  {
    *(v15 + 72) = v94;
  }

LABEL_82:
  v52.ikey = 4934734;
  v53 = AAHeaderGetKeyIndex(header, v52);
  if ((v53 & 0x80000000) != 0)
  {
    goto LABEL_89;
  }

  v54 = AAHeaderGetFieldUInt(header, v53, &v94);
  if (v54 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v54;
  }

  if (v55 < 0)
  {
    BOMCopierErrorCapture(a4, v55, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5738, "populate_source_entry_from_apple_archive", "Could not get AppleArchive nlink: %d");
    goto LABEL_159;
  }

  if (v54 <= 1)
  {
    *(v15 + 80) = v94;
  }

LABEL_89:
  v56.ikey = 4476749;
  v57 = AAHeaderGetKeyIndex(header, v56);
  if ((v57 & 0x80000000) != 0)
  {
    goto LABEL_98;
  }

  v58 = AAHeaderGetFieldUInt(header, v57, &v94);
  if (v58 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v58;
  }

  if (v59 < 0)
  {
    BOMCopierErrorCapture(a4, v59, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5750, "populate_source_entry_from_apple_archive", "Could not get AppleArchive mode: %d");
    goto LABEL_159;
  }

  if (v58 > 1)
  {
    goto LABEL_98;
  }

  v60 = v94;
  *(v15 + 92) = v94;
  v61 = *(v15 + 4) - 4;
  if (v61 >= 8 || ((0xF7u >> v61) & 1) == 0)
  {
    BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5797, "populate_source_entry_from_apple_archive", "Unsupported entry type: %u");
    goto LABEL_159;
  }

  *(v15 + 92) = word_241C78F80[v61] | v60;
LABEL_98:
  v62.ikey = 4475221;
  v63 = AAHeaderGetKeyIndex(header, v62);
  if ((v63 & 0x80000000) != 0)
  {
    goto LABEL_105;
  }

  v64 = AAHeaderGetFieldUInt(header, v63, &v94);
  if (v64 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v64;
  }

  if (v65 < 0)
  {
    BOMCopierErrorCapture(a4, v65, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5806, "populate_source_entry_from_apple_archive", "Could not get AppleArchive uid: %d");
    goto LABEL_159;
  }

  if (v64 <= 1)
  {
    *(v15 + 84) = v94;
  }

LABEL_105:
  v66.ikey = 4475207;
  v67 = AAHeaderGetKeyIndex(header, v66);
  if ((v67 & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  v68 = AAHeaderGetFieldUInt(header, v67, &v94);
  if (v68 <= 1)
  {
    v69 = 1;
  }

  else
  {
    v69 = v68;
  }

  if (v69 < 0)
  {
    BOMCopierErrorCapture(a4, v69, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5818, "populate_source_entry_from_apple_archive", "Could not get AppleArchive gid: %d");
    goto LABEL_159;
  }

  if (v68 <= 1)
  {
    *(v15 + 88) = v94;
  }

LABEL_112:
  v92 = 0;
  size = 0;
  v70.ikey = 5521732;
  v71 = AAHeaderGetKeyIndex(header, v70);
  if ((v71 & 0x80000000) != 0)
  {
    goto LABEL_119;
  }

  v72 = AAHeaderGetFieldBlob(header, v71, &size, &v92);
  if (v72 <= 1)
  {
    v73 = 1;
  }

  else
  {
    v73 = v72;
  }

  if (v73 < 0)
  {
    BOMCopierErrorCapture(a4, v73, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5832, "populate_source_entry_from_apple_archive", "Could not get AppleArchive data size: %d");
    goto LABEL_159;
  }

  if (v72 <= 1)
  {
    *(v15 + 96) = size;
  }

LABEL_119:
  v74.ikey = 5917011;
  v75 = AAHeaderGetKeyIndex(header, v74);
  if ((v75 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  v76 = AAHeaderGetFieldUInt(header, v75, &v94);
  if (v76 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = v76;
  }

  if (v77 < 0)
  {
    BOMCopierErrorCapture(a4, v77, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5844, "populate_source_entry_from_apple_archive", "Could not get AppleArchive size: %d");
    goto LABEL_159;
  }

  if (v76 <= 1)
  {
    *(v15 + 96) = v94;
  }

LABEL_126:
  offset.tv_sec = 0;
  offset.tv_nsec = 0;
  v78.ikey = 5067853;
  v79 = AAHeaderGetKeyIndex(header, v78);
  if ((v79 & 0x80000000) != 0)
  {
    goto LABEL_133;
  }

  FieldTimespec = AAHeaderGetFieldTimespec(header, v79, &offset);
  if (FieldTimespec <= 1)
  {
    v81 = 1;
  }

  else
  {
    v81 = FieldTimespec;
  }

  if (v81 < 0)
  {
    BOMCopierErrorCapture(a4, v81, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5857, "populate_source_entry_from_apple_archive", "Could not get AppleArchive modification timespec: %d");
    goto LABEL_159;
  }

  if (FieldTimespec <= 1)
  {
    *(v15 + 120) = offset;
  }

LABEL_133:
  *(v15 + 104) = 0;
  *(v15 + 112) = 0;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  if ((a3 & 2) != 0)
  {
    v82 = v14;
  }

  else
  {
    v82 = 1;
  }

  if ((v82 & 1) == 0 && parse_regular_file(v15, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1722, "BOMCopierSourceEntryNewFromAppleArchive", "Could not parse the regular file");
LABEL_160:
    BOMCopierSourceEntryFree(v15);
    return 0;
  }

  return v15;
}

uint64_t BOMCopierSourceEntryGetActualPath(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetType(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetPath(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 24);
    if (!result)
    {
      return *(a1 + 16);
    }
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  return result;
}

char *BOMCopierSourceEntryGetParent(void *a1)
{
  if (!a1)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = "Invalid source_entry";
    v6 = 20;
LABEL_11:
    fwrite(v5, v6, 1uLL, v4);
    return 0;
  }

  v2 = a1[4];
  if (v2)
  {
    return v2;
  }

  v3 = a1[3];
  if (!v3)
  {
    v3 = a1[2];
    if (!v3)
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = "Missing entry_path";
      v6 = 18;
      goto LABEL_11;
    }
  }

  if (*v3 == 46 && !*(v3 + 1))
  {
    v2 = strdup(".");
    goto LABEL_15;
  }

  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0x69CFC21EuLL);
  if (v2)
  {
    if (v2 != dirname_r(v3, v2))
    {
      free(v2);
      return 0;
    }

LABEL_15:
    a1[4] = v2;
  }

  return v2;
}

char *BOMCopierSourceEntryGetName(void *a1)
{
  if (!a1)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = "Invalid source_entry";
    v6 = 20;
LABEL_11:
    fwrite(v5, v6, 1uLL, v4);
    return 0;
  }

  v2 = a1[5];
  if (v2)
  {
    return v2;
  }

  v3 = a1[3];
  if (!v3)
  {
    v3 = a1[2];
    if (!v3)
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = "Missing entry_path";
      v6 = 18;
      goto LABEL_11;
    }
  }

  if (*v3 == 46 && !*(v3 + 1))
  {
    v2 = strdup(".");
    goto LABEL_15;
  }

  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0xB9B90B28uLL);
  if (v2)
  {
    if (v2 != basename_r(v3, v2))
    {
      free(v2);
      return 0;
    }

LABEL_15:
    a1[5] = v2;
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetDevice(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 64);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2026, "BOMCopierSourceEntryGetDevice", "Invalid source_entry", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetInode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2040, "BOMCopierSourceEntryGetInode", "Invalid source_entry", v1, v2);
  return -1;
}

uint64_t BOMCopierSourceEntryGetHardlinkCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2054, "BOMCopierSourceEntryGetHardlinkCount", "Invalid source_entry", v1, v2);
  return 0xFFFFLL;
}

uint64_t BOMCopierSourceEntryGetSize(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      return *(a1 + 96);
    }

    else
    {
      return *(a1 + 248);
    }
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

uint64_t BOMCopierSourceEntryGetMode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 92);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetUserID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 84);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetGroupID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetFlags(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 152);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetAccessTime(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      *a2 = *(a1 + 104);
    }

    else
    {
      v2 = 1;
      fwrite("Invalid access_time", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetModificationTime(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      *a2 = *(a1 + 120);
    }

    else
    {
      v2 = 1;
      fwrite("Invalid modification_time", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetStatusTime(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      *a2 = *(a1 + 136);
    }

    else
    {
      v2 = 1;
      fwrite("Invalid status_time", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetSymlinkTarget(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetAppleDoubleTarget(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

BOOL BOMCopierSourceEntryIsCompressed(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 152);
    return (v1 & 0x20) != 0 && (v1 & 0x40000000) == 0;
  }

  return result;
}

uint64_t BOMCopierSourceEntryIsRestricted(uint64_t result)
{
  if (result)
  {
    return (*(result + 154) >> 3) & 1;
  }

  return result;
}

uint64_t BOMCopierSourceEntryGetBinaryType(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 192);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetArchCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 196);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetArchRecord(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4)
{
  if (a1)
  {
    if (*(a1 + 196) <= a2)
    {
      BOMCopierErrorCapture(a4, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2344, "BOMCopierSourceEntryGetArchRecord", "index is out of range");
    }

    else
    {
      if (a3)
      {
        result = 0;
        v6 = (*(a1 + 200) + 32 * a2);
        v7 = v6[1];
        *a3 = *v6;
        a3[1] = v7;
        return result;
      }

      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2350, "BOMCopierSourceEntryGetArchRecord", "Invalid arch_record");
    }
  }

  else
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2338, "BOMCopierSourceEntryGetArchRecord", "Invalid source_entry");
  }

  return 1;
}

uint64_t BOMCopierSourceEntryGetExtendedAttributeCount(uint64_t a1, void *a2)
{
  if (a1)
  {
    return *(a1 + 208);
  }

  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2370, "BOMCopierSourceEntryGetExtendedAttributeCount", "source_entry is NULL", v2, v3);
  return 0;
}

uint64_t BOMCopierSourceEntryGetExtendedAttributeName(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if (*(a1 + 208) > a2)
    {
      return *(*(a1 + 216) + 24 * a2);
    }

    BOMCopierErrorCapture(a3, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2395, "BOMCopierSourceEntryGetExtendedAttributeName", "index is out of range");
  }

  else
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2389, "BOMCopierSourceEntryGetExtendedAttributeName", "source_entry is NULL");
  }

  return 0;
}

uint64_t BOMCopierSourceEntryGetExtendedAttributeSize(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if (*(a1 + 208) > a2)
    {
      return *(*(a1 + 216) + 24 * a2 + 8);
    }

    BOMCopierErrorCapture(a3, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2420, "BOMCopierSourceEntryGetExtendedAttributeSize", "index is out of range");
  }

  else
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2414, "BOMCopierSourceEntryGetExtendedAttributeSize", "source_entry is NULL");
  }

  return 0;
}

ssize_t BOMCopierSourceEntryCopyExtendedAttribute(uint64_t a1, unsigned int a2, void *__dst, size_t __n, u_int32_t a5, void *a6)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a6, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2442, "BOMCopierSourceEntryCopyExtendedAttribute", "source_entry is NULL");
    return -1;
  }

  if (*(a1 + 208) <= a2)
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2448, "BOMCopierSourceEntryCopyExtendedAttribute", "index is out of range");
    return -1;
  }

  if (!__dst)
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2454, "BOMCopierSourceEntryCopyExtendedAttribute", "value is NULL");
    return -1;
  }

  v8 = __n;
  if (!__n)
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2460, "BOMCopierSourceEntryCopyExtendedAttribute", "size is 0");
    return -1;
  }

  v10 = *(a1 + 216);
  v11 = v10 + 24 * a2;
  if (__n + a5 > *(v11 + 8))
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2473, "BOMCopierSourceEntryCopyExtendedAttribute", "size + position are out of range");
    return -1;
  }

  v13 = *(v10 + 24 * a2 + 16);
  if (v13)
  {
    memcpy(__dst, (v13 + a5), __n);
    return v8;
  }

  v14 = *v11;
  v15 = string_compare(*v11, "com.apple.decmpfs");
  if (string_compare(v14, "com.apple.ResourceFork"))
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 33;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(a1 + 16);

  return getxattr(v18, v14, __dst, v8, a5, v17);
}
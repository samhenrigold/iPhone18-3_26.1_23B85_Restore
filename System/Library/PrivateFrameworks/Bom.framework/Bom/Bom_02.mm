uint64_t create_entry_libarchive(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = archive_entry_new();
  if (v8)
  {
    v9 = v8;
    Path = BOMCopierSourceEntryGetPath(a2);
    archive_entry_set_pathname();
    v11 = strdup(Path);
    a3[15] = v11;
    if (v11)
    {
      Device = BOMCopierSourceEntryGetDevice(a2);
      Inode = BOMCopierSourceEntryGetInode(a2);
      HardlinkCount = BOMCopierSourceEntryGetHardlinkCount(a2);
      Type = BOMCopierSourceEntryGetType(a2);
      if (Type == 8 && HardlinkCount >= 2)
      {
        v15 = BOMHardLinkTableGet(a1[9], Device, Inode);
        if (v15)
        {
          *bytes = *v15;
        }

        else
        {
          v18 = a1[9];
          *bytes = a1[8];
          BOMHardLinkTableSet(v18, Device, Inode, bytes, 8);
          ++a1[8];
        }
      }

      else
      {
        *bytes = a1[8];
        a1[8] = *bytes + 1;
      }

      BOMCopierSourceEntryGetMode(a2);
      BOMCopierSourceEntryGetUserID(a2);
      BOMCopierSourceEntryGetGroupID(a2);
      v24 = 0uLL;
      if (BOMCopierSourceEntryGetAccessTime(a2, &v24))
      {
        v16 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4418, "create_entry_libarchive", "Could not get source entry access time");
LABEL_35:
        archive_entry_free();
        return v16;
      }

      v23 = 0uLL;
      if (BOMCopierSourceEntryGetModificationTime(a2, &v23))
      {
        v16 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4428, "create_entry_libarchive", "Could not get source entry modification time");
        goto LABEL_35;
      }

      v22 = 0uLL;
      if (BOMCopierSourceEntryGetStatusTime(a2, &v22))
      {
        v16 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4438, "create_entry_libarchive", "Could not get source entry status time");
        goto LABEL_35;
      }

      archive_entry_set_dev();
      archive_entry_set_nlink();
      archive_entry_set_ino64();
      archive_entry_set_perm();
      archive_entry_set_mode();
      archive_entry_set_uid();
      archive_entry_set_gid();
      archive_entry_set_size();
      archive_entry_set_atime();
      archive_entry_set_mtime();
      archive_entry_set_ctime();
      if (Type <= 9)
      {
        if (Type > 7)
        {
          if (Type == 8)
          {
            archive_entry_set_filetype();
            a3[9] = a1[17];
            v19 = a1[19];
            if (v19 >= 1 && a3[7] >> 33)
            {
              a3[11] = v19;
              a3[12] = v19;
              archive_entry_set_size();
            }
          }

          else
          {
            BOMCopierSourceEntryGetSymlinkTarget(a2);
            archive_entry_set_filetype();
            archive_entry_set_symlink();
          }

          goto LABEL_33;
        }

        if (Type != 4 && Type != 6)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((Type - 17) < 3)
        {
          goto LABEL_33;
        }

        if (Type != 10)
        {
          if (Type != 13)
          {
LABEL_38:
            v16 = 1;
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4529, "create_entry_libarchive", "Unknown source entry type: %d");
            goto LABEL_35;
          }

LABEL_33:
          if (!archive_write_header())
          {
            v16 = 0;
            a3[10] = v9;
            return v16;
          }

          archive_error_string();
          v16 = 1;
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4539, "create_entry_libarchive", "Could not write archive entry: %s (%d)");
          goto LABEL_35;
        }
      }

      archive_entry_set_filetype();
      goto LABEL_33;
    }

    v17 = __error();
    strerror(*v17);
    v16 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4349, "create_entry_libarchive", "Could not duplicate entry path %s: %s");
  }

  else
  {
    v16 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4339, "create_entry_libarchive", "Could not create empty archive entry");
  }

  return v16;
}

uint64_t create_entry_apple_archive(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = AAHeaderCreate();
  if (!v8)
  {
    v12 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4567, "create_entry_apple_archive", "Could not create AppleArchive header");
    return v12;
  }

  v9 = v8;
  Type = BOMCopierSourceEntryGetType(a2);
  if ((Type - 4) > 7)
  {
    v11 = 63;
  }

  else
  {
    v11 = qword_241C78E48[Type - 4];
  }

  v13.ikey = 5265748;
  v14 = AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v13, v11);
  if (v14)
  {
    BOMCopierErrorCapture(a4, v14, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4609, "populate_aa_header", "Could not set AppleArchive type");
LABEL_11:
    v12 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4574, "create_entry_apple_archive", "Could not populate AppleArchive header");
    AAHeaderDestroy(v9);
    return v12;
  }

  Path = BOMCopierSourceEntryGetPath(a2);
  v16 = strlen(Path);
  v17.ikey = 5521744;
  v18 = AAHeaderSetFieldString(v9, 0xFFFFFFFF, v17, Path, v16);
  if (v18)
  {
    BOMCopierErrorCapture(a4, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4617, "populate_aa_header", "Could not set AppleArchive path");
    goto LABEL_11;
  }

  v20 = strdup(Path);
  *(a3 + 120) = v20;
  if (!v20)
  {
    v26 = __error();
    strerror(*v26);
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4624, "populate_aa_header", "Could not duplicate entry path %s: %s");
    goto LABEL_11;
  }

  if (Type == 9)
  {
    SymlinkTarget = BOMCopierSourceEntryGetSymlinkTarget(a2);
    if (!SymlinkTarget)
    {
      BOMCopierErrorCapture(a4, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4633, "populate_aa_header", "Could not set AppleArchive size");
      goto LABEL_11;
    }

    v22 = SymlinkTarget;
    v23 = strlen(SymlinkTarget);
    v24.ikey = 4935244;
    v25 = AAHeaderSetFieldString(v9, 0xFFFFFFFF, v24, v22, v23);
    if (v25)
    {
      BOMCopierErrorCapture(a4, v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4643, "populate_aa_header", "Could not set AppleArchive symlink path");
      goto LABEL_11;
    }
  }

  else if ((Type & 0xFFFFFFFD) == 5)
  {
    Device = BOMCopierSourceEntryGetDevice(a2);
    v28.ikey = 5653828;
    AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v28, Device);
  }

  UserID = BOMCopierSourceEntryGetUserID(a2);
  v30.ikey = 4475221;
  v31 = AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v30, UserID);
  if (v31)
  {
    BOMCopierErrorCapture(a4, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4664, "populate_aa_header", "Could not set AppleArchive uid");
    goto LABEL_11;
  }

  GroupID = BOMCopierSourceEntryGetGroupID(a2);
  v33.ikey = 4475207;
  v34 = AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v33, GroupID);
  if (v34)
  {
    BOMCopierErrorCapture(a4, v34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4672, "populate_aa_header", "Could not set AppleArchive gid");
    goto LABEL_11;
  }

  Mode = BOMCopierSourceEntryGetMode(a2);
  v36.ikey = 4476749;
  v37 = AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v36, Mode & 0xFFF);
  if (v37)
  {
    BOMCopierErrorCapture(a4, v37, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4680, "populate_aa_header", "Could not set AppleArchive mode");
    goto LABEL_11;
  }

  v38 = BOMCopierSourceEntryGetMode(a2);
  v39.ikey = 4672582;
  v40 = AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v39, v38);
  if (v40)
  {
    BOMCopierErrorCapture(a4, v40, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4688, "populate_aa_header", "Could not set AppleArchive mode");
    goto LABEL_11;
  }

  value.tv_sec = 0;
  value.tv_nsec = 0;
  ModificationTime = BOMCopierSourceEntryGetModificationTime(a2, &value);
  if (ModificationTime)
  {
    BOMCopierErrorCapture(a4, ModificationTime, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4696, "populate_aa_header", "Could not retrieve modification time");
    goto LABEL_11;
  }

  v42.ikey = 5067853;
  v43 = AAHeaderSetFieldTimespec(v9, 0xFFFFFFFF, v42, &value);
  if (v43)
  {
    BOMCopierErrorCapture(a4, v43, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4703, "populate_aa_header", "Could not set AppleArchive modification time");
    goto LABEL_11;
  }

  Inode = BOMCopierSourceEntryGetInode(a2);
  v45.ikey = 5197385;
  AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v45, Inode);
  HardlinkCount = BOMCopierSourceEntryGetHardlinkCount(a2);
  v47.ikey = 4934734;
  AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v47, HardlinkCount);
  if (Type == 8)
  {
    v48 = *(a3 + 56);
    v49.ikey = 5917011;
    v50 = AAHeaderSetFieldUInt(v9, 0xFFFFFFFF, v49, v48);
    if (v50)
    {
      BOMCopierErrorCapture(a4, v50, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4745, "populate_aa_header", "Could not set AppleArchive size");
      goto LABEL_11;
    }

    if (v48 >= 1)
    {
      v51.ikey = 5521732;
      v52 = AAHeaderSetFieldBlob(v9, 0xFFFFFFFF, v51, v48);
      if (v52)
      {
        BOMCopierErrorCapture(a4, v52, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4754, "populate_aa_header", "Could not append AA_FIELD_DAT to AppleArchive header: %d");
        goto LABEL_11;
      }
    }
  }

  v55 = 0;
  if (BOMCopierSourceEntryGetACL(a2, &v55, a4))
  {
    v53 = populate_aa_header_acl(a2, a3, v9, a4);
    if (v53)
    {
      BOMCopierErrorCapture(a4, v53, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4767, "populate_aa_header", "Could not encode ACL");
      goto LABEL_11;
    }
  }

  if (BOMCopierSourceEntryGetExtendedAttributeCount(a2, a4))
  {
    v54 = populate_aa_header_xattr(a2, a3, v9, a4);
    if (v54)
    {
      BOMCopierErrorCapture(a4, v54, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4778, "populate_aa_header", "Could not encode extended attributes");
      goto LABEL_11;
    }
  }

  v12 = AAArchiveStreamWriteHeader(*(a1 + 184), v9);
  AAHeaderDestroy(v9);
  if (v12)
  {
    v12 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4585, "create_entry_apple_archive", "Could not write AppleArchive header");
  }

  else
  {
    *(a3 + 328) = 5521732;
    *(a3 + 336) = *(a1 + 184);
  }

  return v12;
}

uint64_t BOMCopierDestinationFinalizeEntry(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = a1;
      if (*(a2 + 16) == 1)
      {
        v6 = a1[33];
        if (!v6)
        {
LABEL_33:
          BOMCopierDestinationEntryFree(a2);
          return 0;
        }

        v7 = a2[1];
        v8 = a1[34];
        v9 = a2;
        v10 = 1;
LABEL_6:
        v6(a1, v7, v9, v10, v8);
        goto LABEL_33;
      }

      v12 = a1[12];
      v13 = a2[3];
      Type = BOMCopierSourceEntryGetType(a2[1]);
      if (Type == 8 && v13 != 0 && v12 != 0)
      {
        if (BOMCopierDataAnalyzerFinalize(a2[3], a3))
        {
          v11 = 1;
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1842, "BOMCopierDestinationFinalizeEntry", "Could not finalize data analyzer");
          return v11;
        }

        v25 = 0;
        if (BOMCopierDataAnalyzerGetDigest(a2[3], 2, &v25, a3))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1851, "BOMCopierDestinationFinalizeEntry", "Could not retrieve CRC32 from data analyzer");
          return 1;
        }

        BOMCopierDataAnalyzerReset(a2[3]);
        Path = BOMCopierSourceEntryGetPath(a2[1]);
        FSObjectAtPath = BOMBomGetFSObjectAtPath(v5[12], Path);
        if (!FSObjectAtPath)
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1866, "BOMCopierDestinationFinalizeEntry", "Could not lookup %s in checksum bom");
          return 1;
        }

        v23 = FSObjectAtPath;
        v24 = BOMFSObjectChecksum(FSObjectAtPath);
        BOMFSObjectFree(v23);
        if (v24 != v25)
        {
          BOMCopierErrorCapture(a3, 108, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1891, "BOMCopierDestinationFinalizeEntry", "Checksum mismatch for %s: %d vs %d", Path);
          return 1;
        }
      }

      if (*(a2 + 8) != 2)
      {
        v17 = *(v5 + 11);
        if (v17 == 2)
        {
          if (finalize_entry_apple_archive(a2, a3))
          {
            v11 = 1;
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1923, "BOMCopierDestinationFinalizeEntry", "Could not finalize AppleArchive entry");
            return v11;
          }
        }

        else if (!v17)
        {
          finalize_entry_filesystem(v5, a2, a3);
          if (v18)
          {
            v11 = 1;
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1913, "BOMCopierDestinationFinalizeEntry", "Could not finalize filesystem entry");
            return v11;
          }
        }
      }

      if (Type == 17)
      {
        goto LABEL_33;
      }

      v6 = v5[33];
      if (!v6)
      {
        goto LABEL_33;
      }

      v10 = *(v5 + 61);
      v7 = a2[1];
      v8 = v5[34];
      a1 = v5;
      v9 = a2;
      goto LABEL_6;
    }

    v11 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1792, "BOMCopierDestinationFinalizeEntry", "destination_entry is NULL");
  }

  else
  {
    v11 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1786, "BOMCopierDestinationFinalizeEntry", "copier_destination is NULL");
  }

  return v11;
}

void finalize_entry_filesystem(NSObject **a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v197 = *MEMORY[0x277D85DE8];
  if (*(a2 + 154) == 1)
  {

    apply_retention_policy(a1, a2, a3);
    return;
  }

  v6 = *(a2 + 8);
  Type = BOMCopierSourceEntryGetType(v6);
  v8 = Type;
  if (Type <= 16)
  {
    if (Type == 8)
    {
      v24 = *(a2 + 64);
      if (v24 != -1)
      {
        if (*(a2 + 160))
        {
          if (ParallelCompressionAFSCStreamClose())
          {
            v25 = *__error();
            v26 = __error();
            strerror(*v26);
            BOMCopierErrorCapture(v3, v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5220, "finalize_entry_filesystem", "Could not close AFSC stream for %s: %s");
            return;
          }

          *(a2 + 160) = 0;
          v24 = *(a2 + 64);
        }

        if (*(a2 + 68) != v24)
        {
          close(*(a2 + 68));
          v24 = *(a2 + 64);
        }

        *(a2 + 68) = -1;
        close(v24);
        *(a2 + 64) = -1;
      }
    }

    else if (Type == 16)
    {
      memset(&__bp, 0, sizeof(__bp));
      if (lstat(*(a2 + 120), &__bp))
      {
        v16 = *__error();
        BOMCopierErrorCapture(v3, v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5248, "finalize_entry_filesystem", "Missing symlink target for %s");
        return;
      }

      if ((__bp.st_mode & 0xF000) != 0x8000)
      {
        BOMCopierErrorCapture(v3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5254, "finalize_entry_filesystem", "%s is not a regular file");
        return;
      }

      if (__bp.st_size >= 1025)
      {
        BOMCopierErrorCapture(v3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5260, "finalize_entry_filesystem", "%s is too large (%luu) to hold a symlink target");
        return;
      }

      v75 = malloc_type_calloc(1uLL, __bp.st_size + 1, 0x756E8579uLL);
      if (!v75)
      {
        v124 = *__error();
        v125 = __error();
        strerror(*v125);
        BOMCopierErrorCapture(v3, v124, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5269, "finalize_entry_filesystem", "Could not allocate target buffer %lu: %s");
        return;
      }

      v57 = v75;
      v76 = open(*(a2 + 120), 0);
      if (v76 == -1)
      {
        v132 = *__error();
        v133 = __error();
        strerror(*v133);
        BOMCopierErrorCapture(v3, v132, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5276, "finalize_entry_filesystem", "Could not open %s: %s");
        goto LABEL_75;
      }

      v77 = v76;
      v78 = read(v76, v57, __bp.st_size);
      if (v78 != __bp.st_size)
      {
        v134 = *__error();
        v135 = *(a2 + 120);
        st_size = __bp.st_size;
        v137 = __error();
        v138 = strerror(*v137);
        BOMCopierErrorCapture(v3, v134, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5284, "finalize_entry_filesystem", "Could not read %s %lu: %s", v135, st_size, v138);
        close(v77);
        goto LABEL_75;
      }

      close(v77);
      if (unlink(*(a2 + 120)))
      {
        v79 = *__error();
        v80 = __error();
        strerror(*v80);
        BOMCopierErrorCapture(v3, v79, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5295, "finalize_entry_filesystem", "Could not unlink %s: %s");
        goto LABEL_75;
      }

      if (symlink(v57, *(a2 + 120)))
      {
        v155 = *__error();
        v156 = *(a2 + 120);
        v157 = __error();
        strerror(*v157);
        BOMCopierErrorCapture(v3, v155, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5303, "finalize_entry_filesystem", "Could not symlink %s to %s: %s", v156);
        goto LABEL_75;
      }

      v170 = *a1;
      if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v171 = *(a2 + 120);
        *v176 = 136315394;
        *&v176[4] = v171;
        *&v176[12] = 2080;
        *&v176[14] = v57;
        _os_log_impl(&dword_241C0E000, v170, OS_LOG_TYPE_DEFAULT, "Transmogrified symlink: %s to %s", v176, 0x16u);
      }

      free(v57);
    }

LABEL_58:
    v172 = a1;
    ExtendedAttributeCount = BOMCopierSourceEntryGetExtendedAttributeCount(v6, v3);
    if (ExtendedAttributeCount)
    {
      v45 = ExtendedAttributeCount;
      for (i = 0; v45 != i; ++i)
      {
        ExtendedAttributeName = BOMCopierSourceEntryGetExtendedAttributeName(v6, i, v3);
        if (!ExtendedAttributeName)
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5710, "finalize_entry_filesystem", "Could not get xattr name for index %d");
          return;
        }

        v48 = ExtendedAttributeName;
        if (strcmp(ExtendedAttributeName, "com.apple.ResourceFork") || (*(a2 + 155) & 1) == 0)
        {
          ExtendedAttributeSize = BOMCopierSourceEntryGetExtendedAttributeSize(v6, i, v3);
          if (!ExtendedAttributeSize)
          {
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5737, "finalize_entry_filesystem", "Could not get xattr size for index %d: %s");
            return;
          }

          v50 = ExtendedAttributeSize;
          v51 = v3;
          v52 = malloc_type_malloc(ExtendedAttributeSize, 0x8EE9F9C3uLL);
          if (!v52)
          {
            v70 = __error();
            strerror(*v70);
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5744, "finalize_entry_filesystem", "Could not allocate buffer for value: %s\n");
            return;
          }

          v53 = v52;
          if (BOMCopierSourceEntryCopyExtendedAttribute(v6, i, v52, v50, 0, v51) != v50)
          {
            BOMCopierErrorCapture(v51, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5751, "finalize_entry_filesystem", "Could not copy attribute value for index %d: %s\n");
            return;
          }

          if (setxattr(*(a2 + 144), v48, v53, v50, 0, 1))
          {
            v71 = *__error();
            v72 = __error();
            strerror(*v72);
            BOMCopierErrorCapture(v51, v71, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5758, "finalize_entry_filesystem", "Could not set xattr %s on %s: %s", v48);
            return;
          }

          v54 = *v172;
          if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *(a2 + 120);
            __bp.st_dev = 136315394;
            *&__bp.st_mode = v48;
            WORD2(__bp.st_ino) = 2080;
            *(&__bp.st_ino + 6) = v55;
            _os_log_impl(&dword_241C0E000, v54, OS_LOG_TYPE_DEFAULT, "Applied xattr %s to %s", &__bp, 0x16u);
          }

          free(v53);
          v3 = v51;
        }
      }
    }

    v56 = *(a2 + 312);
    if (v56)
    {
      v57 = *(a2 + 320);
      if (setxattr(*(a2 + 144), "com.apple.rootless", v57, v56, 0, 1))
      {
        v58 = *__error();
        v59 = __error();
        strerror(*v59);
        BOMCopierErrorCapture(v3, v58, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5780, "finalize_entry_filesystem", "Could not set rootless xattr %s: %s");
LABEL_75:
        v60 = v57;
LABEL_199:
        free(v60);
        return;
      }

      v61 = *v172;
      if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_DEFAULT))
      {
        v62 = *(a2 + 120);
        __bp.st_dev = 136315138;
        *&__bp.st_mode = v62;
        _os_log_impl(&dword_241C0E000, v61, OS_LOG_TYPE_DEFAULT, "Applied xattr com.apple.rootless to %s", &__bp, 0xCu);
      }
    }

    to = 0;
    ACL = BOMCopierSourceEntryGetACL(v6, &to, v3);
    if (ACL && to)
    {
      v64 = acl_from_text(ACL);
      if (!v64)
      {
        v73 = *__error();
        v74 = __error();
        strerror(*v74);
        BOMCopierErrorCapture(v3, v73, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5811, "finalize_entry_filesystem", "Could not create ACL from text [%s]: %s");
        return;
      }

      v65 = v64;
      v66 = *(a2 + 144);
      if (v8 == 9)
      {
        v67 = open(v66, 0x200000);
        if (v67 == -1)
        {
          v126 = *__error();
          v127 = __error();
          strerror(*v127);
          BOMCopierErrorCapture(v3, v126, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5824, "finalize_entry_filesystem", "Unable to open the symlink %s: %s\n");
          return;
        }

        v68 = v67;
        v69 = acl_set_fd_np(v67, v65, ACL_TYPE_EXTENDED);
        close(v68);
      }

      else
      {
        v69 = acl_set_file(v66, ACL_TYPE_EXTENDED, v65);
      }

      acl_free(v65);
      if (v69)
      {
        v85 = __error();
        strerror(*v85);
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5839, "finalize_entry_filesystem", "Could not set ACL on %s: %s");
        return;
      }

      v93 = *v172;
      if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_DEFAULT))
      {
        v94 = *(a2 + 144);
        __bp.st_dev = 136315138;
        *&__bp.st_mode = v94;
        _os_log_impl(&dword_241C0E000, v93, OS_LOG_TYPE_DEFAULT, "Applied ACL to %s", &__bp, 0xCu);
      }
    }

    if (v8 == 8)
    {
      v95 = v172[3];
      if (v95)
      {
        if (setxattr(*(a2 + 144), "com.apple.provenance", v95, v172[4], 0, 1))
        {
          v96 = *__error();
          v97 = __error();
          strerror(*v97);
          BOMCopierErrorCapture(v3, v96, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5864, "finalize_entry_filesystem", "Could not set provenance xattr %s: %s");
          return;
        }

        v122 = *v172;
        if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_DEFAULT))
        {
          v123 = *(a2 + 120);
          __bp.st_dev = 136315138;
          *&__bp.st_mode = v123;
          _os_log_impl(&dword_241C0E000, v122, OS_LOG_TYPE_DEFAULT, "Applied xattr com.apple.provenance to %s", &__bp, 0xCu);
        }
      }
    }

    else if (v8 != 6)
    {
      goto LABEL_145;
    }

    Flags = BOMCopierSourceEntryGetFlags(v6);
    if (*(v172 + 302))
    {
      v99 = Flags;
    }

    else
    {
      v99 = Flags & 0xFFF7FFFF;
    }

    if (*(a2 + 153) == 1 && *(v172 + 303) == 1)
    {
      v99 |= *(a2 + 284) & 0x80000;
    }

    memset(&__bp, 0, sizeof(__bp));
    if (lstat(*(a2 + 144), &__bp))
    {
      v100 = *__error();
      v101 = __error();
      strerror(*v101);
      BOMCopierErrorCapture(v3, v100, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5919, "finalize_entry_filesystem", "Could not lstat %s: %s\n");
      return;
    }

    if (BOMCopierSourceEntryIsCompressed(v6) && !*(v172 + 113))
    {
      v99 &= ~0x20u;
    }

    if (*(v172 + 112) == 1 && (__bp.st_flags & 0x40000020) == 0x20)
    {
      v99 |= 0x20u;
    }

    v102 = geteuid();
    v103 = v99 & 0xC000FFFF;
    if (!v102)
    {
      v103 = v99;
    }

    if ((~v103 & 0x40000020) != 0)
    {
      v104 = v103;
    }

    else
    {
      v104 = v103 & 0xBFFFFFDF;
    }

    if (v104)
    {
      if (change_flags(*(a2 + 144), __bp.st_flags, v104) && *__error() != 45)
      {
        v139 = *__error();
        v140 = *(a2 + 144);
        st_flags = __bp.st_flags;
        v142 = __error();
        strerror(*v142);
        BOMCopierErrorCapture(v3, v139, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5982, "finalize_entry_filesystem", "Could not change file flags on %s from %u to %u: %s. Calling error handler", v140, st_flags);
        return;
      }

      v105 = *v172;
      if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_DEFAULT))
      {
        v106 = *(a2 + 120);
        *v176 = 136315650;
        *&v176[4] = v106;
        *&v176[12] = 1024;
        *&v176[14] = __bp.st_flags;
        *&v176[18] = 1024;
        *&v176[20] = v104;
        _os_log_impl(&dword_241C0E000, v105, OS_LOG_TYPE_DEFAULT, "Changed file flags on %s from %u to %u", v176, 0x18u);
      }
    }

LABEL_145:
    apply_retention_policy(v172, a2, v3);
    if (v107)
    {
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6000, "finalize_entry_filesystem", "Could not apply retention policy");
      return;
    }

    v108 = *(v172 + 2);
    UserID = BOMCopierSourceEntryGetUserID(v6);
    GroupID = BOMCopierSourceEntryGetGroupID(v6);
    Mode = BOMCopierSourceEntryGetMode(v6);
    v112 = Mode;
    if (*(v172 + 2) || (*(v172 + 305) & 1) != 0)
    {
      v113 = (v8 == 8) & *(v172 + 306);
    }

    else
    {
      if ((*(v172 + 20) & 1) == 0)
      {
        if (v8 != 8 || (*(v172 + 306) & 1) == 0)
        {
          goto LABEL_159;
        }

        v113 = 1;
        v114 = Mode;
LABEL_151:
        if (v113)
        {
          v115 = v114 & 0xFFB6;
        }

        else
        {
          v115 = v114;
        }

        if (v112 != v115)
        {
          v195 = 0u;
          memset(v196, 0, sizeof(v196));
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          memset(&__bp, 0, sizeof(__bp));
          strmode(v112, &__bp);
          v188 = 0u;
          memset(v189, 0, sizeof(v189));
          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v181 = 0u;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          memset(v176, 0, sizeof(v176));
          strmode(v115, v176);
          v116 = *v172;
          if (*v172 && os_log_type_enabled(*v172, OS_LOG_TYPE_DEFAULT))
          {
            v117 = *(a2 + 120);
            *buf = 136315650;
            *&buf[4] = v117;
            *&buf[12] = 2080;
            *&buf[14] = &__bp;
            *&buf[22] = 2080;
            v175 = v176;
            _os_log_impl(&dword_241C0E000, v116, OS_LOG_TYPE_DEFAULT, "Filtering the mode for %s from %s to %s", buf, 0x20u);
          }

          LOWORD(v112) = v115;
        }

LABEL_159:
        v118 = "symlink";
        if (v8 > 13)
        {
          if (v8 <= 15)
          {
            if (v8 != 14)
            {
LABEL_172:
              if (v8 == 15)
              {
                v128 = "extra regular file";
              }

              else
              {
                v128 = "regular file";
              }

              if (!v108 && chown(*(a2 + 120), UserID, GroupID))
              {
                v167 = *__error();
                v168 = *(a2 + 120);
                v169 = __error();
                strerror(*v169);
                BOMCopierErrorCapture(v3, v167, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6176, "finalize_entry_filesystem", "Could not chown %s to %d:%d: %s", v168, UserID);
                return;
              }

              if (chmod(*(a2 + 120), v112))
              {
                v195 = 0u;
                memset(v196, 0, sizeof(v196));
                v193 = 0u;
                v194 = 0u;
                v191 = 0u;
                v192 = 0u;
                memset(&__bp, 0, sizeof(__bp));
                strmode(v112, &__bp);
                v129 = *__error();
                v130 = *(a2 + 120);
                v131 = __error();
                strerror(*v131);
                BOMCopierErrorCapture(v3, v129, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6188, "finalize_entry_filesystem", "Could not chmod %s %s to %s: %s", v128, v130);
                return;
              }

              goto LABEL_215;
            }

            v145 = "extra directory";
            goto LABEL_210;
          }

          if (v8 != 16)
          {
            if (v8 != 18)
            {
              goto LABEL_220;
            }

            v118 = "replay symlink";
          }
        }

        else
        {
          if (v8 <= 8)
          {
            if (v8 != 6)
            {
              if (v8 != 8)
              {
                goto LABEL_220;
              }

              goto LABEL_172;
            }

            v145 = "directory";
            goto LABEL_210;
          }

          if (v8 != 9)
          {
            if (v8 == 13)
            {
              v145 = "post-order directory";
LABEL_210:
              if (!v108 && chown(*(a2 + 120), UserID, GroupID))
              {
                v164 = *__error();
                v165 = *(a2 + 120);
                v166 = __error();
                strerror(*v166);
                BOMCopierErrorCapture(v3, v164, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6124, "finalize_entry_filesystem", "Could not chown %s to %d:%d: %s", v165, UserID);
                return;
              }

              if ((*(a2 + 153) != 1 || *(v172 + 43)) && chmod(*(a2 + 120), v112))
              {
                v195 = 0u;
                memset(v196, 0, sizeof(v196));
                v193 = 0u;
                v194 = 0u;
                v191 = 0u;
                v192 = 0u;
                memset(&__bp, 0, sizeof(__bp));
                strmode(v112, &__bp);
                v161 = *__error();
                v162 = *(a2 + 120);
                v163 = __error();
                strerror(*v163);
                BOMCopierErrorCapture(v3, v161, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6154, "finalize_entry_filesystem", "Could not chmod %s %s to %s: %s", v145, v162);
                return;
              }

              goto LABEL_215;
            }

LABEL_220:
            BOMCopierSourceEntryTypeString(v8);
            BOMCopierErrorCapture(v3, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6232, "finalize_entry_filesystem", "Unsupported BOMCopierSourceEntryType: %s");
            return;
          }
        }

        if (!v108 && lchown(*(a2 + 120), UserID, GroupID))
        {
          v158 = *__error();
          v159 = *(a2 + 120);
          v160 = __error();
          strerror(*v160);
          BOMCopierErrorCapture(v3, v158, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6213, "finalize_entry_filesystem", "Could not lchown %s to %d:%d: %s", v159, UserID);
          return;
        }

        if (lchmod(*(a2 + 120), v112))
        {
          v195 = 0u;
          memset(v196, 0, sizeof(v196));
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          memset(&__bp, 0, sizeof(__bp));
          strmode(v112, &__bp);
          v146 = *__error();
          v147 = *(a2 + 120);
          v148 = __error();
          strerror(*v148);
          BOMCopierErrorCapture(v3, v146, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6225, "finalize_entry_filesystem", "Could not lchmod %s %s to %s: %s", v118, v147);
          return;
        }

LABEL_215:
        if (set_timestamps(v6, a2, *v172, v3))
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6248, "finalize_entry_filesystem", "Could not set timestamps on destination entry");
        }

        return;
      }

      HonorsSetuid = BOMCopierSourceEntryGetHonorsSetuid(v6);
      v113 = (v8 == 8) & *(v172 + 306);
      if ((v8 == 8) & *(v172 + 306)) == 0 && (HonorsSetuid)
      {
        goto LABEL_159;
      }

      v114 = v112;
      if (HonorsSetuid)
      {
        goto LABEL_151;
      }
    }

    v114 = v112 & 0xF1FF;
    goto LABEL_151;
  }

  if (Type != 17)
  {
    if (Type == 18)
    {
      SymlinkTarget = BOMCopierSourceEntryGetSymlinkTarget(*(a2 + 8));
      if (!SymlinkTarget)
      {
        v30 = *__error();
        BOMCopierErrorCapture(v3, v30, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5322, "finalize_entry_filesystem", "Missing symlink target for %s");
        return;
      }

      v21 = SymlinkTarget;
      if (unlink(*(a2 + 120)))
      {
        v22 = *__error();
        v23 = __error();
        strerror(*v23);
        BOMCopierErrorCapture(v3, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5329, "finalize_entry_filesystem", "Could not unlink placeholder at %s: %s");
        return;
      }

      if (symlink(v21, *(a2 + 120)))
      {
        v41 = *__error();
        v42 = *(a2 + 120);
        v43 = __error();
        strerror(*v43);
        BOMCopierErrorCapture(v3, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5336, "finalize_entry_filesystem", "Could not symlink %s to %s: %s", v42);
        return;
      }
    }

    else if (Type == 19)
    {
      if (*(a1 + 2) || (v31 = BOMCopierSourceEntryGetUserID(v6), v32 = BOMCopierSourceEntryGetGroupID(v6), !chown(*(a2 + 120), v31, v32)))
      {
        v9 = BOMCopierSourceEntryGetMode(v6);
        if ((*(a1 + 2) || (*(a1 + 305) & 1) != 0 || *(a1 + 20) == 1 && (BOMCopierSourceEntryGetHonorsSetuid(v6) & 1) == 0) && (v9 & 0xE00) != 0)
        {
          v10 = v9 & 0xF1FF;
          v195 = 0u;
          memset(v196, 0, sizeof(v196));
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          memset(&__bp, 0, sizeof(__bp));
          strmode(v9, &__bp);
          v188 = 0u;
          memset(v189, 0, sizeof(v189));
          v186 = 0u;
          v187 = 0u;
          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v181 = 0u;
          v179 = 0u;
          v180 = 0u;
          v177 = 0u;
          v178 = 0u;
          memset(v176, 0, sizeof(v176));
          strmode(v9 & 0xF1FF, v176);
          v11 = *a1;
          if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a2 + 120);
            *buf = 136315650;
            *&buf[4] = v12;
            *&buf[12] = 2080;
            *&buf[14] = &__bp;
            *&buf[22] = 2080;
            v175 = v176;
            _os_log_impl(&dword_241C0E000, v11, OS_LOG_TYPE_DEFAULT, "Filtering the mode for %s from %s to %s", buf, 0x20u);
          }

          LOWORD(v9) = v10;
        }

        if (chmod(*(a2 + 120), v9))
        {
          v195 = 0u;
          memset(v196, 0, sizeof(v196));
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          memset(&__bp, 0, sizeof(__bp));
          strmode(v9, &__bp);
          v13 = *__error();
          v14 = *(a2 + 120);
          v15 = __error();
          strerror(*v15);
          BOMCopierErrorCapture(v3, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5669, "finalize_entry_filesystem", "Could not chmod relay directory %s to %s: %s", v14);
        }

        else if (set_timestamps(v6, a2, *a1, v3))
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5684, "finalize_entry_filesystem", "Could not set timestamps on destination entry");
        }
      }

      else
      {
        v33 = *__error();
        v34 = *(a2 + 120);
        v35 = __error();
        strerror(*v35);
        BOMCopierErrorCapture(v3, v33, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5602, "finalize_entry_filesystem", "Could not chown %s to %d:%d: %s", v34, v31);
      }

      return;
    }

    goto LABEL_58;
  }

  AppleDoubleTarget = BOMCopierSourceEntryGetAppleDoubleTarget(v6);
  to = 0;
  asprintf(&to, "%s/%s", *(a2 + 136), AppleDoubleTarget);
  if (!to)
  {
    v27 = *__error();
    v28 = *(a2 + 136);
    v29 = __error();
    strerror(*v29);
    BOMCopierErrorCapture(v3, v27, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5354, "finalize_entry_filesystem", "Could not construct target path for %s and %s: %s", v28);
    return;
  }

  memset(&__bp, 0, sizeof(__bp));
  if (lstat(to, &__bp))
  {
    v18 = *__error();
    v19 = __error();
    strerror(*v19);
    BOMCopierErrorCapture(v3, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5362, "finalize_entry_filesystem", "Could not lstat %s: %s");
    return;
  }

  if (*(a1 + 160))
  {
    v36 = 9175045;
  }

  else
  {
    v36 = 9175044;
  }

  if ((copyfile(*(a2 + 120), to, 0, v36) & 0x80000000) == 0)
  {
    v37 = *a1;
    if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a2 + 120);
      *v176 = 136315394;
      *&v176[4] = v38;
      *&v176[12] = 2080;
      *&v176[14] = to;
      _os_log_impl(&dword_241C0E000, v37, OS_LOG_TYPE_DEFAULT, "Merged AppleDouble %s to %s", v176, 0x16u);
    }

    if (unlink(*(a2 + 120)))
    {
      v39 = *__error();
      v40 = __error();
      strerror(*v40);
      BOMCopierErrorCapture(v3, v39, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5454, "finalize_entry_filesystem", "Could not unlink %s: %s");
LABEL_198:
      v60 = to;
      goto LABEL_199;
    }

    file = acl_get_file(to, ACL_TYPE_EXTENDED);
    if (file)
    {
      v87 = file;
      v88 = acl_init(0);
      if (!v88)
      {
        v143 = *__error();
        v144 = __error();
        strerror(*v144);
        BOMCopierErrorCapture(v3, v143, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5483, "finalize_entry_filesystem", "Could not create empty ACL for %s: %s");
        goto LABEL_198;
      }

      v89 = v88;
      v90 = acl_set_file(to, ACL_TYPE_EXTENDED, v88);
      free(v89);
      if (v90)
      {
        v91 = *__error();
        v92 = __error();
        strerror(*v92);
        BOMCopierErrorCapture(v3, v91, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5494, "finalize_entry_filesystem", "Could not remove saved ACL from %s: %s");
        goto LABEL_198;
      }

      v150 = acl_set_file(to, ACL_TYPE_EXTENDED, v87);
      acl_free(v87);
      if (v150)
      {
        v151 = *__error();
        v152 = __error();
        strerror(*v152);
        BOMCopierErrorCapture(v3, v151, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5534, "finalize_entry_filesystem", "Could not re-apply saved ACL to %s: %s");
        goto LABEL_198;
      }
    }

    *&buf[16] = 0;
    *buf = xmmword_241C78E00;
    *v176 = __bp.st_mtimespec;
    *&v176[16] = __bp.st_atimespec;
    if (setattrlist(to, buf, v176, 0x20uLL, 1u) && *__error() != 13)
    {
      v153 = *__error();
      v154 = __error();
      strerror(*v154);
      BOMCopierErrorCapture(v3, v153, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5570, "finalize_entry_filesystem", "Could not setattrlist timestamps for %s: %s");
    }

    else
    {
      free(to);
    }

    return;
  }

  if (*__error() != 45)
  {
    v119 = *__error();
    v120 = *(a2 + 120);
    v121 = __error();
    strerror(*v121);
    BOMCopierErrorCapture(v3, v119, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5443, "finalize_entry_filesystem", "Could not merge %s to %s: %s", v120);
    goto LABEL_198;
  }

  free(to);
  v81 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v82 = *(a2 + 120);
    *v176 = 136315138;
    *&v176[4] = v82;
    _os_log_impl(&dword_241C0E000, v81, OS_LOG_TYPE_DEFAULT, "AppleDouble merge not supported on this filesystem. Unlinking %s", v176, 0xCu);
  }

  if (unlink(*(a2 + 120)))
  {
    v83 = *__error();
    v84 = __error();
    strerror(*v84);
    BOMCopierErrorCapture(v3, v83, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 5436, "finalize_entry_filesystem", "Could not unlink %s: %s");
  }
}

uint64_t finalize_entry_apple_archive(uint64_t a1, void *a2)
{
  v4 = *(a1 + 344);
  if (v4 && (*(a1 + 328) = 4997953, BOMCopierDestinationEntryWrite(a1, v4, *(a1 + 352), a2) != *(a1 + 352)))
  {
    v7 = *__error();
    BOMCopierErrorCapture(a2, v7, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6277, "finalize_entry_apple_archive", "Could not write encoded AppleArchive ACL buffer to the destination");
  }

  else
  {
    v5 = *(a1 + 360);
    if (!v5)
    {
      return 0;
    }

    *(a1 + 328) = 5521752;
    if (BOMCopierDestinationEntryWrite(a1, v5, *(a1 + 368), a2) == *(a1 + 368))
    {
      return 0;
    }

    v8 = *__error();
    BOMCopierErrorCapture(a2, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6297, "finalize_entry_apple_archive", "Could not write encoded AppleArchive XAT buffer to the destination");
  }

  return 1;
}

uint64_t BOMCopierDestinationEntryGetMatchType(uint64_t a1, void *a2)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1958, "BOMCopierDestinationEntryGetMatchType", "destination_entry is NULL", v2, v3);
  return 0;
}

uint64_t BOMCopierDestinationEntryGetMatchRecordCount(uint64_t a1, void *a2)
{
  if (a1)
  {
    return *(a1 + 36);
  }

  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1976, "BOMCopierDestinationEntryGetMatchRecordCount", "destination_entry is NULL", v2, v3);
  return 0;
}

uint64_t BOMCopierDestinationEntryGetMatchRecord(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (*(a1 + 36) <= a2)
    {
      BOMCopierErrorCapture(a4, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2002, "BOMCopierDestinationEntryGetMatchRecord", "index %d is out of range", a2);
      return 22;
    }

    else if (a3)
    {
      v4 = 0;
      v5 = *(a1 + 40) + 40 * a2;
      v6 = *v5;
      v7 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *a3 = v6;
      *(a3 + 16) = v7;
    }

    else
    {
      v4 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2008, "BOMCopierDestinationEntryGetMatchRecord", "match_record is NULL");
    }
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1996, "BOMCopierDestinationEntryGetMatchRecord", "destination_entry is NULL");
  }

  return v4;
}

uint64_t BOMCopierDestinationEntryWriteFatHeader(uint64_t a1, size_t *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      BinaryType = BOMCopierSourceEntryGetBinaryType(*(a1 + 8));
      if ((BinaryType - 5) > 0xFFFFFFFD)
      {
        v8 = BinaryType;
        v9 = 20;
        if (BinaryType == 4)
        {
          v9 = 32;
        }

        v10 = v9 * *(a1 + 48) + 8;
        v11 = malloc_type_malloc(v10, 0x973BE3EDuLL);
        if (v11)
        {
          v12 = v11;
          if (v8 == 4)
          {
            v13 = -889275713;
          }

          else
          {
            v13 = -889275714;
          }

          v27 = __PAIR64__(*(a1 + 48), v13);
          BOMSwapFatHeader(&v27, 2);
          *v12 = v27;
          if (*(a1 + 36))
          {
            v14 = 0;
            v15 = 0;
            v16 = v12 + 8;
            do
            {
              v17 = *(a1 + 40);
              if (*(v17 + v14) == 1)
              {
                v18 = v17 + v14;
                if (v8 == 4)
                {
                  memset(v26, 0, sizeof(v26));
                  *&v26[0] = *(v18 + 4);
                  *(v26 + 8) = *(v18 + 16);
                  DWORD2(v26[1]) = *(v18 + 32);
                  BOMSwapFatArch64(v26, 1u, 2);
                  v19 = v26[1];
                  *v16 = v26[0];
                  v16[1] = v19;
                  v16 += 2;
                }

                else
                {
                  memset(v26, 0, 20);
                  *&v26[0] = *(v18 + 4);
                  *(&v26[0] + 1) = vmovn_s64(*(v18 + 16));
                  LODWORD(v26[1]) = *(v18 + 32);
                  BOMSwapFatArch(v26, 1u, 2);
                  v20 = v26[1];
                  *v16 = v26[0];
                  *(v16 + 4) = v20;
                  v16 = (v16 + 20);
                }
              }

              ++v15;
              v14 += 40;
            }

            while (v15 < *(a1 + 36));
          }

          v21 = BOMCopierDestinationEntryWrite(a1, v12, v10, a3);
          free(v12);
          if (v21 == v10)
          {
            v7 = 0;
            *a2 = v10;
          }

          else
          {
            v7 = 1;
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2147, "BOMCopierDestinationEntryWriteFatHeader", "Could not write the fat header to the destination entry");
          }
        }

        else
        {
          v22 = *__error();
          v23 = __error();
          v24 = strerror(*v23);
          BOMCopierErrorCapture(a3, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2074, "BOMCopierDestinationEntryWriteFatHeader", "Could not allocate %ld bytes: %s", v10, v24);
          return 1;
        }
      }

      else
      {
        v7 = 22;
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2042, "BOMCopierDestinationEntryWriteFatHeader", "source entry is not a fat file");
      }
    }

    else
    {
      v7 = 22;
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2035, "BOMCopierDestinationEntryWriteFatHeader", "fat_header_size is NULL");
    }
  }

  else
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2029, "BOMCopierDestinationEntryWriteFatHeader", "destination_entry is NULL");
  }

  return v7;
}

uint64_t BOMCopierDestinationEntryWrite(uint64_t a1, char *__buf, size_t nbyte, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2174, "BOMCopierDestinationEntryWrite", "destination_entry is NULL");
    return -1;
  }

  if (!__buf)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2180, "BOMCopierDestinationEntryWrite", "buffer is NULL");
    return -1;
  }

  if (!nbyte)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2186, "BOMCopierDestinationEntryWrite", "num_bytes is 0");
    return -1;
  }

  v8 = 0;
  v9 = *a1;
  if (*a1 > 1)
  {
    if (v9 == 2)
    {
      v14 = *(a1 + 328);
      if (AAArchiveStreamWriteBlob(*(a1 + 336), v14, __buf, nbyte))
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6986, "write_data_apple_archive", "Could not write to AppleArchive: %u");
        return -1;
      }
    }

    else if (v9 != 3)
    {
      return v8;
    }

    *(a1 + 112) += nbyte;
    v8 = nbyte;
LABEL_32:
    v15 = *(a1 + 24);
    if (v15 && v8 >= 1 && BOMCopierDataAnalyzerUpdate(v15, __buf, v8, a4))
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2236, "BOMCopierDestinationEntryWrite", "Could not update data analyzer");
      return -1;
    }

    return v8;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      return v8;
    }

    if (!*(a1 + 72))
    {
      v8 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2207, "BOMCopierDestinationEntryWrite", "destination_entry->archive is NULL");
      return v8;
    }

    v8 = write_data_libarchive(a1, __buf, nbyte, a4);
    goto LABEL_32;
  }

  v8 = 0;
  v10 = __buf;
  while (1)
  {
    if (nbyte - v8 >= 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFFLL;
    }

    else
    {
      v11 = nbyte - v8;
    }

    if (*(a1 + 160))
    {
      v12 = ParallelCompressionAFSCStreamWrite();
      if (v12 == -1)
      {
        v8 = -1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6796, "write_data_filesystem", "Could not AFSC compress %ld bytes: %ld\n");
        return v8;
      }

      goto LABEL_23;
    }

    v12 = write(*(a1 + 68), v10, v11);
    if (v12 == -1)
    {
      break;
    }

LABEL_23:
    v10 += v12;
    v8 += v12;
    if (v12)
    {
      v13 = v8 == nbyte;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      *(a1 + 112) += v8;
      goto LABEL_32;
    }
  }

  v17 = __error();
  strerror(*v17);
  BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6804, "write_data_filesystem", "Could not write %ld bytes: %s\n");
  return -1;
}

uint64_t write_data_libarchive(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = 0;
  while (1)
  {
    if ((a3 - v8) >= 0x7FFFFFFF)
    {
      v9 = 0x7FFFFFFFLL;
    }

    else
    {
      v9 = a3 - v8;
    }

    if (a1[11] >= 1)
    {
      v11 = a1[12];
      v10 = a1[13];
      v12 = v10 + v9;
      v13 = v11 - v10;
      if (v12 > v11)
      {
        v9 = v13;
      }
    }

    v14 = archive_write_data();
    if (!v14)
    {
LABEL_18:
      a1[14] += v8;
      return v8;
    }

    v15 = v14;
    if (v14 == -1)
    {
      v22 = archive_error_string();
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6899, "write_data_libarchive", "Could not archive file data (%ld bytes): %s\n", v9, v22);
      return -1;
    }

    v8 += v14;
    v16 = a1[11];
    if (v16 >= 1)
    {
      v17 = a1[12];
      v18 = a1[13] + v14;
      a1[13] = v18;
      if (v17 == v18)
      {
        v19 = a1[7];
        v20 = v19 - a1[14] - v8;
        v21 = v20 >= v16 ? v16 : v19 - a1[14] - v8;
        a1[12] = v21;
        a1[13] = 0;
        if (v20 >= 1)
        {
          archive_entry_set_size();
          if (archive_write_header())
          {
            break;
          }
        }
      }
    }

    a2 += v15;
    if (v8 == a3)
    {
      goto LABEL_18;
    }
  }

  v24 = archive_error_string();
  v8 = 1;
  BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6959, "write_data_libarchive", "Could not write next segment archive entry: %s\n", v24);
  return v8;
}

uint64_t BOMCopierDestinationEntrySeek(AAArchiveStream *a1, void *data, unint64_t a3, off_t len, void *a5)
{
  if (!a1)
  {
    v15 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2258, "BOMCopierDestinationEntrySeek", "destination_entry is NULL");
    return v15;
  }

  v10 = *a1;
  if (*a1 != 2)
  {
    if (v10 != 1)
    {
      if (!v10 && lseek(*(a1 + 17), len, 1) == -1)
      {
        v11 = *__error();
        v12 = *(a1 + 17);
        v13 = __error();
        v14 = strerror(*v13);
        BOMCopierErrorCapture(a5, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7006, "seek_filesystem", "Could not lseek in the destination %d:%lu: %s", v12, len, v14);
        return 1;
      }

      goto LABEL_26;
    }

    if (!data)
    {
      v15 = 22;
      BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2283, "BOMCopierDestinationEntrySeek", "seek_buffer is NULL");
      return v15;
    }

    if (!a3)
    {
      v15 = 22;
      BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2289, "BOMCopierDestinationEntrySeek", "seek_buffer is NULL");
      return v15;
    }

    if (!a1[9])
    {
      v15 = 22;
      BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2295, "BOMCopierDestinationEntrySeek", "destination_entry->archive is NULL");
      return v15;
    }

    if (len)
    {
      v16 = 0;
      while (1)
      {
        v17 = len - v16 >= a3 ? a3 : len - v16;
        if (write_data_libarchive(a1, data, v17, a5) != v17)
        {
          break;
        }

        v16 += v17;
        if (v16 == len)
        {
          goto LABEL_26;
        }
      }

      v15 = 1;
      BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7035, "seek_libarchive", "Could not write zeroes to the archive for seeking");
      return v15;
    }

LABEL_26:
    v21 = a1[3];
    if (!v21 || !BOMCopierDataAnalyzerUpdate(v21, data, len, a5))
    {
      return 0;
    }

    v15 = 1;
    BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2322, "BOMCopierDestinationEntrySeek", "Could not update data analyzer");
    return v15;
  }

  if (!len)
  {
    goto LABEL_26;
  }

  v18 = 0;
  while (1)
  {
    v19 = len - v18 >= a3 ? a3 : len - v18;
    v20.ikey = 5521732;
    if (AAArchiveStreamWriteBlob(a1[42], v20, data, v19))
    {
      break;
    }

    v18 += v19;
    if (v18 == len)
    {
      goto LABEL_26;
    }
  }

  v15 = 1;
  BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7067, "seek_apple_archive", "Could not write zeroes to AppleArchive: %u");
  return v15;
}

uint64_t BOMCopierDestinationEntryGetType(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 172);

    return BOMCopierSourceEntryModeToType(v4);
  }

  else
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2341, "BOMCopierDestinationEntryGetType", "destination_entry is NULL", v2, v3);
    return 0;
  }
}

uint64_t BOMCopierDestinationEntryGetPath(uint64_t a1, void *a2)
{
  if (a1)
  {
    return *(a1 + 120);
  }

  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2359, "BOMCopierDestinationEntryGetPath", "destination_entry is NULL", v2, v3);
  return 0;
}

uint64_t BOMCopierDestinationEntryGetTotalWritten(uint64_t a1, void *a2)
{
  if (a1)
  {
    return *(a1 + 112);
  }

  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2377, "BOMCopierDestinationEntryGetTotalWritten", "destination_entry is NULL", v2, v3);
  return 0;
}

uint64_t BOMCopierDestinationEntrySkipped(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2395, "BOMCopierDestinationEntrySkipped", "destination_entry is NULL", v2, v3);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t BOMCopierDestinationSetInit(void *a1, size_t a2, size_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    v13 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2416, "BOMCopierDestinationSetInit", "destination_set is NULL");
    return v13;
  }

  if (!a2)
  {
    v13 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2422, "BOMCopierDestinationSetInit", "io_buffer_size is 0");
    return v13;
  }

  if (!a3)
  {
    v13 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2428, "BOMCopierDestinationSetInit", "zero_buffer_size is 0");
    return v13;
  }

  if (!a4)
  {
    v13 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2434, "BOMCopierDestinationSetInit", "copier_destination is NULL");
    return v13;
  }

  bzero(a1, 0x430uLL);
  *a1 = 1;
  v10 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  a1[1] = v10;
  if (!v10)
  {
    v15 = *__error();
    v16 = __error();
    strerror(*v16);
    BOMCopierErrorCapture(a5, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2450, "BOMCopierDestinationSetInit", "Could not allocate destination list: %s");
    return 1;
  }

  *v10 = a4;
  v11 = malloc_type_valloc(a2, 0x58084FA9uLL);
  a1[2] = v11;
  if (!v11)
  {
    v17 = *__error();
    v18 = __error();
    strerror(*v18);
    BOMCopierErrorCapture(a5, v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2463, "BOMCopierDestinationSetInit", "Could not allocate I/O buffer: %s");
    return 1;
  }

  a1[3] = a2;
  v12 = malloc_type_valloc(a3, 0xAFCB28E1uLL);
  a1[4] = v12;
  if (!v12)
  {
    v19 = *__error();
    v20 = __error();
    strerror(*v20);
    BOMCopierErrorCapture(a5, v19, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2472, "BOMCopierDestinationSetInit", "Could not allocate zero buffer: %s");
    return 1;
  }

  bzero(v12, a3);
  v13 = 0;
  a1[5] = a3;
  return v13;
}

void BOMCopierDestinationSetRelease(void *a1)
{
  if (a1)
  {
    v3 = a1[4];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[1];
    if (v5)
    {
      free(v5);
    }

    bzero(a1, 0x430uLL);
  }

  else
  {

    BOMCopierErrorCapture(0, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2493, "BOMCopierDestinationSetRelease", "destination_set is NULL");
  }
}

uint64_t BOMCopierCopySourceEntryToDestinationSet(int *a1, unsigned int *a2, void *a3)
{
  v3 = a3;
  v134 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v26 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2527, "BOMCopierCopySourceEntryToDestinationSet", "source_entry is NULL");
    return v26;
  }

  if (!a2)
  {
    v26 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2533, "BOMCopierCopySourceEntryToDestinationSet", "destination_set is NULL");
    return v26;
  }

  if (!*(a2 + 4))
  {
    v26 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2539, "BOMCopierCopySourceEntryToDestinationSet", "zero_buffer is NULL");
    return v26;
  }

  if (!*(a2 + 5))
  {
    v26 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2545, "BOMCopierCopySourceEntryToDestinationSet", "zero_buffer_size is 0");
    return v26;
  }

  v6 = *a2;
  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x1030040A1FD43D8uLL);
  if (!v7)
  {
    v28 = *__error();
    v29 = __error();
    v30 = strerror(*v29);
    BOMCopierErrorCapture(v3, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2574, "BOMCopierCopySourceEntryToDestinationSet", "Could not allocate copy state: %s", v30);
    return 1;
  }

  v8 = v7;
  *v7 = *a2;
  *(v7 + 1) = *(a2 + 2);
  *(v7 + 1) = *(a2 + 6);
  *(v7 + 4) = *(a2 + 5);
  *(v7 + 5) = ***(a2 + 1);
  *(v7 + 6) = a2 + 12;
  v9 = malloc_type_calloc(v6, 0x20uLL, 0x79791115uLL);
  if (!v9)
  {
    v31 = *__error();
    v32 = __error();
    v33 = strerror(*v32);
    BOMCopierErrorCapture(v3, v31, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2592, "BOMCopierCopySourceEntryToDestinationSet", "Could not allocate copy target list: %s", v33);
    release_copy_state(v8);
    return 1;
  }

  if (v6)
  {
    *v131 = v8;
    v10 = 0;
    v11 = *(a2 + 1);
    do
    {
      v12 = *v11++;
      *&v9[v10] = v12;
      v10 += 32;
    }

    while (32 * v6 != v10);
    v13 = v3;
    *(*v131 + 56) = v9;
    v132 = (*v131 + 56);
    IsCompressed = BOMCopierSourceEntryIsCompressed(a1);
    *(*v131 + 64) = 0;
    v15 = (*v131 + 64);
    if (IsCompressed)
    {
      v16 = 0;
      v17 = *(a2 + 1);
      v18 = v6;
      do
      {
        if (*(*v17 + 113) == 1)
        {
          v16 += *(*v17 + 300);
        }

        v17 += 8;
        --v18;
      }

      while (v18);
      if (v16 && v16 == v6)
      {
        *v15 = 1;
      }
    }

    v19 = 0;
    for (i = 0; i != v6; ++i)
    {
      v21 = *(*(a2 + 1) + 8 * i);
      if (IsCompressed && *(v21 + 113) == 1)
      {
        if (*v15)
        {
          v22 = 2;
        }

        else
        {
          v22 = 1;
        }
      }

      else
      {
        v22 = 0;
      }

      if ((*(v21 + 44) - 1) > 1 || (BOMCopierSourceEntryIsRoot(a1) & 1) == 0 && BOMCopierSourceEntryGetType(a1) != 13)
      {
        Entry = BOMCopierDestinationCreateEntry(v21, a1, v22, v13);
        if (!Entry)
        {
          v26 = 1;
          BOMCopierErrorCapture(v13, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2730, "BOMCopierCopySourceEntryToDestinationSet", "Could not create destination entry");
          v47 = *v131;
          goto LABEL_88;
        }

        v24 = *(Entry + 8);
        v25 = *v132 + v19;
        *v25 = v21;
        *(v25 + 8) = Entry;
        *(v25 + 16) = v24;
        if ((v24 - 3) <= 1)
        {
          *v15 = 0;
        }
      }

      v19 += 32;
    }

    v3 = v13;
    v8 = *v131;
  }

  else
  {
    *(v8 + 7) = v9;
    v132 = v8 + 14;
    BOMCopierSourceEntryIsCompressed(a1);
    *(v8 + 64) = 0;
    v15 = v8 + 16;
  }

  v34 = *(v8 + 5);
  if (BOMCopierSourceEntryGetType(a1) != 8)
  {
    goto LABEL_78;
  }

  Size = BOMCopierSourceEntryGetSize(a1);
  v36 = BOMCopierSourceEntryIsCompressed(a1);
  v37 = 0;
  v38 = Size;
  if (Size < 1)
  {
LABEL_63:
    v39 = a1;
    goto LABEL_64;
  }

  v39 = a1;
  if (v36)
  {
    if (*v15 == 1)
    {
      ExtendedAttributeCount = BOMCopierSourceEntryGetExtendedAttributeCount(a1, v3);
      if (ExtendedAttributeCount)
      {
        v41 = ExtendedAttributeCount;
        v42 = 0;
        for (j = 0; j != v41; ++j)
        {
          ExtendedAttributeName = BOMCopierSourceEntryGetExtendedAttributeName(a1, j, v3);
          if (!ExtendedAttributeName)
          {
            v26 = 1;
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7240, "copy_entry_to_destinations", "Could not retrieve extended attribute name for index %u");
            goto LABEL_87;
          }

          v45 = ExtendedAttributeName;
          if (!strcmp(ExtendedAttributeName, "com.apple.ResourceFork"))
          {
            ActualPath = BOMCopierSourceEntryGetActualPath(a1);
            if (!ActualPath)
            {
              v26 = 1;
              BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7262, "copy_entry_to_destinations", "Could not retrieve actual path for source entry");
              goto LABEL_87;
            }

            v113 = BOMCopierSourceEntryNewFromResourceFork(ActualPath, v3);
            if (!v113)
            {
              v26 = 1;
              BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7269, "copy_entry_to_destinations", "Could not create resource fork entry for %s");
              goto LABEL_87;
            }

            v37 = v113;
            v114 = *v8;
            v38 = 1;
            if (v114)
            {
              v115 = *v132 + 8;
              do
              {
                if (*v115)
                {
                  *(*v115 + 155) = 1;
                }

                v115 += 32;
                --v114;
              }

              while (v114);
              v39 = v113;
            }

            else
            {
              v39 = v113;
            }

            goto LABEL_64;
          }

          v42 |= strcmp(v45, "com.apple.decmpfs") == 0;
        }

        BOMCopierSourceEntrySetSize(a1, 0);
        if ((v42 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v46 = "Skipping copying com.apple.decmpfs until finalization";
          goto LABEL_61;
        }
      }

      else
      {
        BOMCopierSourceEntrySetSize(a1, 0);
LABEL_58:
        if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v46 = "Source entry claims to be compressed but there is no com.apple.decmpfs extended attribute. Assuming zero-length file.";
LABEL_61:
          _os_log_impl(&dword_241C0E000, v34, OS_LOG_TYPE_DEFAULT, v46, buf, 2u);
        }
      }

      v38 = 0;
      v37 = 0;
    }

    else
    {
      v37 = 0;
      v38 = 1;
    }

    goto LABEL_63;
  }

LABEL_64:
  v124 = v38;
  v48 = v132;
  v125 = v37;
  if (BOMCopierSourceEntryGetBinaryType(v39) && *v8)
  {
    v49 = 0;
    v50 = (*v132 + 16);
    v51 = *v8;
    do
    {
      v52 = *v50;
      v50 += 8;
      if (v52 == 1)
      {
        ++v49;
      }

      --v51;
    }

    while (v51);
    if (v49 != *v8)
    {
      v123 = Size;
      v83 = 0;
      v84 = 0;
      do
      {
        v85 = *v132 + v83;
        v86 = *(v85 + 8);
        if (v86)
        {
          v87 = *(v85 + 16);
          snprintf(*(v8 + 6), 0x400uLL, "%s", *(v86 + 120));
          if (v87 == 4 || v87 == 1 && BOMCopierSourceEntryGetBinaryType(v39) - 3 <= 1)
          {
            *buf = 0;
            if ((*(v86 + 16) & 1) == 0 && (*(v86 + 154) & 1) == 0)
            {
              if (BOMCopierDestinationEntryWriteFatHeader(v86, buf, v3))
              {
                BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7640, "copy_binary_entry_to_destinations", "Could not write fat header\n", v117);
                goto LABEL_205;
              }

              *(*v132 + v83 + 24) += *buf;
            }
          }
        }

        ++v84;
        v83 += 32;
      }

      while (v84 < *v8);
      ArchCount = BOMCopierSourceEntryGetArchCount(v39);
      Size = v123;
      if (!ArchCount)
      {
        goto LABEL_73;
      }

      v89 = 0;
      v90 = 0;
      v127 = ArchCount;
      v91 = 0uLL;
      while (1)
      {
        *buf = v91;
        *&buf[16] = v91;
        if (BOMCopierSourceEntryGetArchRecord(v39, v89, buf, v3))
        {
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7668, "copy_binary_entry_to_destinations", "Could not get arch record at index %d\n");
          goto LABEL_205;
        }

        v92 = *&buf[8] - v90;
        if (*&buf[8] != v90)
        {
          v90 = *&buf[8];
          if (BOMCopierSourceEntrySeek(v39, v92, *(v8 + 1), *(v8 + 2), v3))
          {
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7684, "copy_binary_entry_to_destinations", "Could not seek to beginning of matching slice\n");
            goto LABEL_205;
          }
        }

        v129 = v90;
        v93 = *v8;
        v91 = 0uLL;
        if (v93)
        {
          v94 = 0;
          for (k = 0; k < v93; ++k)
          {
            v96 = *(*v48 + v94 + 8);
            if (v96)
            {
              snprintf(*(v8 + 6), 0x400uLL, "%s", *(v96 + 120));
              if ((*(v96 + 16) & 1) == 0)
              {
                if (*(v96 + 36) <= v89)
                {
                  BOMCopierErrorCapture(v3, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2002, "BOMCopierDestinationEntryGetMatchRecord", "index %d is out of range", v89);
                  BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7719, "copy_binary_entry_to_destinations", "Could not get match record at index %d\n");
                  goto LABEL_205;
                }

                v97 = *(v96 + 40) + 40 * v89;
                if (*v97)
                {
                  v98 = *(v97 + 16);
                  if (v98 == -1)
                  {
                    BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7733, "copy_binary_entry_to_destinations", "dude offset is wack", v117);
                    goto LABEL_205;
                  }

                  v99 = *(*v48 + v94 + 24);
                  v100 = v98 - v99;
                  if (v98 != v99)
                  {
                    if (BOMCopierDestinationEntrySeek(v96, *(v8 + 3), *(v8 + 4), v98 - v99, v3))
                    {
                      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7745, "copy_binary_entry_to_destinations", "Could not seek %ld bytes to beginning of new slice");
                      goto LABEL_205;
                    }

                    *(*v48 + v94 + 24) += v100;
                  }
                }
              }

              v93 = *v8;
              v91 = 0uLL;
            }

            v94 += 32;
          }
        }

        v101 = *&buf[16];
        if (*&buf[16])
        {
          v102 = 0;
          v90 = v129;
          v121 = v3;
          do
          {
            v103 = v101 - v102;
            if (v103 >= *(v8 + 2))
            {
              v104 = *(v8 + 2);
            }

            else
            {
              v104 = v103;
            }

            if (BOMCopierSourceEntryRead(v39, *(v8 + 1), v104, v3) != v104)
            {
              BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7771, "copy_binary_entry_to_destinations", "Could not read %ld bytes from source");
              goto LABEL_205;
            }

            v130 = v90;
            v105 = *v8;
            v91 = 0uLL;
            if (v105)
            {
              v106 = 0;
              for (m = 0; m < v105; ++m)
              {
                v108 = *(*v132 + v106 + 8);
                if (v108)
                {
                  snprintf(*(v8 + 6), 0x400uLL, "%s", *(v108 + 120));
                  if ((*(v108 + 16) & 1) == 0)
                  {
                    if (*(v108 + 36) <= v89)
                    {
                      v3 = v121;
                      BOMCopierErrorCapture(v121, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2002, "BOMCopierDestinationEntryGetMatchRecord", "index %d is out of range", v89);
                      BOMCopierErrorCapture(v121, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7801, "copy_binary_entry_to_destinations", "Could not get match record at index %d\n");
LABEL_205:
                      v26 = 1;
                      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7356, "copy_entry_to_destinations", "Could not copy file entry to destination entry list", v120);
                      goto LABEL_87;
                    }

                    if ((*(*(v108 + 40) + 40 * v89) & 1) != 0 && (*(v108 + 154) & 1) == 0)
                    {
                      if (BOMCopierDestinationEntryWrite(v108, *(v8 + 1), v104, v121) != v104)
                      {
                        v3 = v121;
                        BOMCopierErrorCapture(v121, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7815, "copy_binary_entry_to_destinations", "Could not write %ld bytes to destination: %s\n");
                        goto LABEL_205;
                      }

                      v109 = (*v132 + v106);
                      v109[3] += v104;
                      v110 = *v109;
                      v111 = *(*v109 + 248);
                      if (v111)
                      {
                        v111(v110, v39, v108, *(v110 + 256));
                      }
                    }
                  }

                  v105 = *v8;
                  v91 = 0uLL;
                }

                v106 += 32;
              }
            }

            v90 = v104 + v130;
            v102 += v104;
            v101 = *&buf[16];
            v3 = v121;
          }

          while (v102 != *&buf[16]);
        }

        else
        {
          v90 = v129;
        }

        ++v89;
        v48 = v132;
        Size = v123;
        if (v89 == v127)
        {
          goto LABEL_73;
        }
      }
    }
  }

  v53 = BOMCopierSourceEntryGetSize(v39);
  IsStreamed = BOMCopierSourceEntryIsStreamed(v39);
  v55 = v53 == 0;
  if (!v53 && (IsStreamed & 1) == 0)
  {
    goto LABEL_73;
  }

  v122 = Size;
  v64 = 0;
  v65 = v55 & IsStreamed;
  v128 = v53;
  v126 = v55 & IsStreamed;
  while (1)
  {
    v66 = (v53 - v64) >= *(v8 + 2) ? *(v8 + 2) : v53 - v64;
    v67 = v65 ? *(v8 + 2) : v66;
    v68 = BOMCopierSourceEntryRead(v39, *(v8 + 1), v67, v3);
    v69 = v65;
    v70 = v68;
    if (v69)
    {
      break;
    }

    if ((v68 & 0x8000000000000000) != 0)
    {
      BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7525, "copy_file_entry_to_destinations", "Could not read %lu bytes from source");
      goto LABEL_185;
    }

    if (!v68)
    {
      v116 = *(v8 + 5);
      Size = v122;
      if (!v116 || !os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v80 = "Read 0 bytes from deterministic source.";
      goto LABEL_192;
    }

LABEL_102:
    if (*v8)
    {
      v71 = 0;
      for (n = 0; n < *v8; ++n)
      {
        v73 = *(*v48 + v71 + 8);
        if (v73)
        {
          snprintf(*(v8 + 6), 0x400uLL, "%s", *(v73 + 120));
          if ((*(v73 + 16) & 1) == 0 && (*(v73 + 154) & 1) == 0)
          {
            v74 = *(v8 + 5);
            if (v74 && os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_DEFAULT))
            {
              v75 = *(v73 + 120);
              *buf = 134218242;
              *&buf[4] = v70;
              *&buf[12] = 2080;
              *&buf[14] = v75;
              _os_log_impl(&dword_241C0E000, v74, OS_LOG_TYPE_DEFAULT, "Copying %lu bytes to %s", buf, 0x16u);
            }

            if (BOMCopierDestinationEntryWrite(v73, *(v8 + 1), v70, v3) != v70)
            {
              BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7559, "copy_file_entry_to_destinations", "Could not write %ld bytes to destination");
              goto LABEL_185;
            }

            v48 = v132;
            v76 = *(*v132 + v71);
            v77 = *(v76 + 248);
            if (v77)
            {
              v77(v76, v39, v73, *(v76 + 256));
            }
          }
        }

        v71 += 32;
      }
    }

    v64 += v70;
    v53 = v128;
    v65 = v126;
    if (v64 == v128)
    {
      v78 = v126;
    }

    else
    {
      v78 = 1;
    }

    if ((v78 & 1) == 0)
    {
      v79 = *(v8 + 5);
      Size = v122;
      if (v79 && os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v128;
        v80 = "Read %llu total bytes from the source.";
        v81 = v79;
        v82 = 12;
        goto LABEL_193;
      }

LABEL_73:
      if (v125)
      {
        BOMCopierSourceEntryFree(v125);
      }

      if (Size >= 1 && !v124)
      {
        BOMCopierSourceEntrySetSize(a1, Size);
      }

LABEL_78:
      v56 = BOMCopierSourceEntrySkip(a1, *(v8 + 1), *(v8 + 2), v3);
      if (v56)
      {
        v26 = v56;
        BOMCopierErrorCapture(v3, v56, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7390, "copy_entry_to_destinations", "Could not skip remaning source entry data\n", v117);
        goto LABEL_87;
      }

      v57 = *v8;
      if (!v57)
      {
LABEL_86:
        v26 = 0;
        goto LABEL_87;
      }

      v58 = 0;
      v59 = 0;
      v60 = *v132;
      while (1)
      {
        v61 = *(v60 + v58 + 8);
        if (v61)
        {
          v62 = *(v60 + v58);
          snprintf(*(v8 + 6), 0x400uLL, "%s", *(v61 + 120));
          v63 = BOMCopierDestinationFinalizeEntry(v62, v61, v3);
          if (v63)
          {
            v26 = v63;
            BOMCopierErrorCapture(v3, v63, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7410, "copy_entry_to_destinations", "Could not finalize destination entry\n", v118);
            goto LABEL_87;
          }

          v60 = *(v8 + 7);
          *(v60 + v58 + 8) = 0;
          v57 = *v8;
        }

        ++v59;
        v58 += 32;
        if (v59 >= v57)
        {
          goto LABEL_86;
        }
      }
    }
  }

  if ((v68 & 0x8000000000000000) == 0)
  {
    if (!v68)
    {
      v116 = *(v8 + 5);
      Size = v122;
      if (!v116 || !os_log_type_enabled(*(v8 + 5), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_73;
      }

      *buf = 0;
      v80 = "Read 0 bytes from non-deterministic source.";
LABEL_192:
      v81 = v116;
      v82 = 2;
LABEL_193:
      _os_log_impl(&dword_241C0E000, v81, OS_LOG_TYPE_DEFAULT, v80, buf, v82);
      goto LABEL_73;
    }

    goto LABEL_102;
  }

  BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7514, "copy_file_entry_to_destinations", "Could not read %lu bytes from non-deterministic source");
LABEL_185:
  v26 = 1;
  BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 7348, "copy_entry_to_destinations", "Could not copy file entry to destination entry list", v119);
LABEL_87:
  v47 = v8;
LABEL_88:
  release_copy_state(v47);
  return v26;
}

void release_copy_state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = *a1;
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        if (*&v2[v5])
        {
          BOMCopierDestinationEntryFree(*&v2[v5]);
          v2 = a1[7];
          *&v2[v5] = 0;
          v3 = *a1;
        }

        ++v4;
        v5 += 32;
      }

      while (v4 < v3);
    }

    free(v2);
  }

  a1[8] = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;

  free(a1);
}

const char *string_for_entry_type(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return "?";
  }

  else
  {
    return off_278D13448[a1];
  }
}

const char *string_for_mode(int a1)
{
  if ((a1 - 4096) >> 13 > 6)
  {
    return "?";
  }

  else
  {
    return off_278D134E8[(a1 - 4096) >> 12];
  }
}

uint64_t populate_aa_header_acl(uint64_t a1, uint64_t a2, AAHeader_impl *a3, void *a4)
{
  path_p = 0;
  v8 = getpid();
  asprintf(&path_p, "/tmp/.BCDE.%u.T_XXXXXX", v8);
  if (path_p)
  {
    v9 = mkstemp(path_p);
    if (v9 == -1)
    {
      v20 = __error();
      strerror(*v20);
      v19 = 1;
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4927, "populate_aa_header_acl", "Could not mkstemp %s: %s\n");
    }

    else
    {
      close(v9);
      v36 = 0;
      ACL = BOMCopierSourceEntryGetACL(a1, &v36, a4);
      if (ACL)
      {
        v11 = acl_from_text(ACL);
        if (!v11)
        {
          v21 = *__error();
          v22 = __error();
          v23 = strerror(*v22);
          BOMCopierErrorCapture(a4, v21, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4946, "populate_aa_header_acl", "Could not convert ACL text: %s", v23);
          goto LABEL_12;
        }

        v12 = v11;
        if (acl_set_file(path_p, ACL_TYPE_EXTENDED, v11))
        {
          v13 = *__error();
          v14 = path_p;
          v15 = __error();
          v16 = strerror(*v15);
          BOMCopierErrorCapture(a4, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4954, "populate_aa_header_acl", "Could not set ACL on %s: %s", v14, v16);
          acl_free(v12);
LABEL_12:
          v24 = path_p;
          goto LABEL_13;
        }

        acl_free(v12);
        v26 = AAEntryACLBlobCreateWithPath(path_p, "", 0);
        if (v26)
        {
          unlink(path_p);
          free(path_p);
          EncodedSize = AAEntryACLBlobGetEncodedSize(v26);
          EncodedData = AAEntryACLBlobGetEncodedData(v26);
          v29 = malloc_type_malloc(EncodedSize, 0xC48B9930uLL);
          if (!v29)
          {
            v33 = *__error();
            v34 = __error();
            v35 = strerror(*v34);
            BOMCopierErrorCapture(a4, v33, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4983, "populate_aa_header_acl", "Could not allocate encoded buffer: %s", v35);
            AAEntryACLBlobDestroy(v26);
            return 1;
          }

          v30 = v29;
          memcpy(v29, EncodedData, EncodedSize);
          AAEntryACLBlobDestroy(v26);
          v31.ikey = 4997953;
          v32 = AAHeaderSetFieldBlob(a3, 0xFFFFFFFF, v31, EncodedSize);
          if (!v32)
          {
            v19 = 0;
            *(a2 + 344) = v30;
            *(a2 + 352) = EncodedSize;
            return v19;
          }

          BOMCopierErrorCapture(a4, v32, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4999, "populate_aa_header_acl", "Could not append AA_FIELD_ACL to AppleArchive header: %d", v32);
          v24 = v30;
LABEL_13:
          free(v24);
          return 1;
        }

        v19 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4965, "populate_aa_header_acl", "Could create AppleArchive ACL blob from %s: %s");
      }

      else
      {
        v19 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4938, "populate_aa_header_acl", "Could not get ACL from source entry");
      }
    }

    free(path_p);
  }

  else
  {
    v17 = __error();
    v18 = strerror(*v17);
    v19 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4920, "populate_aa_header_acl", "Could not create ACL file path: %s\n", v18);
  }

  return v19;
}

uint64_t populate_aa_header_xattr(uint64_t a1, uint64_t a2, AAHeader_impl *a3, void *a4)
{
  v8 = AAEntryXATBlobCreate();
  if (!v8)
  {
    v26 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4806, "populate_aa_header_xattr", "Could not create AppleArchive XAT blob");
    return v26;
  }

  v9 = v8;
  ExtendedAttributeCount = BOMCopierSourceEntryGetExtendedAttributeCount(a1, a4);
  if (ExtendedAttributeCount)
  {
    v11 = ExtendedAttributeCount;
    v32 = a2;
    v12 = 0;
    v13 = 0;
    for (i = 0; i != v11; ++i)
    {
      ExtendedAttributeName = BOMCopierSourceEntryGetExtendedAttributeName(a1, i, a4);
      if (!ExtendedAttributeName)
      {
        v26 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4820, "populate_aa_header_xattr", "Could not get name for xattr %u");
        return v26;
      }

      v16 = ExtendedAttributeName;
      ExtendedAttributeSize = BOMCopierSourceEntryGetExtendedAttributeSize(a1, i, a4);
      if (!ExtendedAttributeSize)
      {
        v26 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4827, "populate_aa_header_xattr", "Could not get size for xattr %u");
        return v26;
      }

      v18 = ExtendedAttributeSize;
      if (v12 < ExtendedAttributeSize)
      {
        v13 = malloc_type_realloc(v13, ExtendedAttributeSize, 0x579D655AuLL);
        v12 = v18;
        if (!v13)
        {
          v29 = *__error();
          v30 = __error();
          strerror(*v30);
          BOMCopierErrorCapture(a4, v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4837, "populate_aa_header_xattr", "Could not allocate buffer %u: %s");
          return 1;
        }
      }

      if (BOMCopierSourceEntryCopyExtendedAttribute(a1, i, v13, v18, 0, a4) != v18)
      {
        v26 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4845, "populate_aa_header_xattr", "Could not copy xattr %u");
        return v26;
      }

      appended = AAEntryXATBlobAppendEntry(v9, v16, v13, v18);
      if (appended)
      {
        BOMCopierErrorCapture(a4, appended, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4852, "populate_aa_header_xattr", "Could not append %u entry to AppleArchive XAT blob: %d");
        return 1;
      }
    }

    a2 = v32;
    if (v13)
    {
      free(v13);
    }
  }

  EncodedSize = AAEntryXATBlobGetEncodedSize(v9);
  EncodedData = AAEntryXATBlobGetEncodedData(v9);
  v22 = malloc_type_malloc(EncodedSize, 0xA8C7ED9DuLL);
  if (!v22)
  {
    v27 = *__error();
    v28 = __error();
    strerror(*v28);
    BOMCopierErrorCapture(a4, v27, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4872, "populate_aa_header_xattr", "Could not allocate encoded buffer: %s");
    return 1;
  }

  v23 = v22;
  memcpy(v22, EncodedData, EncodedSize);
  AAEntryXATBlobDestroy(v9);
  v24.ikey = 5521752;
  v25 = AAHeaderSetFieldBlob(a3, 0xFFFFFFFF, v24, EncodedSize);
  if (v25)
  {
    BOMCopierErrorCapture(a4, v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 4887, "populate_aa_header_xattr", "Could not append AA_FIELD_XAT to AppleArchive header: %d", v25);
    free(v23);
    return 1;
  }

  v26 = 0;
  *(a2 + 360) = v23;
  *(a2 + 368) = EncodedSize;
  return v26;
}

void apply_retention_policy(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 8);
  if (BOMCopierSourceEntryGetType(v6) == 8)
  {
    if (*(a1 + 307) == 1)
    {
      BinaryType = BOMCopierSourceEntryGetBinaryType(v6);
      v9 = BinaryType != 0;
      if (!*(a1 + 336))
      {
        if (!BinaryType)
        {
          goto LABEL_42;
        }

LABEL_11:
        __to = 0;
        v12 = *(a1 + 344);
        if (v12)
        {
          if (make_path(*a1, v12, a3))
          {
            v13 = __error();
            strerror(*v13);
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6513, "apply_retention_policy", "Could not make the kept file directory %s: %s");
            return;
          }

          if (*(a1 + 352) == 1)
          {
            if (!*(a1 + 360))
            {
              v17 = malloc_type_calloc(1uLL, 0x400uLL, 0x8832F60FuLL);
              *(a1 + 360) = v17;
              if (!v17)
              {
                v42 = *__error();
                v43 = __error();
                strerror(*v43);
                BOMCopierErrorCapture(a3, v42, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6532, "apply_retention_policy", "Could not allocate kept file subdirectory path: %s");
                return;
              }
            }

            v18 = *(a1 + 312);
            if (!v18 || !(v18 % *(a1 + 356)))
            {
              memset(out, 0, sizeof(out));
              uuid_generate_random(out);
              memset(buf, 0, 37);
              uuid_unparse(out, buf);
              snprintf(*(a1 + 360), 0x400uLL, "%s/%c%c/%c%c/%c%c/%s", *(a1 + 344), buf[0], buf[1], buf[2], buf[3], buf[4], buf[5], buf);
              if (make_path(*a1, *(a1 + 360), a3))
              {
                v19 = __error();
                strerror(*v19);
                BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6559, "apply_retention_policy", "Could not make the kept file subdirectory %s: %s");
                return;
              }
            }

            asprintf(&__to, "%s/%lu");
          }

          else
          {
            getpid();
            asprintf(&__to, "%s/%s.dittoKeptBinary.%d.%lu");
          }
        }

        else
        {
          getpid();
          asprintf(&__to, "%s.dittoKeptBinary.%d.%lu");
        }

        v20 = __to;
        if (!__to)
        {
          v26 = *__error();
          v27 = __error();
          strerror(*v27);
          BOMCopierErrorCapture(a3, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6579, "apply_retention_policy", "Could not asprintf kept path: %s\n");
          return;
        }

        ++*(a1 + 312);
        v21 = *(a2 + 120);
        v22 = *a1;
        if (*a1)
        {
          if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) || (*buf = 136315138, *&buf[4] = v21, _os_log_impl(&dword_241C0E000, v22, OS_LOG_TYPE_DEFAULT, "kept old: %s", buf, 0xCu), (v22 = *a1) != 0))
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = v20;
              _os_log_impl(&dword_241C0E000, v22, OS_LOG_TYPE_DEFAULT, "kept new: %s", buf, 0xCu);
            }
          }
        }

        rename(v21, v20, v16);
        if (v23)
        {
          v24 = *__error();
          v25 = __error();
          strerror(*v25);
          BOMCopierErrorCapture(a3, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6594, "apply_retention_policy", "Could not rename kept %s to %s: %s", v21);
LABEL_33:
          free(__to);
          return;
        }

        v28 = *(a1 + 320);
        if (v28)
        {
          v29 = *(a1 + 328);
          if (v29 == -1)
          {
            v30 = open(v28, 1545, 420);
            if (v30 == -1)
            {
              v44 = *__error();
              v45 = __error();
              strerror(*v45);
              BOMCopierErrorCapture(a3, v44, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6617, "apply_retention_policy", "Could not open %s: %s");
              goto LABEL_33;
            }

            v29 = v30;
            *(a1 + 328) = v30;
          }

          v31 = strlen(__to);
          if (write(v29, __to, v31) != v31)
          {
            v38 = *__error();
            v39 = __error();
            strerror(*v39);
            BOMCopierErrorCapture(a3, v38, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6633, "apply_retention_policy", "Could not write to %s: %s");
            goto LABEL_33;
          }

          if (write(v29, "\n", 1uLL) != 1)
          {
            v40 = *__error();
            v41 = __error();
            strerror(*v41);
            BOMCopierErrorCapture(a3, v40, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6642, "apply_retention_policy", "Could not write to %s: %s");
            goto LABEL_33;
          }
        }

        free(__to);
        goto LABEL_42;
      }
    }

    else
    {
      if (!*(a1 + 336))
      {
        goto LABEL_42;
      }

      v9 = 0;
    }

    Path = BOMCopierSourceEntryGetPath(v6);
    v11 = regexec(*(a1 + 336), Path, 0, 0, 0);
    if (v11)
    {
      if (v11 != 1)
      {
        v14 = *__error();
        v15 = __error();
        strerror(*v15);
        BOMCopierErrorCapture(a3, v14, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6483, "apply_retention_policy", "Could not regexec %s: %s\n");
        return;
      }

      if (!v9)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  if (*(a2 + 152) == 1)
  {
    v32 = *(a2 + 144);
    v33 = *(a2 + 120);
    v34 = *a1;
    if (*a1)
    {
      if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) || (*buf = 136315138, *&buf[4] = v32, _os_log_impl(&dword_241C0E000, v34, OS_LOG_TYPE_DEFAULT, "rename old: %s", buf, 0xCu), (v34 = *a1) != 0))
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v33;
          _os_log_impl(&dword_241C0E000, v34, OS_LOG_TYPE_DEFAULT, "rename new: %s", buf, 0xCu);
        }
      }
    }

    rename(v32, v33, v7);
    if (v35)
    {
      v36 = *__error();
      v37 = __error();
      strerror(*v37);
      BOMCopierErrorCapture(a3, v36, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6663, "apply_retention_policy", "Could not rename staged %s to %s: %s", v32);
    }
  }
}

uint64_t set_timestamps(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0uLL;
  if (BOMCopierSourceEntryGetModificationTime(a1, &v22))
  {
    a3 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6694, "set_timestamps", "Could not retrieve the entry modification time");
  }

  else
  {
    v21 = 0uLL;
    if (BOMCopierSourceEntryGetAccessTime(a1, &v21))
    {
      a3 = 1;
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6703, "set_timestamps", "Could not retrieve the entry access time");
    }

    else
    {
      v20 = 0;
      v19 = xmmword_241C78E00;
      v10 = *(&v22 + 1);
      v9 = v22;
      v16 = v22;
      if (v21 != 0)
      {
        v10 = *(&v21 + 1);
        v9 = v21;
      }

      v17 = v9;
      v18 = v10;
      if (setattrlist(*(a2 + 120), &v19, &v16, 0x20uLL, 1u))
      {
        v11 = *__error();
        v12 = *(a2 + 120);
        v13 = __error();
        v14 = strerror(*v13);
        BOMCopierErrorCapture(a4, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 6733, "set_timestamps", "Could not setattrlist timestamps for %s: %s", v12, v14);
        return 1;
      }

      else if (a3)
      {
        if (os_log_type_enabled(a3, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a2 + 120);
          *buf = 134219010;
          v24 = v16;
          v25 = 2048;
          v26 = *(&v16 + 1);
          v27 = 2048;
          v28 = v17;
          v29 = 2048;
          v30 = v18;
          v31 = 2080;
          v32 = v15;
          _os_log_impl(&dword_241C0E000, a3, OS_LOG_TYPE_DEFAULT, "Set mtime [%ld.%ld] and atime [%ld.%ld] on %s", buf, 0x34u);
        }

        return 0;
      }
    }
  }

  return a3;
}

uint64_t change_flags(const char *a1, int a2, __uint32_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = -1;
  result = fsctl(a1, 0xC00C4114uLL, v6, 0);
  if (result)
  {
    if (*__error() == 25 || *__error() == 45)
    {
      result = chflags(a1, a3);
      if (result)
      {
        return *__error() != 45;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *data_read_stream_new(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  result = platform_calloc(a1, 1uLL, 0x68uLL);
  if (result)
  {
    *result = 1919246692;
    result[1] = a1;
    *(result + 25) = 1684104557;
  }

  return result;
}

void data_read_stream_free(_DWORD *__b)
{
  if (__b && *__b == 1919246692 && __b[25] == 1684104557)
  {
    v2 = *(__b + 11);
    if (v2)
    {
      BZ2_bzDecompressEnd(v2);
      platform_free(*(__b + 1), *(__b + 11));
    }

    v3 = *(__b + 10);
    if (v3)
    {
      inflateEnd(v3);
      platform_free(*(__b + 1), *(__b + 10));
    }

    v4 = *(__b + 8);
    if (v4)
    {
      platform_free(*(__b + 1), v4);
    }

    v5 = *(__b + 4);
    if (v5)
    {
      platform_free(*(__b + 1), v5);
    }

    v6 = *(__b + 1);
    platform_memset(v6, __b, 0, 0x68uLL);

    platform_free(v6, __b);
  }
}

uint64_t data_read_stream_set_source(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1919246692)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && *(a1 + 100) == 1684104557)
  {
    *(a1 + 16) = a2;
    v4 = getpagesize();
    if (v4 <= 0xE)
    {
      v5 = 14;
    }

    else
    {
      v5 = v4;
    }

    *(a1 + 24) = v5;
    v6 = platform_valloc(*(a1 + 8), v5);
    *(a1 + 32) = v6;
    if (v6)
    {
      v7 = resilient_source_read(*(a1 + 16), v6, 0xEuLL);
      if (v7 != -1)
      {
        *(a1 + 40) = v7;
        if (v7 < 1)
        {
          goto LABEL_42;
        }

        v8 = *(a1 + 32);
        if (v7 < 0xA)
        {
          if (v7 < 7)
          {
            goto LABEL_42;
          }

          v9 = *v8;
LABEL_36:
          if (v9 == 24 && v8[1] == 77 && v8[2] == 34 && v8[3] == 4)
          {
            v14 = 3;
            goto LABEL_41;
          }

LABEL_42:
          if (*(a1 + 72))
          {
            *(a1 + 56) = 0x20000;
            v19 = platform_valloc(*(a1 + 8), 0x20000uLL);
            *(a1 + 64) = v19;
            if (!v19)
            {
              v24 = *MEMORY[0x277D85DF8];
              v25 = __error();
              v30 = strerror(*v25);
              v23 = "Could not allocate read buffer: %s\n";
              goto LABEL_51;
            }

            v20 = *(a1 + 72);
            if (v20 == 2)
            {
              v27 = platform_calloc(*(a1 + 8), 1uLL, 0x50uLL);
              *(a1 + 88) = v27;
              if (v27)
              {
                result = BZ2_bzDecompressInit(v27, 0, 0);
                if (!result)
                {
                  return result;
                }

                v22 = *MEMORY[0x277D85DF8];
                v30 = result;
                v23 = "Could not BZ2_bzDecompressInit: %d\n";
                goto LABEL_55;
              }

              v24 = *MEMORY[0x277D85DF8];
              v29 = __error();
              v30 = strerror(*v29);
              v23 = "Could not allocate bzip2 stream: %s\n";
LABEL_51:
              v26 = v24;
LABEL_56:
              fprintf(v26, v23, v30);
              fwrite("Could not initialize decompression\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
              return 0xFFFFFFFFLL;
            }

            if (v20 == 1)
            {
              v21 = platform_calloc(*(a1 + 8), 1uLL, 0x70uLL);
              *(a1 + 80) = v21;
              if (v21)
              {
                result = inflateInit2_(v21, 31, "1.2.12", 112);
                if (!result)
                {
                  return result;
                }

                v22 = *MEMORY[0x277D85DF8];
                v30 = result;
                v23 = "Could not inflateInit2: %d\n";
LABEL_55:
                v26 = v22;
                goto LABEL_56;
              }

              v24 = *MEMORY[0x277D85DF8];
              v28 = __error();
              v30 = strerror(*v28);
              v23 = "Could not allocate zlib stream: %s\n";
              goto LABEL_51;
            }
          }

          return 0;
        }

        v9 = *v8;
        if (v9 == 31 && v8[1] == 139 && v8[2] == 8)
        {
          v14 = 1;
        }

        else
        {
          if (v7 < 0xE || v9 != 66)
          {
            goto LABEL_36;
          }

          if (v8[1] != 90 || v8[2] != 104 || v8[3] - 49 > 8)
          {
            goto LABEL_42;
          }

          if (*(v8 + 1) != 643383601 || *(v8 + 4) != 22867)
          {
            v16 = *(v8 + 1);
            v17 = *(v8 + 4);
            if (v16 != 944075287 || v17 != 36944)
            {
              goto LABEL_42;
            }
          }

          v14 = 2;
        }

LABEL_41:
        *(a1 + 72) = v14;
        goto LABEL_42;
      }

      v12 = *MEMORY[0x277D85DF8];
      v13 = __error();
      strerror(*v13);
      fprintf(v12, "Could not read minimal data for auto-detection: %s\n");
    }

    else
    {
      v10 = *MEMORY[0x277D85DF8];
      v11 = __error();
      strerror(*v11);
      fprintf(v10, "Could not allocate discovery buffer: %s\n");
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

ssize_t resilient_source_read(uint64_t a1, void *a2, size_t a3)
{
  do
  {
    v6 = data_source_read(a1, a2, a3);
  }

  while (v6 == -1 && *__error() == 35);
  return v6;
}

uint64_t data_stream_read(uint64_t a1, char *__dst, size_t a3)
{
  if (!a1 || *a1 != 1919246692)
  {
    return -1;
  }

  result = -1;
  if (__dst && *(a1 + 100) == 1684104557)
  {
    if (a3)
    {
      if (*(a1 + 72))
      {
        while (1)
        {
          result = read_from_source(a1, *(a1 + 64), *(a1 + 56), a3);
          if (result == -1)
          {
            return result;
          }

          v7 = result;
          v8 = *(a1 + 72);
          if (v8 != 2)
          {
            break;
          }

          v12 = *(a1 + 88);
          v12->next_in = *(a1 + 64);
          v12->avail_in = v7;
          v12->next_out = __dst;
          v12->avail_out = a3;
          v13 = BZ2_bzDecompress(v12);
          v11 = a1 + 88;
          if (v13)
          {
            v11 = a1 + 88;
            if (v13 != 4)
            {
              fprintf(*MEMORY[0x277D85DF8], "Could not BZ2_bzDecompress: %d\n");
              return -1;
            }

LABEL_15:
            *(a1 + 96) = 1;
          }

LABEL_16:
          v14 = *(*v11 + 32);
          result = a3 - v14;
          if (v7 >= 1 && a3 == v14)
          {
            result = 0;
            if (!*(a1 + 96))
            {
              continue;
            }
          }

          return result;
        }

        if (v8 != 1)
        {
          return -1;
        }

        v9 = *(a1 + 80);
        v9->next_in = *(a1 + 64);
        v9->avail_in = v7;
        v9->next_out = __dst;
        v9->avail_out = a3;
        v10 = inflate(v9, 0);
        v11 = a1 + 80;
        if (!v10)
        {
          goto LABEL_16;
        }

        v11 = a1 + 80;
        if (v10 != 1)
        {
          fprintf(*MEMORY[0x277D85DF8], "Could not inflate: %d\n");
          return -1;
        }

        goto LABEL_15;
      }

      return read_from_source(a1, __dst, a3, a3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t read_from_source(uint64_t *a1, char *__dst, size_t a3, size_t a4)
{
  v4 = __dst;
  if (a4 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  v8 = a1[5];
  v7 = a1[6];
  v9 = v8 > v7;
  v10 = v8 - v7;
  if (v9)
  {
    if (v6 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    memcpy(__dst, (a1[4] + v7), v11);
    a1[6] += v11;
    v4 += v11;
    v6 -= v11;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    if (v6)
    {
LABEL_12:
      v12 = 0;
      do
      {
        v13 = resilient_source_read(a1[2], v4, v6 - v12);
        if (v13 == -1)
        {
          if (*__error() != 35)
          {
            v14 = *MEMORY[0x277D85DF8];
            v15 = __error();
            v16 = strerror(*v15);
            fprintf(v14, "Could not read %ld bytes from source: %s\n", v6 - v12, v16);
            return -1;
          }
        }

        else
        {
          if (!v13)
          {
            return v11;
          }

          v4 += v13;
          v12 += v13;
          v11 += v13;
        }
      }

      while (v12 != v6);
    }
  }

  return v11;
}

void *BOMBomHLIndexNew(uint64_t a1)
{
  v2 = BOM_malloczero(0x20uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v4 = BOMTreeNewWithName(a1, "HLIndex");
    *(v3 + 8) = v4;
    if (!v4 || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0), (*(v3 + 16) = Mutable) == 0))
    {
      BOMBomHLIndexFree(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t BOMBomHLIndexFree(uint64_t a1)
{
  if (*(a1 + 24) && BOMBomHLIndexCommit(a1))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    LODWORD(v3) = CFDictionaryGetCount(v2);
    v4 = 8 * v3;
    v5 = BOM_malloc(v4);
    if (v5)
    {
      v6 = v5;
      v7 = BOM_malloc(v4);
      if (v7)
      {
        v8 = v7;
        CFDictionaryGetKeysAndValues(*(a1 + 16), v6, v7);
        v3 = v3;
        if (v3)
        {
          v9 = v8;
          do
          {
            v10 = *v9++;
            BOMTreeFree(v10);
            --v3;
          }

          while (v3);
        }

        free(v6);
        free(v8);
        CFRelease(*(a1 + 16));
        goto LABEL_10;
      }
    }

    return 1;
  }

LABEL_10:
  v11 = *(a1 + 8);
  if (v11)
  {
    BOMTreeFree(v11);
  }

  free(a1);
  return 0;
}

void *BOMBomHLIndexOpen(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BOM_malloczero(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v6 = BOMTreeOpenWithName(a1, "HLIndex", v2);
    *(v5 + 8) = v6;
    if (!v6 || v2 && (Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0), (*(v5 + 16) = Mutable) == 0))
    {
      BOMBomHLIndexFree(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t BOMBomHLIndexCommit(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    v4 = 8 * Count;
    v5 = BOM_malloc(v4);
    if (!v5)
    {
      return 1;
    }

    v6 = v5;
    v7 = BOM_malloc(v4);
    if (!v7)
    {
      return 1;
    }

    v8 = v7;
    CFDictionaryGetKeysAndValues(*(a1 + 16), v6, v7);
    v9 = Count;
    if (Count)
    {
      v10 = 0;
      v11 = 8 * v9;
      while (!BOMTreeCommit(v8[v10 / 8]))
      {
        v10 += 8;
        if (v11 == v10)
        {
          goto LABEL_9;
        }
      }

      free(v6);
      free(v8);
      return 1;
    }

LABEL_9:
    free(v6);
    free(v8);
  }

  result = BOMTreeCommit(*(a1 + 8));
  if (result)
  {
    return 1;
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t BOMBomHLIndexCount(uint64_t *a1, unsigned int a2)
{
  v5 = 0;
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    TreeFor = _hl_findTreeFor(a1, a2, &v5);
    if (TreeFor)
    {
      goto LABEL_4;
    }

    return 0;
  }

  TreeFor = a1[1];
  if (!TreeFor)
  {
    return 0;
  }

LABEL_4:
  v3 = BOMTreeCount(TreeFor);
  if (v5)
  {
    BOMTreeFree(TreeFor);
  }

  return v3;
}

const void *_hl_findTreeFor(uint64_t *a1, unsigned int a2, char *a3)
{
  v4 = a2;
  valuePtr = a2;
  IsOpenForWriting = BOMStorageIsOpenForWriting(*a1);
  if (a1[2])
  {
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    Value = CFDictionaryGetValue(a1[2], v7);
    CFRelease(v8);
    if (Value)
    {
      return Value;
    }

    v4 = valuePtr;
  }

  valuePtr = bswap32(v4);
  v10 = *a1;
  v11 = a1[1];
  v12 = BOMTreeGetValue(v11, &valuePtr, 4uLL);
  if (v12)
  {
    v13 = *v12;
    v14 = bswap32(*v12);
    v21 = v14;
    if (!v13)
    {
      return 0;
    }

    Value = BOMTreeOpen(v10, v14, IsOpenForWriting);
    if (!Value)
    {
LABEL_18:
      if (a3)
      {
        v19 = 1;
        goto LABEL_20;
      }

      return Value;
    }
  }

  else
  {
    if (!IsOpenForWriting)
    {
      return 0;
    }

    v15 = BOMStorageNewBlock(v10);
    if (!v15)
    {
      return 0;
    }

    v16 = v15;
    Value = BOMTreeNewWithOptions(v10, v15, 0, 0x40u, 0);
    if (!Value)
    {
      goto LABEL_18;
    }

    v21 = bswap32(v16);
    BOMTreeSetValue(v11, &valuePtr, 4uLL, &v21, 4);
  }

  if (!a1[2])
  {
    goto LABEL_18;
  }

  valuePtr = bswap32(valuePtr);
  v17 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  CFDictionarySetValue(a1[2], v17, Value);
  CFRelease(v18);
  if (a3)
  {
    v19 = 0;
LABEL_20:
    *a3 = v19;
  }

  return Value;
}

uint64_t BOMBomHLIndexBlock(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (BOMTreeCount(*(a1 + 8)) <= a2)
  {
    return 0;
  }

  v4 = BOMTreeIteratorNew(*(a1 + 8), 0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  for (i = v4; v2; --v2)
  {
    BOMTreeIteratorNext(i);
  }

  v6 = BOMTreeIteratorKey(i);
  if (v6)
  {
    v7 = bswap32(*v6);
  }

  else
  {
    v7 = 0;
  }

  BOMTreeIteratorFree(i);
  return v7;
}

uint64_t BOMBomHLIndexGet(uint64_t *a1, unsigned int a2, unsigned int a3, void *a4, size_t *a5)
{
  v5 = 0;
  v15 = 0;
  v6 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        TreeFor = _hl_findTreeFor(a1, a2, &v15);
        v5 = TreeFor;
        if (TreeFor)
        {
          if (BOMTreeCount(TreeFor) > a3)
          {
            v11 = BOMTreeIteratorNew(v5, 0, 0, 0);
            if (v11)
            {
              for (i = v11; a3; --a3)
              {
                BOMTreeIteratorNext(i);
              }

              *a5 = BOMTreeIteratorKeySize(i);
              v13 = BOMTreeIteratorKey(i);
              memmove(a4, v13, *a5);
              BOMTreeIteratorFree(i);
              v6 = 0;
            }
          }
        }
      }
    }
  }

  if (v15)
  {
    BOMTreeFree(v5);
  }

  return v6;
}

uint64_t BOMBomHLIndexSet(uint64_t a1, unsigned int a2, const void *a3, size_t a4)
{
  v4 = 0;
  v12 = 0;
  v5 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        TreeFor = _hl_findTreeFor(a1, a2, &v12);
        v4 = TreeFor;
        if (TreeFor)
        {
          v10 = BOMTreeSetValue(TreeFor, a3, a4, 0, 0);
          *(a1 + 24) = 1;
          v5 = v10;
        }
      }
    }
  }

  if (v12)
  {
    BOMTreeFree(v4);
  }

  return v5;
}

uint64_t BOMBomHLIndexRemove(uint64_t a1, unsigned int a2, const void *a3, size_t a4)
{
  valuePtr = a2;
  v14 = 0;
  v4 = 1;
  if (!a1 || !a2)
  {
    return v4;
  }

  TreeFor = _hl_findTreeFor(a1, a2, &v14);
  v9 = TreeFor;
  if (TreeFor)
  {
    if (a3)
    {
      v4 = BOMTreeRemoveValue(TreeFor, a3, a4);
    }

    else
    {
      v10 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v10;
      v12 = *(a1 + 16);
      if (v12)
      {
        CFDictionaryRemoveValue(v12, v11);
      }

      CFRelease(v11);
      BOMTreeRemoveAndFree(v9);
      v4 = 0;
    }

    *(a1 + 24) = 1;
  }

LABEL_11:
  if (v14)
  {
    BOMTreeFree(v9);
  }

  return v4;
}

uint64_t _BOMBomHLIndexPrintDiagnostics(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    v2 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Tree: %s\n", "HLIndex");
    result = BOMTreeIteratorNew(v1, 0, 0, 0);
    if (result)
    {
      v3 = result;
      v4 = 0;
      if (BOMTreeIteratorIsAtEnd(result))
      {
LABEL_4:
        fprintf(*v2, "   # records: %d\n", v4);
        fprintf(*v2, "   # pages  : %d (%d)\n", 0, 0);
        fprintf(*v2, "     leaf   : %d (%d)\n", 0, 0);
        fprintf(*v2, "     branch : %d (%d)\n", 0, 0);
        fprintf(*v2, "   key size : %zd\n", 0);
        return fprintf(*v2, "   data size: %zd\n", 0);
      }

      else
      {
        while (1)
        {
          result = BOMTreeIteratorValue(v3);
          if (!result)
          {
            break;
          }

          if (!*result)
          {
            break;
          }

          v5 = bswap32(*result);
          v6 = BOMTreeStorage(v1);
          result = BOMTreeOpen(v6, v5, 0);
          if (!result)
          {
            break;
          }

          v7 = result;
          v4 += BOMTreeCount(result);
          BOMTreeFree(v7);
          BOMTreeIteratorNext(v3);
          if (BOMTreeIteratorIsAtEnd(v3))
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _BOMBomPrint(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  RootFSObject = BOMBomGetRootFSObject(a1);
  v3 = BOMBomEnumeratorNew(a1, RootFSObject);
  BOMFSObjectFree(RootFSObject);
  if (!v3)
  {
    return 1;
  }

  v4 = BOMBomEnumeratorNext(v3);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277D85DF8];
    do
    {
      v7 = BOMFSObjectPathName(v5);
      v8 = BOMFSObjectPathID(v5);
      v9 = BOMFSObjectParentPathID(v5);
      fprintf(*v6, "%d\t%d\t%s\n", v9, v8, v7);
      BOMFSObjectFree(v5);
      v5 = BOMBomEnumeratorNext(v3);
    }

    while (v5);
  }

  BOMBomEnumeratorFree(v3);
  return 0;
}

uint64_t _BOMBomPathTreePrint(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = BOMBomPathsTree(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v15 = 0;
  v3 = BOMNewPathKey(0, "", &v15);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = BOMTreeIteratorNew(v2, v3, v15, 0);
  free(v4);
  if (!v5)
  {
    return 1;
  }

  if (!BOMTreeIteratorIsAtEnd(v5))
  {
    v6 = MEMORY[0x277D85DF8];
    do
    {
      v7 = BOMTreeIteratorKey(v5);
      v8 = BOMTreeIteratorValue(v5);
      v9 = *v6;
      v10 = BOMPathIDFromPathKey(v7);
      v11 = BOMShortNameFromPathKey(v7);
      v12 = BOMPathIDFromPathKey(v8);
      v13 = BOMBlockIDFromPathValue(v8);
      fprintf(v9, "%d\t%s -> %d\t%d\n", v10, v11, v12, v13);
      BOMTreeIteratorNext(v5);
    }

    while (!BOMTreeIteratorIsAtEnd(v5));
  }

  BOMTreeIteratorFree(v5);
  return 0;
}

uint64_t _BOMCFArrayPrint(const __CFArray *a1)
{
  if (!a1)
  {
    return 1;
  }

  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = 0;
      v5 = Count & 0x7FFFFFFF;
      v6 = MEMORY[0x277D85DF8];
      do
      {
        v7 = *v6;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        fprintf(v7, "%d\t%s\n", v4++, ValueAtIndex);
      }

      while (v5 != v4);
    }

    return 0;
  }

  else
  {
    v9 = 1;
    fwrite("[not an array]\n", 0xFuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v9;
}

vm_address_t *BOMCopierNewWithSys(void *a1)
{
  v2 = BOM_malloczero(0x3310uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0x20000;
    if (vm_allocate(*MEMORY[0x277D85F48], v2 + 1, 0x20000uLL, 1))
    {
      BOMCopierFree(v3);
      return 0;
    }

    else
    {
      *(v3 + 24) = 4096;
      v5 = malloc_type_calloc(1uLL, 0x1000uLL, 0x4BDDC3DFuLL);
      *(v3 + 32) = v5;
      if (v5)
      {
        *(v3 + 10568) = getpid();
        *(v3 + 2304) = 0;
        *(v3 + 6400) = 0;
        *(v3 + 12792) = -1;
        v6 = BOMHardLinkTableNew();
        *v3 = v6;
        if (v6)
        {
          v7 = BOMStackNew();
          *(v3 + 40) = v7;
          if (v7)
          {
            if (!a1)
            {
              a1 = BomSys_default();
            }

            *(v3 + 12832) = a1;
          }
        }
      }
    }
  }

  return v3;
}

void BOMCopierFree(uint64_t a1)
{
  if (a1)
  {
    _resetCopier(a1);
    v2 = *(a1 + 8);
    if (v2)
    {
      MEMORY[0x245CFCA20](*MEMORY[0x277D85F48], v2, *(a1 + 16));
      *(a1 + 8) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
      *(a1 + 32) = 0;
    }

    if (*a1)
    {
      BOMHardLinkTableFree(*a1);
      *a1 = 0;
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      while (!BOMStackIsEmpty(v4))
      {
        v5 = BOMStackPop(*(a1 + 40));
        free(*v5);
        free(v5[1]);
        free(v5[2]);
        free(v5);
        v4 = *(a1 + 40);
      }

      BOMStackFree(*(a1 + 40));
    }

    free(a1);
  }
}

void _resetCopier(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 13000);
    if (v2)
    {
      free(v2);
      *(a1 + 13000) = 0;
    }

    v3 = *(a1 + 216);
    if (v3)
    {
      free(v3);
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
    }

    v4 = *(a1 + 12928);
    if (v4)
    {
      free(v4);
      *(a1 + 12928) = 0;
    }

    v5 = *(a1 + 12920);
    if (v5)
    {
      free(v5);
      *(a1 + 12920) = 0;
    }

    v6 = *(a1 + 12936);
    if (v6)
    {
      free(v6);
      *(a1 + 12936) = 0;
    }

    v7 = *(a1 + 10584);
    if (v7)
    {
      free(v7);
      *(a1 + 10584) = 0;
    }

    v8 = *(a1 + 12912);
    if (v8)
    {
      free(v8);
      *(a1 + 12912) = 0;
    }

    v9 = *(a1 + 12904);
    if (v9)
    {
      free(v9);
      *(a1 + 12904) = 0;
    }

    v10 = *(a1 + 12896);
    if (v10)
    {
      free(v10);
      *(a1 + 12896) = 0;
    }

    v11 = *(a1 + 152);
    if (v11)
    {
      BOMBomFree(v11);
      *(a1 + 152) = 0;
    }

    v12 = *(a1 + 160);
    if (v12)
    {
      BOMBomFree(v12);
      *(a1 + 160) = 0;
    }

    v14 = (a1 + 176);
    v13 = *(a1 + 176);
    if (v13)
    {
      BOMFileClose(v13);
      *v14 = 0;
    }

    v15 = *(a1 + 184);
    if (v15)
    {
      BOMPatternFree(v15);
      *(a1 + 184) = 0;
    }

    v16 = *(a1 + 12736);
    if (v16)
    {
      BOMCPIOFree(v16);
      *(a1 + 12736) = 0;
    }

    v17 = *(a1 + 12760);
    if (v17)
    {
      BOMPKZipFree(v17);
      *(a1 + 12760) = 0;
    }

    if (*(a1 + 12840))
    {
      BOMCopierSandbox_unbox(a1);
    }

    v18 = *(a1 + 136);
    if (v18)
    {
      v19 = *(a1 + 144);
      if (v19)
      {
        v20 = 0;
        v21 = 16;
        do
        {
          v22 = *(*(a1 + 136) + v21);
          if (v22)
          {
            free(v22);
            v19 = *(a1 + 144);
          }

          ++v20;
          v21 += 32;
        }

        while (v20 < v19);
        v18 = *(a1 + 136);
      }

      free(v18);
      *(a1 + 136) = 0;
    }

    v23 = *(a1 + 152);
    if (v23)
    {
      BOMBomFree(v23);
      *(a1 + 152) = 0;
    }

    v24 = *(a1 + 160);
    if (v24)
    {
      BOMBomFree(v24);
      *(a1 + 160) = 0;
    }

    v25 = *(a1 + 184);
    if (v25)
    {
      BOMPatternFree(v25);
      *(a1 + 184) = 0;
    }

    v26 = *(a1 + 12800);
    if (v26)
    {
      free(v26);
      *(a1 + 12800) = 0;
    }

    *(a1 + 10564) = 0;
    v27 = *(a1 + 12856);
    if (v27)
    {
      CFRelease(v27);
      *(a1 + 12856) = 0;
    }

    bzero((a1 + 248), 0x400uLL);
    bzero((a1 + 1272), 0x400uLL);
    *(a1 + 2296) = 0;
    bzero((a1 + 2304), 0x400uLL);
    bzero((a1 + 3328), 0x400uLL);
    bzero((a1 + 4352), 0x400uLL);
    bzero((a1 + 5376), 0x400uLL);
    bzero((a1 + 6400), 0x400uLL);
    bzero((a1 + 7424), 0x400uLL);
    bzero((a1 + 8448), 0x400uLL);
    *(a1 + 144) = 0;
    *(a1 + 168) = 0;
    *(a1 + 172) = 0;
    *(a1 + 12712) = 0x300000000;
    *(a1 + 12720) = 0;
    *(a1 + 12768) = 256;
    *v14 = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 1;
    *(a1 + 232) = 0;
    *(a1 + 12813) = 257;
    *(a1 + 12744) = 0;
    *(a1 + 12746) = 0;
    *(a1 + 12816) = 2;
    *(a1 + 12822) = 0;
    *(a1 + 12824) = 0;
    *(a1 + 12960) = 0;
    *(a1 + 12976) = 0;
    *(a1 + 12984) = -1;
    *(a1 + 212) = -1;
    v28 = *(a1 + 13040);
    if (v28)
    {
      BOMCopierDestinationFree(v28);
      *(a1 + 13040) = 0;
    }

    v29 = *(a1 + 13016);
    if (v29)
    {
      CFRelease(v29);
      *(a1 + 13016) = 0;
    }

    v30 = *(a1 + 13024);
    if (v30)
    {
      BOMCopierSourceFree(v30);
      *(a1 + 13024) = 0;
      v31 = *(a1 + 13016);
      if (v31)
      {
        CFRelease(v31);
        *(a1 + 13016) = 0;
      }
    }
  }
}

uint64_t BOMCopierCopyWithOptions(uint64_t a1, char *a2, char *a3, const void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v22 = 1;
    fwrite("Invalid BOMCopier\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return v22;
  }

  _resetCopier(a1);
  *__error() = 0;
  v8 = getenv("DITTO2");
  if (v8)
  {
    if (*v8 != 49 || v8[1])
    {
      if (!a4)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }
  }

  else
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      goto LABEL_21;
    }

    Value = CFDictionaryGetValue(a4, @"DITTO2");
    if (!Value || (v25 = Value, v26 = CFBooleanGetTypeID(), v26 != CFGetTypeID(v25)) || !CFEqual(v25, *MEMORY[0x277CBED28]))
    {
LABEL_6:
      v14 = CFDictionaryGetTypeID();
      if (v14 == CFGetTypeID(a4))
      {
        if (_parseCopierOptions(a1, a4))
        {
          BOMCopierNotifyFatalError(a1, "Could not parse the options dictionary", v21, v9, v10, v11, v12, v13);
          goto LABEL_20;
        }

LABEL_18:
        if (_verifyCopierOptions(a1, a2, a3, v9, v10, v11, v12, v13) || _prepareCopierState(a1))
        {
          goto LABEL_20;
        }

        v34 = *(a1 + 12712);
        if (v34)
        {
          v35 = *(a1 + 12964);
          *(a1 + 12992) = v35;
          if (!*(a1 + 12813))
          {
            v35 |= 0x10u;
            *(a1 + 12992) = v35;
          }

          if (v34 == 1)
          {
            v36 = getenv("BOM_ASYNC");
            if (!v36 || ((v37 = *v36, v37 != 48) ? (v38 = 48 - v37) : (v38 = -v36[1]), v38))
            {
              v35 |= 0x20u;
              *(a1 + 12992) = v35;
            }
          }

          if (a2)
          {
            v39 = *a2;
            if (v39 == 45)
            {
              v40 = -a2[1];
            }

            else
            {
              v40 = 45 - v39;
            }

            if (v40)
            {
              if (!BOMFileOpenWithSys((a1 + 12976), a2, 0, 0, v35, *(a1 + 12832)))
              {
                goto LABEL_58;
              }

              goto LABEL_51;
            }

            if (BOMFileOpenSTDIN((a1 + 12976), v35))
            {
LABEL_51:
              v47 = __error();
              v43 = *(a1 + 64);
              if (!v43)
              {
                goto LABEL_20;
              }

              v44 = *v47;
              v45 = a1;
              v46 = a2;
              goto LABEL_53;
            }
          }

          else
          {
            v41 = *(a1 + 12984);
            if (v41 == -1)
            {
              v48 = *(a1 + 12944);
              if (v48 && BOMFileNewFromCFReadStream((a1 + 12976), v48, v35))
              {
                v49 = __error();
                v43 = *(a1 + 64);
                if (!v43)
                {
                  goto LABEL_20;
                }

                v44 = *v49;
                v46 = "CFReadStream";
                v45 = a1;
                goto LABEL_53;
              }
            }

            else if (BOMFileNewFromFDWithSys((a1 + 12976), v41, v35, "rb", *(a1 + 12832)))
            {
              v42 = __error();
              v43 = *(a1 + 64);
              if (!v43)
              {
                goto LABEL_20;
              }

              v44 = *v42;
              v45 = a1;
              v46 = 0;
LABEL_53:
              v43(v45, v46, v44);
              goto LABEL_20;
            }
          }
        }

        else
        {
          if (!a2)
          {
            BOMCopierNotifyFatalError(a1, "If the source is a filesystem, the fromObj argument cannot be nil", v28, v29, v30, v31, v32, v33);
            _resetCopier(a1);
            goto LABEL_20;
          }

          if (*(a1 + 12968))
          {
            v28 = *(a1 + 152);
            if (v28)
            {
              BOMCopierSandbox_boxup(a1, a2, v28);
            }
          }
        }

LABEL_58:
        if (!*(a1 + 12712) && (*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), a2, v59) != v59)
        {
          BOMCopierNotifyFatalError(a1, "Cannot get the real path for source '%s'", v28, v29, v30, v31, v32, v33, a2);
          goto LABEL_20;
        }

        if (_prepareCopierDestination(a1, a3, v28, v29, v30, v31, v32, v33))
        {
LABEL_20:
          _resetCopier(a1);
          return 1;
        }

        v57 = *(a1 + 12712);
        if (v57 > 1)
        {
          if (v57 != 2)
          {
            if (v57 == 3)
            {
              v22 = 1;
              goto LABEL_73;
            }

            goto LABEL_72;
          }

          v58 = _BOMCopierCopyFromPKZip(a1, *(a1 + 12976), a3, v52, v53, v54, v55, v56);
        }

        else
        {
          if (v57)
          {
            if (v57 == 1)
            {
              v58 = _BOMCopierCopyFromCPIO(a1, *(a1 + 12976), a3, v52, v53, v54, v55, v56);
              goto LABEL_71;
            }

LABEL_72:
            v22 = _finalizeCopierDestination(a1, v50, v51, v52, v53, v54, v55, v56);
            goto LABEL_73;
          }

          v58 = _BOMCopierCopyFromFilesystem(a1, a2, a3);
        }

LABEL_71:
        v22 = v58;
        if (!v58)
        {
          goto LABEL_72;
        }

LABEL_73:
        _resetCopier(a1);
        return v22;
      }

LABEL_21:
      BOMCopierNotifyFatalError(a1, "The options dictionary is not a CFDictionary", v15, v16, v17, v18, v19, v20);
      return 1;
    }
  }

  return BOMCopierCopyWithOptions2(a1, a2, a3, a4);
}

void BOMCopierNotifyFatalError(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a1 && *(a1 + 56))
  {
    v13 = 0;
    if (vasprintf(&v13, a2, va) == -1)
    {
      v9 = *MEMORY[0x277D85DF8];
      v10 = __error();
      strerror(*v10);
      fprintf(v9, "Could not create fatal message: %s\n");
    }

    else if (v13)
    {
      (*(a1 + 56))(a1);
      free(v13);
    }

    else
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = __error();
      strerror(*v12);
      fprintf(v11, "Could not allocate fatal message: %s\n");
    }
  }
}

uint64_t _parseCopierOptions(uint64_t a1, const __CFDictionary *a2)
{
  TypeID = CFArrayGetTypeID();
  v5 = CFDictionaryGetTypeID();
  v6 = CFStringGetTypeID();
  v7 = CFBooleanGetTypeID();
  v8 = CFNumberGetTypeID();
  v9 = CFDataGetTypeID();
  Value = CFDictionaryGetValue(a2, @"archs");
  *(a1 + 12880) = Value;
  if (Value && CFGetTypeID(Value) != TypeID)
  {
    v67 = "kBOMCopierOptionArchitectureArrayKey is not a CFArrayRef";
    goto LABEL_273;
  }

  v17 = CFDictionaryGetValue(a2, @"fallbackForSubtype");
  *(a1 + 12888) = v17;
  if (v17 && CFGetTypeID(v17) != v5)
  {
    v67 = "kBOMCopierOptionArchitectureFallbackKey is not a CFDictionaryRef";
    goto LABEL_273;
  }

  v18 = CFDictionaryGetValue(a2, @"indexbom");
  if (v18)
  {
    v19 = v18;
    if (CFGetTypeID(v18) != v6)
    {
      v67 = "kBOMCopierOptionIndexBomKey is not a CFStringRef";
      goto LABEL_273;
    }

    UTF8String = BOMCFStringGetUTF8String(v19);
    *(a1 + 12896) = UTF8String;
    if (!UTF8String)
    {
      v67 = "Cannot convert indexbom from options dictionary into UTF8 encoded C string";
      goto LABEL_273;
    }
  }

  v21 = CFDictionaryGetValue(a2, @"verifyFileDataPerIndexBom");
  if (v21)
  {
    v22 = v21;
    if (CFGetTypeID(v21) != v7)
    {
      v67 = "kBOMCopierOptionVerifyFileDataPerIndexBomKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 197) = BOMCFGetBoolValue(v22);
  }

  v23 = CFDictionaryGetValue(a2, @"skipbom");
  if (v23)
  {
    v24 = v23;
    if (CFGetTypeID(v23) != v6)
    {
      v67 = "kBOMCopierOptionSkipBomKey is not a CFStringRef";
      goto LABEL_273;
    }

    v25 = BOMCFStringGetUTF8String(v24);
    *(a1 + 12904) = v25;
    if (!v25)
    {
      v67 = "Cannot convert skipbom from options dictionary into UTF8 encoded C string";
      goto LABEL_273;
    }
  }

  v26 = CFDictionaryGetValue(a2, @"sourceIsAppSandboxed");
  if (v26)
  {
    v27 = v26;
    if (CFGetTypeID(v26) != v7)
    {
      v67 = "kBOMCopierOptionSourceIsAppSandboxed is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12968) = BOMCFGetBoolValue(v27);
  }

  v28 = CFDictionaryGetValue(a2, @"useHFSPlusCompression");
  if (v28)
  {
    v29 = v28;
    if (CFGetTypeID(v28) != v7)
    {
      v67 = "kBOMCopierOptionUseHFSPlusCompressionKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12848) = BOMCFGetBoolValue(v29);
  }

  v30 = CFDictionaryGetValue(a2, @"preserveHFSPlusCompression");
  if (v30)
  {
    v31 = v30;
    if (CFGetTypeID(v30) != v7)
    {
      v67 = "kBOMCopierOptionPreserveHFSPlusCompressionKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 195) = BOMCFGetBoolValue(v31);
  }

  v32 = CFDictionaryGetValue(a2, @"hfsPlusCompressionOptions");
  if (v32)
  {
    v33 = v32;
    if (CFGetTypeID(v32) != v5)
    {
      v67 = "kBOMCopierOptionHFSPlusCompressionOptionsDictionaryKey is not a CFDictionaryRef";
      goto LABEL_273;
    }

    *(a1 + 12856) = v33;
    CFRetain(v33);
  }

  v34 = CFDictionaryGetValue(a2, @"copyResources");
  if (v34)
  {
    v35 = v34;
    if (CFGetTypeID(v34) != v7)
    {
      v67 = "kBOMCopierOptionCopyResourcesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 169) = BOMCFGetBoolValue(v35);
  }

  v36 = CFDictionaryGetValue(a2, @"copyExtendedAttributes");
  if (v36)
  {
    v37 = v36;
    if (CFGetTypeID(v36) != v7)
    {
      v67 = "kBOMCopierOptionCopyExtendedAttributesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 170) = BOMCFGetBoolValue(v37);
  }

  v38 = CFDictionaryGetValue(a2, @"copyACLs");
  if (v38)
  {
    v39 = v38;
    if (CFGetTypeID(v38) != v7)
    {
      v67 = "kBOMCopierOptionCopyACLsKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 171) = BOMCFGetBoolValue(v39);
  }

  v40 = CFDictionaryGetValue(a2, @"applySourcePermissions");
  if (v40)
  {
    v41 = v40;
    if (CFGetTypeID(v40) != v7)
    {
      v67 = "kBOMCopierOptionApplySourcePermissionsKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12822) = BOMCFGetBoolValue(v41);
  }

  v42 = CFDictionaryGetValue(a2, @"nonatomicCopy");
  if (v42)
  {
    v43 = v42;
    if (CFGetTypeID(v42) != v7)
    {
      v67 = "kBOMCopierOptionNonAtomicCopyKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12823) = BOMCFGetBoolValue(v43);
  }

  v44 = CFDictionaryGetValue(a2, @"segmentLargeFiles");
  if (v44)
  {
    v45 = v44;
    if (CFGetTypeID(v44) != v7)
    {
      v67 = "kBOMCopierOptionSegmentLargeFilesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12824) = BOMCFGetBoolValue(v45);
  }

  v46 = CFDictionaryGetValue(a2, @"keepBinaries");
  if (v46)
  {
    v47 = v46;
    if (CFGetTypeID(v46) != v7)
    {
      v67 = "kBOMCopierOptionKeepBinariesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 173) = BOMCFGetBoolValue(v47);
  }

  v48 = CFDictionaryGetValue(a2, @"keepBinariesList");
  if (v48)
  {
    v49 = v48;
    if (CFGetTypeID(v48) != v6)
    {
      v67 = "kBOMCopierOptionKeepBinariesListKey is not a CFStringRef";
      goto LABEL_273;
    }

    v50 = BOMCFStringGetUTF8String(v49);
    *(a1 + 12920) = v50;
    if (!v50)
    {
      v67 = "Cannot convert kBOMCopierOptionKeepBinariesListKey from options dictionary into UTF8 encoded C string";
      goto LABEL_273;
    }
  }

  v51 = CFDictionaryGetValue(a2, @"keepBinariesPattern");
  if (v51)
  {
    v52 = v51;
    if (CFGetTypeID(v51) != v6)
    {
      v67 = "kBOMCopierOptionKeepBinariesPatternKey is not a CFStringRef";
      goto LABEL_273;
    }

    v53 = BOMCFStringGetUTF8String(v52);
    *(a1 + 12928) = v53;
    if (!v53)
    {
      v67 = "Cannot convert kBOMCopierOptionKeepBinariesPatternKey from options dictionary into UTF8 encoded C string";
      goto LABEL_273;
    }
  }

  v54 = CFDictionaryGetValue(a2, @"keepBinariesDir");
  if (v54)
  {
    v55 = v54;
    if (CFGetTypeID(v54) != v6)
    {
      v67 = "kBOMCopierOptionKeepBinariesDirKey is not a CFStringRef";
      goto LABEL_273;
    }

    v56 = BOMCFStringGetUTF8String(v55);
    *(a1 + 12936) = v56;
    if (!v56)
    {
      v67 = "Cannot convert kBOMCopierOptionKeepBinariesDirKey from options dictionary into UTF8 encoded C string";
      goto LABEL_273;
    }
  }

  v57 = CFDictionaryGetValue(a2, @"crossDevices");
  if (v57)
  {
    v58 = v57;
    if (CFGetTypeID(v57) != v7)
    {
      v67 = "kBOMCopierOptionCrossDevicesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 192) = BOMCFGetBoolValue(v58);
  }

  v59 = CFDictionaryGetValue(a2, @"createCPIO");
  if (v59)
  {
    v60 = v59;
    if (CFGetTypeID(v59) != v7)
    {
      v67 = "kBOMCopierOptionCreateCPIOKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    if (CFEqual(v60, *MEMORY[0x277CBED28]))
    {
      *(a1 + 12716) = 4;
    }
  }

  v61 = CFDictionaryGetValue(a2, @"extractCPIO");
  if (v61)
  {
    v62 = v61;
    if (CFGetTypeID(v61) != v7)
    {
      v67 = "kBOMCopierOptionExtractCPIOKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    if (CFEqual(v62, *MEMORY[0x277CBED28]))
    {
      *(a1 + 12712) = 1;
    }
  }

  v63 = CFDictionaryGetValue(a2, @"compressCPIO");
  if (v63 || (v63 = CFDictionaryGetValue(a2, @"compress")) != 0)
  {
    v64 = v63;
    if (CFGetTypeID(v63) == v6)
    {
      if (!CFEqual(v64, @"auto"))
      {
        if (CFEqual(v64, @"none"))
        {
          v65 = 0;
          v66 = 0;
LABEL_103:
          *(a1 + 12720) = v65;
          *(a1 + 12964) = v66;
          goto LABEL_104;
        }

        if (CFEqual(v64, @"gzip"))
        {
          v65 = 1;
          v66 = 1;
          goto LABEL_103;
        }

        if (!CFEqual(v64, @"bzip2"))
        {
          v67 = "Unknown compression type";
          goto LABEL_273;
        }

        v66 = 2;
LABEL_102:
        v65 = 1;
        goto LABEL_103;
      }
    }

    else if (!CFEqual(v64, *MEMORY[0x277CBED28]))
    {
      goto LABEL_104;
    }

    v66 = 8;
    goto LABEL_102;
  }

LABEL_104:
  v68 = CFDictionaryGetValue(a2, @"applyIndexBomOwnership");
  if (v68)
  {
    v69 = v68;
    if (CFGetTypeID(v68) != v7)
    {
      v67 = "kBOMCopierOptionApplyIndexBomOwnershipKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12746) = BOMCFGetBoolValue(v69);
  }

  v70 = CFDictionaryGetValue(a2, @"createPKZip");
  if (v70)
  {
    v71 = v70;
    if (CFGetTypeID(v70) != v7)
    {
      v67 = "kBOMCopierOptionCreatePKZipKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    if (CFEqual(v71, *MEMORY[0x277CBED28]))
    {
      *(a1 + 12716) = 5;
    }
  }

  v72 = CFDictionaryGetValue(a2, @"extractPKZip");
  if (v72)
  {
    v73 = v72;
    if (CFGetTypeID(v72) != v7)
    {
      v67 = "kBOMCopierOptionExtractPKZipKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    if (CFEqual(v73, *MEMORY[0x277CBED28]))
    {
      *(a1 + 12712) = 2;
      *(a1 + 12768) = *(a1 + 169);
    }
  }

  v74 = CFDictionaryGetValue(a2, @"extractAppleArchive");
  if (v74)
  {
    v75 = v74;
    if (CFGetTypeID(v74) != v7)
    {
      v67 = "kBOMCopierOptionExtractAppleArchiveKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    if (CFEqual(v75, *MEMORY[0x277CBED28]))
    {
      *(a1 + 12712) = 3;
    }
  }

  v76 = CFDictionaryGetValue(a2, @"createAppleArchive");
  if (v76)
  {
    v77 = v76;
    if (CFGetTypeID(v76) != v7)
    {
      v67 = "kBOMCopierOptionCreateAppleArchiveKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    if (CFEqual(v77, *MEMORY[0x277CBED28]))
    {
      *(a1 + 12716) = 6;
    }
  }

  v78 = CFDictionaryGetValue(a2, @"zlibCompressionLevel");
  if (v78)
  {
    v79 = v78;
    if (CFGetTypeID(v78) != v8)
    {
      v67 = "kBOMCopierOptionZlibCompressionLevel is not a CFNumberRef";
      goto LABEL_273;
    }

    CFNumberGetValue(v79, kCFNumberSInt32Type, (a1 + 12792));
  }

  v80 = CFDictionaryGetValue(a2, @"sequesterResources");
  if (v80)
  {
    v81 = v80;
    if (CFGetTypeID(v80) != v7)
    {
      v67 = "kBOMCopierOptionSequesterResourcesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    v82 = BOMCFGetBoolValue(v81);
    *(a1 + 12768) = v82;
    *(a1 + 169) = v82;
  }

  v83 = CFDictionaryGetValue(a2, @"skipCPIOTerminator");
  if (v83)
  {
    v84 = v83;
    if (CFGetTypeID(v83) != v7)
    {
      v67 = "kBOMCopierOptionSkipCPIOTerminatorKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12744) = BOMCFGetBoolValue(v84);
  }

  v85 = CFDictionaryGetValue(a2, @"skipCPIORoot");
  if (v85)
  {
    v86 = v85;
    if (CFGetTypeID(v85) != v7)
    {
      v67 = "kBOMCopierOptionSkipCPIORootKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12745) = BOMCFGetBoolValue(v86);
  }

  v87 = CFDictionaryGetValue(a2, @"initialCPIOInode");
  if (v87)
  {
    v88 = v87;
    if (CFGetTypeID(v87) != v8)
    {
      v67 = "kBOMCopierOptionInitialCPIOInodeRootKey is not a CFNumberRef";
      goto LABEL_273;
    }

    CFNumberGetValue(v88, kCFNumberSInt32Type, (a1 + 12960));
  }

  v89 = CFDictionaryGetValue(a2, @"keepParent");
  if (v89)
  {
    v90 = v89;
    if (CFGetTypeID(v89) != v7)
    {
      v67 = "kBOMCopierOptionKeepParentKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 193) = BOMCFGetBoolValue(v90);
  }

  v91 = CFDictionaryGetValue(a2, @"useFilesystemCache");
  if (v91)
  {
    v92 = v91;
    if (CFGetTypeID(v91) != v7)
    {
      goto LABEL_186;
    }

    v93 = BOMCFGetBoolValue(v92);
    *(a1 + 12813) = v93;
    *(a1 + 12814) = v93;
  }

  v94 = CFDictionaryGetValue(a2, @"sourceOptions");
  if (v94)
  {
    v95 = v94;
    if (CFGetTypeID(v94) != v5)
    {
      v67 = "kBOMCopierOptionSourceOptionsDictionaryKey is not a CFDictionaryRef";
      goto LABEL_273;
    }

    v96 = CFDictionaryGetValue(v95, @"useFilesystemCache");
    if (v96)
    {
      v97 = v96;
      if (CFGetTypeID(v96) != v7)
      {
        goto LABEL_186;
      }

      *(a1 + 12813) = BOMCFGetBoolValue(v97);
    }
  }

  v98 = CFDictionaryGetValue(a2, @"destinationOptions");
  if (!v98)
  {
    goto LABEL_154;
  }

  v99 = v98;
  if (CFGetTypeID(v98) != v5)
  {
    v67 = "kBOMCopierOptionDestinationOptionsDictionaryKey is not a CFDictionaryRef";
    goto LABEL_273;
  }

  v100 = CFDictionaryGetValue(v99, @"useFilesystemCache");
  if (!v100)
  {
    goto LABEL_154;
  }

  v101 = v100;
  if (CFGetTypeID(v100) != v7)
  {
LABEL_186:
    v67 = "kBOMCopierOptionUseFilesystemCacheKey is not a CFBooleanRef";
    goto LABEL_273;
  }

  *(a1 + 12814) = BOMCFGetBoolValue(v101);
LABEL_154:
  v102 = CFDictionaryGetValue(a2, @"inputFD");
  if (v102)
  {
    v103 = v102;
    if (CFGetTypeID(v102) != v8)
    {
      v67 = "kBOMCopierOptionInputFileDescriptorKey is not a CFNumberRef";
      goto LABEL_273;
    }

    *(a1 + 12984) = BOMCFGetIntValue(v103);
  }

  v104 = CFDictionaryGetValue(a2, @"outputFD");
  if (v104)
  {
    v105 = v104;
    if (CFGetTypeID(v104) != v8)
    {
      v67 = "kBOMCopierOptionOutputFileDescriptorKey is not a CFNumberRef";
      goto LABEL_273;
    }

    *(a1 + 12988) = BOMCFGetIntValue(v105);
  }

  v106 = CFDictionaryGetValue(a2, @"inputStream");
  if (v106)
  {
    v107 = v106;
    v108 = CFGetTypeID(v106);
    if (v108 != CFReadStreamGetTypeID())
    {
      v67 = "kBOMCopierOptionInputCFReadStreamKey is not a CFReadStreamRef";
      goto LABEL_273;
    }

    *(a1 + 12944) = v107;
  }

  v109 = CFDictionaryGetValue(a2, @"outputStream");
  if (v109)
  {
    v110 = v109;
    v111 = CFGetTypeID(v109);
    if (v111 != CFWriteStreamGetTypeID())
    {
      v67 = "kBOMCopierOptionOutputCFWriteStreamKey is not a CFWriteStreamRef";
      goto LABEL_273;
    }

    *(a1 + 12952) = v110;
  }

  v112 = CFDictionaryGetValue(a2, @"symlinkTreatment");
  if (v112)
  {
    v113 = v112;
    if (CFGetTypeID(v112) != v6)
    {
      v67 = "kBOMCopierOptionSymlinkTreatmentKey is not a CFStringRef";
      goto LABEL_273;
    }

    if (CFEqual(v113, @"unlink"))
    {
      v114 = 0;
    }

    else if (CFEqual(v113, @"follow"))
    {
      v114 = 1;
    }

    else
    {
      if (!CFEqual(v113, @"error"))
      {
        v67 = "Unknown value for kBOMCopierOptionSymlinkTreatmentKey";
        goto LABEL_273;
      }

      v114 = 2;
    }

    *(a1 + 12816) = v114;
  }

  v115 = CFDictionaryGetValue(a2, @"enforceDestinationEncapsulation");
  if (v115)
  {
    v116 = v115;
    if (CFGetTypeID(v115) != v7)
    {
      v67 = "kBOMCopierOptionEnforceDestinationEncapsulationKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12820) = BOMCFGetBoolValue(v116);
  }

  v117 = CFDictionaryGetValue(a2, @"enforceDestinationLocation");
  if (v117)
  {
    v118 = v117;
    if (CFGetTypeID(v117) != v7)
    {
      v67 = "kBOMCopierOptionEnforceDestinationLocationKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12821) = BOMCFGetBoolValue(v118);
  }

  v119 = CFDictionaryGetValue(a2, @"zipFileEncryptionKey");
  if (v119)
  {
    v120 = v119;
    if (CFGetTypeID(v119) != v6)
    {
      v67 = "kBOMCopierOptionEncryptionKey is not a CFStringRef";
      goto LABEL_273;
    }

    v121 = BOMCFStringGetUTF8String(v120);
    *(a1 + 12800) = v121;
    if (!v121)
    {
      v67 = "Cannot convert kBOMCopierOptionEncryptionKey from options dictionary into UTF8 encoded C string";
      goto LABEL_273;
    }
  }

  v122 = CFDictionaryGetValue(a2, @"persistRestrictedFlags");
  if (v122)
  {
    v123 = v122;
    if (CFGetTypeID(v122) != v7)
    {
      v67 = "kBOMCopierOptionPersistRestrictedFlagsKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12872) = BOMCFGetBoolValue(v123);
  }

  v124 = CFDictionaryGetValue(a2, @"preserveRestrictedFlags");
  if (v124)
  {
    v125 = v124;
    if (CFGetTypeID(v124) != v7)
    {
      v67 = "kBOMCopierOptionPreserveRestrictedFlagsKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12873) = BOMCFGetBoolValue(v125);
  }

  v126 = CFDictionaryGetValue(a2, @"persistRootlessEAs");
  if (v126)
  {
    v127 = v126;
    if (CFGetTypeID(v126) != v7)
    {
      v67 = "kBOMCopierOptionPersistRootlessExtendedAttributesKey is not a CFBooleanRef";
      goto LABEL_273;
    }

    *(a1 + 12874) = BOMCFGetBoolValue(v127);
  }

  if (getenv("PRESERVECOMPRESSION"))
  {
    *(a1 + 195) = 1;
  }

  if (CFDictionaryContainsKey(a2, @"output2Nowhere") == 1)
  {
    v67 = "The legacy engine does not support the nowhere destination";
  }

  else
  {
    v128 = CFDictionaryGetValue(a2, @"cloneFiles");
    if (v128)
    {
      v129 = v128;
      if (CFGetTypeID(v128) != v7)
      {
        v67 = "kBOMCopierOptionCloneFilesKey is not a CFBooleanRef";
        goto LABEL_273;
      }

      *(a1 + 204) = BOMCFGetBoolValue(v129);
    }

    v130 = CFDictionaryGetValue(a2, @"removeSetuidPermissions");
    if (v130)
    {
      v131 = v130;
      if (CFGetTypeID(v130) != v7)
      {
        v67 = "kBOMCopierOptionRemoveSetuidPermissionsKey is not a CFBooleanRef";
        goto LABEL_273;
      }

      *(a1 + 205) = BOMCFGetBoolValue(v131);
    }

    v132 = CFDictionaryGetValue(a2, @"removeExecutablePermissions");
    if (v132)
    {
      v133 = v132;
      if (CFGetTypeID(v132) != v7)
      {
        v67 = "kBOMCopierOptionRemoveExecutablePermissionsKey is not a CFBooleanRef";
        goto LABEL_273;
      }

      *(a1 + 206) = BOMCFGetBoolValue(v133);
    }

    v134 = CFDictionaryGetValue(a2, @"setStaticContent");
    if (v134)
    {
      v135 = v134;
      if (CFGetTypeID(v134) != v7)
      {
        v67 = "kBOMCopierOptionSetStaticContentKey is not a CFBooleanRef";
        goto LABEL_273;
      }

      *(a1 + 207) = BOMCFGetBoolValue(v135);
    }

    v136 = CFDictionaryGetValue(a2, @"setSingleWriter");
    if (v136)
    {
      v137 = v136;
      if (CFGetTypeID(v136) != v7)
      {
        v67 = "kBOMCopierOptionSetSingleWriterKey is not a CFBooleanRef";
        goto LABEL_273;
      }

      *(a1 + 208) = BOMCFGetBoolValue(v137);
    }

    v138 = CFDictionaryGetValue(a2, @"setDataProtectionClass");
    if (v138)
    {
      v139 = v138;
      if (CFGetTypeID(v138) != v6)
      {
        v67 = "kBOMCopierOptionSetDataProtectionClassKey must be a CFStringRef";
        goto LABEL_273;
      }

      v140 = CFEqual(v139, @"A");
      v141 = 1;
      if (v140 != 1)
      {
        if (CFEqual(v139, @"B") == 1)
        {
          v141 = 2;
        }

        else if (CFEqual(v139, @"C") == 1)
        {
          v141 = 3;
        }

        else
        {
          if (CFEqual(v139, @"D") != 1)
          {
            v67 = "Unsupported data protection class";
            goto LABEL_273;
          }

          v141 = 4;
        }
      }

      *(a1 + 212) = v141;
      *(a1 + 211) = 1;
    }

    v142 = CFDictionaryGetValue(a2, @"applyProvenance");
    if (v142)
    {
      v143 = v142;
      if (CFGetTypeID(v142) != v9)
      {
        v67 = "kBOMCopierOptionApplyProvenanceKey must be a CFDataRef";
        goto LABEL_273;
      }

      Length = CFDataGetLength(v143);
      if (!Length)
      {
        v67 = "kBOMCopierOptionApplyProvenanceKey has an invalid size";
        goto LABEL_273;
      }

      v145 = Length;
      v146 = malloc_type_malloc(Length, 0x5F80FCE6uLL);
      if (!v146)
      {
        v67 = "Could not allocate provenance data buffer";
        goto LABEL_273;
      }

      v147 = v146;
      BytePtr = CFDataGetBytePtr(v143);
      memcpy(v147, BytePtr, v145);
      *(a1 + 216) = v147;
      *(a1 + 224) = v145;
    }

    result = CFDictionaryGetValue(a2, @"injectAppleDoubleBetweenSegmentedFiles");
    if (!result)
    {
      return result;
    }

    v150 = result;
    if (CFGetTypeID(result) == v7)
    {
      v151 = BOMCFGetBoolValue(v150);
      result = 0;
      *(a1 + 12996) = v151 != 0;
      return result;
    }

    v67 = "kBOMCopierOptionInjectAppleDoubleBetweenSegmentedFilesKey is not a CFBooleanRef";
  }

LABEL_273:
  BOMCopierNotifyFatalError(a1, v67, v11, v12, v13, v14, v15, v16);
  return 1;
}

uint64_t _verifyCopierOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 12720) && *(a1 + 12712) != 1 && *(a1 + 12716) != 4)
  {
    v11 = "Compression is only used for CPIO archives";
    goto LABEL_23;
  }

  if (*(a1 + 12744) && *(a1 + 12716) != 4)
  {
    v11 = "SkipTerminator is only used for CPIO archives";
    goto LABEL_23;
  }

  if (*(a1 + 12745) && *(a1 + 12716) != 4)
  {
    v11 = "SkipRoot is only used for CPIO archives";
    goto LABEL_23;
  }

  v10 = *(a1 + 12712);
  if (v10 == 2 && *(a1 + 12716) != 3)
  {
    v11 = "PKZip archives can only be extracted to filesystem destinations";
    goto LABEL_23;
  }

  if (*(a1 + 12768) && v10 != 2 && *(a1 + 12716) != 5)
  {
    v11 = "sequesterResources is only for PKZip archives";
LABEL_23:
    BOMCopierNotifyFatalError(a1, v11, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  if ((*(a1 + 12792) - 10) <= 0xFFFFFFF4)
  {
    BOMCopierNotifyFatalError(a1, "%d is out of range for Zlib compression", a3, a4, a5, a6, a7, a8, *(a1 + 12792));
    return 1;
  }

  if (v10 == 3 || (v12 = *(a1 + 12716), v12 == 6))
  {
    v11 = "The legacy engine does not support AppleArchive";
    goto LABEL_23;
  }

  if (v12 == 3 && *(a1 + 193))
  {
    v11 = "keepParent is only for archives";
    goto LABEL_23;
  }

  v14 = *(a1 + 12984);
  if (a2 && v14 != -1)
  {
    v11 = "Cannot specify a fromObj with kBOMCopierOptionInputFileDescriptorKey";
    goto LABEL_23;
  }

  if (a3 && *(a1 + 12988) != -1)
  {
    v11 = "Cannot specify a toObj with kBOMCopierOptionOutputFileDescriptorKey";
    goto LABEL_23;
  }

  v15 = *(a1 + 12944);
  if (v15)
  {
    if (!a2 && v14 == -1)
    {
      for (i = 30; ; --i)
      {
        Status = CFReadStreamGetStatus(v15);
        if (Status != kCFStreamStatusOpening)
        {
          break;
        }

        if (!i)
        {
          v11 = "Timed out waiting for the read stream to open";
          goto LABEL_23;
        }

        __rqtp = xmmword_241C78EB0;
        nanosleep(&__rqtp, 0);
        v15 = *(a1 + 12944);
      }

      if (Status == kCFStreamStatusOpen)
      {
        goto LABEL_43;
      }

      BOMCopierNotifyFatalError(a1, "CFReadStream is not open: %u", a3, a4, a5, a6, a7, a8, Status);
      return 1;
    }

    v11 = "Cannot specify fromObj or kBOMCopierOptionInputFileDescriptorKey with kBOMCopierOptionInputCFReadStreamKey";
    goto LABEL_23;
  }

LABEL_43:
  v18 = *(a1 + 12952);
  if (v18)
  {
    if (!a3 && *(a1 + 12988) == -1)
    {
      for (j = 30; ; --j)
      {
        v20 = CFWriteStreamGetStatus(v18);
        if (v20 != kCFStreamStatusOpening)
        {
          break;
        }

        if (!j)
        {
          v11 = "Timed out waiting for the write stream to open";
          goto LABEL_23;
        }

        __rqtp = xmmword_241C78EB0;
        nanosleep(&__rqtp, 0);
        v18 = *(a1 + 12952);
      }

      if (v20 == kCFStreamStatusOpen)
      {
        goto LABEL_54;
      }

      BOMCopierNotifyFatalError(a1, "CFWriteStream is not open: %u", a3, a4, a5, a6, a7, a8, v20);
      return 1;
    }

    v11 = "Cannot specify toObj or kBOMCopierOptionOutputFileDescriptorKey with kBOMCopierOptionOutputCFWriteStreamKey";
    goto LABEL_23;
  }

LABEL_54:
  if (*(a1 + 204) == 1)
  {
    if (*(a1 + 12712))
    {
      v11 = "kBOMCopierOptionCloneFiles requires the source to be a filesystem";
      goto LABEL_23;
    }

    if (*(a1 + 12716) != 3)
    {
      v11 = "kBOMCopierOptionCloneFiles requires the destination to be a filesystem";
      goto LABEL_23;
    }
  }

  if (*(a1 + 207) == 1 && *(a1 + 12716) != 3)
  {
    v11 = "setStaticContent is only for filesystem destinations";
    goto LABEL_23;
  }

  if (*(a1 + 208) == 1 && *(a1 + 12716) != 3)
  {
    v11 = "setSingleWriter is only for filesystem destinations";
    goto LABEL_23;
  }

  if (*(a1 + 216))
  {
    if (!*(a1 + 12712))
    {
      v11 = "applyProvenance is only for extracting from archives";
      goto LABEL_23;
    }

    if (*(a1 + 12716) != 3)
    {
      v11 = "applyProvenance is only applicable when extracting from archives";
      goto LABEL_23;
    }
  }

  return 0;
}

uint64_t _prepareCopierState(uint64_t a1)
{
  v2 = *(a1 + 12896);
  if (v2)
  {
    v3 = BOMBomOpenWithSys(v2, 0, *(a1 + 12832));
    *(a1 + 152) = v3;
    if (!v3)
    {
      v34 = *(a1 + 12896);
LABEL_27:
      v55 = v34;
      v12 = "Cannot open BOM at '%s'";
      goto LABEL_28;
    }
  }

  v58 = 0;
  v10 = *(a1 + 12880);
  if (v10)
  {
    v11 = _parse_arch_list(a1, v10, *(a1 + 12888), (a1 + 144), &v58);
    *(a1 + 136) = v11;
    if (!v11)
    {
      v12 = "Could not parse the Mach-O architectures to copy";
LABEL_28:
      BOMCopierNotifyFatalError(a1, v12, v4, v5, v6, v7, v8, v9, v55);
      return 1;
    }
  }

  else if (!*(a1 + 136))
  {
    goto LABEL_10;
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    v14 = BOMBomNewFromBomWithOptions(0, v13, 1, v58, 0);
    if (!v14)
    {
      BOMCopierNotifyFatalError(a1, "Cannot thin the index bom", v15, v16, v17, v18, v19, v20);
      if (v58)
      {
        v35 = *v58;
        if (*v58)
        {
          v36 = 8;
          do
          {
            free(v35);
            v35 = *(v58 + v36);
            v36 += 8;
          }

          while (v35);
        }
      }

      return 1;
    }

    v21 = v14;
    BOMBomFree(*(a1 + 152));
    *(a1 + 152) = v21;
  }

LABEL_10:
  v22 = v58;
  if (v58)
  {
    v23 = *v58;
    if (*v58)
    {
      v24 = 0;
      do
      {
        free(v23);
        *(v58 + v24) = 0;
        v22 = v58;
        v23 = *(v58 + v24 + 8);
        v24 += 8;
      }

      while (v23);
    }

    free(v22);
  }

  v25 = *(a1 + 12904);
  if (v25)
  {
    v26 = BOMBomOpenWithSys(v25, 0, *(a1 + 12832));
    *(a1 + 160) = v26;
    if (!v26)
    {
      v34 = *(a1 + 12904);
      goto LABEL_27;
    }
  }

  v27 = *(a1 + 12920);
  if (v27)
  {
    if (_mkdirs_parent(a1, v27))
    {
      BOMCopierNotifyFatalError(a1, "Cannot create parent directory for %s", v28, v29, v30, v31, v32, v33, *(a1 + 12920));
      return 1;
    }

    v57 = 0;
    if (BOMFileOpenWithSys(&v57, *(a1 + 12920), 1545, 420, 0, *(a1 + 12832)))
    {
      v38 = *(a1 + 12920);
      v39 = __error();
      v56 = strerror(*v39);
      BOMCopierNotifyFatalError(a1, "Cannot open file %s for writing: %s", v40, v41, v42, v43, v44, v45, v38, v56);
      return 1;
    }

    *(a1 + 176) = v57;
  }

  v46 = *(a1 + 12928);
  if (v46)
  {
    v47 = BOMPatternCompileString(v46);
    *(a1 + 184) = v47;
    if (!v47)
    {
      BOMCopierNotifyFatalError(a1, "Cannot compile %s as a regular expression pattern", v48, v49, v50, v51, v52, v53, *(a1 + 12928));
      return 1;
    }
  }

  v54 = geteuid();
  *(a1 + 10496) = v54;
  if (v54 && _initGroupList(a1))
  {
    return 1;
  }

  if (*(a1 + 195) && (*(a1 + 12716) != 3 || !*(a1 + 170) && !*(a1 + 169)))
  {
    *(a1 + 195) = 0;
  }

  while (!BOMStackIsEmpty(*(a1 + 40)))
  {
    BOMStackPop(*(a1 + 40));
  }

  return 0;
}

uint64_t _prepareCopierDestination(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 12716);
  if (v10 != 3)
  {
    v45 = 0;
    v19 = *(a1 + 12964);
    *(a1 + 12992) = v19;
    if (!*(a1 + 12814))
    {
      v19 |= 0x10u;
      *(a1 + 12992) = v19;
    }

    if (v10 == 4)
    {
      v20 = getenv("BOM_ASYNC");
      if (v20)
      {
        v21 = *v20;
        if (v21 == 48)
        {
          if (!v20[1])
          {
            goto LABEL_16;
          }
        }

        else if (48 == v21)
        {
          goto LABEL_16;
        }

        v19 |= 0x20u;
        *(a1 + 12992) = v19;
      }
    }

LABEL_16:
    if (a2)
    {
      if (*a2 == 45 && !a2[1])
      {
        if (BOMFileOpenSTDOUT(&v45, v19))
        {
          v31 = __error();
          v24 = *(a1 + 64);
          if (!v24)
          {
            return 1;
          }

          v25 = *v31;
          v28 = a1;
          v26 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        if (_mkdirs_parent(a1, a2))
        {
          v44 = a2;
LABEL_21:
          BOMCopierNotifyFatalError(a1, "Cannot create parent directory for %s", v13, v14, v15, v16, v17, v18, v44);
          return 1;
        }

        if (BOMFileOpenWithSys(&v45, a2, 1537, 420, *(a1 + 12992), *(a1 + 12832)))
        {
          v27 = __error();
          v24 = *(a1 + 64);
          if (!v24)
          {
            return 1;
          }

          v25 = *v27;
          v28 = a1;
          v26 = a2;
LABEL_38:
          v24(v28, v26, v25);
          return 1;
        }
      }

LABEL_41:
      if (*(a1 + 12716) == 4)
      {
        if (!BOMCPIONew((a1 + 12736), v45, 1, *(a1 + 12960)))
        {
          return 0;
        }

        BOMFileClose(v45);
        BOMCopierNotifyFatalError(a1, "Cannot create CPIO file at %s", v32, v33, v34, v35, v36, v37, v45);
      }

      else
      {
        if (!BOMPKZipNew((a1 + 12760), v45, 1))
        {
          return 0;
        }

        BOMFileClose(v45);
        BOMCopierNotifyFatalError(a1, "Cannot create PKZip file at %s", v38, v39, v40, v41, v42, v43, v45);
      }

      return 1;
    }

    v22 = *(a1 + 12988);
    if (v22 == -1)
    {
      v29 = *(a1 + 12952);
      if (!v29 || !BOMFileNewFromCFWriteStream(&v45, v29, v19))
      {
        goto LABEL_41;
      }

      v30 = __error();
      v24 = *(a1 + 64);
      if (!v24)
      {
        return 1;
      }

      v25 = *v30;
      v26 = "wstream";
    }

    else
    {
      if (!BOMFileNewFromFDWithSys(&v45, v22, v19, "wb", *(a1 + 12832)))
      {
        goto LABEL_41;
      }

      v23 = __error();
      v24 = *(a1 + 64);
      if (!v24)
      {
        return 1;
      }

      v25 = *v23;
      v26 = "fdesc";
    }

    v28 = a1;
    goto LABEL_38;
  }

  if (a2)
  {
    v11 = *(a1 + 12936);
    if (v11)
    {
      result = _mkdirs(a1, v11);
      if (!result)
      {
        return result;
      }

      v44 = *(a1 + 12936);
      goto LABEL_21;
    }

    return 0;
  }

  BOMCopierNotifyFatalError(a1, "If the destination is a filesystem, the toObj argument cannot be nil", a3, a4, a5, a6, a7, a8);
  _resetCopier(a1);
  return 1;
}

uint64_t _BOMCopierCopyFromFilesystem(uint64_t a1, const char *a2, const char *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v73 = 0uLL;
  v72 = 0uLL;
  v71 = 0;
  if (!a2 || !*a2 || *(a1 + 12716) == 3 && (!a3 || !*a3))
  {
    return 1;
  }

  *(a1 + 168) = 0;
  *(a1 + 11616) = 0;
  *(a1 + 12641) = 0;
  v6 = *(a1 + 152);
  if (v6)
  {
    v13 = BOMBomPathIDForKey(v6, 0, ".");
    if (!v13)
    {
      v14 = "Can't find . in bom file";
LABEL_12:
      BOMCopierNotifyFatalError(a1, v14, v7, v8, v9, v10, v11, v12, v68, v69, v70);
      return 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = strlen(a2);
  if (v15 >= 0x3FF)
  {
    v69 = v15;
    v70 = 1023;
    v68 = a2;
    v14 = "source path ('%s') too long [%lu >= %lu]!";
    goto LABEL_12;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v83, 0, sizeof(v83));
  __strlcpy_chk();
  v16 = (a1 + 248);
  if ((*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), __s, a1 + 248) != a1 + 248)
  {
    goto LABEL_14;
  }

  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v83))
  {
LABEL_18:
    v22 = __error();
    v18 = *(a1 + 64);
    if (!v18)
    {
      return 1;
    }

    v19 = *v22;
    v21 = a1;
    v20 = (a1 + 248);
LABEL_20:
    v18(v21, v20, v19);
    return 1;
  }

  v24 = WORD2(v83[0]) & 0xF000;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  if (*(a1 + 12716) == 3)
  {
    v25 = strlen(a3);
    if (v25 >= 0x3FF)
    {
      BOMCopierNotifyFatalError(a1, "destination path ('%s') too long [%lu >= %lu]!", v26, v27, v28, v29, v30, v31, a3, v25, 1023);
      return 1;
    }

    __strlcpy_chk();
    v35 = (*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), __s, &v74);
    v34 = *__error();
    if (v35 && v34 != 2 && v34 != 63)
    {
      goto LABEL_14;
    }

    v46 = WORD2(v74) & 0xF000;
    if (v35)
    {
      v46 = v24;
    }

    v47 = v46 == 0x4000;
    if (!v35 && v24 != 0x4000 && v46 == 0x4000)
    {
      strrchr((a1 + 248), 47);
      __strlcat_chk();
      __strlcat_chk();
      v35 = (*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), __s, &v74);
      if (v35)
      {
        v48 = 0;
      }

      else
      {
        v48 = (WORD2(v74) & 0xF000) == 0x4000;
      }

      v47 = v48;
    }

    if (v24 == 0x4000 && !v35 && !v47)
    {
      BOMCopierNotifyFatalError(a1, "Can't copy directory %s into a file %s.", v40, v41, v42, v43, v44, v45, a1 + 248, __s);
      return 1;
    }

    if (!v35 && v83[1] == *(&v74 + 1) && LODWORD(v83[0]) == v74)
    {
      BOMCopierNotifyFatalError(a1, "%s and %s are identical (not copied).", v40, v41, v42, v43, v44, v45, a1 + 248, __s);
      return 1;
    }

    __strlcpy_chk();
    v33 = !v47;
  }

  else
  {
    v32 = "<unknown>";
    if (a3)
    {
      v32 = a3;
    }

    snprintf((a1 + 3328), 0x400uLL, "%s:", v32);
    v33 = 0;
    v34 = 0;
    v35 = -1;
  }

  if (v24 == 0x4000)
  {
    *(a1 + 2304) = 0;
    *(a1 + 6400) = 0;
  }

  else
  {
    _extractFileAndPath((a1 + 248), (a1 + 2304));
    if ((*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), a1 + 248, v83))
    {
      goto LABEL_18;
    }

    if (v33)
    {
      _extractFileAndPath((a1 + 3328), (a1 + 6400));
      v35 = (*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), a1 + 3328, &v74);
      v34 = *__error();
    }

    else
    {
      __strlcpy_chk();
    }
  }

  if (!*(a1 + 193))
  {
    v49 = strlen((a1 + 248));
    if (v49 != 1 || ((v50 = *v16, v50 != 47) ? (v51 = 47 - v50) : (v51 = -*(a1 + 249)), v51))
    {
      __strlcat_chk();
      v39 = &v16[v49];
      goto LABEL_69;
    }

    __strlcat_chk();
LABEL_71:
    v52 = (a1 + 249);
    goto LABEL_72;
  }

  __strlcpy_chk();
  v36 = strrchr(__s, 47);
  if (!v36)
  {
    goto LABEL_73;
  }

  v37 = v36;
  if (v36 == __s)
  {
    __strlcpy_chk();
    goto LABEL_71;
  }

  *v36 = 0;
  v38 = strlen(__s);
  snprintf((a1 + 248), 0x400uLL, "%s/./%s", __s, v37 + 1);
  v39 = &v16[v38];
LABEL_69:
  v52 = v39 + 1;
LABEL_72:
  *(a1 + 2296) = v52;
LABEL_73:
  *(a1 + 232) = v83[0];
  memset(&v91, 0, 512);
  if (statfs((a1 + 248), &v91))
  {
    goto LABEL_18;
  }

  *(a1 + 210) = (v91.f_flags & 8) == 0;
  v53 = *(a1 + 12716);
  if (v53 == 5)
  {
    if (BOMPKZipWriteLocalHeader(*(a1 + 12760), ".", v83, 0, 0) || v24 == 0x4000 && *(a1 + 193) && BOMPKZipWriteLocalHeader(*(a1 + 12760), *(a1 + 2296), v83, 0, 0))
    {
      goto LABEL_93;
    }

    goto LABEL_99;
  }

  if (v53 == 4)
  {
    if (!*(a1 + 12745))
    {
      if (*(a1 + 12746))
      {
        _applyIndexBomOwnershipForTargetArchive(a1, ".", v83);
      }

      if (!BOMCPIOWriteDirectory(*(a1 + 12736), ".", v83) && (v24 != 0x4000 || !*(a1 + 193) || !BOMCPIOWriteDirectory(*(a1 + 12736), *(a1 + 2296), v83)))
      {
        v55 = 0;
        v54 = 0;
        goto LABEL_100;
      }

LABEL_93:
      v56 = __error();
      v18 = *(a1 + 64);
      if (!v18)
      {
        return 1;
      }

      v19 = *v56;
      v20 = (a1 + 3328);
LABEL_16:
      v21 = a1;
      goto LABEL_20;
    }

LABEL_99:
    v55 = 0;
    v54 = 0;
    goto LABEL_100;
  }

  if (v53 != 3)
  {
    v55 = 0;
    v54 = 1;
    goto LABEL_100;
  }

  *(a1 + 236) = v74;
  *(a1 + 240) = *(&v74 + 1);
  __strlcpy_chk();
  if (v35)
  {
    *__error() = v34;
    if (*__error() != 2 && *__error() != 63)
    {
      goto LABEL_14;
    }

    v54 = 0;
  }

  else
  {
    if ((WORD2(v74) & 0xF000) != 0x4000)
    {
      v18 = *(a1 + 64);
      if (!v18)
      {
        return 1;
      }

      v20 = __s;
      v21 = a1;
      v19 = 20;
      goto LABEL_20;
    }

    v54 = 1;
    if (!*(a1 + 12822))
    {
      v55 = 0;
      goto LABEL_119;
    }
  }

  if (_makeDestDir(a1, __s, 1, v83, &v71))
  {
    goto LABEL_14;
  }

  v55 = WORD2(v83[0]);
  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), __s, &v74))
  {
    goto LABEL_14;
  }

  v72 = v85;
  v73 = v84;
LABEL_119:
  if ((*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), __s, a1 + 3328) != a1 + 3328)
  {
LABEL_14:
    v17 = __error();
    v18 = *(a1 + 64);
    if (!v18)
    {
      return 1;
    }

    v19 = *v17;
    v20 = __s;
    goto LABEL_16;
  }

  _initializeAFSCData(a1);
  if (statfs((a1 + 3328), &v91))
  {
    v66 = __error();
    v18 = *(a1 + 64);
    if (!v18)
    {
      return 1;
    }

    v19 = *v66;
    v21 = a1;
    v20 = (a1 + 3328);
    goto LABEL_20;
  }

  *(a1 + 209) = (v91.f_flags & 8) == 0;
  if (*(a1 + 211) == 1)
  {
    *(a1 + 211) = volume_has_data_protection((a1 + 3328));
  }

LABEL_100:
  v57 = v24;
  v58 = strlen((a1 + 248));
  v59 = strlen((a1 + 3328));
  v60 = 1024 - v58;
  v61 = 1024 - v59;
  v62 = &v16[v58];
  v63 = (a1 + 3328 + v59);
  if (v57 == 0x4000)
  {
    result = _copyFromDirToDir(a1, v83, v62, v60, v63, v61, v13);
  }

  else
  {
    result = _copyFromFileToDir(a1, v83, v62, v60, v63, v61, v13, v54);
  }

  if (!result)
  {
    if ((v54 & 1) != 0 || *(a1 + 12716) != 3 || (*(a1 + 170) || *(a1 + 169)) && _copyExtendedAttributes(a1, a1 + 248, v83, 0, 0) || *(a1 + 171) && _copyACLs(a1, (a1 + 248), 0, 0, 0))
    {
      return 0;
    }

    if (v71 && (*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), a1 + 3328, v55))
    {
LABEL_113:
      v64 = __error();
      v65 = *(a1 + 64);
      if (v65)
      {
        v65(a1, a1 + 3328, *v64);
      }

      return 0;
    }

    result = set_timestamps_0((a1 + 3328), &v73, &v72);
    if (result)
    {
      if (*__error() == 13 || *__error() == 1)
      {
        v67 = __error();
        result = 0;
        *v67 = 0;
        return result;
      }

      goto LABEL_113;
    }
  }

  return result;
}

uint64_t _BOMCopierCopyFromCPIO(uint64_t a1, int *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v10 = (a1 + 12288);
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
  if (*(a1 + 12716) == 3)
  {
    if (!a3)
    {
      BOMCopierNotifyFatalError(a1, "dstPath is NULL", 0, a4, a5, a6, a7, a8, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      goto LABEL_17;
    }

    if (*(a1 + 12821) && _enforceDestinationLocation(a1, a3))
    {
      BOMFileClose(a2);
LABEL_17:
      v20 = 1;
      goto LABEL_18;
    }

    if (v10[532])
    {
      if (_resolveDestinationPath(a1, a3, (a1 + 3328)))
      {
        goto LABEL_17;
      }
    }

    else
    {
      __strlcpy_chk();
    }

    if ((*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), a1 + 3328, &v23))
    {
      if (*__error() != 2 && *__error() != 63 || _mkdirs(a1, a1 + 3328) || (*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 3328, &v23))
      {
        v22 = __error();
        v16 = *(a1 + 64);
        if (!v16)
        {
          goto LABEL_17;
        }

        v17 = *v22;
        v19 = a1;
        v18 = a3;
        goto LABEL_10;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    _initializeAFSCData(a1);
  }

  else
  {
    __strlcpy_chk();
    v12 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
  }

  v13 = strlen((a1 + 3328));
  v14 = (a1 + 3328 + v13);
  *v14 = 47;
  if (BOMCPIONew(&v41, a2, 1, 0))
  {
    BOMFileClose(a2);
    v15 = __error();
    v16 = *(a1 + 64);
    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = *v15;
    v18 = "";
    v19 = a1;
LABEL_10:
    v16(v19, v18, v17);
    goto LABEL_17;
  }

  *(a1 + 248) = 0;
  *(a1 + 2296) = a1 + 248;
  *(a1 + 12728) = v41;
  v10[433] = 1;
  v20 = _copyFromCPIO(a1, &v32, &v23, v14 + 1, ((0x40000000000 - (v13 << 32)) >> 32) - 1, v12);
  if (!v20)
  {
    v20 = _restoreSymlinks(a1, 0);
  }

LABEL_18:
  if (v10[535])
  {
    _restoreSymlinks(a1, 1);
  }

  if (v41)
  {
    BOMCPIOFree(v41);
  }

  return v20;
}

uint64_t _BOMCopierCopyFromPKZip(uint64_t a1, int *a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v116 = *MEMORY[0x277D85DE8];
  v114 = 0;
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  memset(v111, 0, sizeof(v111));
  if (*(a1 + 12716) != 3)
  {
    v18 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (!__s)
  {
    BOMCopierNotifyFatalError(a1, "dstPath is NULL", 0, a4, a5, a6, a7, a8);
    goto LABEL_7;
  }

  v11 = strlen(__s);
  if (v11 >= 0x3FF)
  {
    BOMCopierNotifyFatalError(a1, "Filename('%s') too long [%lu >= %lu]!", v12, v13, v14, v15, v16, v17, __s, v11, 1023);
LABEL_7:
    v18 = 1;
    goto LABEL_8;
  }

  if (*(a1 + 12821) && _enforceDestinationLocation(a1, __s))
  {
    BOMFileClose(a2);
    goto LABEL_7;
  }

  v20 = a1 + 3328;
  if (*(a1 + 12820))
  {
    if (_resolveDestinationPath(a1, __s, (a1 + 3328)))
    {
      goto LABEL_7;
    }
  }

  else
  {
    __strlcpy_chk();
  }

  if ((*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), a1 + 3328, v111) && (*__error() != 2 && *__error() != 63 || _mkdirs(a1, a1 + 3328)))
  {
    v21 = __error();
    v22 = *(a1 + 64);
    if (!v22)
    {
      goto LABEL_7;
    }

    v23 = *v21;
    v24 = a1;
    v25 = __s;
LABEL_28:
    v22(v24, v25, v23);
    goto LABEL_7;
  }

  _initializeAFSCData(a1);
  v26 = strlen((a1 + 3328));
  v27 = (v20 + v26);
  *v27 = 47;
  v28 = v27 + 1;
  if (BOMPKZipNew(&v114, a2, 1))
  {
    BOMFileClose(a2);
    v29 = __error();
    v22 = *(a1 + 64);
    if (!v22)
    {
      goto LABEL_7;
    }

    v23 = *v29;
    v25 = "Could not create a BOMPKZip object";
    goto LABEL_27;
  }

  *(a1 + 248) = 0;
  *(a1 + 2296) = a1 + 248;
  v30 = v114;
  *(a1 + 12752) = v114;
  *(a1 + 12721) = 1;
  if (*(a1 + 12716) == 3 && *(a1 + 12768))
  {
    v31 = strlen((a1 + 3328));
    *(a1 + 12780) = v31 + 8;
    v32 = BOM_malloc((v31 + 9));
    *(a1 + 12784) = v32;
    if (!v32)
    {
      v75 = __error();
      v22 = *(a1 + 64);
      if (!v22)
      {
        goto LABEL_7;
      }

      v23 = *v75;
      v25 = "";
LABEL_27:
      v24 = a1;
      goto LABEL_28;
    }

    snprintf(v32, (*(a1 + 12780) + 1), "%s%s", (a1 + 3328), "__MACOSX");
    v30 = v114;
  }

  BOMPKZipLoadCentralDirectory(v30);
  v18 = _copyFromPKZip(a1, v112, v111, v28, 1024 - v26 - 1);
  v33 = *(a1 + 12784);
  if (v33)
  {
    free(v33);
    *(a1 + 12784) = 0;
    *(a1 + 12780) = 0;
  }

  if (!v18)
  {
    NumLocalHeaders = BOMPKZipGetNumLocalHeaders(*(a1 + 12752));
    if (NumLocalHeaders)
    {
      v41 = NumLocalHeaders;
      v42 = (a1 + 249);
      v43 = (a1 + 250);
      do
      {
        if (*(a1 + 12772) != 2)
        {
          v74 = "Not a central directory signature";
          goto LABEL_109;
        }

        if (BOMPKZipReadCentralHeader(*(a1 + 12752), (a1 + 248), v112, &v113))
        {
          v74 = "Couldn't read pkzip central header";
          goto LABEL_109;
        }

        v44 = *(a1 + 248);
        if (v44 == 46)
        {
          if (*v42 == 47)
          {
            v45 = v43;
          }

          else
          {
            v45 = (a1 + 248);
          }
        }

        else
        {
          v45 = (a1 + 248);
          if (v44 == 47)
          {
            v45 = v42;
          }
        }

        snprintf((a1 + 7424), 0x400uLL, "%s/%s", __s, v45);
        v46 = WORD2(v112[0]);
        if ((WORD2(v112[0]) & 0x1FF) == 0)
        {
          if ((WORD2(v112[0]) & 0xF000) == 0x4000)
          {
            v47 = 493;
          }

          else
          {
            if ((WORD2(v112[0]) & 0xF000) != 0x8000)
            {
              goto LABEL_52;
            }

            v47 = 420;
          }

          v46 = WORD2(v112[0]) | v47;
          WORD2(v112[0]) |= v47;
        }

LABEL_52:
        v48 = v46 & 0xF000;
        if (v48 != 0x4000)
        {
          if (v48 == 40960)
          {
            v110 = 0;
            v108 = 0u;
            memset(v109, 0, sizeof(v109));
            v106 = 0u;
            v107 = 0u;
            memset(v105, 0, sizeof(v105));
            if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 7424, v105))
            {
              v81 = __error();
              v103 = strerror(*v81);
              BOMCopierNotifyFatalError(a1, "Could not lstat %s: %s", v82, v83, v84, v85, v86, v87, a1 + 7424, v103);
              goto LABEL_110;
            }

            if (v106 >= 1024)
            {
              BOMCopierNotifyFatalError(a1, "%s is too large: %ld", v49, v50, v51, v52, v53, v54, a1 + 7424, v106);
              goto LABEL_110;
            }

            v55 = v42;
            if (BOMFileOpenWithSys(&v110, a1 + 7424, 0, 0, 16, *(a1 + 12832)))
            {
              BOMCopierNotifyFatalError(a1, "Could not open symlink %s", v56, v57, v58, v59, v60, v61, a1 + 7424, v102);
              goto LABEL_110;
            }

            v62 = v43;
            v63 = BOMFileRead(v110, (a1 + 3328), v106);
            if (v63 != v106)
            {
              BOMCopierNotifyFatalError(a1, "Could not read %s", v64, v65, v66, v67, v68, v69, a1 + 7424, v102);
              goto LABEL_110;
            }

            *(v20 + v63) = 0;
            BOMFileClose(v110);
            _parentPath((a1 + 7424), v115, 0x400uLL);
            v70 = (*(*(a1 + 12832) + 184))(*(*(a1 + 12832) + 8), v115, 2);
            if (v70)
            {
              if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), v115, v109))
              {
                goto LABEL_110;
              }

              if ((*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), v115, WORD2(v109[0]) | 0x1C0u))
              {
LABEL_89:
                v76 = __error();
                v77 = *(a1 + 64);
                if (!v77)
                {
                  goto LABEL_110;
                }

                v78 = *v76;
                v79 = v115;
                v80 = a1;
LABEL_97:
                v77(v80, v79, v78);
                goto LABEL_110;
              }
            }

            if ((*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424))
            {
              v71 = __error();
              v72 = *(a1 + 64);
              if (v72)
              {
                v72(a1, a1 + 7424, *v71);
              }
            }

            if ((*(*(a1 + 12832) + 248))(*(*(a1 + 12832) + 8), a1 + 3328, a1 + 7424) == -1)
            {
              v88 = __error();
              v77 = *(a1 + 64);
              if (!v77)
              {
                goto LABEL_110;
              }

              v78 = *v88;
              v80 = a1;
              v79 = (a1 + 7424);
              goto LABEL_97;
            }

            if (v70 && (*(*(a1 + 12832) + 200))(*(*(a1 + 12832) + 8), v115, WORD2(v109[0]) & 0xFFF))
            {
              goto LABEL_89;
            }

            v43 = v62;
            v42 = v55;
            goto LABEL_73;
          }

          if (v48 != 0x8000)
          {
            goto LABEL_73;
          }
        }

        if (_chPerms(a1, (a1 + 7424), v112, 0, 0) == -1)
        {
          if (*__error() != 2 && *__error() != 63)
          {
            v94 = __error();
            v104 = strerror(*v94);
            BOMCopierNotifyFatalError(a1, "Could not chmod %s: %s", v95, v96, v97, v98, v99, v100, a1 + 7424, v104);
            goto LABEL_110;
          }

          *__error() = 0;
        }

LABEL_73:
        if (BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
        {
          goto LABEL_88;
        }

        --v41;
      }

      while (v41);
    }

    v73 = *(a1 + 12772);
    if (v73 == 3)
    {
      if (BOMPKZipSkipDigitalSignature(*(a1 + 12752)))
      {
        v74 = "Could not skip the digital signature.";
LABEL_109:
        BOMCopierNotifyFatalError(a1, v74, v35, v36, v37, v38, v39, v40, v101, v102);
        goto LABEL_110;
      }

      if (BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
      {
LABEL_88:
        v74 = "Could not read next signature";
        goto LABEL_109;
      }

      v73 = *(a1 + 12772);
    }

    if (v73 == 4)
    {
      if (BOMPKZipSkipZIP64CentralDirectoryRecord(*(a1 + 12752)))
      {
        v74 = "Could not skip the ZIP64 central dir record.";
        goto LABEL_109;
      }

      if (BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
      {
        goto LABEL_88;
      }

      v73 = *(a1 + 12772);
    }

    if (v73 == 5)
    {
      if (BOMPKZipSkipZIP64CentralDirectoryLocation(*(a1 + 12752)))
      {
        v74 = "Could not skip the ZIP64 central dir locator.";
        goto LABEL_109;
      }

      if (BOMPKZipReadNextSignature(*(a1 + 12752), (a1 + 12772)))
      {
        v74 = "Couldn't read next signature";
        goto LABEL_109;
      }

      v73 = *(a1 + 12772);
    }

    if (v73 != 6)
    {
      v74 = "I'm expecting the end of central directory record.";
      goto LABEL_109;
    }

    if (BOMPKZipSkipEndOfCentralDirectoryRecord(*(a1 + 12752)))
    {
      v74 = "Could not skip the end of the central directory record.";
      goto LABEL_109;
    }

    if (*(a1 + 12768))
    {
      v89 = BOMPKZipQuarantinePathCount(v114);
      if (v89 - 1 >= 0)
      {
        v90 = v89;
        v91 = (a1 + 7424);
        while (!BOMPKZipCopyQuarantinePath(v114, --v90, (a1 + 7424)))
        {
          v92 = *v91;
          if (v92 == 46 && *(a1 + 7425) == 47)
          {
            v93 = 2;
          }

          else
          {
            v93 = v92 == 47;
          }

          snprintf((a1 + 3328), 0x400uLL, "%s/%s", __s, &v91[v93]);
          (*(*(a1 + 12832) + 232))(*(*(a1 + 12832) + 8), a1 + 3328);
          v18 = 0;
          if (v90 <= 0)
          {
            goto LABEL_8;
          }
        }

        v74 = "Could not copy quarantined directory path.";
        goto LABEL_109;
      }
    }

LABEL_110:
    v18 = 0;
  }

LABEL_8:
  if (v114)
  {
    BOMPKZipFree(v114);
  }

  return v18;
}

uint64_t _finalizeCopierDestination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v10 = *(a1 + 12716);
  if (v10 <= 4)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        return v9;
      }

      if (!*(a1 + 12744))
      {
        v9 = BOMCPIOWriteTerminator(*(a1 + 12736));
        if (v9)
        {
          v17 = "Cannot write the terminator for the CPIO archive";
LABEL_21:
          BOMCopierNotifyFatalError(a1, v17, v11, v12, v13, v14, v15, v16, v24);
          return v9;
        }

        return v9;
      }

      return 0;
    }

    v19 = *(a1 + 12856);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 12856) = 0;
    }

    if (!*(a1 + 12864))
    {
      return 0;
    }

    v20 = FinishStreamCompressorQueue();
    if (!v20)
    {
      v9 = 0;
      *(a1 + 12864) = 0;
      return v9;
    }

    v24 = v20;
    v18 = "Could not finish the HFS FinishStreamCompressorQueue error (%d)";
LABEL_15:
    BOMCopierNotifyFatalError(a1, v18, a3, a4, a5, a6, a7, a8, v24);
    return 1;
  }

  if (v10 != 5)
  {
    if (v10 != 6)
    {
      return v9;
    }

    v18 = "The legacy engine does not support AppleArchive";
    goto LABEL_15;
  }

  v9 = BOMPKZipWriteCentralDirectory(*(a1 + 12760));
  if (v9)
  {
    NumLocalHeaders = BOMPKZipGetNumLocalHeaders(*(a1 + 12760));
    v22 = "Could not write the central directory for";
    if (!NumLocalHeaders)
    {
      v22 = "No files for";
    }

    v24 = v22;
    v17 = "%s PKZip archive";
    goto LABEL_21;
  }

  return v9;
}

uint64_t BOMCopierRedirectPath(uint64_t a1, int a2, char *__s)
{
  if (!__s)
  {
    return 1;
  }

  v5 = strlen(__s);
  v6 = 1;
  if (v5 <= 0x3FF)
  {
    memmove((a1 + 10592), __s, v5 + 1);
    *(a1 + 11616) = 1;
    return 0;
  }

  return v6;
}

uint64_t BOMCopierRedirectSourcePath(uint64_t a1, int a2, char *__s)
{
  if (!__s)
  {
    return 1;
  }

  v5 = strlen(__s);
  v6 = 1;
  if (v5 <= 0x3FF)
  {
    memmove((a1 + 11617), __s, v5 + 1);
    *(a1 + 12641) = 1;
    return 0;
  }

  return v6;
}

uint64_t BOMCopierCancelCopy(uint64_t result)
{
  if (result)
  {
    *(result + 168) = 1;
  }

  return result;
}

uint64_t BOMCopierCountFilesInArchive(uint64_t a1, char *__s, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (!__s)
  {
    BOMCopierNotifyFatalError(a1, "BOMCopierCountFilesInArchive: missing path", a3, a4, a5, a6, a7, a8);
    return 22;
  }

  v12 = strlen(__s);
  if (v12 >= 0x400)
  {
    BOMCopierNotifyFatalError(a1, "BOMCopierCountFilesInArchive: maximum path length exceeded: %ld", v13, v14, v15, v16, v17, v18, v12);
    return 22;
  }

  values = *MEMORY[0x277CBED28];
  keys[0] = @"extractLibarchive";
  v20 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v20)
  {
    BOMCopierNotifyFatalError(a1, "Could not create empty BOMCopierSource options", v21, v22, v23, v24, v25, v26);
    _resetCopier(a1);
    return 1;
  }

  v27 = v20;
  v63 = 0;
  v28 = BOMCopierSourceNew(__s, v20, 0, &v63);
  if (!v28)
  {
    Code = BOMCopierErrorGetCode(v63);
    Message = BOMCopierErrorGetMessage(v63);
    BOMCopierNotifyFatalError(a1, "Could not create BOMCopierSource from %s: %s", v48, v49, v50, v51, v52, v53, __s, Message);
    CFRelease(v27);
    BOMCopierErrorFree(v63);
    return Code;
  }

  v29 = v28;
  v62 = a4;
  CFRelease(v27);
  v30 = BOMCopierSourceNext(v29, &v63);
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      Type = BOMCopierSourceEntryGetType(v31);
      if (Type == 9)
      {
        SymlinkTarget = BOMCopierSourceEntryGetSymlinkTarget(v31);
        if (!SymlinkTarget)
        {
          goto LABEL_16;
        }

        Size = strlen(SymlinkTarget);
      }

      else
      {
        if (!Type)
        {
          BOMCopierNotifyFatalError(a1, "Unknown BOMCopierSourceEntry", v35, v36, v37, v38, v39, v40);
          BOMCopierSourceEntryFree(v31);
          BOMCopierSourceFree(v29);
          return 1;
        }

        Size = BOMCopierSourceEntryGetSize(v31);
      }

      v33 += Size;
LABEL_16:
      if (a1 && *(a1 + 88))
      {
        Path = BOMCopierSourceEntryGetPath(v31);
        Mode = BOMCopierSourceEntryGetMode(v31);
        v45 = BOMCopierSourceEntryGetSize(v31);
        v46 = BOMFSObjectTypeForMode(Mode);
        (*(a1 + 88))(a1, Path, v46, v45);
      }

      BOMCopierSourceEntryFree(v31);
      v31 = BOMCopierSourceNext(v29, &v63);
      ++v32;
      if (!v31)
      {
        goto LABEL_24;
      }
    }
  }

  v33 = 0;
  v32 = 0;
LABEL_24:
  BOMCopierSourceFree(v29);
  if (v63)
  {
    v54 = BOMCopierErrorGetMessage(v63);
    BOMCopierNotifyFatalError(a1, "Could not enumerate %s: %s", v55, v56, v57, v58, v59, v60, __s, v54);
    BOMCopierErrorFree(v63);
    return 1;
  }

  if (a3)
  {
    *a3 = v32;
  }

  Code = 0;
  if (v62)
  {
    *v62 = v33;
  }

  return Code;
}

uint64_t BOMCopierCountFilesInDirectory(uint64_t a1, char *__s, const __CFDictionary *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  if (!__s)
  {
    BOMCopierNotifyFatalError(a1, "missing path parameter", a3, a4, a5, a6, a7, a8);
    return 1;
  }

  v13 = strlen(__s);
  if (v13 >= 0x400)
  {
    BOMCopierNotifyFatalError(a1, "maximum path length exceeded: %ld", v14, v15, v16, v17, v18, v19, v13);
    return 1;
  }

  if (a3)
  {
    if (_parseCopierOptions(a1, a3))
    {
      v26 = "Could not parse the options dictionary";
LABEL_54:
      BOMCopierNotifyFatalError(a1, v26, v20, v21, v22, v23, v24, v25);
      goto LABEL_55;
    }

    if (_verifyCopierOptions(a1, 0, 0, v21, v22, v23, v24, v25))
    {
      v26 = "Could not verify the copier options";
      goto LABEL_54;
    }

    if (_prepareCopierState(a1))
    {
LABEL_55:
      _resetCopier(a1);
      return 1;
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v26 = "Could not create empty BOMCopierSource options";
    goto LABEL_54;
  }

  v28 = Mutable;
  v29 = MEMORY[0x277CBED28];
  if (*(a1 + 169) == 1)
  {
    CFDictionarySetValue(Mutable, @"synthesizeResourceForks", *MEMORY[0x277CBED28]);
  }

  if (*(a1 + 192) == 1)
  {
    CFDictionarySetValue(v28, @"crossDevices", *v29);
  }

  *v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v77 = 0;
  if (*(a1 + 136) && (CFDictionarySetValue(v28, @"discoverBinaries", *v29), BOMCopierPrepareMatchContext(a3, &v78, &v77)) || (v30 = BOMCopierSourceNew(__s, v28, 0, &v77)) == 0)
  {
    Message = BOMCopierErrorGetMessage(v77);
    BOMCopierNotifyFatalError(a1, "Could not create BOMCopierSource from %s: %s", v53, v54, v55, v56, v57, v58, __s, Message);
    CFRelease(v28);
    BOMCopierErrorFree(v77);
    return 1;
  }

  v31 = v30;
  CFRelease(v28);
  if (*(a1 + 120))
  {
    *(a1 + 12680) = 1;
    *(a1 + 12688) = 0;
    v76.tv_sec = 0;
    *&v76.tv_usec = 0;
    gettimeofday(&v76, 0);
    v32 = *(a1 + 12680) + v76.tv_sec;
    *(a1 + 12696) = v32;
    v33 = *(a1 + 12688) + v76.tv_usec;
    *(a1 + 12704) = v33;
    if (v33 > 999999)
    {
      *(a1 + 12696) = v32 + 1;
      *(a1 + 12704) = v33 - 1000000;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v34 = BOMCopierSourceNext(v31, 0);
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = 0;
    while (1)
    {
      Type = BOMCopierSourceEntryGetType(v35);
      if (Type > 0xB)
      {
        goto LABEL_48;
      }

      if (((1 << Type) & 0xAB0) != 0 || Type == 6)
      {
        ++v36;
        goto LABEL_32;
      }

      if (Type == 8)
      {
        if (BOMCopierSourceEntryGetBinaryType(v35))
        {
          matched = BOMCopierMatchBinary(v35, &v78, &v77);
          if (matched)
          {
            v59 = matched;
            v69 = BOMCopierErrorGetMessage(v77);
            BOMCopierNotifyFatalError(a1, v69, v70, v71, v72, v73, v74, v75);
            BOMCopierErrorFree(v77);
            BOMCopierSourceEntryFree(v35);
            BOMCopierSourceFree(v31);
            return v59;
          }

          Size = *(&v80 + 1);
          if (v79[1])
          {
            free(v79[1]);
          }
        }

        else
        {
          Size = BOMCopierSourceEntryGetSize(v35);
        }

        v37 += Size;
        v36 += !BOMCopierSourceEntryIsResourceFork(v35);
      }

      else
      {
LABEL_48:
        if (!Type)
        {
          BOMCopierNotifyFatalError(a1, "Unknown BOMCopierSourceEntry", v39, v40, v41, v42, v43, v44);
          BOMCopierSourceEntryFree(v35);
          BOMCopierSourceFree(v31);
          return 1;
        }
      }

LABEL_32:
      BOMCopierSourceEntryFree(v35);
      if (*(a1 + 120))
      {
        v76.tv_sec = 0;
        *&v76.tv_usec = 0;
        gettimeofday(&v76, 0);
        tv_sec = v76.tv_sec;
        v46 = *(a1 + 12696);
        if (v76.tv_sec == v46)
        {
          tv_usec = v76.tv_usec;
          if (v76.tv_usec >= *(a1 + 12704))
          {
            goto LABEL_44;
          }
        }

        else if (v76.tv_sec >= v46)
        {
          tv_usec = v76.tv_usec;
LABEL_44:
          (*(a1 + 120))(a1, v36, v37);
          v50 = *(a1 + 12680) + tv_sec;
          *(a1 + 12696) = v50;
          v51 = *(a1 + 12688) + tv_usec;
          *(a1 + 12704) = v51;
          if (v51 > 999999)
          {
            *(a1 + 12696) = v50 + 1;
            *(a1 + 12704) = v51 - 1000000;
          }
        }
      }

      v35 = BOMCopierSourceNext(v31, 0);
      if (!v35)
      {
        goto LABEL_59;
      }
    }
  }

  v37 = 0;
  v36 = 0;
LABEL_59:
  BOMCopierSourceFree(v31);
  v61 = BOMCopierReleaseMatchContext(&v78, &v77);
  if (v61)
  {
    v59 = v61;
    v62 = BOMCopierErrorGetMessage(v77);
    BOMCopierNotifyFatalError(a1, v62, v63, v64, v65, v66, v67, v68);
    BOMCopierErrorFree(v77);
  }

  else
  {
    if (a4)
    {
      *a4 = v36;
    }

    v59 = 0;
    if (a5)
    {
      *a5 = v37;
    }
  }

  return v59;
}

uint64_t BOMCopierSetUserData(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t BOMCopierUserData(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t BOMCopierSetFatalErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t BOMCopierSetFatalFileErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t BOMCopierSetFileErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

uint64_t BOMCopierSetFileConflictErrorHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCopyFileStartedHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCopyFileFinishedHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCopyFileUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

uint64_t BOMCopierSetCountFilesUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t BOMCopierSetPKZipPasswordRequester(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

uint64_t BOMCopierGetArchiveFileDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 12712);
  if (v1 == 2)
  {
    v4 = *(a1 + 12752);
    if (v4)
    {
      File = BOMPKZipGetFile(v4);
      goto LABEL_8;
    }

    return 0xFFFFFFFFLL;
  }

  if (v1 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 12728);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  File = BOMCPIOGetFile(v2);
LABEL_8:

  return BOMFileGetFileDescriptor(File);
}

size_t _extractFileAndPath(char *a1, char *a2)
{
  v4 = strrchr(a1, 47);
  if (v4)
  {
    *v4 = 0;
    result = strlcpy(a2, v4 + 1, 0x400uLL);
    if (*a1)
    {
      return result;
    }

    v6 = 47;
  }

  else
  {
    result = strlcpy(a2, a1, 0x400uLL);
    v6 = 46;
  }

  *a1 = v6;
  return result;
}

uint64_t _initializeAFSCData(uint64_t a1)
{
  result = __strlcpy_chk();
  if (!*(a1 + 195))
  {
    goto LABEL_7;
  }

  if (*(a1 + 12712) || (result = VolumeSupportsCompression(), (result & 1) == 0))
  {
    *(a1 + 195) = 0;
    goto LABEL_7;
  }

  if (!*(a1 + 195))
  {
LABEL_7:
    if (!*(a1 + 12848))
    {
      return result;
    }
  }

  if (*(a1 + 12716) == 3 && (result = VolumeSupportsCompression(), result))
  {
    if (*(a1 + 12848))
    {
      if (!*(a1 + 12864))
      {
        result = CreateStreamCompressorQueueWithOptions();
        *(a1 + 12864) = result;
      }
    }
  }

  else
  {
    *(a1 + 195) = 0;
    *(a1 + 12848) = 0;
  }

  return result;
}

void _applyIndexBomOwnershipForTargetArchive(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    FSObjectAtPath = BOMBomGetFSObjectAtPath(v3, a2);
    if (FSObjectAtPath)
    {
      v6 = FSObjectAtPath;
      *(a3 + 16) = BOMFSObjectUserID(FSObjectAtPath);
      *(a3 + 20) = BOMFSObjectGroupID(v6);

      BOMFSObjectFree(v6);
    }
  }
}

uint64_t _copyFromDirToDir(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6, unsigned int a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v76 = 0;
  v74 = 0;
  memset(v78, 0, 512);
  memset(v73, 0, sizeof(v73));
  memset(&v72[2], 0, 112);
  *a3 = 47;
  *a5 = 47;
  a3[1] = 0;
  v13 = a3 + 1;
  memset(v72, 0, 32);
  a5[1] = 0;
  v14 = a5 + 1;
  if (*(a1 + 192) == 1)
  {
    if (*(a1 + 232) == *a2)
    {
      goto LABEL_11;
    }

    memset(&v77, 0, 512);
    if (!statfs((a1 + 248), &v77))
    {
      *(a1 + 210) = (v77.f_flags & 8) == 0;
      goto LABEL_11;
    }

    v15 = __error();
    v16 = *(a1 + 64);
    if (v16)
    {
      v16(a1, a1 + 248, *v15);
    }

    return 0;
  }

  if (!*(a1 + 192) && *(a1 + 232) != *a2)
  {
    return 0;
  }

LABEL_11:
  v18 = (*(*(a1 + 12832) + 272))(*(*(a1 + 12832) + 8), a1 + 248);
  if (!v18)
  {
    *a5 = 0;
    *a3 = 0;
    __error();
    return _checkCopyFileError(a1);
  }

  v19 = v18;
  v70 = a7;
  v20 = a6 - 1;
  v21 = a4 - 1;
  v75 = 0;
  __size = a6 - 1;
  if (a6 - 1 >= (a4 - 1))
  {
    v20 = a4 - 1;
  }

  v66 = a3;
  v67 = v20;
  v22 = (*(*(a1 + 12832) + 296))(*(*(a1 + 12832) + 8), v18, v78, &v74);
  v23 = 0;
  v17 = 0;
  v24 = v22 == 0;
  v71 = 0;
  if (!v22)
  {
    v25 = v74;
    if (v74)
    {
      v23 = 0;
      v65 = 0;
      v71 = 0;
      v17 = 0;
      v69 = 0;
      while (1)
      {
        v75 = 0;
        if (_ignore_readdir_entry(v25))
        {
          goto LABEL_43;
        }

        if (*(a1 + 168))
        {
          goto LABEL_105;
        }

        if (strlcpy(v13, (v74 + 21), v21) >= v21)
        {
          goto LABEL_40;
        }

        v26 = *(a1 + 152);
        if (v26)
        {
          v69 = BOMBomPathIDForKey(v26, v70, (v74 + 21));
          if (!v69)
          {
            v69 = 0;
            goto LABEL_43;
          }
        }

        v27 = *(a1 + 160);
        v28 = v27 && BOMBomFSObjectExistsAtPath(v27, *(a1 + 2296));
        if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v73))
        {
          break;
        }

        if (*(a1 + 12746) && *(a1 + 12716) == 4)
        {
          _applyIndexBomOwnershipForTargetArchive(a1, *(a1 + 2296), v73);
        }

        if (*(v74 + 18) > 0xF9u)
        {
          v63 = v28;
          v77.f_bfree = 0;
          *&v77.f_bsize = xmmword_241C78E98;
          v31 = BOM_malloczero(0x30CuLL);
          if ((*(*(a1 + 12832) + 120))(*(*(a1 + 12832) + 8), a1 + 248, &v77, v31, 780, 1))
          {
            free(v31);
            __error();
            v17 = _checkCopyFileError(a1);
            if (v17 > 1)
            {
              goto LABEL_105;
            }

            goto LABEL_43;
          }

          if (v67 < v31[2])
          {
            free(v31);
LABEL_40:
            v29 = a1;
LABEL_41:
            if (_checkCopyFileError(v29))
            {
              goto LABEL_105;
            }

            v17 = 0;
            goto LABEL_43;
          }

          v61 = v31[1];
          v62 = v31[2];
          strlcpy(v14, v31 + v61 + 4, __size);
          strlcpy(v13, v31 + v61 + 4, v21);
          free(v31);
          v30 = v62 - 1;
          v28 = v63;
        }

        else
        {
          if (strlcpy(v14, (v74 + 21), __size) >= __size)
          {
            goto LABEL_40;
          }

          v30 = *(v74 + 18);
        }

        v33 = _checkForDestinationConflict(a1, (a1 + 3328), v73, v72, &v76, &v75);
        if (v75 == 1)
        {
          if (v33 == 1)
          {
            v17 = v33;
          }

          else if (v33)
          {
LABEL_105:
            v17 = 2;
            goto LABEL_106;
          }
        }

        else
        {
          v34 = WORD2(v73[0]) & 0xF000;
          if (v28)
          {
            if (v34 != 0x4000)
            {
              goto LABEL_43;
            }

LABEL_66:
            HIDWORD(v45) = v34 - 0x2000;
            LODWORD(v45) = v34 - 0x2000;
            v44 = v45 >> 13;
            if (v44 <= 1)
            {
              if (!v44)
              {
                goto LABEL_74;
              }

              if (v44 != 1)
              {
                goto LABEL_43;
              }

              v46 = _copyDir(a1, v73, v72, v30, v76, v13, v21, v14, __size, v69, v28);
            }

            else
            {
              if (v44 != 2)
              {
                if (v44 == 4)
                {
                  v46 = _copyLink(a1, v73, v72, v76);
                }

                else
                {
                  if (v44 != 3)
                  {
                    goto LABEL_43;
                  }

                  v46 = _copyFile(a1, v73, v72, v76, *(a1 + 136), &v75, 0);
                }

                goto LABEL_76;
              }

LABEL_74:
              v46 = _copyDevice(a1, v73);
            }

LABEL_76:
            if (v46 == 1)
            {
              v17 = 1;
            }

            else if (v46 == 2)
            {
              v17 = v46;
              goto LABEL_106;
            }

            goto LABEL_43;
          }

          if (v34 != 0x8000)
          {
            goto LABEL_66;
          }

          if (*(a1 + 12716) != 3)
          {
            v34 = 0x8000;
            goto LABEL_66;
          }

          if (!BOMAppleDoubleIsADFile((a1 + 248)))
          {
            v34 = WORD2(v73[0]) & 0xF000;
            goto LABEL_66;
          }

          v41 = v65;
          if (v65)
          {
            if (v65 == v23)
            {
              v42 = BOM_realloc(v71, 32 * v23);
              v41 = 2 * v23;
              v43 = v42;
            }

            else
            {
              v43 = v71;
            }
          }

          else
          {
            v43 = BOM_malloc(0x40uLL);
            v41 = 4;
          }

          v65 = v41;
          if (!v43)
          {
            BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double files.", v35, v36, v37, v38, v39, v40);
            v17 = 2;
            goto LABEL_111;
          }

          v47 = BOM_malloc(v30 + 1);
          if (!v47)
          {
            BOMCopierNotifyFatalError(a1, "Could not allocate space for Apple Double filename.", v48, v49, v50, v51, v52, v53);
LABEL_100:
            v17 = 2;
            if (!v23)
            {
LABEL_110:
              free(v43);
              goto LABEL_111;
            }

LABEL_108:
            v59 = v43;
            do
            {
              free(*v59);
              *v59 = 0;
              v59 += 2;
              --v23;
            }

            while (v23);
            goto LABEL_110;
          }

          v54 = v30;
          v55 = v47;
          v64 = v54;
          strlcpy(v47, v13, v54 + 1);
          v71 = v43;
          v56 = &v43[16 * v23];
          *v56 = v55;
          v56[1] = v64;
          ++v23;
        }

LABEL_43:
        v24 = (*(*(a1 + 12832) + 296))(*(*(a1 + 12832) + 8), v19, v78, &v74) == 0;
        v25 = v74;
        if (!v24 || v74 == 0)
        {
          goto LABEL_85;
        }
      }

      __error();
      v29 = a1;
      goto LABEL_41;
    }
  }

LABEL_85:
  (*(*(a1 + 12832) + 280))(*(*(a1 + 12832) + 8), v19);
  if (!v24)
  {
    v17 = _checkCopyFileError(a1);
    goto LABEL_104;
  }

  if (v17)
  {
LABEL_104:
    v19 = 0;
LABEL_106:
    v43 = v71;
    if (!v71)
    {
      goto LABEL_111;
    }

LABEL_107:
    if (!v23)
    {
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v43 = v71;
  if (v71 && v23)
  {
    v57 = v71;
    for (i = v23; i; --i)
    {
      v75 = 0;
      if (*v57)
      {
        if (*(a1 + 168))
        {
          goto LABEL_99;
        }

        if ((v57[1] + 1) > v67 || (strlcpy(v14, *v57, __size), strncpy(v13, *v57, v21), (*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v73)))
        {
          __error();
          if (_checkCopyFileError(a1))
          {
            goto LABEL_99;
          }
        }

        else if (_checkForDestinationConflict(a1, (a1 + 3328), v73, v72, &v76, &v75) != 1 && _copyFile(a1, v73, v72, v76, *(a1 + 136), &v75, 0) == 2)
        {
LABEL_99:
          v19 = 0;
          goto LABEL_100;
        }
      }

      v57 += 2;
    }
  }

  v19 = 0;
  v17 = 0;
  *a5 = 0;
  *v66 = 0;
  if (v71)
  {
    goto LABEL_107;
  }

LABEL_111:
  if (v19)
  {
    (*(*(a1 + 12832) + 280))(*(*(a1 + 12832) + 8), v19);
  }

  return v17;
}

uint64_t _copyFromFileToDir(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6, unsigned int a7, int a8)
{
  v26 = 0;
  v25 = 0;
  *a3 = 47;
  *a5 = 47;
  v15 = a5 + 1;
  if (strlcpy(a3 + 1, (a1 + 2304), a4 - 1) >= a4 - 1)
  {
    return 1;
  }

  v16 = *(a1 + 152);
  if (v16)
  {
    if (!BOMBomPathIDForKey(v16, a7, (a1 + 2304)))
    {
      return 1;
    }
  }

  v17 = *(a1 + 160);
  if (v17)
  {
    if (BOMBomFSObjectExistsAtPath(v17, *(a1 + 2296)))
    {
      return 1;
    }
  }

  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 248, v24))
  {
LABEL_7:
    __error();
    return _checkCopyFileError(a1);
  }

  v19 = a6 - 1;
  if (*(a1 + 12746) && *(a1 + 12716) == 4)
  {
    _applyIndexBomOwnershipForTargetArchive(a1, *(a1 + 2296), v24);
  }

  v20 = (*(a1 + 6400) ? a1 + 6400 : a1 + 2304);
  if (strlcpy(v15, v20, v19) >= v19)
  {
    return 1;
  }

  if (a8)
  {
    result = _checkForDestinationConflict(a1, (a1 + 3328), v24, v23, &v26, &v25);
    if (v25 == 1)
    {
      return result;
    }
  }

  else
  {
    v26 = 0;
    result = 1;
  }

  HIDWORD(v22) = (WORD2(v24[0]) & 0xF000) - 0x2000;
  LODWORD(v22) = HIDWORD(v22);
  v21 = v22 >> 13;
  if (v21 > 2)
  {
    if (v21 == 4)
    {
      result = _copyLink(a1, v24, v23, v26);
    }

    else if (v21 == 3)
    {
      result = _copyFile(a1, v24, v23, v26, *(a1 + 136), &v25, 0);
    }
  }

  else if (!v21 || v21 == 2)
  {
    result = _copyDevice(a1, v24);
  }

  if (!result)
  {
    *a5 = 0;
    *a3 = 0;
    *(a1 + 2304) = 0;
    if (a8 || *(a1 + 12716) != 3)
    {
      return 0;
    }

    else
    {
      result = set_timestamps_0((a1 + 3328), (a2 + 32), (a2 + 48));
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t _copyExtendedAttributes(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v10 = *(a1 + 12716);
  if (v10 != 3)
  {
    if (*(a1 + 11616))
    {
      v11 = (a1 + 10592);
    }

    else
    {
      v11 = *(a1 + 2296);
    }

    strncpy((a1 + 7424), v11, 0x400uLL);
  }

  if (a5)
  {
    if (v10 == 3 && *a5 == 2)
    {
      return 0;
    }
  }

  if ((*(a3 + 116) & 0x40000020) == 0x20 && *(a1 + 195))
  {
    if (*(a1 + 196))
    {
      v13 = 1;
    }

    else
    {
      v13 = 33;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = (*(*(a1 + 12832) + 144))(*(*(a1 + 12832) + 8), a2, 0, 0, v13);
  if (v14 != -1)
  {
    v15 = v14;
    if (!v14)
    {
      if (a5)
      {
        v16 = 0;
        *a5 = 1;
        return v16;
      }

      return 0;
    }

    v18 = BOM_malloc(v14);
    if (v18)
    {
      v19 = v18;
      v20 = (*(*(a1 + 12832) + 144))(*(*(a1 + 12832) + 8), a2, v18, v15, v13);
      if (v20 != -1)
      {
        if (v20 < 1)
        {
          v21 = 0;
LABEL_52:
          v16 = 0;
          if (a5)
          {
            *a5 = 0;
          }

          if (v21)
          {
LABEL_57:
            free(v21);
          }

LABEL_58:
          free(v19);
          return v16;
        }

        v21 = 0;
        v22 = &v19[v20];
        v23 = 3328;
        if (a4)
        {
          v23 = 7424;
        }

        v33 = v19;
        v34 = v23;
        v24 = v19;
        v32 = &v19[v20];
        while (1)
        {
          if (!strcmp(v24, "com.apple.FinderInfo") || !strcmp(v24, "com.apple.ResourceFork"))
          {
            if (!*(a1 + 169))
            {
              goto LABEL_46;
            }
          }

          else if (!*(a1 + 170))
          {
            goto LABEL_46;
          }

          v25 = (*(*(a1 + 12832) + 128))(*(*(a1 + 12832) + 8), a2, v24, 0, 0, 0, v13);
          if (v25 == -1)
          {
            __error();
            v16 = _checkCopyFileError(a1);
            if (v21)
            {
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          v26 = v25;
          if (!v21)
          {
            v21 = BOM_malloc(0x800000uLL);
            if (!v21)
            {
              __error();
              v16 = _checkCopyFileError(a1);
              goto LABEL_58;
            }
          }

          if (v26)
          {
            v27 = 0;
            v28 = 0;
            while (1)
            {
              v29 = (v26 - v28) >= 0x800000 ? 0x800000 : v26 - v28;
              v30 = (*(*(a1 + 12832) + 128))(*(*(a1 + 12832) + 8), a2, v24, v21, v29, v27, v13);
              if (v30 == -1)
              {
                break;
              }

              v31 = v30;
              if ((*(*(a1 + 12832) + 136))(*(*(a1 + 12832) + 8), a1 + v34, v24, v21, v30, v27, 1) == -1)
              {
                break;
              }

              v28 += v31;
              v27 = (v27 + v31);
              if (v28 == v26)
              {
                v22 = v32;
                v19 = v33;
                goto LABEL_46;
              }
            }

            __error();
            v16 = _checkCopyFileError(a1);
            v19 = v33;
            goto LABEL_57;
          }

LABEL_46:
          v24 += strlen(v24) + 1;
          if (v24 >= v22)
          {
            goto LABEL_52;
          }
        }
      }
    }
  }

  __error();

  return _checkCopyFileError(a1);
}

uint64_t _copyACLs(uint64_t a1, char *path_p, int a3, int a4, _DWORD *a5)
{
  v21 = 0;
  entry_p = 0;
  acl_p = 0;
  if (*(a1 + 12716) != 3)
  {
    return 0;
  }

  flagset_d = 0;
  if (a4)
  {
    link_np = acl_get_link_np(path_p, ACL_TYPE_EXTENDED);
    if (link_np)
    {
      v10 = link_np;
      v11 = acl_get_link_np((a1 + 3328), ACL_TYPE_EXTENDED);
      goto LABEL_8;
    }

LABEL_26:
    if (*__error() == 2)
    {
      v12 = 0;
      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      __error();
      v12 = _checkCopyFileError(a1);
    }

    goto LABEL_36;
  }

  file = acl_get_file(path_p, ACL_TYPE_EXTENDED);
  if (!file)
  {
    goto LABEL_26;
  }

  v10 = file;
  v11 = acl_get_file((a1 + 3328), ACL_TYPE_EXTENDED);
LABEL_8:
  acl_p = v11;
  if (!v11)
  {
    if (*__error() != 2 && *__error() != 63)
    {
      goto LABEL_34;
    }

    acl_p = acl_init(4);
  }

  v14 = v10;
  v15 = 0;
  while (!acl_get_entry(v14, v15, &entry_p))
  {
    acl_get_flagset_np(entry_p, &flagset_d);
    if (!acl_get_flag_np(flagset_d, ACL_ENTRY_INHERITED) && (acl_create_entry(&acl_p, &v21) == -1 || acl_copy_entry(v21, entry_p) == -1))
    {
      goto LABEL_34;
    }

    if (entry_p)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    v14 = v10;
  }

  if (a3)
  {
    v16 = (a1 + 7424);
  }

  else
  {
    v16 = (a1 + 3328);
  }

  if (a4)
  {
    v17 = acl_set_link_np(v16, ACL_TYPE_EXTENDED, acl_p);
  }

  else
  {
    v17 = acl_set_file(v16, ACL_TYPE_EXTENDED, acl_p);
  }

  if (v17 != -1)
  {
    v12 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_35;
  }

LABEL_34:
  __error();
  v12 = _checkCopyFileError(a1);
LABEL_35:
  acl_free(v10);
LABEL_36:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  return v12;
}

uint64_t _checkForDestinationConflict(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _DWORD *a6)
{
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 12820))
  {
    v12 = dirname_r(a2, (a1 + 9472));
    if (!v12 || !(*(*(a1 + 12832) + 160))(*(*(a1 + 12832) + 8), v12, a1 + 8448) && *__error() != 2)
    {
      goto LABEL_31;
    }

    v13 = strlen((a1 + 4352));
    if (strncmp((a1 + 4352), (a1 + 8448), v13))
    {
      *a6 = 1;
      v14 = a1;
LABEL_33:

      return _checkCopyFileError(v14);
    }
  }

  if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a2, a4))
  {
LABEL_8:
    if (*__error() == 2 || *__error() == 63)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  v16 = 1;
  while (1)
  {
    v17 = *(a4 + 4);
    v18 = v17 & 0xF000;
    if ((*(a3 + 4) & 0xF000) != 0x4000)
    {
      if (v18 != 0x4000)
      {
        goto LABEL_37;
      }

LABEL_21:
      if ((v16 & 1) == 0 || (BOMFSObjectTypeForMode(v17), BOMFSObjectTypeForMode(*(a3 + 4)), _checkCopyFileConflictError(a1) != 3))
      {
        *a6 = 1;
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v18 == 0x4000)
    {
      goto LABEL_37;
    }

    if (v18 != 40960)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 12816);
    if (v19 != 2)
    {
      break;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_38;
    }

    BOMFSObjectTypeForMode(v17);
    BOMFSObjectTypeForMode(*(a3 + 4));
    if (_checkCopyFileConflictError(a1) != 3)
    {
      goto LABEL_38;
    }

LABEL_23:
    v20 = (*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a2, a4);
    v16 = 0;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  if (v19 == 1)
  {
    if ((*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), a2, a4))
    {
      goto LABEL_31;
    }

    if ((*(a4 + 4) & 0xF000) == 0x4000)
    {
LABEL_37:
      *a5 = 1;
      return 0;
    }

LABEL_38:
    *a6 = 1;
    v14 = a1;
    goto LABEL_33;
  }

  if (v19)
  {
    return 0;
  }

  if ((*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 3328))
  {
LABEL_31:
    *a6 = 1;
    __error();
LABEL_32:
    v14 = a1;
    goto LABEL_33;
  }

LABEL_10:
  *a5 = 0;
  return 0;
}

uint64_t _copyFile(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5, unsigned int *a6, int a7)
{
  v68[0] = a4;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v11 = (a1 + 11616);
  v64 = 0uLL;
  v63 = 0uLL;
  if (*(a1 + 12712))
  {
LABEL_2:
    v12 = 0;
    v13 = 0;
    v14 = (a2 + 116);
    v55 = (*(a2 + 116) & 0x40000020) == 32;
    v15 = *(a2 + 96);
    goto LABEL_3;
  }

  if (BOMAppleDoubleIsADFile((a1 + 248)))
  {
    if (*(a1 + 169))
    {
      goto LABEL_21;
    }

    goto LABEL_2;
  }

  v14 = (a2 + 116);
  v55 = (*(a2 + 116) & 0x40000020) == 32;
  if ((*(a2 + 116) & 0x40000020) == 0x20)
  {
    if (*(a1 + 195))
    {
      v30 = 33;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 1;
  }

  v31 = *(a2 + 96);
  v32 = (*(*(a1 + 12832) + 128))(*(*(a1 + 12832) + 8), a1 + 248, "com.apple.ResourceFork", 0, 0, 0, v30);
  if (v32 == -1)
  {
    if (*__error() != 2 && *__error() != 93 && *__error() != 45)
    {
      v38 = __error();
      v32 = 0;
      v13 = *v38;
      goto LABEL_45;
    }

    v32 = 0;
  }

  v13 = 0;
LABEL_45:
  v15 = v32 + v31;
  v12 = 1;
LABEL_3:
  if (*(a1 + 12712))
  {
    v16 = a1 + 248;
  }

  else
  {
    v16 = *(a1 + 2296);
  }

  v17 = BOMFSObjectTypeForMode(*(a2 + 4));
  *v11 = 0;
  v11[1025] = 0;
  v18 = *(a1 + 88);
  v57 = v16;
  v56 = v17;
  if (v18)
  {
    v19 = v16;
    v20 = v15;
    v21 = v18(a1, v19, v17, v15);
  }

  else
  {
    v20 = v15;
    v21 = 0;
  }

  if (*(a1 + 168))
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  if (v22 == 1)
  {
LABEL_21:
    *a6 = 1;
    v25 = *(a1 + 12712);
    if (v25 == 2)
    {
      File = BOMPKZipGetFile(*(a1 + 12752));
      v28 = File;
      if (v11[1153] && BOMFileSetCompression(File, 1, 1, *(a1 + 12792)))
      {
        __error();
        _checkCopyFileError(a1);
        v22 = 2;
        goto LABEL_139;
      }

      if (*(a1 + 12776))
      {
        BOMFileSetPartialRead(v28, 1);
      }

      v26 = _skipPKZipFile();
    }

    else
    {
      if (v25 != 1)
      {
        goto LABEL_138;
      }

      v26 = _skipCPIOFile(a1, a2);
    }

    v22 = 2 * (v26 != 0);
    goto LABEL_139;
  }

  if (v22 != 2)
  {
    if (v13)
    {
      v23 = a1;
LABEL_19:
      v24 = _checkCopyFileError(v23);
LABEL_20:
      v22 = v24;
      goto LABEL_139;
    }

    if (*v11)
    {
      LODWORD(v60[0]) = 0;
      v29 = (a1 + 10592);
      v24 = _checkForDestinationConflict(a1, (a1 + 10592), a2, a3, v68, v60);
      if (LODWORD(v60[0]) == 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = (a1 + 3328);
    }

    v54 = v29;
    if (v11[1025] && !*(a1 + 12712))
    {
      v33 = (a1 + 11617);
      if ((*(*(a1 + 12832) + 96))(*(*(a1 + 12832) + 8), a1 + 11617, a2) == -1)
      {
LABEL_85:
        __error();
        v23 = a1;
        goto LABEL_19;
      }

      if ((*(a2 + 4) & 0xF000) != 0x8000)
      {
        v23 = a1;
        goto LABEL_19;
      }
    }

    else
    {
      v33 = (a1 + 248);
    }

    if (*(a1 + 12716) == 3)
    {
      v53 = *v14;
    }

    else
    {
      v53 = 0;
    }

    *(a1 + 196) = 1;
    v34 = a5;
    v35 = a6;
    v36 = _copyDataFork(a1, v33, a2, a3, v68[0], v34, a6, a7);
    if (v36)
    {
      v22 = v36;
      if (*(a1 + 12716) != 3)
      {
        goto LABEL_139;
      }

LABEL_55:
      (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
      goto LABEL_139;
    }

    if (*a6)
    {
      v67 = *a6;
    }

    else
    {
      if (*(a1 + 12716) == 3)
      {
        if (v11[1232] || (v37 = *(a1 + 195), *(a1 + 195)))
        {
          v65 = AFSCLockFilePath();
          if (!v65)
          {
LABEL_89:
            __error();
            (*(*(a1 + 12832) + 224))(*(*(a1 + 12832) + 8), a1 + 7424);
LABEL_90:
            v23 = a1;
            goto LABEL_19;
          }

          v37 = *a6;
        }
      }

      else
      {
        v37 = 0;
      }

      v67 = v37;
      if (v37)
      {
        v39 = 0;
      }

      else
      {
        v39 = v12;
      }

      if (v39 == 1)
      {
        if (*(a1 + 12716) == 3)
        {
          if (*(a1 + 170) || *(a1 + 169))
          {
            v22 = _copyExtendedAttributes(a1, v33, a2, 1, &v67);
          }

          else
          {
            v22 = 0;
          }

          if (*(a1 + 171) && !v22)
          {
            v22 = _copyACLs(a1, v33, 1, 0, &v67);
          }

          if (v22)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v24 = _copyAppleDoubleToArchive(a1, v33, a2, &v67);
          if (v24)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v40 = *(a1 + 216);
    if (v40 && setxattr((a1 + 7424), "com.apple.provenance", v40, *(a1 + 224), 0, 1))
    {
      goto LABEL_85;
    }

    v41 = v20;
    if (!*a6 && *(a1 + 12716) == 3)
    {
      if (_chPerms(a1, (a1 + 7424), a2, &v66, 1))
      {
        goto LABEL_89;
      }

      v42 = *(a2 + 32);
      v63 = *(a2 + 48);
      v64 = v42;
      if (set_timestamps_0((a1 + 7424), &v64, &v63))
      {
        if (*__error() != 13 && *__error() != 1)
        {
          goto LABEL_89;
        }

        *__error() = 0;
      }

      if (*(a1 + 12712) && *(a1 + 12716) == 3 && *(a1 + 169) && BOMAppleDoubleIsADFile(v54))
      {
        __strlcpy_chk();
        __strlcat_chk();
        if ((*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, a1 + 8448))
        {
          goto LABEL_89;
        }

        v35 = a6;
        if (v57 == a1 + 248)
        {
          __strlcat_chk();
        }
      }

      else if (!v11[1207] && (a7 & 1) == 0 && (*(*(a1 + 12832) + 264))(*(*(a1 + 12832) + 8), a1 + 7424, v54))
      {
        goto LABEL_89;
      }

      if (v53)
      {
        if (*(a1 + 10496))
        {
          v43 = v53 & 0xC000FFFF;
        }

        else
        {
          v43 = v53;
        }

        if (v55 && (!*(a1 + 195) || *(a1 + 196)))
        {
          v43 = v43 & 0xFFFFFFDF;
        }

        if (v43)
        {
          v44 = *v14;
          v61 = 0u;
          v62 = 0u;
          memset(v60, 0, sizeof(v60));
          if (!(*(*(a1 + 12832) + 80))(*(*(a1 + 12832) + 8), v54, v60))
          {
            v44 = DWORD1(v61);
            if ((DWORD1(v61) & 0x40000020) == 0x20)
            {
              v45 = v43 | 0x20;
            }

            else
            {
              v45 = v43;
            }

            if (v11[1232])
            {
              v46 = v45;
            }

            else
            {
              v46 = v43;
            }

            if ((~v46 & 0x40000020) != 0)
            {
              v43 = v46;
            }

            else
            {
              v43 = v46 & 0xBFFFFFDF;
            }
          }

          if (change_flags_0(a1, v54, v44, v43) || set_timestamps_0(v54, &v64, &v63))
          {
            __error();
            goto LABEL_90;
          }

          v41 = v20;
        }
      }

      if (*(a1 + 197))
      {
        FSObjectAtPath = BOMBomGetFSObjectAtPath(*(a1 + 152), *(a1 + 2296));
        v48 = v41;
        v49 = BOMFSObjectChecksum(FSObjectAtPath);
        BOMFSObjectFree(FSObjectAtPath);
        v50 = v49 == *(a1 + 200);
        v41 = v48;
        if (!v50)
        {
          if (*(a1 + 56))
          {
            goto LABEL_90;
          }
        }
      }
    }

    if (*(a1 + 12712) == 2 && *(a1 + 12776))
    {
      v41 = *(a2 + 96);
    }

    v51 = *(a1 + 96);
    if (v51)
    {
      v51(a1, v57, v56, v41, *v35);
    }

LABEL_138:
    v22 = 0;
  }

LABEL_139:
  _unlockAFSCFileLock(&v65);
  return v22;
}
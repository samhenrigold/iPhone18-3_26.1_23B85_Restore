void directoryPatchBegin()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v30 = *MEMORY[0x29EDCA608];
  bzero(v29, 0x800uLL);
  bzero(v28, 0x800uLL);
  *(v9 + 5328) += v2;
  v10 = (v9 + 5336);
  *(v9 + 5336) = 0u;
  *(v9 + 5352) = 0u;
  if (*(v9 + 5376))
  {
    goto LABEL_6;
  }

  if ((*v8 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*(v8 + 4) == 77)
  {
    goto LABEL_6;
  }

  if ((~*v8 & 0x8001) != 0)
  {
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 78, 25, 0, "invalid archive entry, PAT/TYP missing");
LABEL_4:
    ++*(v9 + 5376);
LABEL_6:
    *(v9 + 5340) = 1;
    return;
  }

  if (*(v9 + 5368))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 79, 25, 0, "output file stream was not closed");
    goto LABEL_4;
  }

  memset(&v26, 0, sizeof(v26));
  if (concatPath(v29, 0x800uLL, (v9 + 1028), (v8 + 144)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 82, 25, 0, "create output path");
    goto LABEL_4;
  }

  ++*(v9 + 5384);
  memcpy((v9 + 3136), v8, 0x890uLL);
  if (*v9 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "%s\n", (v8 + 144));
  }

  v11 = strlen(v29);
  makePath(v29, v11);
  if (!lstat(v29, &v26) && (v26.st_mode & 0xF000) != 0x4000)
  {
    unlink(v29);
  }

  v12 = *(v8 + 4);
  if (v12 > 71)
  {
    if (v12 == 72)
    {
      if (*(v8 + 2))
      {
        if (concatPath(v28, 0x800uLL, (v9 + 1028), (v8 + 1168)))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 123, 25, 0, "create output link path", v24, v25, *&v26.st_dev, v26.st_ino, *&v26.st_uid, *&v26.st_rdev, v26.st_atimespec.tv_sec, v26.st_atimespec.tv_nsec, v26.st_mtimespec.tv_sec, v26.st_mtimespec.tv_nsec, v26.st_ctimespec.tv_sec, v26.st_ctimespec.tv_nsec, v26.st_birthtimespec.tv_sec, v26.st_birthtimespec.tv_nsec, v26.st_size, v26.st_blocks, *&v26.st_blksize, *&v26.st_gen, v26.st_qspare[0], v26.st_qspare[1]);
        }

        else
        {
          if (!link(v28, v29))
          {
            return;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 124, 25, 0, "hlink %s -> %s");
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 122, 25, 0, "missing LNK field: %s");
      }
    }

    else
    {
      if (v12 != 76)
      {
        goto LABEL_35;
      }

      if (*(v8 + 2))
      {
        if (!symlink((v8 + 1168), v29))
        {
          return;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 118, 25, 0, "slink %s -> %s");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 117, 25, 0, "missing LNK field: %s");
      }
    }

LABEL_66:
    ++*(v9 + 5376);
    return;
  }

  if (v12 == 68)
  {
    if (lstat(v29, &v26))
    {
      if (!mkdir(v29, 0x1EDu))
      {
        return;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 107, 25, 0, "mkdir %s");
    }

    else
    {
      if ((v26.st_mode & 0xF000) == 0x4000)
      {
        return;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 112, 25, 0, "entry expected to be a directory: %s");
    }

    goto LABEL_66;
  }

  if (v12 != 70)
  {
LABEL_35:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 179, 25, 0, "unsupported entry type '%c'");
    goto LABEL_66;
  }

  v13 = *(v9 + 3076);
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  *(v9 + 5336) = v14;
  if ((*(v8 + 1) & 2) != 0)
  {
    v15 = 4;
LABEL_51:
    *v10 = v15;
    goto LABEL_52;
  }

  if (v4)
  {
    while ((*v6 & 0xDFDFDF) != 0x505842)
    {
      v6 += 258;
      if (!--v4)
      {
        goto LABEL_28;
      }
    }

    v15 = 3;
    goto LABEL_51;
  }

LABEL_28:
  if (v13)
  {
    goto LABEL_52;
  }

  bzero(v27, 0x800uLL);
  if (concatPath(v27, 0x800uLL, (v9 + 4), (v8 + 144)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 141, 25, 0, "create input path", v24, v25, *&v26.st_dev, v26.st_ino, *&v26.st_uid, *&v26.st_rdev, v26.st_atimespec.tv_sec, v26.st_atimespec.tv_nsec, v26.st_mtimespec.tv_sec, v26.st_mtimespec.tv_nsec, v26.st_ctimespec.tv_sec, v26.st_ctimespec.tv_nsec, v26.st_birthtimespec.tv_sec, v26.st_birthtimespec.tv_nsec, v26.st_size, v26.st_blocks, *&v26.st_blksize, *&v26.st_gen, v26.st_qspare[0], v26.st_qspare[1]);
    goto LABEL_66;
  }

  if (link(v27, v29))
  {
    v15 = 2;
    goto LABEL_51;
  }

LABEL_52:
  v16 = 64;
  if ((*v8 & 0x200) == 0)
  {
    v16 = 40;
  }

  v17 = *(v8 + v16);
  if ((*v8 & 8) != 0)
  {
    v18 = 4 * (statIsCompressed(*(v8 + 16)) != 0);
  }

  else
  {
    v18 = 0;
  }

  if ((*v10 - 2) <= 2)
  {
    v19 = *(v9 + 3084) ? v18 | 0x2B : v18;
    v20 = OArchiveFileStreamCreate(v29, v17, v19, -1, *(v9 + 3112));
    *(v9 + 5368) = v20;
    if (!v20)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 160, 25, 0, "create output stream");
      ++*(v9 + 5376);
    }

    if (*v10 == 2)
    {
      bzero(v27, 0x800uLL);
      if (concatPath(v27, 0x800uLL, (v9 + 4), (v8 + 144)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 167, 25, 0, "create input path", v24, v25, *&v26.st_dev, v26.st_ino, *&v26.st_uid, *&v26.st_rdev, v26.st_atimespec.tv_sec, v26.st_atimespec.tv_nsec, v26.st_mtimespec.tv_sec, v26.st_mtimespec.tv_nsec, v26.st_ctimespec.tv_sec, v26.st_ctimespec.tv_nsec, v26.st_birthtimespec.tv_sec, v26.st_birthtimespec.tv_nsec, v26.st_size, v26.st_blocks, *&v26.st_blksize, *&v26.st_gen, v26.st_qspare[0], v26.st_qspare[1]);
        goto LABEL_66;
      }

      v21 = IFileStreamCreateWithFilename(v27, 0, -1);
      if (!v21)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 169, 25, 0, "create input stream", v24, v25, *&v26.st_dev, v26.st_ino, *&v26.st_uid, *&v26.st_rdev, v26.st_atimespec.tv_sec, v26.st_atimespec.tv_nsec, v26.st_mtimespec.tv_sec, v26.st_mtimespec.tv_nsec, v26.st_ctimespec.tv_sec, v26.st_ctimespec.tv_nsec, v26.st_birthtimespec.tv_sec, v26.st_birthtimespec.tv_nsec, v26.st_size, v26.st_blocks, *&v26.st_blksize, *&v26.st_gen, v26.st_qspare[0], v26.st_qspare[1]);
        goto LABEL_66;
      }

      v22 = v21;
      v23 = MemBufferTransmit(*(v9 + 3120), v17, IFileStreamRead, v21, OArchiveFileStreamWrite, *(v9 + 5368));
      IFileStreamDestroy(v22);
      if (v23 != v17)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchBegin", 172, 25, 0, "copy preserved", v24, v25, *&v26.st_dev, v26.st_ino, *&v26.st_uid, *&v26.st_rdev, v26.st_atimespec.tv_sec, v26.st_atimespec.tv_nsec, v26.st_mtimespec.tv_sec, v26.st_mtimespec.tv_nsec, v26.st_ctimespec.tv_sec, v26.st_ctimespec.tv_nsec, v26.st_birthtimespec.tv_sec, v26.st_birthtimespec.tv_nsec, v26.st_size, v26.st_blocks, *&v26.st_blksize, *&v26.st_gen, v26.st_qspare[0], v26.st_qspare[1]);
        goto LABEL_66;
      }
    }
  }
}

unsigned int *directoryPatchEnd(unsigned int *result)
{
  v17 = *MEMORY[0x29EDCA608];
  if (result[1335])
  {
    return result;
  }

  v1 = result;
  if (result[1334] == 3)
  {
    bzero(v16, 0x800uLL);
    if (concatPath(v16, 0x800uLL, v1 + 4, v1 + 3280))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 196, 25, 0, "create input path");
      ++*(v1 + 672);
    }

    v2 = MappedBufferCreateWithFilename(v1 + 2052, *(v1 + 669), *(v1 + 670));
    if (v2)
    {
      v3 = v2;
      NWritten = OMemStreamGetNWritten(v2);
      DataSize = MappedBufferGetDataSize(v3);
      LODWORD(NWritten) = BXPatch5FileWithFlags(v16, NWritten, DataSize, OArchiveFileStreamWrite, *(v1 + 671), 0);
      MappedBufferDestroy(v3);
      if (!NWritten)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MappedBufferDestroy(0);
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 205, 25, 0, "patching file %s", v1 + 3280);
    ++*(v1 + 672);
  }

LABEL_10:
  result = *(v1 + 671);
  if (result)
  {
    result = OArchiveFileStreamDestroy(result);
    *(v1 + 671) = 0;
  }

  if ((*(v1 + 3137) & 0x20) != 0)
  {
    v6 = v1[1334];
    if (v6 <= 4 && ((1 << v6) & 0x16) != 0)
    {
      bzero(v16, 0x800uLL);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (concatPath(v16, 0x800uLL, v1 + 1028, v1 + 3280))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 223, 25, 0, "create output path");
        ++*(v1 + 672);
      }

      result = getFileSHA1Digest(v16, &v13);
      if (result)
      {
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 224, 25, 0, "hashing output file");
        ++*(v1 + 672);
      }

      if (v13 != *(v1 + 807) || v14 != *(v1 + 809) || v15 != v1[811])
      {
        memset(v12, 0, 41);
        sha1ToString(v12, &v13);
        result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 229, 25, 0, "invalid output file SHA1 digest %s: %s", v1 + 3280, v12);
        ++*(v1 + 672);
      }
    }
  }

  if (!v1[772])
  {
    bzero(v16, 0x800uLL);
    if (concatPath(v16, 0x800uLL, v1 + 1028, v1 + 3280))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 238, 25, 0, "create output path");
      ++*(v1 + 672);
    }

    v9 = *(v1 + 3092);
    if (v9)
    {
      v1[784] |= 2u;
      v1[786] = v1[774];
    }

    if ((v9 & 2) != 0)
    {
      v1[784] |= 4u;
      v1[787] = v1[775];
    }

    v10 = v1[785];
    if (v10 == 68)
    {
      if ((v9 & 4) == 0)
      {
        goto LABEL_41;
      }

      v11 = 776;
    }

    else
    {
      if (v10 != 70 || (v9 & 8) == 0)
      {
        goto LABEL_41;
      }

      v11 = 777;
    }

    v1[784] |= 0x10u;
    v1[789] = v1[v11];
LABEL_41:
    result = yaa_setEntryAttributes(v16, v1 + 784, 0, v1[770]);
    if (result)
    {
      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchEnd", 253, 25, 0, "set output attributes");
      ++*(v1 + 672);
    }
  }

  return result;
}

uint64_t directoryPatchBlob(uint64_t result, _DWORD *a2)
{
  if (!*(result + 5340))
  {
    *(result + 5344) = 0;
    v2 = *a2 & 0xDFDFDF;
    if (v2 == 5265474)
    {
      *(result + 5348) = 1;
      *(result + 5352) = *(result + 5328);
    }

    else if (v2 == 5521732)
    {
      *(result + 5344) = 1;
    }
  }

  return result;
}

uint64_t directoryPatchPayload(uint64_t result, char *a2, unint64_t a3)
{
  *(result + 5328) += a3;
  if (!*(result + 5340))
  {
    v3 = result;
    if (*(result + 5344))
    {
      result = OArchiveFileStreamWrite(*(result + 5368), a2, a3);
      if ((result & 0x8000000000000000) == 0)
      {
        return result;
      }

      result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/DirectoryPatch.c", "directoryPatchPayload", 283, 25, 0, "write DAT blob");
      a3 = 1;
      v4 = 5376;
    }

    else
    {
      if (!*(result + 5348))
      {
        return result;
      }

      v4 = 5360;
    }

    *(v3 + v4) += a3;
  }

  return result;
}

uint64_t ECC65537GetParity(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  if (a1 > 0x1FFE0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (a1 & 1) + a1;
  if (v4)
  {
    v5 = 0uLL;
    v6 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_2980690A0), vceqzq_s32(qword_2980690B0)));
    v7 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_298069090))));
    v8.i64[0] = 0xFFFF0000FFFFLL;
    v8.i64[1] = 0xFFFF0000FFFFLL;
    v9.i64[0] = 0x1000100010001;
    v9.i64[1] = 0x1000100010001;
    v10.i64[0] = 0x1000100010001;
    v10.i64[1] = 0x1000100010001;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    do
    {
      v15 = v4 - 2;
      if (v4 <= a1)
      {
        v16 = *(a2 + v15);
      }

      else
      {
        v16 = *(a2 + v15);
      }

      v17 = vextq_s8(v5, v12, 0xCuLL);
      v18 = vextq_s8(v12, v13, 0xCuLL);
      v19 = vextq_s8(v13, v14, 0xCuLL);
      v20 = vdupq_laneq_s32(v14, 3);
      v21 = vextq_s8(qword_2980690B0, v5, 0xCuLL);
      v21.i32[0] = v16;
      v22 = vmulq_laneq_s32(ECC65537_G, v14, 3);
      v23 = vmulq_laneq_s32(unk_298069090, v14, 3);
      v24 = vmulq_laneq_s32(xmmword_2980690A0, v14, 3);
      v25 = vmulq_laneq_s32(qword_2980690B0, v14, 3);
      v26 = vceqzq_s32(v20);
      v27 = vuzp1q_s16(v26, v26);
      v28 = vuzp1q_s16(vceqzq_s32(v24), vceqzq_s32(v25));
      v29 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v22), vceqzq_s32(v23)));
      v30 = vsubq_s32(vandq_s8(v25, v8), vshrq_n_u32(v25, 0x10uLL));
      v31 = vsubq_s32(vandq_s8(v24, v8), vshrq_n_u32(v24, 0x10uLL));
      v32 = vsubq_s32(vandq_s8(v23, v8), vshrq_n_u32(v23, 0x10uLL));
      v33 = vsubq_s32(vandq_s8(v22, v8), vshrq_n_u32(v22, 0x10uLL));
      v34 = vand_s8(vand_s8(v7, v29), vmovn_s16(vmvnq_s8(v27)));
      *v27.i8 = vmovn_s16(vandq_s8(vbicq_s8(v6, v27), v28));
      v35 = vsubq_s32(v19, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v30, vandq_s8(vcgtq_u32(v30, v10), v9))));
      v36 = vsubq_s32(v18, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v31, vandq_s8(vcgtq_u32(v31, v10), v9))));
      v37 = vsubq_s32(v17, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v32, vandq_s8(vcgtq_u32(v32, v10), v9))));
      v38 = vsubq_s32(v21, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v33, vandq_s8(vcgtq_u32(v33, v10), v9))));
      v14 = vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v10), v9));
      v13 = vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v10), v9));
      v12 = vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v10), v9));
      v5 = vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v10), v9));
      v4 = v15;
    }

    while (v15);
  }

  else
  {
    v5 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v39 = 0;
  v40 = 0;
  v43[0] = v5;
  v43[1] = v12;
  v43[2] = v13;
  v43[3] = v14;
  do
  {
    v41 = *(v43 + v39);
    if (v41)
    {
      v42 = 65537 - v41;
    }

    else
    {
      v42 = 0;
    }

    v40 |= (1 << v39) & (v42 << 15 >> 31);
    *(a3 + 2 * v39++) = v42;
  }

  while (v39 != 16);
  result = 0;
  *(a3 + 32) = v40;
  return result;
}

uint64_t ECC65537CheckAndFix(unsigned int a1, uint64_t a2, uint16x8_t *a3, _DWORD *a4)
{
  v111 = *MEMORY[0x29EDCA608];
  v7 = 0uLL;
  v8 = (a1 & 1) + a1;
  if (v8)
  {
    v9 = 0uLL;
    v10 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_2980690A0), vceqzq_s32(qword_2980690B0)));
    v11 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_298069090))));
    v12.i64[0] = 0xFFFF0000FFFFLL;
    v12.i64[1] = 0xFFFF0000FFFFLL;
    v13.i64[0] = 0x1000100010001;
    v13.i64[1] = 0x1000100010001;
    v14.i64[0] = 0x1000100010001;
    v14.i64[1] = 0x1000100010001;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = (a1 & 1) + a1;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = v16 - 2;
      if (v16 <= a1)
      {
        v21 = *(a2 + v20);
      }

      else
      {
        v21 = *(a2 + v20);
      }

      v22 = vextq_s8(v9, v17, 0xCuLL);
      v23 = vextq_s8(v17, v18, 0xCuLL);
      v24 = vextq_s8(v18, v19, 0xCuLL);
      v25 = vdupq_laneq_s32(v19, 3);
      v26 = vextq_s8(0, v9, 0xCuLL);
      v26.i32[0] = v21;
      v27 = vmulq_laneq_s32(ECC65537_G, v19, 3);
      v28 = vmulq_laneq_s32(unk_298069090, v19, 3);
      v29 = vmulq_laneq_s32(xmmword_2980690A0, v19, 3);
      v30 = vmulq_laneq_s32(qword_2980690B0, v19, 3);
      v31 = vceqzq_s32(v25);
      v32 = vuzp1q_s16(v31, v31);
      v33 = vuzp1q_s16(vceqzq_s32(v29), vceqzq_s32(v30));
      v34 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v27), vceqzq_s32(v28)));
      v35 = vsubq_s32(vandq_s8(v30, v12), vshrq_n_u32(v30, 0x10uLL));
      v36 = vsubq_s32(vandq_s8(v29, v12), vshrq_n_u32(v29, 0x10uLL));
      v37 = vsubq_s32(vandq_s8(v28, v12), vshrq_n_u32(v28, 0x10uLL));
      v38 = vsubq_s32(vandq_s8(v27, v12), vshrq_n_u32(v27, 0x10uLL));
      v39 = vand_s8(vand_s8(v11, v34), vmovn_s16(vmvnq_s8(v32)));
      *v32.i8 = vmovn_s16(vandq_s8(vbicq_s8(v10, v32), v33));
      v40 = vsubq_s32(v24, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v14), v13))));
      v41 = vsubq_s32(v23, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v14), v13))));
      v42 = vsubq_s32(v22, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v14), v13))));
      v43 = vsubq_s32(v26, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v14), v13))));
      v19 = vaddq_s32(v40, vandq_s8(vcgtq_u32(v40, v14), v13));
      v18 = vaddq_s32(v41, vandq_s8(vcgtq_u32(v41, v14), v13));
      v17 = vaddq_s32(v42, vandq_s8(vcgtq_u32(v42, v14), v13));
      v9 = vaddq_s32(v43, vandq_s8(vcgtq_u32(v43, v14), v13));
      v16 = v20;
    }

    while (v20);
  }

  else
  {
    v9 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v44 = 0;
  v110[0] = v9;
  v110[1] = v17;
  v110[2] = v18;
  v110[3] = v19;
  v45 = xmmword_298069060;
  v46 = vdupq_n_s32(a3[2].u16[0]);
  v47 = xmmword_298069070;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  v49.i64[0] = 0x1000000010000;
  v49.i64[1] = 0x1000000010000;
  v50.i64[0] = 0x800000008;
  v50.i64[1] = 0x800000008;
  v51 = 0uLL;
  do
  {
    v52 = *a3++;
    v53 = vmovl_u16(*v52.i8);
    v54 = vmovl_high_u16(v52);
    v55 = &v110[v44];
    v56 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v45), v46)), v54, (*&v54 | __PAIR128__(0x1000000010000, 0x1000000010000))), v110[v44 + 1]);
    v57 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v47), v46)), v53, (*&v53 | __PAIR128__(0x1000000010000, 0x1000000010000))), v110[v44]);
    v58 = vminq_u32(vaddq_s32(v56, v49), v56);
    v59 = vminq_u32(vaddq_s32(v57, v49), v57);
    *v55 = v59;
    v55[1] = v58;
    v51 = vorrq_s8(v58, v51);
    v7 = vorrq_s8(v59, v7);
    v47 = vaddq_s32(v47, v50);
    v45 = vaddq_s32(v45, v50);
    v44 += 2;
  }

  while (v44 != 4);
  v60 = vorrq_s8(v7, v51);
  if (!*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)))
  {
    return 0;
  }

  v61 = calloc(1uLL, 0x4C0uLL);
  if (!v61)
  {
    v105 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection_ECC65537.c", "ECC65537CheckAndFix", 423, 63, *v105, "malloc");
    return 0xFFFFFFFFLL;
  }

  v62 = v61;
  v108 = a1;
  v109 = a2;
  v63 = 0;
  v64 = v8 >> 1;
  v65 = 1;
  do
  {
    v62[v63] = ecc65537PolyEval(0x10u, v110, v65);
    v66 = (3 * v65) - ((3 * v65) >> 16);
    if (v66 + 65537 >= v66)
    {
      v65 = (3 * v65) - ((3 * v65) >> 16);
    }

    else
    {
      v65 = v66 + 65537;
    }

    ++v63;
  }

  while (v63 != 16);
  v67 = 0;
  v68 = v62 + 48;
  v69 = 48;
  do
  {
    v70 = &v62[v69];
    v71 = *&v62[v67];
    v72 = *&v62[v67 + 4];
    v70[8] = v62[v67 + 8];
    *v70 = v71;
    *(v70 + 1) = v72;
    v69 += 16;
    ++v67;
  }

  while (v67 != 8);
  v73 = ecc65537Triangulate(8u, 9, (v62 + 48));
  if (v73 < 1)
  {
    goto LABEL_84;
  }

  LODWORD(v74) = v73;
  if ((ecc65537Solve(v73, v62 + 48, (v62 + 16)) & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  v75 = 0;
  v76 = 0;
  v77 = v62 + 32;
  v78 = v64 + 16;
  v79 = 1;
  do
  {
    if (!ecc65537PolyEval(v74 + 1, (v62 + 16), v79) && v76 <= 7)
    {
      v77[v76++] = v75;
    }

    v80 = (3 * v79) - ((3 * v79) >> 16);
    if (v80 + 65537 >= v80)
    {
      v79 = (3 * v79) - ((3 * v79) >> 16);
    }

    else
    {
      v79 = v80 + 65537;
    }

    ++v75;
  }

  while (v78 != v75);
  if (v76 != v74)
  {
    goto LABEL_84;
  }

  v107 = a4;
  v81 = 0;
  v74 = v74;
  do
  {
    v82 = 0;
    do
    {
      v83 = v77[v82] * v81;
      if (v83)
      {
        v84 = 3;
        if (v83 < 0)
        {
          v84 = ecc65537Inv(3);
          v83 = -v83;
        }

        v85 = v83;
        v86 = 1;
        while (1)
        {
          if (v85)
          {
            if (v84 && v86 && !(v86 * v84))
            {
              v86 = 1;
            }

            else
            {
              v86 = (v86 * v84) - ((v86 * v84) >> 16);
              if (v86 + 65537 < v86)
              {
                v86 += 65537;
              }
            }
          }

          if (v85 < 2)
          {
            break;
          }

          v85 >>= 1;
          v87 = v84 * v84;
          if (v84)
          {
            v84 = 1;
            if (!v87)
            {
              continue;
            }
          }

          v88 = v87 - HIWORD(v87);
          if (v88 + 65537 >= v88)
          {
            v84 = v88;
          }

          else
          {
            v84 = v88 + 65537;
          }
        }
      }

      else
      {
        v86 = 1;
      }

      v68[v82 + (16 * v81)] = v86;
      ++v82;
    }

    while (v82 != v74);
    v89 = v62[v81];
    if (v89)
    {
      v90 = 65537 - v89;
    }

    else
    {
      v90 = 0;
    }

    v68[16 * v81++ + v74] = v90;
  }

  while (v81 != v74);
  if (ecc65537Triangulate(v74, v74 + 1, (v62 + 48)) == v74)
  {
    v91 = v62 + 40;
    a4 = v107;
    if ((ecc65537Solve(v74, v62 + 48, (v62 + 40)) & 0x80000000) == 0)
    {
      v93 = 0;
      v94 = 0;
      while (1)
      {
        v95 = *(v91 - 8);
        if (v108 > 2 * v95)
        {
          v96 = 2 * v95;
          v97 = v96 + 2 <= v108 || v108 - v96 == 2;
          v98 = v97;
          if (v97)
          {
            v99 = *(v109 + v96);
          }

          else
          {
            v99 = *(v109 + v96);
          }

          v100 = v99 - *v91;
          if (v100 + 65537 < v100)
          {
            v100 += 65537;
          }

          if (HIWORD(v100))
          {
            goto LABEL_85;
          }

          v101 = v100 ^ v99;
          v92.i32[0] = v101;
          v92 = vcnt_s8(v92);
          v92.i16[0] = vaddlv_u8(v92);
          v94 += v92.i32[0];
          if (v101 <= 0xFF)
          {
            v102 = v93;
          }

          else
          {
            v102 = v93 + 1;
          }

          if (v101)
          {
            v93 = v102 + 1;
          }

          else
          {
            v93 = v102;
          }

          if (v98)
          {
            *(v109 + v96) = v100;
          }

          else
          {
            *(v109 + v96) = v100;
          }
        }

        ++v91;
        v103 = v93;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_84:
    v94 = 0;
    LODWORD(v93) = 0;
LABEL_85:
    v103 = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v94 = 0;
  LODWORD(v93) = 0;
  v103 = 0xFFFFFFFFLL;
  a4 = v107;
LABEL_86:
  free(v62);
  if (a4 && (v103 & 0x80000000) == 0)
  {
    v104 = a4[1] + v93;
    *a4 += v94;
    a4[1] = v104;
  }

  return v103;
}

uint64_t ecc65537PolyEval(unsigned int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = a1 + 1;
  v6 = (a2 + 4 * a1 - 4);
  do
  {
    if (a3 && result && !(result * a3))
    {
      v7 = 1;
    }

    else
    {
      v7 = (result * a3) - ((result * a3) >> 16);
      if (v7 + 65537 < v7)
      {
        v7 += 65537;
      }
    }

    v8 = *v6--;
    v9 = v7 + v8;
    if (v9 - 65537 >= v9)
    {
      result = v9;
    }

    else
    {
      result = v9 - 65537;
    }

    --v5;
  }

  while (v5 > 1);
  return result;
}

uint64_t ecc65537Triangulate(unsigned int a1, int a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = a3 + 64;
  v7 = a3;
  v8 = 1;
  while (v4 >= a2)
  {
    LODWORD(v12) = v5;
LABEL_12:
    v5 = v3;
    if (v4 == a2)
    {
      return v5;
    }

    v14 = 16 * v3;
    if (v3 != v12 && a2 > 0)
    {
      v15 = 0;
      v16 = a3 + 64 * v12;
      do
      {
        v17 = *(v16 + v15);
        *(v16 + v15) = *(v7 + v15);
        *(v7 + v15) = v17;
        v15 += 4;
      }

      while (4 * a2 != v15);
    }

    if (++v3 < a1)
    {
      v18 = *(a3 + 4 * v14 + 4 * v4);
      v19 = a3 + 4 * v4;
      v20 = (a3 + 4 * v14 + 4 * (v4 + 1));
      v21 = v8;
      v22 = (v6 + 4 * (v4 + 1));
      do
      {
        v23 = *(v19 + (v21 << 6));
        if (v23)
        {
          *(v19 + (v21 << 6)) = 0;
          if (v4 + 1 < a2)
          {
            v24 = a2 - 1 - v4;
            v25 = v22;
            v26 = v20;
            do
            {
              if (v18 && (*v25 ? (v27 = *v25 * v18 == 0) : (v27 = 0), v27))
              {
                v28 = 1;
              }

              else
              {
                v28 = (*v25 * v18) - ((*v25 * v18) >> 16);
                if (v28 + 65537 < v28)
                {
                  v28 += 65537;
                }
              }

              v30 = *v26++;
              v29 = v30;
              v31 = v30 * v23;
              v32 = (v30 * v23) - ((v30 * v23) >> 16);
              v33 = v32 + 65537;
              if (v32 + 65537 >= v32)
              {
                v33 = v32;
              }

              if (v29)
              {
                v34 = v31 == 0;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v33 = 1;
              }

              v35 = v28 - v33;
              if (v35 + 65537 < v35)
              {
                v35 += 65537;
              }

              *v25 = v35;
              v25 += 2;
              --v24;
            }

            while (v24);
          }
        }

        ++v21;
        v22 += 32;
      }

      while (v21 != a1);
    }

    ++v8;
    v7 += 64;
    v6 += 64;
    if (v3 == a1)
    {
      return a1;
    }
  }

  v9 = v4;
  v10 = (v7 + 4 * v4);
  while (2)
  {
    v11 = v10;
    v12 = v3;
    do
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        v4 = v9;
        goto LABEL_12;
      }

      ++v12;
    }

    while (a1 != v12);
    ++v9;
    ++v10;
    if (v9 != a2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t ecc65537Solve(unsigned int a1, int *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0)
  {
    v26 = 0;
    *(a3 + 4 * a1) = 1;
  }

  else
  {
    v5 = a1;
    v6 = a1;
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 17;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      --v6;
    }

    while (v6);
    *(a3 + 4 * a1) = 1;
    v9 = a1;
    v10 = 17 * a1 - 16;
    v11 = a1;
    do
    {
      if (v11 <= v5)
      {
        v12 = 0;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(a3 + 4 * v14);
          v16 = a2[v13];
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 * v15 == 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = (v16 * v15) - ((v16 * v15) >> 16);
            if (v19 + 65537 < v19)
            {
              v19 += 65537;
            }
          }

          v20 = v19 + v12;
          if (v20 - 65537 >= v20)
          {
            v12 = v20;
          }

          else
          {
            v12 = v20 - 65537;
          }

          --v13;
          v21 = v11 < v14--;
        }

        while (v21);
      }

      else
      {
        v12 = 0;
      }

      v22 = ecc65537Inv(a2[17 * v11 - 17]);
      if (v12 && (v22 ? (v23 = v22 * v12 == 0) : (v23 = 0), v23))
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 * v12) - ((v22 * v12) >> 16);
        if (v24 + 65537 < v24)
        {
          v24 += 65537;
        }
      }

      if (65537 - v24 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = 65537 - v24;
      }

      *(a3 + 4 * (v11 - 1)) = v25;
      v10 -= 16;
      v21 = v11-- <= 1;
    }

    while (!v21);
    return 0;
  }

  return v26;
}

uint64_t ecc65537Inv(uint64_t a1)
{
  if (a1 == 1)
  {
    LODWORD(v1) = 1;
  }

  else
  {
    v2 = 0;
    v3 = 1;
    v4 = 65537;
    do
    {
      if (a1 <= v4)
      {
        v5 = -1;
        do
        {
          v6 = a1 << (v5 + 2);
          ++v5;
        }

        while (v6 <= v4);
        v4 = (v4 - (a1 << v5));
        v2 = (v2 - (v3 << v5));
      }

      v1 = v2;
      v7 = v4;
      v2 = v3;
      v3 = v1;
      v4 = a1;
      a1 = v7;
    }

    while (v7 != 1);
  }

  v8 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  }

  return v8 - ((((2147450881 * v9) >> 32) >> 15) | (((2147450881 * v9) >> 32) >> 15 << 16));
}

unsigned int *PagedFileCreate(const char *a1, unint64_t a2, unint64_t a3, int a4)
{
  memset(&v49, 0, sizeof(v49));
  if (stat(a1, &v49))
  {
    v8 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 320, 21, v8, "%s");
    return 0;
  }

  st_size = v49.st_size;
  if (v49.st_size <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v49.st_size;
  }

  v11 = v10 + 4095;
  if (v11 >= 0xFFFFFFEF000)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 324, 21, 0, "File is too large to be patched in place");
    return 0;
  }

  v14 = (v11 >> 12) + 16;
  if ((a3 >> 12) <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a3 >> 12;
  }

  v16 = v15 + v14;
  v17 = (v15 << 12) + 4096 + 4 * v15 + 16 * (v14 & 0x3FFFFFFF) + 8 * v16 + 8 * v16 + 216;
  v18 = malloc(v17);
  v12 = v18;
  if (!v18)
  {
    v22 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 339, 21, *v22, "malloc");
    return v12;
  }

  bzero(v18, v17);
  if (a4 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "Opening paged file %s, %u pages in file, %u pages in cache, %u pages total, memory usage: %zu B\n", a1, v14, v15, v15 + v14, v17);
  }

  *v12 = -1;
  *(v12 + 1) = st_size;
  *(v12 + 2) = a2;
  v12[32] = a4;
  v12[6] = v14;
  v12[7] = v15;
  v12[8] = v16;
  v19 = open(a1, 2);
  *v12 = v19;
  if (v19 < 0)
  {
    v20 = *__error();
    v48 = a1;
    v21 = 357;
    goto LABEL_23;
  }

  if (fcntl(v19, 48, 1))
  {
    fwrite("Warning: couldn't set F_NOCACHE on paged file\n", 0x2EuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (ftruncate(*v12, v14 << 12))
  {
    v20 = *__error();
    v48 = a1;
    v21 = 365;
LABEL_23:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", v21, 21, v20, "%s", v48);
LABEL_24:
    if ((*v12 & 0x80000000) == 0)
    {
      close(*v12);
    }

    free(v12);
    return 0;
  }

  v23 = v12[6];
  v24 = v12[7];
  v25 = &v12[v23 + 48];
  v26 = v25 + 4 * v23;
  v27 = v26 + 4 * v23;
  *(v12 + 14) = v26;
  *(v12 + 15) = v27;
  v28 = v27 + 4 * v23;
  *(v12 + 7) = v28;
  *(v12 + 8) = v25;
  v29 = v12[8];
  v30 = v28 + 4 * v29;
  v31 = v30 + 4 * v29;
  *(v12 + 5) = v31;
  *(v12 + 6) = v12 + 48;
  v32 = v31 + 8 * v29;
  *(v12 + 9) = v30;
  *(v12 + 10) = v32;
  v33 = v32 + 4096;
  v34 = v32 + 4096 + (v24 << 12);
  *(v12 + 11) = v33;
  *(v12 + 12) = v34;
  if (v34 + 4 * v24 > v12 + v17)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileCreate", 378, 21, 0, "in memory allocation for PagedFile", v47);
    goto LABEL_24;
  }

  if (v29)
  {
    v35 = 0;
    do
    {
      *(v28 + 8 * v29) = 0;
      *(v28 + 4 * v35) = -1;
      *(v28 + 4 * v29) = -1;
      ++v35;
      ++v29;
    }

    while (v35 < v12[8]);
    v36 = v12[6];
  }

  else
  {
    v36 = v23;
  }

  if (v36)
  {
    v37 = 0;
    v38 = v23;
    v39 = 2 * v23;
    v40 = 3 * v23;
    v41 = v12 + 48;
    v42 = v36;
    do
    {
      *v41 = -1;
      v41[v38] = -1;
      v41[v39] = -1;
      v41[v40] = -1;
      ++v37;
      ++v41;
    }

    while (v37 < v36);
    v43 = 0;
    v44 = 0;
    v45 = st_size;
    do
    {
      if (v43 >= st_size)
      {
        break;
      }

      v46 = v45 - 4096;
      if (v45 >= 0x1000)
      {
        v45 = 4096;
      }

      *(v31 + 8 * v44) = v45;
      *(v28 + 4 * v44) = v44;
      v12[v44 + 48] = v44;
      ++v44;
      v43 += 4096;
      v45 = v46;
    }

    while (v44 < v42);
  }

  return v12;
}

uint64_t PagedFileDestroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = *(result + 24); ; ++i)
    {
      if (i >= *(v1 + 32))
      {
        v3 = 1;
        goto LABEL_8;
      }

      if (storeCachePos(v1, i))
      {
        break;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "flushCache", 243, 21, 0, "flushing cache pos");
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 423, 21, 0, "flush cache");
    v3 = 0;
LABEL_8:
    if ((*v1 & 0x80000000) == 0)
    {
      if (ftruncate(*v1, *(v1 + 16)))
      {
        v4 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 427, 21, *v4, "Final truncate");
        v3 = 0;
      }

      if (fcntl(*v1, 51, 0) == -1)
      {
        v5 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDestroy", 432, 21, *v5, "Final FULLSYNC");
        v3 = 0;
      }

      close(*v1);
    }

    if (*(v1 + 128) >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "Closing paged file, input size: %llu B, output size: %llu B, bytes read: %llu B, bytes written: %llu B\n", *(v1 + 8), *(v1 + 16), *(v1 + 136), *(v1 + 144));
    }

    free(v1);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t PagedFileDump(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x29EDCA610];
  v4 = "current PagedFile state";
  if (a2)
  {
    v4 = a2;
  }

  fprintf(*MEMORY[0x29EDCA610], "*** %s\n", v4);
  LODWORD(v5) = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(a1 + 40) + 8 * v6);
      if (!v13)
      {
        if (v6 < *(a1 + 24))
        {
          ++v11;
        }

        else
        {
          ++v12;
        }
      }

      v14 = *(*(a1 + 56) + 4 * v6);
      if (v14 != -1)
      {
        ++v7;
        v9 += v13;
        if (v6 != *(*(a1 + 48) + 4 * v14))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 472, 21, 0, "invalid reverse index for IN");
        }
      }

      v15 = *(*(a1 + 72) + 4 * v6);
      if (v15 != -1)
      {
        ++v8;
        v10 += v13;
        if (v6 != *(*(a1 + 64) + 4 * v15))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 480, 21, 0, "invalid reverse index for OUT");
        }
      }

      if (*(*(a1 + 56) + 4 * v6) != -1 && *(*(a1 + 72) + 4 * v6) != -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 483, 21, 0, "inconsistency in inPage/outPage indices");
      }

      v16 = *(*(a1 + 56) + 4 * v6);
      if (v13)
      {
        if (v16 == -1 && *(*(a1 + 72) + 4 * v6) == -1)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 485, 21, 0, "inconsistency in nRefs != 0");
        }
      }

      else if (v16 != -1 || *(*(a1 + 72) + 4 * v6) != -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileDump", 486, 21, 0, "inconsistency in nRefs == 0");
      }

      ++v6;
      v5 = *(a1 + 32);
    }

    while (v6 < v5);
    v3 = MEMORY[0x29EDCA610];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  fprintf(*v3, "  %u total pages\n", v5);
  fprintf(*v3, "  %u free pages in file\n", v11);
  fprintf(*v3, "  %u free pages in cache\n", v12);
  fprintf(*v3, "  %u input pages stored, %llu bytes referenced\n", v7, v9);
  return fprintf(*v3, "  %u output pages stored, %llu bytes referenced\n", v8, v10);
}

uint64_t PagedFileRetainIn(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a1[6];
  while (1)
  {
    v4 = *(v3 + 4 * (a2 >> 12));
    if (v4 == -1)
    {
      break;
    }

    v5 = a1[15];
    *(a1[14] + 4 * (a2 >> 12)) = v4;
    v6 = 4096 - (a2 & 0xFFF);
    *(v5 + 4 * v4) = a2 >> 12;
    if (v6 >= a3)
    {
      v6 = a3;
    }

    *(a1[5] + 8 * v4) += v6;
    a2 += v6;
    a3 -= v6;
    if (!a3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainIn", 503, 21, 0, "input page is not stored");
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileReleaseIn(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 48);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = 4096 - (a2 & 0xFFF) >= v3 ? v3 : 4096 - (a2 & 0xFFF);
    v9 = *(v6 + 4 * (a2 >> 12));
    if (v9 == -1)
    {
      break;
    }

    v10 = *(a1 + 40);
    v11 = *(v10 + 8 * v9) - v8;
    *(v10 + 8 * v9) = v11;
    if (!v11)
    {
      if (*(a1 + 128) >= 3)
      {
        fprintf(*v7, "PagedFile: input page %u removed from storage\n", a2 >> 12);
        v6 = *(a1 + 48);
      }

      *(*(a1 + 56) + 4 * v9) = -1;
      *(v6 + 4 * (a2 >> 12)) = -1;
    }

    a2 += v8;
    v3 -= v8;
    if (!v3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileReleaseIn", 525, 21, 0, "input page is not stored");
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileRetainOut(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 64);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = a2 >> 12;
    if (4096 - (a2 & 0xFFF) >= v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 4096 - (a2 & 0xFFF);
    }

    v10 = *(v6 + 4 * v8);
    if (v10 != -1)
    {
      goto LABEL_11;
    }

    FreeCachePos = getFreeCachePos(a1);
    if (FreeCachePos == -1)
    {
      break;
    }

    v12 = FreeCachePos;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*v7, "PagedFile: assigning cache[%u] to new output page %u\n", FreeCachePos, a2 >> 12);
    }

    v10 = v12;
    v6 = *(a1 + 64);
    *(*(a1 + 72) + 4 * v12) = v8;
    *(v6 + 4 * (a2 >> 12)) = v12;
LABEL_11:
    *(*(a1 + 40) + 8 * v10) += v9;
    a2 += v9;
    v3 -= v9;
    if (!v3)
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainOut", 555, 21, 0, "no storage available for output page");
  return 0xFFFFFFFFLL;
}

uint64_t getFreeCachePos(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 >= v2)
  {
LABEL_13:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "getFreeCachePos", 231, 21, 0, "no cache");
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
    v5 = 0xFFFFFFFFLL;
    v6 = *(a1 + 24);
    do
    {
      if (!*(*(a1 + 40) + 8 * v6))
      {
        return v6;
      }

      if (v5 == -1 || *(*(a1 + 96) + v4) < *(*(a1 + 96) + 4 * (v5 - v1)))
      {
        v5 = v6;
      }

      ++v6;
      v4 += 4;
    }

    while (v2 != v6);
    if (v5 == -1)
    {
      goto LABEL_13;
    }

    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: storing oldest cache[%u] to file\n", v5);
    }

    if (storeCachePos(a1, v5))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "getFreeCachePos", 235, 21, 0, "flushing cache pos");
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

BOOL PagedFileHasNoIn(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (*(*(a1 + 56) + 4 * v2) != -1 && *(*(a1 + 40) + 8 * v2))
    {
      break;
    }

    v3 = ++v2 >= v1;
  }

  while (v1 != v2);
  return v3;
}

BOOL PagedFileHasAllOut(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if (*(*(a1 + 72) + 4 * v3) != -1)
      {
        v5 = *(*(a1 + 40) + 8 * v3);
        v4 += v5;
        if (v3 < (v1 >> 12) && v5 != 4096)
        {
          break;
        }
      }

      if (v2 == ++v3)
      {
        return v4 == v1;
      }
    }

    return 0;
  }

  else
  {
    v4 = 0;
    return v4 == v1;
  }
}

uint64_t PagedFileReadAndReleaseIn(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = a2 >> 12;
    if (4096 - (a2 & 0xFFF) >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4096 - (a2 & 0xFFF);
    }

    v10 = *(a1 + 24);
    if (v10 <= v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 252, 21, 0, "invalid input PAGE");
      goto LABEL_27;
    }

    v11 = *(*(a1 + 48) + 4 * v8);
    if (v11 == -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 254, 21, 0, "input page is not stored");
      goto LABEL_27;
    }

    v12 = (a2 >> 12);
    if (v11 >= v10)
    {
      v14 = -1;
    }

    else
    {
      FreeCachePos = getFreeCachePos(a1);
      if (FreeCachePos == -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 261, 21, 0, "could not get a free pos from cache");
        goto LABEL_27;
      }

      v14 = FreeCachePos;
      v11 = *(*(a1 + 48) + 4 * v12);
      v10 = *(a1 + 24);
    }

    if (v11 < v10)
    {
      break;
    }

LABEL_15:
    v15 = v11 >= v10;
    v16 = v11 - v10;
    if (!v15 || v11 >= *(a1 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 273, 21, 0, "could not move input page in cache");
      goto LABEL_27;
    }

    v17 = *(a1 + 104);
    *(a1 + 104) = v17 + 1;
    *(*(a1 + 96) + 4 * v16) = v17;
    v18 = cacheData(a1, v11);
    if (!v18)
    {
      goto LABEL_27;
    }

    memcpy(a4, (v18 + (a2 & 0xFFF)), v9);
    PagedFileReleaseIn(a1, a2, v9);
    a2 += v9;
    a4 += v9;
    v5 -= v9;
    if (!v5)
    {
      return 0;
    }
  }

  if (!movePage(a1, v11, v14))
  {
    v11 = *(*(a1 + 48) + 4 * v12);
    v10 = *(a1 + 24);
    goto LABEL_15;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "inputPageData", 268, 21, 0, "moving page from disk to cache");
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileReadAndReleaseIn", 615, 21, 0, "unable to load input page");
  return 0xFFFFFFFFLL;
}

uint64_t PagedFileRetainAndWriteOut(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    if (4096 - (a2 & 0xFFF) >= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4096 - (a2 & 0xFFF);
    }

    if (PagedFileRetainOut(a1, a2, v8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainAndWriteOut", 639, 21, 0, "retain output chunk");
      return 0xFFFFFFFFLL;
    }

    v9 = *(a1 + 24);
    if (v9 <= (a2 >> 12))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 286, 21, 0, "invalid output PAGE");
      goto LABEL_29;
    }

    v10 = *(*(a1 + 64) + 4 * (a2 >> 12));
    if (v10 == -1)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 288, 21, 0, "output page is not stored");
      goto LABEL_29;
    }

    v11 = (a2 >> 12);
    if (v10 >= v9)
    {
      v13 = -1;
    }

    else
    {
      FreeCachePos = getFreeCachePos(a1);
      if (FreeCachePos == -1)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 294, 21, 0, "could not get a free pos from cache");
        goto LABEL_29;
      }

      v13 = FreeCachePos;
      v10 = *(*(a1 + 64) + 4 * v11);
      v9 = *(a1 + 24);
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_16:
    v14 = v10 >= v9;
    v15 = v10 - v9;
    if (!v14 || v10 >= *(a1 + 32))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 305, 21, 0, "could not move output page in cache");
      goto LABEL_29;
    }

    v16 = *(a1 + 104);
    *(a1 + 104) = v16 + 1;
    *(*(a1 + 96) + 4 * v15) = v16;
    v17 = cacheData(a1, v10);
    if (!v17)
    {
      goto LABEL_29;
    }

    memcpy((v17 + (a2 & 0xFFF)), a4, v8);
    a2 += v8;
    a4 += v8;
    v5 -= v8;
    if (!v5)
    {
      return 0;
    }
  }

  if (!movePage(a1, v10, v13))
  {
    v10 = *(*(a1 + 64) + 4 * v11);
    v9 = *(a1 + 24);
    goto LABEL_16;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "outputPageData", 301, 21, 0, "moving page from disk to cache");
LABEL_29:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "PagedFileRetainAndWriteOut", 643, 21, 0, "unable to load output page");
  return 0xFFFFFFFFLL;
}

uint64_t storeCachePos(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2 > a2 || *(a1 + 32) <= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 165, 21, 0, "invalid cache POS");
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 8 * a2);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(v7 + 4 * a2);
  if (v8 == -1)
  {
    v12 = *(*(a1 + 72) + 4 * a2);
    if (v12 != -1)
    {
      if (*(v5 + 8 * v12))
      {
        v13 = -v2;
        v14 = v2 - 1;
        do
        {
          if (v14 == -1)
          {
            goto LABEL_18;
          }

          v15 = *(v5 + 8 * v14);
          ++v13;
          --v14;
        }

        while (v15);
        if (v13 == 1)
        {
LABEL_18:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 208, 21, 0, "no free pages in file");
          return 0xFFFFFFFFLL;
        }

        v20 = -v13;
        if (*(a1 + 128) >= 3)
        {
          fwrite("PagedFile: vacating file pos\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
        }

        if (movePage(a1, v12, v20))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 210, 21, 0, "vacating page in file");
          return 0xFFFFFFFFLL;
        }
      }

      if (*(a1 + 128) >= 3)
      {
        fwrite("PagedFile: storing cached output page to file\n", 0x2EuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      result = movePage(a1, a2, v12);
      if (result)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 213, 21, 0, "moving output page from cache to disk");
        return 0xFFFFFFFFLL;
      }

      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 215, 21, 0, "nRefs inconsistency");
    return 0xFFFFFFFFLL;
  }

  v9 = *(*(a1 + 112) + 4 * v8);
  if (v9 == -1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 175, 21, 0, "cached input page does not have a file position");
    return 0xFFFFFFFFLL;
  }

  if (*(*(a1 + 120) + 4 * v9) == v8)
  {
    result = 0;
    *(*(a1 + 48) + 4 * v8) = v9;
    *(v5 + 8 * v9) = v6;
    *(v7 + 4 * v9) = v8;
    v11 = *(a1 + 72);
    *(v11 + 4 * v9) = -1;
    *(v5 + 8 * a2) = 0;
    *(v7 + 4 * a2) = -1;
    *(v11 + 4 * a2) = -1;
    return result;
  }

  v16 = -v2;
  v17 = v2 - 1;
  do
  {
    if (v17 == -1)
    {
      goto LABEL_24;
    }

    v18 = *(v5 + 8 * v17);
    ++v16;
    --v17;
  }

  while (v18);
  if (v16 == 1)
  {
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 196, 21, 0, "no free pages in file");
    return 0xFFFFFFFFLL;
  }

  v19 = -v16;
  if (*(a1 + 128) >= 3)
  {
    fwrite("PagedFile: storing cached input page to file\n", 0x2DuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  result = movePage(a1, a2, v19);
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "storeCachePos", 198, 21, 0, "moving input page from cache to disk");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t movePage(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (v3 <= a2 || v3 <= a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 77, 21, 0, "invalid SRC/DST");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 40);
  if (!*(v7 + 8 * a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 78, 21, 0, "SRC is empty");
    return 0xFFFFFFFFLL;
  }

  if (*(v7 + 8 * a3))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 79, 21, 0, "DST is not empty");
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 24);
  if (v10 > a2 && v10 > a3)
  {
    v15 = *(*(a1 + 56) + 4 * a2);
    if (v15 != -1)
    {
      *(*(a1 + 112) + 4 * v15) = a3;
    }

    *(*(a1 + 120) + 4 * a3) = v15;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from file[%u] to file[%u]\n", a2, a3);
    }

    if (pread(*a1, *(a1 + 80), 0x1000uLL, a2 << 12) != 4096)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 93, 21, 0, "reading page");
      return 0xFFFFFFFFLL;
    }

    if (pwrite(*a1, *(a1 + 80), 0x1000uLL, a3 << 12) != 4096)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 94, 21, 0, "writing page");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 136) = vaddq_s64(*(a1 + 136), vdupq_n_s64(0x1000uLL));
  }

  else if (v10 > a2 || v10 <= a3)
  {
    if (v10 <= a2 || v10 > a3)
    {
      if (*(a1 + 128) >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from cache[%u] to cache[%u]\n", a2, a3);
      }

      v19 = cacheData(a1, a3);
      v20 = cacheData(a1, a2);
      memcpy(v19, v20, 0x1000uLL);
    }

    else
    {
      v16 = *(*(a1 + 56) + 4 * a2);
      if (v16 != -1)
      {
        *(*(a1 + 112) + 4 * v16) = a2;
      }

      *(*(a1 + 120) + 4 * a2) = v16;
      if (*(a1 + 128) >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from file[%u] to cache[%u]\n", a2, a3);
      }

      v17 = *a1;
      v18 = cacheData(a1, a3);
      if (pread(v17, v18, 0x1000uLL, a2 << 12) != 4096)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 121, 21, 0, "reading page");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 136) += 4096;
    }
  }

  else
  {
    v12 = *(*(a1 + 56) + 4 * a2);
    if (v12 != -1)
    {
      *(*(a1 + 112) + 4 * v12) = a3;
    }

    *(*(a1 + 120) + 4 * a3) = v12;
    if (*(a1 + 128) >= 3)
    {
      fprintf(*MEMORY[0x29EDCA610], "PagedFile: moving page from cache[%u] to file[%u]\n", a2, a3);
    }

    v13 = *a1;
    v14 = cacheData(a1, a2);
    if (pwrite(v13, v14, 0x1000uLL, a3 << 12) != 4096)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "movePage", 108, 21, 0, "writing page");
      return 0xFFFFFFFFLL;
    }

    *(a1 + 144) += 4096;
  }

  v21 = *(a1 + 40);
  *(v21 + 8 * a3) = *(v21 + 8 * a2);
  *(v21 + 8 * a2) = 0;
  v22 = *(a1 + 56);
  v23 = *(v22 + 4 * a2);
  *(v22 + 4 * a3) = v23;
  *(v22 + 4 * a2) = -1;
  if (v23 != -1)
  {
    *(*(a1 + 48) + 4 * v23) = a3;
  }

  v24 = *(a1 + 72);
  v25 = *(v24 + 4 * a2);
  *(v24 + 4 * a3) = v25;
  *(v24 + 4 * a2) = -1;
  result = 0;
  if (v25 != -1)
  {
    *(*(a1 + 64) + 4 * v25) = a3;
  }

  return result;
}

uint64_t cacheData(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 24);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v5 && *(a1 + 32) > a2)
  {
    return *(a1 + 88) + (v6 << 12);
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/PagedFile.c", "cacheData", 66, 21, 0, "invalid cache pos", v2, v3);
  return 0;
}

unsigned __int16 *enterThreadErrorContext()
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v2 = calloc(1uLL, 0x2000uLL);
    if (v2)
    {
      v2[2] = 1;
      *(v2 + 18) = 531890176;

      return setThreadErrorContext(v2);
    }

    else
    {
      v3 = *__error();

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v3, "malloc");
    }
  }

  return result;
}

unsigned __int16 *setThreadErrorContext(const void *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_setspecific(ErrorContextKey, a1);
  if (result)
  {
    v4 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v4, "pthread_setspecific");
  }

  return result;
}

uint64_t leaveThreadErrorContext(__CFError **a1, const __CFString **a2, int a3)
{
  userInfoValues[1] = *MEMORY[0x29EDCA608];
  ErrorContextKey = getErrorContextKey();
  v7 = pthread_getspecific(ErrorContextKey);
  if (v7)
  {
    v8 = v7;
    v9 = v7[2] - 1;
    v7[2] = v9;
    if (!v9)
    {
      v11 = v7[36];
      v10 = *v7;
      if (!v7[36] && (v10 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v27 = 0;
        do
        {
          v28 = strlen(userInfoKeys);
          if (v28 + 20 > 0x3FF)
          {
            break;
          }

          if (v28)
          {
            snprintf(userInfoKeys + v28, 1024 - v28, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v27;
        }

        while (v27 < v8[3]);
        v29 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], userInfoKeys, 0x600u);
        if (!v29)
        {
          goto LABEL_46;
        }

        v30 = v29;
        if (a2)
        {
          *a2 = v29;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v29);
        v38 = calloc(1uLL, Length + 1);
        if (v38)
        {
          v39 = v38;
          CFStringGetCString(v30, v38, Length + 1, 0x600u);
          fprintf(*MEMORY[0x29EDCA610], "%s\n", v39);
          free(v39);
        }

        v36 = v30;
LABEL_45:
        CFRelease(v36);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v12 = calloc(v11 + 32, 1uLL);
      if (!v12)
      {
        goto LABEL_46;
      }

      v13 = v12;
      v14 = v12;
      if ((v10 & 0x80000000) != 0)
      {
        snprintf(v12, v11 + 32, "Error 0x%08x\n", v10);
        v14 = &v13[strlen(v13)];
      }

      v15 = v8[36];
      if (v8[36])
      {
        v16 = 0;
        do
        {
          v17 = (v8 + v16 + 76);
          v18 = *v17;
          v19 = v18 + v16;
          if (v18 < 4 || v19 > v15)
          {
            break;
          }

          v21 = v18 - 3;
          memcpy(v14, v17 + 1, v21);
          v22 = &v14[v21];
          *v22 = 10;
          v14 = v22 + 1;
          v16 = v19;
          v15 = v8[36];
        }

        while (v15 > v19);
      }

      if (v14 > v13)
      {
        *(v14 - 1) = 0;
      }

      v23 = *MEMORY[0x29EDB8ED8];
      v24 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v13, 0x600u);
      if (!v24)
      {
        free(v13);
        goto LABEL_46;
      }

      v25 = v24;
      userInfoKeys[0] = *MEMORY[0x29EDB8F58];
      userInfoValues[0] = v24;
      v26 = CFErrorCreateWithUserInfoKeysAndValues(v23, @"com.apple.ParallelCompression", 1, userInfoKeys, userInfoValues, 1);
      CFRelease(v25);
      free(v13);
      if (v26)
      {
        if (!a1)
        {
          v31 = CFErrorCopyDescription(v26);
          if (v31)
          {
            v32 = v31;
            v33 = CFStringGetLength(v31);
            v34 = calloc(1uLL, v33 + 1);
            if (v34)
            {
              v35 = v34;
              CFStringGetCString(v32, v34, v33 + 1, 0x600u);
              fprintf(*MEMORY[0x29EDCA610], "%s\n", v35);
              free(v35);
            }

            CFRelease(v32);
          }

          v36 = v26;
          goto LABEL_45;
        }

        *a1 = v26;
      }

LABEL_46:
      setThreadErrorContext(0);
      free(v8);
      return v10;
    }
  }

  return 0;
}

unsigned __int16 *appendThreadErrorContextString(unsigned __int16 *result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      ErrorContextKey = getErrorContextKey();
      result = pthread_getspecific(ErrorContextKey);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = result[36];
        if (v6 + (v2 + 3) <= result[37])
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *updateThreadErrorContextErrorCode(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *updateThreadErrorContextWarningCode(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    ErrorContextKey = getErrorContextKey();
    result = pthread_getspecific(ErrorContextKey);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *saveThreadErrorContext(void *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *restoreThreadErrorContext(__int128 *a1)
{
  ErrorContextKey = getErrorContextKey();
  result = pthread_getspecific(ErrorContextKey);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t createThread(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v15, "malloc");
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v16 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v16, "malloc");
    v17 = __error();
    v13 = -*v17;
    if (!*v17)
    {
      return v13;
    }

    goto LABEL_9;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 558, 5, v14, "pthread_attr_init");
  }

  else if (a4 && (v20 = pthread_attr_setstacksize(v11, a4), v20))
  {
    v13 = v20;
    v21 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 564, 5, v21, "pthread_attr_setstacksize");
  }

  else
  {
    v22 = pthread_self();
    qos_class_np = pthread_get_qos_class_np(v22, &__relative_priority[1], __relative_priority);
    if (qos_class_np)
    {
      v13 = qos_class_np;
      v24 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 570, 5, v24, "pthread_get_qos_class_np");
    }

    else
    {
      v25 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
      if (v25)
      {
        v13 = v25;
        v26 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 572, 5, v26, "pthread_attr_set_qos_class_np");
      }

      else
      {
        v30[0] = MEMORY[0x29EDCA5F8];
        v30[1] = 0x40000000;
        v30[2] = __createThread_block_invoke;
        v30[3] = &__block_descriptor_tmp;
        v30[4] = v9;
        v27 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v30);
        v9[2] = v27;
        if (v27)
        {
          *v9 = a2;
          v9[1] = a3;
          *(v9 + 7) = 1;
          *(v9 + 24) = 530317312;
          v13 = pthread_create(a1, v11, threadWrapperProc, v9);
          if (v13)
          {
            v28 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 591, 5, v28, "pthread_create");
          }
        }

        else
        {
          v29 = __error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v29, "dispatch_block_create");
          v13 = -*__error();
        }
      }
    }
  }

  pthread_attr_destroy(v11);
  free(v11);
  if (v13)
  {
LABEL_9:
    v18 = v9[2];
    if (v18)
    {
      _Block_release(v18);
    }

    free(v9);
  }

  return v13;
}

uint64_t threadWrapperProc(uint64_t a1)
{
  setThreadErrorContext((a1 + 24));
  (*(*(a1 + 16) + 16))();
  setThreadErrorContext(0);
  return a1;
}

uint64_t joinThread(_opaque_pthread_t *a1)
{
  v20 = 0;
  if (pthread_join(a1, &v20))
  {
    joinThread_cold_1();
  }

  v1 = v20;
  if (*(v20 + 14) != 1)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread");
    v11 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  ErrorContextKey = getErrorContextKey();
  v3 = pthread_getspecific(ErrorContextKey);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v3;
  v5 = *v3;
  if ((*v3 & 0x80000000) == 0)
  {
    v6 = v1[6];
    if (v6 < 0)
    {
      *v3 = v6;
      v5 = v6;
    }
  }

  v7 = *(v1 + 48);
  if (!*(v1 + 48))
  {
LABEL_14:
    if (v5)
    {
      v11 = 0;
      *(v4 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v1 + 15))
    {
      v13 = 0;
      v14 = *(v4 + 3);
      LODWORD(v15) = 16 - v14;
      if (v14 <= 0x10)
      {
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      v16 = &v4[v14 + 2];
      v17 = v14 + 1;
      while (v15 != v13)
      {
        v11 = 0;
        *(v16 + 4 * v13) = v1[v13 + 8];
        *(v4 + 3) = v17 + v13++;
        if (v13 >= *(v1 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = (v1 + v9 + 100);
    v11 = *v10;
    if (!*v10)
    {
      break;
    }

    v8 += v11;
    if (v8 > v7)
    {
      goto LABEL_25;
    }

    v12 = *(v4 + 36);
    if (v12 + v11 <= *(v4 + 37))
    {
      memcpy(v4 + v12 + 76, v10, *v10);
      *(v4 + 36) += v11;
      v9 = v8;
      v7 = *(v1 + 48);
      if (v7 > v8)
      {
        continue;
      }
    }

    v5 = *v4;
    goto LABEL_14;
  }

LABEL_26:
  v18 = *(v1 + 2);
  if (v18)
  {
    _Block_release(v18);
  }

  free(v1);
  return v11;
}

unsigned __int16 *ParallelCompressionUpdateError(_WORD *a1, unsigned __int16 *a2)
{
  updateThreadErrorContextErrorCode(a1);

  return appendThreadErrorContextString(a2);
}

uint64_t getErrorContextKey()
{
  if (pthread_once(&getErrorContextKey_errorContextOnce, createErrorContextKey))
  {
    v0 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return gErrorContextKey;
}

uint64_t createErrorContextKey()
{
  result = pthread_key_create(&gErrorContextKey, 0);
  if (result)
  {
    v1 = *__error();

    return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

size_t PCompressLZMA6Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZMADecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressZLIB5Encode(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t PCompressZLIBDecode(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t load_variants(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = (a2 + 16);
  v7 = MEMORY[0x29EDCA610];
  while (1)
  {
    v8 = v6;
    if (v4)
    {
      v8 = (*(a2 + 8) + 8 * v4 - 8);
    }

    v9 = rawimg_create_with_path(*v8);
    *(a1 + 8 * v4) = v9;
    if (!v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "load_variants", 37, 134, 0, "rawimg_create_with_file");
      return 0;
    }

    if ((rawimg_get_digests(v9, *(a2 + 36), 0, 0) & 0x80000000) != 0)
    {
      break;
    }

    v10 = *(a1 + 8 * v4);
    if (v4 < 2)
    {
LABEL_19:
      *(a1 + 8 * v5++) = v10;
    }

    else
    {
      v11 = 1;
      while (1)
      {
        v12 = *(a1 + 8 * v11);
        v13 = v12[261];
        v14 = v12[262];
        v15 = v12[263];
        v16 = v12[264];
        v17 = v10[261] == v13 && v10[262] == v14;
        v18 = v17 && v10[263] == v15;
        if (v18 && v10[264] == v16)
        {
          break;
        }

        if (v4 == ++v11)
        {
          goto LABEL_19;
        }
      }

      rawimg_destroy(v10);
      if (*(a2 + 40))
      {
        fprintf(*v7, "ImageDiff: Removed non-unique input variant <%s>.\n", *(*(a1 + 8 * v4) + 2048));
      }
    }

    if (++v4 > *a2)
    {
      return v5;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "load_variants", 38, 134, 0, "rawimg_get_digests");
  return 0;
}

unint64_t patch_write_controls(AAByteStream_impl *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = AAByteStreamSeek(a1, 0, 1);
  *(a3 + 38) = v8;
  if (v8 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 331, 134, 0, "AAByteStreamSeek");
    v16 = 0;
    v12 = 0;
  }

  else
  {
    v9 = *(a4 + 40);
    if (v9 <= 3)
    {
      v10 = v9 << 62;
    }

    else
    {
      v10 = 0xC000000000000000;
    }

    v11 = AACompressionOutputStreamOpen(a1, 0x306u, 0x100000uLL, v10, *(a4 + 36));
    v12 = v11;
    if (v11)
    {
      v13 = a2[2];
      if (v13 < 2)
      {
        v17 = a2[3];
        v14 = (v17 + 56);
        v15 = (v17 + 40);
      }

      else
      {
        v14 = a2 + 11;
        v15 = a2 + 9;
      }

      v18 = *v14;
      *(a3 + 18) = v18;
      v16 = *v15;
      if (*(v11 + 3))
      {
        v19 = 8 * v13 + 16;
        v20 = v19 * v18;
        if (!(v19 * v18))
        {
          goto LABEL_19;
        }

        v21 = 0;
        v22 = *v15;
        v23 = v19 * v18;
        while (1)
        {
          v24 = (*(v12 + 3))(*v12, v22, v23);
          if (v24 < 1)
          {
            break;
          }

          v22 += v24;
          v21 += v24;
          v23 -= v24;
          if (!v23)
          {
            goto LABEL_18;
          }
        }

        v21 = v24;
LABEL_18:
        if (v20 == v21)
        {
LABEL_19:
          v25 = 0;
          goto LABEL_22;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 350, 134, 0, "aaByteStreamWriteExpected");
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 335, 134, 0, "AACompressionOutputStreamOpen");
      v16 = 0;
    }
  }

  v25 = 1;
LABEL_22:
  if (AAByteStreamClose(v12) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_controls", 353, 134, 0, "AAByteStreamClose");
  }

  else if (!v25)
  {
    return v16;
  }

  return 0;
}

uint64_t RawImageDiff(uint64_t a1)
{
  v201 = *MEMORY[0x29EDCA608];
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v194 = 0u;
  if (!*(a1 + 36))
  {
    *(a1 + 36) = getDefaultNThreads();
  }

  if (*(a1 + 40))
  {
    v2 = MEMORY[0x29EDCA610];
    fwrite("ImageDiff\n", 0xAuLL, 1uLL, *MEMORY[0x29EDCA610]);
    v3 = *a1;
    if (*a1)
    {
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 8) + 8 * v4);
        if (v5)
        {
          fprintf(*v2, "  Input %zu: %s\n", v4, v5);
          v3 = *a1;
        }

        ++v4;
      }

      while (v4 < v3);
    }

    if (*(a1 + 16))
    {
      fprintf(*v2, "  Output: %s\n", *(a1 + 16));
    }

    if (*(a1 + 24))
    {
      fprintf(*v2, "  Patch: %s\n", *(a1 + 24));
    }

    if (*(a1 + 32))
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    fprintf(*v2, "  In-place: %s\n", v6);
  }

  v7 = *a1 + 1;
  if (v7 > 0x400000000)
  {
    *__error() = 12;
LABEL_105:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 592, 134, 0, "aaCalloc");
    v72 = 0xFFFFFFFFLL;
    goto LABEL_127;
  }

  v8 = calloc(v7, 8uLL);
  if (!v8)
  {
    goto LABEL_105;
  }

  v9 = v8;
  variants = load_variants(v8, a1);
  if (!variants)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 596, 134, 0, "load_variants");
    goto LABEL_123;
  }

  *a1 = variants - 1;
  if ((rawimg_set_fork_types(v9, variants) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 600, 134, 0, "rawimg_set_fork_types");
    goto LABEL_123;
  }

  v11 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v12 = *a1 & 0x7FFFFFFFLL;
    do
    {
      rawimg_show(v9[v12], v12 == 0, *(a1 + 40));
      --v12;
    }

    while (v12 != -1);
    v11 = *a1;
  }

  v13 = *v9;
  v192 = (*(*v9 + 2120) / 0x64uLL + 0x2000000);
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  *(&v194 + 4) = vrev64_s32(*(a1 + 36));
  *&v195 = v11;
  if (v11 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  if (!is_mul_ok(v14, 0x50uLL) || 80 * v14 >= 0x2000000001)
  {
    *__error() = 12;
    *(&v195 + 1) = 0;
    goto LABEL_109;
  }

  v15 = calloc(v14, 0x50uLL);
  *(&v195 + 1) = v15;
  if (!v15)
  {
LABEL_109:
    v73 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 205, 134, v73, "aaCalloc");
LABEL_110:
    v28 = 0;
    v27 = 0;
    v25 = 0;
    goto LABEL_111;
  }

  v16 = v15;
  if (v11)
  {
    v17 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = vdupq_n_s64(v11 - 1);
    v19 = xmmword_2980690D0;
    v20 = xmmword_2980690E0;
    v21 = v15 + 196;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v18, v20));
      if (vuzp1_s16(v23, *v18.i8).u8[0])
      {
        *(v21 - 40) = 1;
      }

      if (vuzp1_s16(v23, *&v18).i8[2])
      {
        *(v21 - 20) = 1;
      }

      if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, *&v19))).i32[1])
      {
        *v21 = 1;
        v21[20] = 1;
      }

      v19 = vaddq_s64(v19, v22);
      v20 = vaddq_s64(v20, v22);
      v21 += 80;
      v17 -= 4;
    }

    while (v17);
  }

  if (!*a1)
  {
    v150 = calloc(1uLL, 0x18uLL);
    *(v16 + 5) = v150;
    if (v150)
    {
      v28 = 0;
      v27 = 0;
      v25 = 0;
      v38 = 0;
      v36 = 0;
      v34 = 0;
      v151 = *(v13 + 2080);
      if (v151 < 0)
      {
        v151 = 0x8000000000000000 - v151;
      }

      v150[1] = v151;
      v74 = 1;
      *(v16 + 7) = 1;
      goto LABEL_113;
    }

    v152 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 213, 134, v152, "aaCalloc");
    goto LABEL_110;
  }

  v24 = AAFileStreamOpenWithPath(*(v13 + 2048), 0, 0);
  v25 = v24;
  if (!v24)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 223, 134, 0, "AAFileStreamOpenWithPath");
    v28 = 0;
    v27 = 0;
    goto LABEL_111;
  }

  v26 = aaSegmentStreamOpen(v24, v13);
  v27 = v26;
  if (!v26)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 225, 134, 0, "aaSegmentStreamOpen");
    v28 = 0;
    goto LABEL_111;
  }

  v28 = aaForkInputStreamOpen(v26, v13, 0);
  if (!v28)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 227, 134, 0, "aaForkInputStreamOpen");
    goto LABEL_111;
  }

  v29 = 0;
  while (1)
  {
    if (v29 >= v195)
    {
      if (v195 < 2)
      {
LABEL_349:
        v38 = 0;
        v36 = 0;
        v34 = 0;
        v74 = 1;
        goto LABEL_113;
      }

      if (bxdiff5CreateComboControls(&v194))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 270, 134, 0, "bxdiff5CreateComboControls");
        goto LABEL_111;
      }

      if ((controls_combo_enforce_copy_fork_boundary(*v9, &v194) & 0x80000000) == 0)
      {
        if (*(a1 + 40))
        {
          fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Constructed %zd combo controls.\n", *(&v199 + 1));
        }

        goto LABEL_349;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 272, 134, 0, "controls_combo_enforce_copy_fork_boundary");
LABEL_111:
      v38 = 0;
      v36 = 0;
      v34 = 0;
      goto LABEL_112;
    }

    v30 = v27;
    v190 = v29;
    v31 = (v29 + 1);
    v32 = v9[v29 + 1];
    v33 = AAFileStreamOpenWithPath(*(v32 + 2048), 0, 0);
    v34 = v33;
    if (!v33)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 236, 134, 0, "AAFileStreamOpenWithPath");
      v38 = 0;
      v36 = 0;
LABEL_323:
      v74 = 0;
      v27 = v30;
      goto LABEL_113;
    }

    v35 = aaSegmentStreamOpen(v33, v32);
    v36 = v35;
    if (!v35)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 238, 134, 0, "aaSegmentStreamOpen");
      v38 = 0;
      goto LABEL_323;
    }

    v186 = v31;
    v37 = aaForkInputStreamOpen(v35, v32, 0);
    v38 = v37;
    if (!v37)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 240, 134, 0, "aaForkInputStreamOpen");
      goto LABEL_323;
    }

    v188 = v32;
    if ((GetLargeFileControlsWithStreams(v37, *(v32 + 2072), v28, *(v13 + 2072), (*(&v195 + 1) + 80 * v190 + 40), (*(&v195 + 1) + 80 * v190 + 56), &v194) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 246, 134, 0, "GetLargeFileControlsWithStreams");
      goto LABEL_323;
    }

    v39 = *(v13 + 2160);
    v27 = v30;
    if (v39)
    {
      v40 = *(&v195 + 1) + 80 * v190;
      v41 = *(v40 + 56);
      if (!v41)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 124, 134, 0, "empty controls");
        goto LABEL_302;
      }

      if ((*(v13 + 2128) & 0x10) == 0 || (v188[2128] & 0x10) == 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 126, 134, 0, "no digests found");
LABEL_302:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 250, 134, 0, "controls_append_copy_forks");
        goto LABEL_112;
      }

      v42 = 24 * (v41 + v39);
      if (v42 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_336:
        *(v40 + 40) = 0;
        v159 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 130, 134, v159, "aaReallocf");
        goto LABEL_302;
      }

      v184 = v28;
      v43 = v25;
      v182 = *(a1 + 40);
      v44 = *(v40 + 40);
      v45 = realloc(v44, v42);
      if (!v45)
      {
        free(v44);
        v25 = v43;
        v28 = v184;
        goto LABEL_336;
      }

      *(v40 + 40) = v45;
      v46 = *(v40 + 56);
      if (v46)
      {
        v47 = 0;
        v48 = (v45 + 16);
        v49 = *(v40 + 56);
        v25 = v43;
        do
        {
          v50 = *(v48 - 2);
          if (v50 < 0)
          {
            v50 = 0x8000000000000000 - v50;
          }

          v52 = *v48;
          v48 += 3;
          v51 = v52;
          v53 = 0x8000000000000000 - v52;
          if (v52 < 0)
          {
            v51 = v53;
          }

          v47 += v50 + v51;
          --v49;
        }

        while (v49);
      }

      else
      {
        v47 = 0;
        v25 = v43;
      }

      v54 = *(v13 + 2160);
      v28 = v184;
      if (v54)
      {
        v55 = 0;
        v56 = *(v13 + 2144);
        do
        {
          v57 = v56 + 129 * v55;
          if ((*(v57 + 104) & 2) != 0)
          {
            v58 = *(v188 + 270);
            if (!v58)
            {
              goto LABEL_301;
            }

            v59 = *(v188 + 268);
            while (1)
            {
              if ((*(v59 + 104) & 2) != 0 && *(v59 + 88) == *(v57 + 88) && *(v59 + 96) == *(v57 + 96))
              {
                v60 = *(v59 + 32);
                if (v60 == *(v57 + 32))
                {
                  v61 = *v59 == *v57 && *(v59 + 8) == *(v57 + 8);
                  v62 = v61 && *(v59 + 16) == *(v57 + 16);
                  if (v62 && *(v59 + 24) == *(v57 + 24))
                  {
                    break;
                  }
                }
              }

              v59 += 129;
              if (!--v58)
              {
                goto LABEL_301;
              }
            }

            v64 = *(v59 + 48);
            if (v64 < 0)
            {
LABEL_301:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_append_copy_forks", 161, 134, 0, "copy fork not found");
              goto LABEL_302;
            }

            v65 = &v45[24 * v46];
            v66 = 0x8000000000000000 - v60;
            if (v60 >= 0)
            {
              v66 = v60;
            }

            v67 = *(v65 - 1);
            if (v67 < 0)
            {
              v67 = 0x8000000000000000 - v67;
            }

            *(v40 + 56) = ++v46;
            v65[1] = 0;
            v65[2] = 0;
            v68 = v64 - v47;
            v69 = __OFADD__(v67, v68);
            v70 = v67 + v68;
            if (v70 < 0 != v69)
            {
              v70 = 0x8000000000000000 - v70;
            }

            *(v65 - 1) = v70;
            *v65 = v66;
            v47 = v64 + v60;
            v54 = *(v13 + 2160);
          }

          ++v55;
        }

        while (v55 < v54);
      }

      if (v182 >= 2)
      {
        fprintf(*MEMORY[0x29EDCA610], "ImageDiff: Processed copy forks: %zd controls\n", v46);
      }
    }

    if ((*(a1 + 32) & 1) != 0 && (rawimg_force_in_place((*(&v195 + 1) + 80 * v190 + 40), (*(&v195 + 1) + 80 * v190 + 56), v188, v13, v192, *(a1 + 40)) & 0x80000000) != 0)
    {
      break;
    }

    if (AAByteStreamClose(v38) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 262, 134, 0, "AAByteStreamClose");
      goto LABEL_112;
    }

    if (AAByteStreamClose(v36) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 263, 134, 0, "AAByteStreamClose");
      v38 = 0;
      goto LABEL_112;
    }

    v71 = AAByteStreamClose(v34);
    v29 = v186;
    if (v71 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 264, 134, 0, "AAByteStreamClose");
      v38 = 0;
      v36 = 0;
      goto LABEL_112;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 258, 134, 0, "rawimg_force_in_place");
LABEL_112:
  v74 = 0;
LABEL_113:
  if (AAByteStreamClose(v28) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 280, 134, 0, "AAByteStreamClose");
    v74 = 0;
  }

  if (AAByteStreamClose(v27) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 281, 134, 0, "AAByteStreamClose");
    if ((AAByteStreamClose(v25) & 0x80000000) == 0)
    {
      goto LABEL_122;
    }

LABEL_121:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_create_with_variants", 282, 134, 0, "AAByteStreamClose");
    goto LABEL_122;
  }

  if (AAByteStreamClose(v25) < 0)
  {
    goto LABEL_121;
  }

  if (!v74)
  {
LABEL_122:
    AAByteStreamClose(v38);
    AAByteStreamClose(v36);
    AAByteStreamClose(v34);
    BXDiff5Data_free(&v194);
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 612, 134, 0, "controls_create_with_variants");
    goto LABEL_123;
  }

  v75 = 8 * *a1 + 62;
  if (v75 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_291;
  }

  v78 = *(a1 + 32);
  v79 = calloc(1uLL, 8 * *a1 + 62);
  if (!v79)
  {
LABEL_291:
    v149 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 515, 134, *v149, "aaCalloc");
    v80 = 0;
    v83 = 0;
LABEL_309:
    v153 = 1;
    goto LABEL_310;
  }

  v80 = v79;
  *v79 = 0x3031464649444952;
  *(v79 + 4) = *a1 + 1;
  *(v79 + 10) = v78 & 1;
  if (v78)
  {
    v81 = v192;
  }

  else
  {
    v81 = 0;
  }

  *(v79 + 26) = v81;
  *(v79 + 30) = v75;
  v82 = AAFileStreamOpenWithPath(*(a1 + 24), 1537, 0x1A4u);
  v83 = v82;
  if (!v82)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 526, 134, 0, "AAFileStreamOpenWithPath");
    goto LABEL_309;
  }

  if (AAByteStreamSeek(v82, v75, 0) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 527, 134, 0, "AAByteStreamSeek");
    goto LABEL_309;
  }

  v84 = *(a1 + 40);
  if (v84 <= 3)
  {
    v85 = v84 << 62;
  }

  else
  {
    v85 = 0xC000000000000000;
  }

  v86 = AACompressionOutputStreamOpen(v83, 0x306u, 0x100000uLL, v85, *(a1 + 36));
  if (!v86)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 305, 134, 0, "AACompressionOutputStreamOpen");
    goto LABEL_306;
  }

  v87 = 0;
  do
  {
    if ((rawimg_save_to_stream(v86, v9[v87], v87 == 0) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 311, 134, 0, "rawimg_save_to_stream");
LABEL_306:
      if ((AAByteStreamClose(v86) & 0x80000000) == 0)
      {
LABEL_308:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 530, 134, 0, "patch_write_metadata");
        goto LABEL_309;
      }

LABEL_307:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_metadata", 315, 134, 0, "AAByteStreamClose");
      goto LABEL_308;
    }

    ++v87;
  }

  while (v87 <= *a1);
  if (AAByteStreamClose(v86) < 0)
  {
    goto LABEL_307;
  }

  v88 = patch_write_controls(v83, &v194, v80, a1);
  if (!v88)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 534, 134, 0, "patch_write_controls");
    goto LABEL_309;
  }

  v89 = 0;
  v90 = v80 + 46;
  v170 = v88;
  do
  {
    v91 = v9[v89];
    v178 = *v9;
    v92 = AAByteStreamSeek(v83, 0, 1);
    v177 = (v90 + 8 * v89);
    *v177 = v92;
    if (v92 < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 383, 134, 0, "AAByteStreamSeek");
LABEL_157:
      v187 = 0;
      v189 = 0;
      v191 = 0;
      v193 = 0;
      v180 = 0;
      v181 = 0;
      v183 = 0;
      v185 = 0;
      v98 = 0;
      v99 = 0;
      goto LABEL_250;
    }

    v93 = *(a1 + 40);
    if (v93 <= 3)
    {
      v94 = v93 << 62;
    }

    else
    {
      v94 = 0xC000000000000000;
    }

    s = AACompressionOutputStreamOpen(v83, 0x306u, 0x100000uLL, v94, *(a1 + 36));
    if (!s)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 387, 134, 0, "AACompressionOutputStreamOpen");
      goto LABEL_157;
    }

    if (v89)
    {
      v95 = AAFileStreamOpenWithPath(*(v91 + 2048), 0, 0);
      if (v95)
      {
        v185 = v95;
        v96 = aaSegmentStreamOpen(v95, v91);
        if (v96)
        {
          v183 = v96;
          v191 = aaForkInputStreamOpen(v96, v91, 0);
          if (!v191)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 398, 134, 0, "aaForkInputStreamOpen");
            v187 = 0;
            v189 = 0;
            v191 = 0;
            v193 = 0;
            goto LABEL_247;
          }

          v187 = malloc(0x10000uLL);
          if (!v187)
          {
            v97 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 400, 134, *v97, "aaMalloc");
            v187 = 0;
            v189 = 0;
LABEL_243:
            v193 = 0;
LABEL_247:
            v180 = 0;
            v181 = 0;
            goto LABEL_248;
          }

          goto LABEL_159;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 396, 134, 0, "aaSegmentStreamOpen");
        v187 = 0;
        v189 = 0;
        v191 = 0;
        v193 = 0;
        v180 = 0;
        v181 = 0;
        v183 = 0;
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 394, 134, 0, "AAFileStreamOpenWithPath");
        v187 = 0;
        v189 = 0;
        v191 = 0;
        v193 = 0;
        v180 = 0;
        v181 = 0;
        v183 = 0;
        v185 = 0;
      }

LABEL_248:
      v99 = 0;
      goto LABEL_249;
    }

    v185 = 0;
    v187 = 0;
    v191 = 0;
    v183 = 0;
LABEL_159:
    v100 = v178;
    v101 = AAFileStreamOpenWithPath(*(v178 + 2048), 0, 0);
    if (!v101)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 405, 134, 0, "AAFileStreamOpenWithPath");
      v189 = 0;
      goto LABEL_243;
    }

    v181 = v101;
    v102 = aaSegmentStreamOpen(v101, v178);
    if (!v102)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 407, 134, 0, "aaSegmentStreamOpen");
      v189 = 0;
      v193 = 0;
      v180 = 0;
      goto LABEL_248;
    }

    v180 = v102;
    v193 = aaForkInputStreamOpen(v102, v178, 0);
    if (!v193)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 409, 134, 0, "aaForkInputStreamOpen");
      v189 = 0;
      v193 = 0;
      goto LABEL_248;
    }

    v103 = malloc(0x10000uLL);
    if (!v103)
    {
      v144 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 411, 134, *v144, "aaMalloc");
      v189 = 0;
      goto LABEL_248;
    }

    v189 = v103;
    v104 = v170;
    if (!*(v80 + 18))
    {
      v107 = 0;
      v106 = 0;
LABEL_270:
      if (v106 != *(v100 + 2080))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 472, 134, 0, "bad controls");
        goto LABEL_279;
      }

      v145 = v107;
      if (AAByteStreamClose(s) < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 475, 134, 0, "AAByteStreamClose");
        v99 = 0;
      }

      else
      {
        v99 = 1;
      }

      v147 = AAByteStreamSeek(v83, 0, 1);
      v177[1] = v147;
      if (v147 < 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 480, 134, 0, "AAByteStreamSeek");
        v98 = 0;
        v99 = 0;
LABEL_289:
        v90 = v80 + 46;
      }

      else
      {
        if (*(a1 + 40) >= 2)
        {
          v148 = "Diff";
          if (!v89)
          {
            v148 = "Literal";
          }

          fprintf(*MEMORY[0x29EDCA610], "%s stream: %llu bytes -> %llu bytes\n", v148, v145, v147 - *v177);
        }

        v98 = 0;
        v90 = v80 + 46;
      }

      goto LABEL_250;
    }

    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    while (1)
    {
      v166 = v108;
      v165 = (v104 + 8 * (v108 + v108 * *(v80 + 8)));
      v109 = v165[1];
      v110 = 0x8000000000000000 - *v165;
      if ((*v165 & 0x8000000000000000) == 0)
      {
        v110 = *v165;
      }

      v111 = 0x8000000000000000 - v109;
      if (v109 >= 0)
      {
        v111 = v165[1];
      }

      if (!v89)
      {
        break;
      }

      v163 = v111;
      v112 = *(v100 + 2072);
      if (v106 < v112 && v110 + v106 > v112)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 427, 134, 0, "bad controls");
        goto LABEL_248;
      }

      v113 = v106 >= v112;
      if (v106 >= v112)
      {
        v114 = v110 + v106;
      }

      else
      {
        v114 = v106;
      }

      if (v106 >= v112)
      {
        v115 = v110;
      }

      else
      {
        v115 = 0;
      }

      v171 = v114;
      v173 = v115 + v105;
      v161 = v107;
      if (!v113 && v110)
      {
        v116 = v110;
        v167 = v110;
        while (1)
        {
          v168 = v116;
          if (v116 >= 0x10000)
          {
            v117 = 0x10000;
          }

          else
          {
            v117 = v116;
          }

          if (!*(v191 + 4))
          {
            goto LABEL_275;
          }

          v118 = 0;
          v119 = v187;
          v120 = v173;
          v175 = v117;
          while (1)
          {
            v121 = (*(v191 + 4))(*v191, v119, v117, v120);
            if (v121 < 0)
            {
              break;
            }

            if (v121)
            {
              v119 += v121;
              v118 += v121;
              v120 += v121;
              v117 -= v121;
              if (v117)
              {
                continue;
              }
            }

            goto LABEL_191;
          }

          v118 = v121;
LABEL_191:
          v122 = v175;
          if (v175 != v118)
          {
LABEL_275:
            v146 = 442;
            goto LABEL_278;
          }

          v123 = v189;
          if (!*(v193 + 4))
          {
            goto LABEL_277;
          }

          v124 = 0;
          v125 = v171;
          while (1)
          {
            v126 = (*(v193 + 4))(*v193, v123, v122, v125);
            if (v126 < 0)
            {
              break;
            }

            if (v126)
            {
              v123 += v126;
              v124 += v126;
              v125 += v126;
              v122 -= v126;
              if (v122)
              {
                continue;
              }
            }

            goto LABEL_199;
          }

          v124 = v126;
LABEL_199:
          v127 = v175;
          v128 = v189;
          if (v175 != v124)
          {
LABEL_277:
            v146 = 443;
            goto LABEL_278;
          }

          v129 = 0;
          v130 = v175 <= 1 ? 1 : v175;
          v90 = v80 + 46;
          do
          {
            v189[v129] -= v187[v129];
            ++v129;
          }

          while (v130 != v129);
          if (!*(s + 3))
          {
            break;
          }

          v131 = 0;
          while (1)
          {
            v132 = (*(s + 3))(*s, v128, v127);
            if (v132 < 1)
            {
              break;
            }

            v128 += v132;
            v131 += v132;
            v127 -= v132;
            if (!v127)
            {
              goto LABEL_211;
            }
          }

          v131 = v132;
LABEL_211:
          v103 = v189;
          if (v175 != v131)
          {
            break;
          }

          v173 += v175;
          v171 += v175;
          v116 = v168 - v175;
          v110 = v167;
          if (v168 == v175)
          {
            goto LABEL_213;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 447, 134, 0, "aaByteStreamWriteExpected");
        goto LABEL_248;
      }

LABEL_213:
      v133 = v165[v89 + 1];
      if (v133 < 0)
      {
        v133 = 0x8000000000000000 - v133;
      }

      v105 = v133 + v173;
      v107 = v161;
      v106 = v171 + v163;
      v100 = v178;
LABEL_239:
      v107 += v110;
      v108 = v166 + 1;
      v104 = v170;
      if ((v166 + 1) >= *(v80 + 18))
      {
        goto LABEL_270;
      }
    }

    v106 += v110;
    if (!v111)
    {
      v110 = 0;
      goto LABEL_239;
    }

    v169 = v105;
    v162 = v107;
    v164 = v111;
    v134 = v111;
    while (1)
    {
      v174 = v134;
      v135 = v134 >= 0x10000 ? 0x10000 : v134;
      if (!*(v193 + 4))
      {
        break;
      }

      v136 = 0;
      v137 = v103;
      v172 = v106;
      v138 = v106;
      v176 = v135;
      while (1)
      {
        v139 = (*(v193 + 4))(*v193, v137, v135, v138);
        if (v139 < 0)
        {
          break;
        }

        if (v139)
        {
          v137 += v139;
          v136 += v139;
          v138 += v139;
          v135 -= v139;
          if (v135)
          {
            continue;
          }
        }

        goto LABEL_228;
      }

      v136 = v139;
LABEL_228:
      v140 = v176;
      v141 = v189;
      if (v176 != v136)
      {
        break;
      }

      if (!*(s + 3))
      {
        goto LABEL_276;
      }

      v142 = 0;
      while (1)
      {
        v143 = (*(s + 3))(*s, v141, v140);
        if (v143 < 1)
        {
          break;
        }

        v141 += v143;
        v142 += v143;
        v140 -= v143;
        if (!v140)
        {
          goto LABEL_235;
        }
      }

      v142 = v143;
LABEL_235:
      v103 = v189;
      if (v176 != v142)
      {
LABEL_276:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 467, 134, 0, "aaByteStreamWriteExpected");
        v99 = 0;
        v98 = s;
        goto LABEL_289;
      }

      v106 = v176 + v172;
      v134 = v174 - v176;
      if (v174 == v176)
      {
        v107 = v162;
        v110 = v164;
        v90 = v80 + 46;
        v100 = v178;
        v105 = v169;
        goto LABEL_239;
      }
    }

    v146 = 466;
LABEL_278:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", v146, 134, 0, "aaByteStreamPReadExpected");
LABEL_279:
    v99 = 0;
    v90 = v80 + 46;
LABEL_249:
    v98 = s;
LABEL_250:
    if (AAByteStreamClose(v98) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 489, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v191) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 490, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v183) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 491, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v185) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 492, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v193) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 493, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v180) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 494, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    if (AAByteStreamClose(v181) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write_stream", 495, 134, 0, "AAByteStreamClose");
      v99 = 0;
    }

    free(v187);
    free(v189);
    if (!v99)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 539, 134, 0, "patch_write_stream");
      goto LABEL_309;
    }

    ++v89;
  }

  while (v89 <= *a1);
  if (!*(v83 + 5))
  {
    goto LABEL_345;
  }

  v154 = 0;
  v155 = 0;
  v156 = v80;
  v157 = v75;
  while (1)
  {
    v158 = (*(v83 + 5))(*v83, v156, v157, v155);
    if (v158 < 1)
    {
      break;
    }

    v156 += v158;
    v154 += v158;
    v155 += v158;
    v157 -= v158;
    if (!v157)
    {
      goto LABEL_339;
    }
  }

  v154 = v158;
LABEL_339:
  if (v75 != v154)
  {
LABEL_345:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 543, 134, 0, "aaByteStreamPWriteExpected");
    goto LABEL_309;
  }

  v160 = *(a1 + 40);
  if (v160 > 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "  Metadata: %llu bytes\n  Controls: %llu bytes\n", *(v80 + 38) - *(v80 + 30), *(v80 + 46) - *(v80 + 38));
    v160 = *(a1 + 40);
  }

  if (v160 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "%12llu final patch size\n", *(v80 + 46 + 8 * *(v80 + 8)));
  }

  v153 = 0;
LABEL_310:
  if (AAByteStreamClose(v83) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "patch_write", 562, 134, 0, "AAByteStreamClose");
    free(v80);
  }

  else
  {
    free(v80);
    if (!v153)
    {
      v72 = 0;
      goto LABEL_124;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "RawImageDiff", 615, 134, 0, "patch_write");
LABEL_123:
  v72 = 0xFFFFFFFFLL;
LABEL_124:
  v76 = 0;
  do
  {
    rawimg_destroy(v9[v76++]);
  }

  while (v76 <= *a1);
  free(v9);
LABEL_127:
  BXDiff5Data_free(&v194);
  return v72;
}

double BXDiff5Data_free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 16))
    {
      v3 = 0;
      v4 = 40;
      do
      {
        free(*(*(a1 + 24) + v4));
        ++v3;
        v4 += 80;
      }

      while (v3 < *(a1 + 16));
      v2 = *(a1 + 24);
    }

    free(v2);
  }

  free(*(a1 + 72));
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t controls_combo_enforce_copy_fork_boundary(uint64_t a1, void *a2)
{
  v3 = a2[11];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v24 = a2[2];
    v25 = 8 * (v24 + 2);
    v8 = 8 * v24 + 16;
    v9 = -1;
    while (1)
    {
      v10 = a2[9];
      v11 = *&v10[v5];
      if (v11 >= 0)
      {
        v12 = *&v10[v5];
      }

      else
      {
        v12 = 0x8000000000000000 - v11;
      }

      v13 = *(a1 + 2072);
      v14 = v12 + v6;
      v15 = v13 - v6;
      if (v13 > v6 && v14 > v13)
      {
        v18 = v3 + 1;
        a2[11] = v18;
        if (v25 * v18 >= 0x2000000001)
        {
          *__error() = 12;
          goto LABEL_30;
        }

        v19 = realloc(v10, v25 * v18);
        if (!v19)
        {
          free(v10);
LABEL_30:
          a2[9] = 0;
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_combo_enforce_copy_fork_boundary", 88, 134, 0, "aaReallocf");
          return 0xFFFFFFFFLL;
        }

        a2[9] = v19;
        v20 = &v19[v5];
        memmove(&v19[v5 + v8], &v19[v5], v25 * (v9 + a2[11]));
        v21 = 0x8000000000000000 - v15;
        if (v15 >= 0)
        {
          v21 = v15;
        }

        *v20 = v21;
        if (v24 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          bzero(v20 + 1, 8 * v24 + 8);
        }

        v22 = v12 - v15;
        if ((v12 - v15) < 0)
        {
          v22 = 0x8000000000000000 - (v12 - v15);
        }

        *(v20 + v8) = v22;
        v3 = a2[11];
        v6 = v13;
      }

      else
      {
        v17 = *&v10[v5 + 8];
        if (v17 < 0)
        {
          v17 = 0x8000000000000000 - v17;
        }

        v6 = v14 + v17;
      }

      ++v7;
      v5 += v8;
      --v9;
      if (v7 >= v3)
      {
        goto LABEL_25;
      }
    }
  }

  v6 = 0;
LABEL_25:
  if (v6 != *(a1 + 2080))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiff.c", "controls_combo_enforce_copy_fork_boundary", 108, 134, 0, "SIZE MISMATCH");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

char *SharedBufferCreate(unint64_t a1)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v2 = getpagesize();
    if (v2 <= 0x197)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size");
      return 0;
    }

    v5 = v2;
    if (a1 >> 2 < v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a1 >> 2) / v2;
    }

    v7 = v6 * v2;
    v8 = valloc(v2 + 4 * v7);
    v3 = v8;
    if (!v8)
    {
      v10 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v10, "malloc");
      return v3;
    }

    *(v8 + 50) = 0;
    *(v8 + 23) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    *(v8 + 48) = -1;
    atomic_store(2u, v8 + 101);
    *v8 = 0x600000000;
    v9 = calloc(6uLL, 4uLL);
    *(v3 + 1) = v9;
    if (v9)
    {
      if (pthread_mutex_init((v3 + 4), 0))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
      }

      else
      {
        if (!pthread_cond_init((v3 + 20), 0))
        {
          *(v3 + 16) = 0x600000000;
          v11 = calloc(6uLL, 4uLL);
          *(v3 + 17) = v11;
          if (v11)
          {
            if (pthread_mutex_init((v3 + 36), 0))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 56, 0, "SharedArrayInit: pthread_mutex_init failed\n");
            }

            else
            {
              if (!pthread_cond_init((v3 + 52), 0))
              {
                v12 = 0;
                for (i = v3 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v3 + v5;
                  *(i - 1) = v7;
                  if ((SharedArrayPush(v3 + 32, v12) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v12;
                  v5 += v7;
                  if (v12 == 4)
                  {
                    return v3;
                  }
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 283, 73, 0, "SharedArrayPush");
                goto LABEL_19;
              }

              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
            }
          }

          else
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 270, 73, 0, "SharedArrayInit");
LABEL_19:
          if (!pthread_mutex_destroy((v3 + 4)) && !pthread_cond_destroy((v3 + 20)))
          {
            free(*(v3 + 1));
          }

          if (!pthread_mutex_destroy((v3 + 36)) && !pthread_cond_destroy((v3 + 52)))
          {
            free(*(v3 + 17));
          }

          free(v3);
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 57, 0, "SharedArrayInit: pthread_cond_init failed\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", 55, 0, "SharedArrayInit: malloc failed\n");
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 269, 73, 0, "SharedArrayInit");
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu");
  return 0;
}

uint64_t SharedArrayPush(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1;
    if (*a1 < v5)
    {
      *(*(a1 + 1) + 4 * v4) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

void SharedBufferDestroy(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t SharedBufferFillFromStream(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 365, 73, 0, "write after EOF");
      }

      else
      {
        v9 = a2;
        v10 = 0;
        v11 = a1 + 256;
        while (1)
        {
          v12 = *(a1 + 384);
          if (v12 <= 3)
          {
            v14 = *(v11 + 32 * v12 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
LABEL_24:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 378, 73, 0, "SharedArrayPop");
              goto LABEL_25;
            }

            while (1)
            {
              v13 = *(a1 + 128);
              if (v13)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
                goto LABEL_24;
              }
            }

            v15 = v13 - 1;
            *(a1 + 128) = v15;
            v12 = *(*(a1 + 136) + 4 * v15);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
              goto LABEL_24;
            }

            if (v12 > 3)
            {
              goto LABEL_25;
            }

            v14 = 0;
            *(a1 + 384) = v12;
            v16 = (a1 + 272 + 32 * v12);
            *v16 = 0;
            v16[1] = 0;
          }

          v17 = (v11 + 32 * v12);
          if (v17[1] - v14 >= v9)
          {
            v18 = v9;
          }

          else
          {
            v18 = v17[1] - v14;
          }

          v19 = a3(a4, *v17 + v14, v18);
          if (v19 < 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 393, 73, 0, "stream read");
            goto LABEL_25;
          }

          v20 = v19;
          if (!v19)
          {
            break;
          }

          v21 = v17[3] + v19;
          v17[3] = v21;
          if (v21 == v17[1] && (currentWriteBufferFull(a1) & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v10 += v20;
          v9 -= v20;
          if (!v9)
          {
            goto LABEL_30;
          }
        }

        if ((sendEOF(a1) & 0x80000000) == 0)
        {
LABEL_30:
          if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
          {
            return v10;
          }
        }
      }

LABEL_25:
      SharedBufferAbort(a1);
    }
  }

  return -1;
}

uint64_t sendEOF(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((currentWriteBufferFull(a1) & 0x80000000) == 0)
  {
    if ((SharedArrayEnqueue(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue");
  }

  return 0xFFFFFFFFLL;
}

uint64_t currentWriteBufferFull(unsigned int *a1)
{
  v3 = a1[96];
  a1[96] = -1;
  if (v3 > 3)
  {
    return 0;
  }

  if ((SharedArrayEnqueue(a1, v3) & 0x80000000) == 0)
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferAbort(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 400), &v2, 1u);
    if (!v2)
    {
      if ((SharedArrayPush((result + 128), -1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush");
      }

      result = SharedArrayEnqueue(v1, -1);
      if ((result & 0x80000000) != 0)
      {

        return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush");
      }
    }
  }

  return result;
}

uint64_t SharedBufferFlushToStream(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 91, 0, "SharedArrayPop: pthread_mutex_lock failed\n");
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 94, 0, "SharedArrayPop: pthread_cond_wait failed\n");
            goto LABEL_26;
          }
        }

        v13 = *a1 - 1;
        *a1 = v13;
        v12 = *(*(a1 + 8) + 4 * v13);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n");
LABEL_26:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 448, 73, 0, "SharedArrayDequeue");
LABEL_27:
          SharedBufferAbort(a1);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v22 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v22, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_27;
        }

        *(a1 + 388) = v12;
      }

      v14 = (a1 + 256 + 32 * v12);
      v15 = v14[2];
      if (v14[3] - v15 >= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v14[3] - v15;
      }

      v17 = a3(a4, *v14 + v15, v16);
      if (v17 <= 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 469, 73, 0, "stream write");
        goto LABEL_27;
      }

      v18 = v17;
      v19 = v14[3];
      v20 = v14[2] + v17;
      v14[2] = v20;
      if (v20 == v19)
      {
        v21 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v21 <= 3 && (SharedArrayPush((a1 + 128), v21) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentReadBufferEmpty", 337, 73, 0, "SharedArrayPush");
          goto LABEL_27;
        }
      }

      v6 += v18;
      v11 -= v18;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t SharedArrayEnqueue(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 157, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    if (v4 >= v5)
    {
      v6 = *a1;
    }

    else
    {
      if (v4)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v4);
      }

      **(a1 + 1) = a2;
      v6 = *a1;
    }

    *a1 = v6 + 1;
    if (v6 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 168, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
      }

      else
      {
        if (v4 < v5)
        {
          return 0;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 169, 0, "SharedArrayPush: stack is full\n");
      }
    }

    else
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", 166, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SharedBufferWrite(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sendEOF(a1);
  }

  v5 = a2;
  return SharedBufferFillFromStream(a1, a3, SharedBufferReadFromBufferProc, &v5);
}

size_t SharedBufferReadFromBufferProc(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t SharedBufferRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return SharedBufferFlushToStream(a1, a3, SharedBufferWriteToBufferProc, v7);
}

size_t SharedBufferWriteToBufferProc(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t ParallelArchiveRead(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  bzero(v35, 0x928uLL);
  v36 = 0x20000;
  v2 = malloc(0x20000uLL);
  v3 = *(a1 + 80);
  v37 = v2;
  v43 = v3;
  v4 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v4;
  v42 = *(a1 + 64);
  v5 = IMagicStreamCreate(*(a1 + 8), *(a1 + 16), *(a1 + 24), 12);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_58;
  }

  Magic = IMagicStreamGetMagic(v5);
  MagicSize = IMagicStreamGetMagicSize(v6);
  if (v2)
  {
    if (MagicSize < 0xC)
    {
      if (MagicSize < 6)
      {
        if (MagicSize < 4)
        {
          if (!MagicSize)
          {
LABEL_54:
            v21 = 1;
            goto LABEL_55;
          }

          goto LABEL_43;
        }

LABEL_32:
        if (*Magic == 826360153 || *Magic == 825246017)
        {
LABEL_34:
          if (*a1 >= 2)
          {
            fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
          }

          v18 = MemBufferCreate(0x100000uLL);
          if (!v18)
          {
            goto LABEL_58;
          }

          v19 = v18;
          v20 = MemBufferTransmit(v18, 0xFFFFFFFFFFFFFFFFLL, IMagicStreamRead, v6, readProcessData, v35);
          MemBufferDestroy(v19);
          if ((v20 & 0x8000000000000000) == 0)
          {
            if (*a1 >= 1)
            {
              fprintf(*MEMORY[0x29EDCA610], "%12lld raw archive\n");
            }

            goto LABEL_54;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 550, 7, 0, "MemBufferTransmit");
          goto LABEL_41;
        }

LABEL_43:
        v22 = ILowMemoryDecoderStreamCreate(IMagicStreamRead, IMagicStreamAbort, v6, 0x100000uLL);
        if (!v22)
        {
          v27 = "Could not identify payload format";
          v28 = 580;
LABEL_57:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", v28, 7, 0, v27, v31);
          goto LABEL_58;
        }

        v23 = v22;
        if (*a1 >= 2)
        {
          fwrite("Compressed archive payload (gzip, bzip2, xz)\n", 0x2DuLL, 1uLL, *MEMORY[0x29EDCA610]);
        }

        v24 = MemBufferCreate(0x100000uLL);
        if (!v24)
        {
          goto LABEL_58;
        }

        v25 = v24;
        v26 = MemBufferTransmit(v24, 0xFFFFFFFFFFFFFFFFLL, ILowMemoryDecoderStreamRead, v23, readProcessData, v35);
        MemBufferDestroy(v25);
        if ((v26 & 0x8000000000000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 570, 7, 0, "MemBufferTransmit");
          v21 = 0;
        }

        else
        {
          if (*a1 >= 1)
          {
            fprintf(*MEMORY[0x29EDCA610], "%12lld raw archive size\n", v26);
          }

          v21 = 1;
        }

        ILowMemoryDecoderStreamDestroy(v23);
LABEL_55:
        if (!v44)
        {
          goto LABEL_59;
        }

        v31 = v44;
        v27 = "Errors in archive: %u";
        v28 = 585;
        goto LABEL_57;
      }
    }

    else if (*Magic == 25200 && *(Magic + 2) == 122)
    {
      if (*a1 >= 1)
      {
        v10 = 0;
        v11 = *(Magic + 4);
        while (PCompressGetDecoderKey(v10) != *(Magic + 3))
        {
          if (++v10 == 7)
          {
            v10 = -1;
            break;
          }
        }

        v12 = *MEMORY[0x29EDCA610];
        DecoderDescription = PCompressGetDecoderDescription(v10);
        fprintf(v12, "Input archive compression: %s %llum\n", DecoderDescription, bswap64(v11) >> 20);
      }

      v34[1] = 0;
      v34[4] = 0;
      memset(v33, 0, sizeof(v33));
      v32[0] = 0;
      v32[1] = 0;
      v34[0] = IMagicStreamRead;
      v34[2] = v6;
      v34[3] = readProcessData;
      v34[5] = v35;
      DWORD1(v33[0]) = 1;
      DefaultNThreads = *(a1 + 4);
      if (!DefaultNThreads)
      {
        DefaultNThreads = getDefaultNThreads();
      }

      DWORD2(v33[0]) = DefaultNThreads;
      if (!PCompressFilter(v33, v34, v32))
      {
        if (*a1 >= 1)
        {
          fprintf(*MEMORY[0x29EDCA610], "%12llu compressed archive size\n%12llu raw archive size\n%12.3f compression ratio\n");
        }

        goto LABEL_54;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 530, 7, 0, "PCompressFilter");
LABEL_41:
      v21 = 0;
      goto LABEL_55;
    }

    if (*Magic == 925906736 && *(Magic + 4) == 12592)
    {
      goto LABEL_34;
    }

    if (*Magic == 925906736 && *(Magic + 4) == 14128)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v15 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 500, 7, v15, "malloc");
LABEL_58:
  v21 = 0;
LABEL_59:
  IMagicStreamDestroy(v6);
  free(v37);
  free(v38);
  free(v39);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (v21)
  {
    v30 = 0;
  }

  else
  {
    v30 = -1;
  }

  if (result >= 0)
  {
    return v30;
  }

  else
  {
    return result;
  }
}

size_t readProcessData(uint64_t a1, char *__src, size_t a3)
{
  v5 = (a1 + 2256);
  v6 = (a1 + 2232);
  v7 = a3;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v143 = v7;
      while (1)
      {
        v8 = *a1;
        if (*a1 <= 0)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2)
          {
            if (v8 != 3)
            {
LABEL_205:
              v136 = "readProcessData";
              v137 = "invalid state";
              v138 = 436;
              goto LABEL_224;
            }

            v134 = *(a1 + 2320);
            if (v134)
            {
              v134(*(a1 + 2328), __src, v143);
            }

            return a3;
          }

          v122 = *(a1 + 2272) + 16 * *(a1 + 2264);
          v123 = *(v122 + 8);
          if (v143 >= v123)
          {
            v124 = *(v122 + 8);
          }

          else
          {
            v124 = v143;
          }

          if (*v122)
          {
            v125 = *(a1 + 2296);
            if (v125)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v125 = *(a1 + 2304);
            if (v125)
            {
LABEL_172:
              v125(*(a1 + 2328), __src, v124);
              v123 = *(v122 + 8);
            }
          }

          v143 -= v124;
          __src += v124;
          v126 = v123 - v124;
          *(v122 + 8) = v126;
          if (!v126)
          {
            ++*(a1 + 2264);
            *a1 = 1;
            v7 = v143;
            goto LABEL_2;
          }

          v22 = 0;
          goto LABEL_186;
        }

        v9 = *(a1 + 2264);
        if (v9 == *(a1 + 2256))
        {
          v127 = *(a1 + 2312);
          if (v127)
          {
            v127(*(a1 + 2328));
          }

          v22 = 0;
          *a1 = 0;
          goto LABEL_186;
        }

        v10 = *(a1 + 2272) + 16 * v9;
        if (*v10)
        {
          v11 = *(a1 + 2288);
          if (v11)
          {
            v11(*(a1 + 2328), v10, *(v10 + 8));
          }
        }

        v12 = 2;
LABEL_165:
        *a1 = v12;
      }

      if (v8)
      {
        goto LABEL_205;
      }

      *(a1 + 2232) = 0;
      *v5 = 0;
      v5[1] = 0;
      v13 = *(a1 + 16);
      if (v13 <= 7)
      {
        v128 = 8;
        goto LABEL_185;
      }

      v14 = 0;
      v15 = 0;
      v16 = *(a1 + 24);
      do
      {
        v17 = v15;
        v15 = *(v16 + v14++) & 7 | (8 * v15);
      }

      while (v14 != 8);
      if (*v16 == 16)
      {
        if (v13 > 0x1D)
        {
          v18 = bswap32(*(v16 + 22)) >> 16;
          if (v18 >= 0x400)
          {
            v136 = "readProcessData";
            v137 = "invalid nameSize";
            v138 = 165;
            goto LABEL_224;
          }

          v19 = (v18 + 30);
          if (*(v16 + 1) - 3 <= 1)
          {
            v20 = bswap64(*(v16 + 2));
            if (v20 >= 0x400)
            {
              v136 = "readProcessData";
              v137 = "invalid linkSize";
              v138 = 169;
              goto LABEL_224;
            }

            v19 += v20;
          }

          v21 = v19 > v13;
          v22 = v19 - v13;
          if (v21)
          {
            goto LABEL_186;
          }

          setAAHeaderFromHeader_v10((a1 + 32), v16);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v23 = *(a1 + 96);
          v24 = *(a1 + 2256);
          v25 = *(a1 + 2248);
          if (v24 >= v25)
          {
            *(a1 + 2248) = v25 + 16;
            v26 = reallocf(*(a1 + 2272), 16 * (v25 + 16));
            *(a1 + 2272) = v26;
            if (!v26)
            {
              goto LABEL_206;
            }

            v24 = *v5;
          }

          else
          {
            v26 = *(a1 + 2272);
          }

          v86 = &v26[16 * v24];
          *v86 = 0;
          *(v86 + 1) = 0;
          __strlcpy_chk();
          *(v86 + 1) = v23;
          goto LABEL_134;
        }

        v128 = 30;
LABEL_185:
        v22 = v128 - v13;
        goto LABEL_186;
      }

      v27 = ((8 * v17) >> 6) & 0x3FFFF;
      if (v27 != 29121)
      {
        if (v27 == 29127)
        {
          if (v13 <= 0x4B)
          {
            v128 = 76;
            goto LABEL_185;
          }

          v28 = 0;
          v29 = 0;
          do
          {
            v30 = *(v16 + 57 + v28++) & 7 | (8 * v29);
            v29 = v30;
          }

          while (v28 != 8);
          v31 = 0;
          v32 = 0;
          do
          {
            v33 = *(v16 + 64 + v31++) & 7 | (8 * v32);
            v32 = v33;
          }

          while (v31 != 4);
          v34 = __src;
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(v16 + 68 + v35++) & 7 | (8 * v36);
            v36 = v37;
          }

          while (v35 != 8);
          v38 = 0;
          v39 = 0;
          v40 = v33 << 24;
          do
          {
            v41 = *(v16 + 16 + v38++) & 7 | (8 * v39);
            v39 = v41;
          }

          while (v38 != 8);
          v42 = v30 & 0x3FFFF;
          OLDEntryType = getOLDEntryType(v41);
          if (v42 >= 0x400)
          {
            v136 = "readProcessData";
            v137 = "invalid nameSize";
            v138 = 191;
            goto LABEL_224;
          }

          v44 = v37 + (v40 & 0x1FF000000);
          v45 = v42 + 76;
          __src = v34;
          if ((OLDEntryType - 3) <= 1)
          {
            if (v44 >= 0x400)
            {
              v136 = "readProcessData";
              v137 = "invalid linkSize";
              v138 = 195;
              goto LABEL_224;
            }

            v45 += v44;
          }

          v46 = *(a1 + 16);
          v22 = v45 - v46;
          if (v45 > v46)
          {
            goto LABEL_186;
          }

          v47 = *(a1 + 24);
          if (OLDEntryType)
          {
            v48 = 0;
          }

          else
          {
            v48 = v44 == 0;
          }

          if (v48 && v42 == 11 && *(v47 + 76) == 0x2152454C49415254 && *(v47 + 79) == 0x21212152454C49)
          {
            v132 = *(a1 + 2320);
            if (v132)
            {
              v133 = *(a1 + 2328);
LABEL_199:
              v132(v133);
            }

            goto LABEL_200;
          }

          setAAHeaderFromHeader_ODC((a1 + 32), v47);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v51 = *(a1 + 96);
          v52 = *(a1 + 2256);
          v53 = *(a1 + 2248);
          if (v52 >= v53)
          {
            *(a1 + 2248) = v53 + 16;
            v54 = reallocf(*(a1 + 2272), 16 * (v53 + 16));
            *(a1 + 2272) = v54;
            if (!v54)
            {
              goto LABEL_206;
            }

            v52 = *v5;
          }

          else
          {
            v54 = *(a1 + 2272);
          }

          v90 = &v54[16 * v52];
          *v90 = 0;
          *(v90 + 1) = 0;
LABEL_133:
          __strlcpy_chk();
          *(v90 + 1) = v51;
LABEL_134:
          ++*v5;
LABEL_158:
          v119 = *(a1 + 32);
          if ((v119 & 1) == 0)
          {
            v136 = "readProcessData";
            v137 = "Invalid entry, no TYP field";
            v138 = 309;
            goto LABEL_224;
          }

          if ((v119 & 0x8000) != 0 && *(a1 + 36) != 77)
          {
            v120 = strlen((a1 + 176));
            if (!pathIsValid((a1 + 176), v120))
            {
              v136 = "readProcessData";
              v137 = "Invalid entry path";
              v138 = 315;
              goto LABEL_224;
            }
          }

          v121 = *(a1 + 2280);
          if (v121)
          {
            v121(*(a1 + 2328), a1 + 32, *(a1 + 2240), *(a1 + 2232), *(a1 + 24), *(a1 + 16));
          }

          *(a1 + 16) = 0;
          v12 = 1;
          goto LABEL_165;
        }

        if (*v16 != 826360153 && *v16 != 825246017)
        {
          v140 = 0;
          ++*(a1 + 2336);
          v141 = MEMORY[0x29EDCA610];
          do
          {
            if (*(*(a1 + 24) + v140) > 31)
            {
              fputc(*(*(a1 + 24) + v140), *v141);
            }

            else
            {
              fprintf(*v141, "<%02x>", *(*(a1 + 24) + v140));
            }

            ++v140;
          }

          while (v140 < *(a1 + 16));
          fputc(10, *v141);
          v136 = "readProcessData";
          v137 = "Invalid header";
          v138 = 305;
          goto LABEL_224;
        }

        v78 = *(v16 + 4);
        v22 = v78 - v13;
        if (v78 > v13)
        {
          goto LABEL_186;
        }

        v144 = 0;
        v145 = 0;
        if ((yaa_decodeHeaderInfo(v16, v13, &v145, &v144) & 0x8000000000000000) != 0)
        {
          v136 = "readProcessData";
          v137 = "invalid YAA header";
          v138 = 268;
          goto LABEL_224;
        }

        v79 = *(a1 + 2224);
        v80 = v145;
        v81 = *(a1 + 2240);
        if (v79 < v145)
        {
          *(a1 + 2224) = v145;
          v82 = reallocf(v81, 1032 * v80);
          *(a1 + 2240) = v82;
          if (!v82)
          {
            v139 = *__error();
            v136 = "readProcessData";
            v137 = "malloc";
            v138 = 275;
            goto LABEL_225;
          }

          v81 = v82;
          v79 = *(a1 + 2224);
        }

        if (yaa_decodeHeader((a1 + 32), *(a1 + 24), *(a1 + 16), v81, v79, v6) != v78)
        {
          v136 = "readProcessData";
          v137 = "invalid YAA header";
          v138 = 280;
          goto LABEL_224;
        }

        *v5 = 0;
        v5[1] = 0;
        v83 = *(a1 + 32);
        if ((v83 & 0x200) != 0)
        {
          v87 = *(a1 + 96);
          if (*(a1 + 2248))
          {
            v88 = 0;
            v89 = *(a1 + 2272);
          }

          else
          {
            *(a1 + 2248) = 16;
            v89 = reallocf(*(a1 + 2272), 0x100uLL);
            *(a1 + 2272) = v89;
            if (!v89)
            {
              goto LABEL_206;
            }

            v88 = *v5;
          }

          v102 = &v89[16 * v88];
          *v102 = 0;
          *(v102 + 1) = 0;
          __strlcpy_chk();
          *(v102 + 1) = v87;
          v84 = *v5 + 1;
          *v5 = v84;
          v83 = *(a1 + 32);
          if ((v83 & 0x400) == 0)
          {
LABEL_108:
            if ((v83 & 0x800) == 0)
            {
LABEL_109:
              v85 = __src;
LABEL_148:
              v111 = *v6;
              if (*v6)
              {
                v112 = 0;
                v113 = 0;
                do
                {
                  v114 = *(a1 + 2240) + v112;
                  if (*(v114 + 4) == 2)
                  {
                    v115 = *(v114 + 8);
                    v116 = *(a1 + 2248);
                    if (v84 >= v116)
                    {
                      *(a1 + 2248) = v116 + 16;
                      v117 = reallocf(*(a1 + 2272), 16 * (v116 + 16));
                      *(a1 + 2272) = v117;
                      if (!v117)
                      {
                        goto LABEL_206;
                      }

                      v84 = *v5;
                    }

                    else
                    {
                      v117 = *(a1 + 2272);
                    }

                    v118 = &v117[16 * v84];
                    *v118 = 0;
                    *(v118 + 1) = 0;
                    __strlcpy_chk();
                    *(v118 + 1) = v115;
                    v84 = *v5 + 1;
                    *v5 = v84;
                    v111 = *v6;
                  }

                  ++v113;
                  v112 += 1032;
                }

                while (v113 < v111);
              }

              __src = v85;
              goto LABEL_158;
            }

LABEL_143:
            v107 = *(a1 + 112);
            v108 = *(a1 + 2248);
            if (v84 >= v108)
            {
              *(a1 + 2248) = v108 + 16;
              v109 = reallocf(*(a1 + 2272), 16 * (v108 + 16));
              *(a1 + 2272) = v109;
              if (!v109)
              {
LABEL_206:
                v139 = *__error();
                v136 = "addBlob";
                v137 = "malloc";
                v138 = 111;
                goto LABEL_225;
              }

              v84 = *v5;
            }

            else
            {
              v109 = *(a1 + 2272);
            }

            v85 = __src;
            v110 = &v109[16 * v84];
            *v110 = 0;
            *(v110 + 1) = 0;
            __strlcpy_chk();
            *(v110 + 1) = v107;
            v84 = *v5 + 1;
            *v5 = v84;
            goto LABEL_148;
          }
        }

        else
        {
          v84 = 0;
          if ((v83 & 0x400) == 0)
          {
            goto LABEL_108;
          }
        }

        v103 = *(a1 + 104);
        v104 = *(a1 + 2248);
        if (v84 >= v104)
        {
          *(a1 + 2248) = v104 + 16;
          v105 = reallocf(*(a1 + 2272), 16 * (v104 + 16));
          *(a1 + 2272) = v105;
          if (!v105)
          {
            goto LABEL_206;
          }

          v84 = *v5;
        }

        else
        {
          v105 = *(a1 + 2272);
        }

        v106 = &v105[16 * v84];
        *v106 = 0;
        *(v106 + 1) = 0;
        __strlcpy_chk();
        *(v106 + 1) = v103;
        v84 = *v5 + 1;
        *v5 = v84;
        if ((*(a1 + 32) & 0x800) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_143;
      }

      if (v13 <= 0x6D)
      {
        v128 = 110;
        goto LABEL_185;
      }

      v55 = 0;
      v56 = 0;
      do
      {
        v57 = *(v16 + 94 + v55);
        v56 *= 16;
        v58 = v57 - 48;
        if ((v57 - 48) <= 0x36)
        {
          if (((1 << v58) & 0x3FF) != 0)
          {
            v56 = v56 + v57 - 48;
          }

          else if (((1 << v58) & 0x7E0000) != 0)
          {
            v56 = v56 + v57 - 55;
          }

          else if (((1 << v58) & 0x7E000000000000) != 0)
          {
            v56 = v56 + v57 - 87;
          }
        }

        ++v55;
      }

      while (v55 != 8);
      v59 = __src;
      v60 = 0;
      v61 = 0;
      do
      {
        v62 = *(v16 + 54 + v60);
        v61 *= 16;
        v63 = v62 - 48;
        if ((v62 - 48) <= 0x36)
        {
          if (((1 << v63) & 0x3FF) != 0)
          {
            v61 = v61 + v62 - 48;
          }

          else if (((1 << v63) & 0x7E0000) != 0)
          {
            v61 = v61 + v62 - 55;
          }

          else if (((1 << v63) & 0x7E000000000000) != 0)
          {
            v61 = v61 + v62 - 87;
          }
        }

        ++v60;
      }

      while (v60 != 8);
      v64 = 0;
      v65 = 0;
      do
      {
        v66 = *(v16 + 14 + v64);
        v65 *= 16;
        v67 = v66 - 48;
        if ((v66 - 48) <= 0x36)
        {
          if (((1 << v67) & 0x3FF) != 0)
          {
            v65 = v65 + v66 - 48;
          }

          else if (((1 << v67) & 0x7E0000) != 0)
          {
            v65 = v65 + v66 - 55;
          }

          else if (((1 << v67) & 0x7E000000000000) != 0)
          {
            v65 = v65 + v66 - 87;
          }
        }

        ++v64;
      }

      while (v64 != 8);
      v68 = getOLDEntryType(v65);
      if (v56 >= 0x400)
      {
        v136 = "readProcessData";
        v137 = "invalid nameSize";
        v138 = 225;
        goto LABEL_224;
      }

      v69 = v56 + 110;
      v7 = v143;
      if ((v68 - 3) <= 1)
      {
        if (v61 >= 0x400)
        {
          v136 = "readProcessData";
          v137 = "invalid linkSize";
          v138 = 229;
          goto LABEL_224;
        }

        v69 += v61;
      }

      v70 = *(a1 + 16);
      v22 = v69 - v70;
      if (v69 > v70)
      {
        __src = v59;
        if (v143)
        {
          goto LABEL_187;
        }

        return a3;
      }

      v71 = *(a1 + 24);
      if (v68 || v61 || v56 != 11 || (*(v71 + 110) == 0x2152454C49415254 ? (v72 = *(v71 + 113) == 0x21212152454C49) : (v72 = 0), !v72))
      {
        setAAHeaderFromHeader_NEWC((a1 + 32), v71);
        v73 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v74 = v73 - v69;
        __src = v59;
        if (v73 != v69)
        {
          v75 = *(a1 + 2256);
          v76 = *(a1 + 2248);
          if (v75 >= v76)
          {
            *(a1 + 2248) = v76 + 16;
            v77 = reallocf(*(a1 + 2272), 16 * (v76 + 16));
            *(a1 + 2272) = v77;
            if (!v77)
            {
              goto LABEL_206;
            }

            v75 = *v5;
          }

          else
          {
            v77 = *(a1 + 2272);
          }

          v91 = &v77[16 * v75];
          *v91 = 0;
          *(v91 + 1) = 0;
          __strlcpy_chk();
          *(v91 + 1) = v74;
          ++*v5;
        }

        if ((*(a1 + 33) & 2) != 0)
        {
          v92 = *(a1 + 96);
          v93 = *(a1 + 2256);
          v94 = *(a1 + 2248);
          if (v93 >= v94)
          {
            *(a1 + 2248) = v94 + 16;
            v95 = reallocf(*(a1 + 2272), 16 * (v94 + 16));
            *(a1 + 2272) = v95;
            if (!v95)
            {
              goto LABEL_206;
            }

            v93 = *v5;
          }

          else
          {
            v95 = *(a1 + 2272);
          }

          v96 = &v95[16 * v93];
          *v96 = 0;
          *(v96 + 1) = 0;
          __strlcpy_chk();
          *(v96 + 1) = v92;
          ++*v5;
        }

        v97 = *(a1 + 96);
        v98 = (v97 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v51 = v98 - v97;
        if (v98 == v97)
        {
          goto LABEL_158;
        }

        v99 = *(a1 + 2256);
        v100 = *(a1 + 2248);
        if (v99 >= v100)
        {
          *(a1 + 2248) = v100 + 16;
          v101 = reallocf(*(a1 + 2272), 16 * (v100 + 16));
          *(a1 + 2272) = v101;
          if (!v101)
          {
            goto LABEL_206;
          }

          v99 = *v5;
        }

        else
        {
          v101 = *(a1 + 2272);
        }

        v90 = &v101[16 * v99];
        *v90 = 0;
        *(v90 + 1) = 0;
        goto LABEL_133;
      }

      v132 = *(a1 + 2320);
      __src = v59;
      if (v132)
      {
        v133 = *(a1 + 2328);
        goto LABEL_199;
      }

LABEL_200:
      v22 = 0;
      *(a1 + 16) = 0;
      *a1 = 3;
LABEL_186:
      v7 = v143;
      if (!v143)
      {
        return a3;
      }

LABEL_187:
      if (!v22)
      {
        continue;
      }

      break;
    }

    if (v22 >= v7)
    {
      v129 = v7;
    }

    else
    {
      v129 = v22;
    }

    v130 = v7;
    v131 = *(a1 + 16);
    if (v131 + v129 <= *(a1 + 8))
    {
      memcpy((*(a1 + 24) + v131), __src, v129);
      *(a1 + 16) += v129;
      __src += v129;
      v7 = v130 - v129;
      continue;
    }

    break;
  }

  v136 = "readProcessData";
  v137 = "internal header buffer is too small";
  v138 = 452;
LABEL_224:
  v139 = 0;
LABEL_225:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", v136, v138, 7, v139, v137);
  return -1;
}

uint64_t ParallelArchiveReadMetadata(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  enterThreadErrorContext();
  v2 = MemBufferCreate(0x10000uLL);
  if (!v2)
  {
    v10 = 0;
    v4 = 0;
    goto LABEL_50;
  }

  v3 = IMagicStreamCreate(*(a1 + 8), *(a1 + 16), *(a1 + 24), 8);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_47;
  }

  Magic = IMagicStreamGetMagic(v3);
  MagicSize = IMagicStreamGetMagicSize(v4);
  if (!MagicSize)
  {
    v10 = 0;
    goto LABEL_19;
  }

  if (MagicSize < 6)
  {
    if (MagicSize < 4)
    {
LABEL_23:
      v12 = ILowMemoryDecoderStreamCreate(IMagicStreamRead, IMagicStreamAbort, v4, 0x10000uLL);
      if (v12)
      {
        v13 = v12;
        v14 = ILowMemoryDecoderStreamRead;
        v10 = v12;
        goto LABEL_29;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 642, 7, 0, "Could not identify payload format");
LABEL_47:
      v10 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    if (*Magic == 925906736 && *(Magic + 4) == 12592)
    {
      goto LABEL_25;
    }

    if (*Magic == 925906736 && *(Magic + 4) == 14128)
    {
      goto LABEL_25;
    }
  }

  if (*Magic != 826360153 && *Magic != 825246017)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (*a1 < 2)
  {
    v14 = IMagicStreamRead;
    v10 = 0;
  }

  else
  {
    fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, *MEMORY[0x29EDCA610]);
    v10 = 0;
    v14 = IMagicStreamRead;
  }

  v13 = v4;
LABEL_29:
  if ((MemBufferFillFromIStream(v2, 0x10000uLL, v14, v13) & 0x8000000000000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 649, 7, 0, "Reading entry");
  }

  else
  {
    DataPtr = MemBufferGetDataPtr(v2);
    DataSize = MemBufferGetDataSize(v2);
    v26 = 0;
    v27 = 0;
    v17 = yaa_decodeHeaderInfo(DataPtr, DataSize, &v27, &v26);
    if ((v17 & 0x8000000000000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 660, 7, 0, "Parsing YAA header");
    }

    else
    {
      v18 = v17;
      v19 = v26;
      *(a1 + 2240) = v27;
      *(a1 + 2264) = v19;
      if ((yaa_decodeHeader((a1 + 32), DataPtr, v17, *(a1 + 2224), *(a1 + 2232), (a1 + 2240)) & 0x8000000000000000) == 0)
      {
        MemBufferDecreaseSize(v2, v18);
        if (v26 >= *(a1 + 2256))
        {
          v20 = *(a1 + 2256);
        }

        else
        {
          v20 = v26;
        }

        if (v20)
        {
          v21 = *(a1 + 2248);
          while (1)
          {
            v22 = MemBufferGetDataSize(v2);
            if (v20 > v22 && (MemBufferFillFromIStream(v2, v20 - v22, v14, v13) & 0x8000000000000000) != 0)
            {
              break;
            }

            v23 = MemBufferGetDataSize(v2);
            if (v23 >= v20)
            {
              v24 = v20;
            }

            else
            {
              v24 = v23;
            }

            v25 = MemBufferGetDataPtr(v2);
            memcpy(v21, v25, v24);
            MemBufferDecreaseSize(v2, v24);
            v21 += v24;
            v20 -= v24;
            if (!v20)
            {
              goto LABEL_19;
            }
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 678, 7, 0, "Reading entry");
          goto LABEL_50;
        }

LABEL_19:
        v11 = 0;
        goto LABEL_51;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 665, 7, 0, "Decoding YAA header");
    }
  }

LABEL_50:
  v11 = -1;
LABEL_51:
  ILowMemoryDecoderStreamDestroy(v10);
  IMagicStreamDestroy(v4);
  MemBufferDestroy(v2);
  LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
  if (result >= 0)
  {
    return v11;
  }

  else
  {
    return result;
  }
}

void *reallocToFit(void *a1, size_t __size)
{
  if (__size >= 0x1000)
  {
    v4 = malloc(__size);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a1, __size);
      free(a1);
      return v5;
    }
  }

  return a1;
}

uint64_t getInstalledMemorySize()
{
  v0 = sysconf(200);
  v1 = sysconf(29);
  if (v1 <= 0 || v0 <= 0)
  {
    return 0;
  }

  else
  {
    return v1 * v0;
  }
}

double getRealTime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t getDefaultNThreads()
{
  v3 = 0;
  v2 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0))
  {
    return v3;
  }

  v0 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname");
  return 1;
}

uint64_t sha1ToString(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = serializeHexString_digit[v4 >> 4];
    *v3 = serializeHexString_digit[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t serializeHexString(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = serializeHexString_digit[v4 >> 4];
      *(result + (v3 + 1)) = serializeHexString_digit[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sha1cmp(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sha1xor(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 20; ++i)
  {
    *(result + i) ^= *(a2 + i);
  }

  return result;
}

const char *makePath(const char *result, unint64_t a2)
{
  v3 = result;
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v3[v4] == 47)
      {
        v3[v4] = 0;
        result = stat(v3, &v6);
        if (!result)
        {
          break;
        }
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a2)
  {
    v5 = 1;
    do
    {
      if (!v3[v4])
      {
        if (!v5)
        {
          result = mkdir(v3, 0x1EDu);
        }

        v5 = 0;
        v3[v4] = 47;
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

const char *statPath(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    memset(&v4, 0, sizeof(v4));
    do
    {
      if (v3[v2] == 47)
      {
        v3[v2] = 0;
        result = stat(v3, &v4);
        v3[v2] = 47;
      }

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t concatPath(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (v8 + v9 + 2 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  if (a1 != __s)
  {
    memcpy(a1, __s, v8);
  }

  if (v11)
  {
    if (!v8 || a1[v8 - 1] != 47)
    {
      a1[v8++] = 47;
    }

    memcpy(&a1[v8], a4, v11);
    v8 += v11;
  }

  result = 0;
  a1[v8] = 0;
  return result;
}

uint64_t concatExtractPath(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s");
    return 0xFFFFFFFFLL;
  }

  strlcpy(a1, __s, a2);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  memset(&v22, 0, sizeof(v22));
  while (1)
  {
    v12 = &a4[v11];
    v13 = strchr(&a4[v11], 47);
    v14 = v13 - a4;
    if (v13)
    {
      v15 = v13 - a4;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15 - v11;
    if (v15 == v11)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s");
      return 0xFFFFFFFFLL;
    }

    v17 = v13;
    if (v16 != 2)
    {
      if (v16 == 1 && *v12 == 46)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (*v12 == 46 && v12[1] == 46)
    {
      break;
    }

LABEL_15:
    v18 = lstat(a1, &v22);
    if (v11)
    {
      if (v18)
      {
        if (mkdir(a1, 0x1EDu) && (lstat(a1, &v22) || (v22.st_mode & 0xF000) != 0x4000))
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s");
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v22.st_mode & 0xF000) != 0x4000)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s");
        return 0xFFFFFFFFLL;
      }
    }

    else if (v18 || (v19 = v22.st_mode & 0xF000, v19 != 0x4000) && v19 != 40960)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s");
      return 0xFFFFFFFFLL;
    }

    v20 = &a1[v8];
    if (a1[v8 - 1] != 47)
    {
      ++v8;
      *v20 = 47;
    }

    memcpy(&a1[v8], &a4[v11], v16);
    v8 += v16;
    a1[v8] = 0;
LABEL_29:
    if (v17)
    {
      v11 = v14 + 1;
      if (v14 + 1 < v10)
      {
        continue;
      }
    }

    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s");
  return 0xFFFFFFFFLL;
}

BOOL pathIsValid(_BYTE *a1, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  if (__n > 0x3FF || memchr(a1, 0, __n) || *a1 == 47)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = &a1[v5];
    v7 = memchr(&a1[v5], 47, __n - v5);
    if (!v7)
    {
      break;
    }

    v8 = v7 - a1;
    v9 = v7 - a1 - v5;
    if (v7 - a1 == v5)
    {
      return 0;
    }

    if (v5 && v9 == 1)
    {
      v10 = *v6;
      goto LABEL_13;
    }

    if (v9 == 2 && *v6 == 46)
    {
      v10 = v6[1];
LABEL_13:
      if (v10 == 46)
      {
        return 0;
      }
    }

    v5 = v8 + 1;
  }

  while (v8 + 1 < __n);
  return v5 != __n;
}

uint64_t getTempDir(char *a1, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, a1, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(a1, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (v6)
  {
    do
    {
      v7 = a1[v6 - 1];
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  a1[v6] = 0;
  return v5;
}

uint64_t loadFileContents(const char *a1, void *a2, off_t *a3, uint64_t a4)
{
  memset(&v21, 0, sizeof(v21));
  if (lstat(a1, &v21))
  {
    v8 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 475, 3, *v8, "%s", a1);
    v9 = 0;
LABEL_3:
    free(v9);
    v9 = 0;
    st_size = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  st_size = v21.st_size;
  if (v21.st_size)
  {
    v9 = malloc(v21.st_size + a4);
    if (v9)
    {
      v12 = open(a1, 0);
      if (v12 < 0)
      {
        v19 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 486, 3, v19, "%s");
      }

      else
      {
        v13 = v12;
        v14 = st_size;
        v15 = v9;
        while (1)
        {
          if (v14 >= 0x40000000)
          {
            v16 = 0x40000000;
          }

          else
          {
            v16 = v14;
          }

          v17 = read(v13, v15, v16);
          if (v17 < 0)
          {
            v20 = *__error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 499, 3, v20, "%s");
            goto LABEL_23;
          }

          if (v17 != v16)
          {
            break;
          }

          v15 += v16;
          v14 -= v16;
          if (!v14)
          {
            close(v13);
            goto LABEL_17;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 500, 3, 0, "reading contents: %s");
LABEL_23:
        close(v13);
      }
    }

    else
    {
      v18 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 482, 3, v18, "malloc");
    }

    goto LABEL_3;
  }

  v9 = 0;
LABEL_17:
  result = 0;
LABEL_4:
  *a2 = v9;
  *a3 = st_size;
  return result;
}

uint64_t loadFileSegment(const char *a1, void *a2, size_t a3, off_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    v10 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 521, 3, v10, "%s");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = pread(v7, a2, a3, a4);
  close(v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 524, 3, v11, "%s");
    return 0xFFFFFFFFLL;
  }

  if (v9 < a3)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 525, 3, 0, "truncated read");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t storeFileContents(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (a3 - v8 >= 0x10000000)
        {
          v9 = 0x10000000;
        }

        else
        {
          v9 = a3 - v8;
        }

        v10 = write(v7, (a2 + v8), v9);
        if (v10 < 0)
        {
          v13 = *__error();
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v13, "%s");
          goto LABEL_14;
        }

        if (!v10)
        {
          break;
        }

        v8 += v10;
        if (v8 >= a3)
        {
          goto LABEL_10;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s");
LABEL_14:
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v11 = 0;
    }

    close(v7);
  }

  return v11;
}

uint64_t copyFileSegment(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v8 = MemBufferCreate(0x100000uLL);
  if (v8)
  {
    v9 = IFileStreamCreateWithFilename(a1, a2, a3);
    if (v9)
    {
      v10 = OFileStreamCreateWithFilename(a4, a3);
      if (v10)
      {
        if ((MemBufferTransmit(v8, a3, IFileStreamRead, v9, OFileStreamWrite, v10) & 0x8000000000000000) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s");
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", a1);
      v10 = 0;
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation");
    v10 = 0;
    v9 = 0;
  }

  v11 = 1;
LABEL_11:
  IFileStreamDestroy(v9);
  OFileStreamDestroy(v10);
  MemBufferDestroy(v8);
  if (v11)
  {
    unlink(a4);
  }

  return (v11 << 31 >> 31);
}

uint64_t statIsCompressed(unsigned int a1)
{
  if ((a1 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 5) & 1;
  }
}

uint64_t areFilesEqual(const char *a1, const char *a2)
{
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v24))
  {
    v4 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s");
LABEL_5:
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v23))
  {
    v5 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v5, "%s");
    goto LABEL_5;
  }

  if ((v24.st_mode & 0xF000) != 0x8000 || (v23.st_mode & 0xF000) != 0x8000 || v24.st_size != v23.st_size)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v10 = open(a1, 0);
  if (v10 < 0)
  {
    v18 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v18, "%s");
    goto LABEL_5;
  }

  v11 = v10;
  v12 = open(a2, 0);
  if (v12 < 0)
  {
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v19, "%s", a2);
    close(v11);
    goto LABEL_5;
  }

  v13 = v12;
  v7 = malloc(0x40000uLL);
  v14 = malloc(0x40000uLL);
  v6 = v14;
  if (v7 && v14)
  {
    while (1)
    {
      v15 = read(v11, v7, 0x40000uLL);
      if (v15 < 0)
      {
        v21 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v21, "%s read");
        goto LABEL_24;
      }

      v16 = v15;
      v17 = read(v13, v6, 0x40000uLL);
      if (v17 < 0)
      {
        v22 = *__error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v22, "%s read");
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        goto LABEL_19;
      }

      if (!v16)
      {
        break;
      }

      if (memcmp(v7, v6, v16))
      {
LABEL_19:
        v8 = 0;
        goto LABEL_25;
      }
    }

    v8 = 1;
  }

  else
  {
    v20 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v20, "malloc");
LABEL_24:
    v8 = 0xFFFFFFFFLL;
  }

LABEL_25:
  close(v11);
  close(v13);
LABEL_6:
  free(v7);
  free(v6);
  return v8;
}

uint64_t areFilesEqual2()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v8 = *MEMORY[0x29EDCA608];
  if (concatPath(v7, 0x800uLL, v0, v4) || concatPath(v6, 0x800uLL, v3, v2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return areFilesEqual(v7, v6);
  }
}

uint64_t getFilesystemBlockSize(const char *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  memset(&v3, 0, 512);
  if ((statfs(a1, &v3) & 0x80000000) == 0)
  {
    return v3.f_bsize;
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", a1);
  return 4096;
}

off_t getFileDiskUsage(const char *a1)
{
  memset(&v9, 0, sizeof(v9));
  if (lstat(a1, &v9))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", a1);
    return -1;
  }

  else
  {
    if (v9.st_blocks << 9 >= v9.st_size)
    {
      st_size = v9.st_size;
    }

    else
    {
      st_size = v9.st_blocks << 9;
    }

    if (v9.st_blocks << 9)
    {
      v2 = st_size;
    }

    else
    {
      v2 = v9.st_size;
    }

    if ((v9.st_mode & 0xF000) == 0x8000)
    {
      v7 = 0;
      v8 = 0;
      v4 = ParallelCompressionAFSCGetMetadata(a1, &v8, &v7 + 1, &v7);
      if (HIDWORD(v7) != -1 && v4 == 0)
      {
        return v7;
      }
    }
  }

  return v2;
}

uint64_t setFileAPFSInternalFlagsFD(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t getFileProtectionClass(const char *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = getattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t clearEntryXAT(const char *a1)
{
  v2 = listxattr(a1, 0, 0, 1);
  if (v2 < 0)
  {
    v11 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 912, 3, *v11, "listxattr failed: %s", a1);
    v4 = 0;
    goto LABEL_18;
  }

  v3 = v2;
  if (!v2)
  {
    v4 = 0;
LABEL_14:
    v12 = 0;
    goto LABEL_19;
  }

  v4 = malloc(v2);
  if (!v4)
  {
    v13 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 918, 3, v13, "malloc");
    goto LABEL_18;
  }

  v5 = listxattr(a1, v4, v3, 1);
  if (v5 < 0)
  {
    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 927, 3, v14, "listxattr failed: %s");
    goto LABEL_18;
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v4 + 1;
  v8 = v4;
  while (*(v7 - 1))
  {
    v9 = v8;
LABEL_10:
    ++v7;
    v8 = v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  v10 = removexattr(a1, v8, 1);
  v9 = v7;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v15 = *__error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 941, 3, v15, "removexattr failed for name=%s: %s");
LABEL_18:
  v12 = 0xFFFFFFFFLL;
LABEL_19:
  free(v4);
  return v12;
}

uint64_t getBufferSHA1Digest(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v6 += 0x100000;
      if (v6 <= a2)
      {
        v8 = 0x100000;
      }

      else
      {
        v8 = v7;
      }

      CC_SHA1_Update(&v10, a1, v8);
      v7 -= 0x100000;
      a1 += 0x100000;
    }

    while (v6 < a2);
  }

  CC_SHA1_Final(a3, &v10);
  return 0;
}

uint64_t getFileDigests(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 || a3 || a4)
  {
    memset(&c, 0, sizeof(c));
    memset(&v19, 0, sizeof(v19));
    v18[0] = 0;
    v18[1] = 0;
    v8 = open(a1, 0);
    if (v8 < 0)
    {
      v15 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 983, 3, *v15, "%s", a1);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
      v10 = valloc(0x100000uLL);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          CC_SHA1_Init(&c);
        }

        if (a3)
        {
          CC_SHA256_Init(&v19);
        }

        if (v4)
        {
          CC_CKSUM_Init(v18);
        }

        while (1)
        {
          v12 = read(v9, v11, 0x100000uLL);
          v13 = v12;
          if (v12 < 0)
          {
            v14 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 997, 3, *v14, "read");
            goto LABEL_29;
          }

          if (!v12)
          {
            break;
          }

          if (a2)
          {
            CC_SHA1_Update(&c, v11, v12);
          }

          if (a3)
          {
            CC_SHA256_Update(&v19, v11, v13);
          }

          if (v4)
          {
            CC_CKSUM_Update(v18, v11, v13);
          }
        }

        if (a2)
        {
          CC_SHA1_Final(a2, &c);
        }

        if (a3)
        {
          CC_SHA256_Final(a3, &v19);
        }

        if (v4)
        {
          CC_CKSUM_Final(v4, v18);
        }

LABEL_29:
        free(v11);
        v4 = v13 >> 63;
      }

      else
      {
        v16 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 987, 3, *v16, "malloc");
        v4 = 0xFFFFFFFFLL;
      }

      close(v9);
    }
  }

  return v4;
}

uint64_t getFileSegmentSHA1Digest(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    FileSegmentSHA1DigestFD = getFileSegmentSHA1DigestFD(v8, a2, a3, a4);
    close(v9);
    return FileSegmentSHA1DigestFD;
  }
}

uint64_t getFileSegmentSHA1DigestFD(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (fcntl(a1, 48, 1))
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n");
  }

  memset(&c, 0, sizeof(c));
  v8 = valloc(0x100000uLL);
  if (!v8)
  {
    v13 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1049, 3, v13, "malloc", v16, v17, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
LABEL_16:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  CC_SHA1_Init(&c);
  if (a3)
  {
    while (1)
    {
      v9 = a3 >= 0x100000 ? 0x100000 : a3;
      v10 = pread(a1, v8, v9, a2);
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v11 = v10;
      if (!v10)
      {
        goto LABEL_12;
      }

      if (v10 > v9)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)");
        goto LABEL_16;
      }

      CC_SHA1_Update(&c, v8, v10);
      a2 += v11;
      a3 -= v11;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v14 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1059, 3, v14, "read", v16, v17, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v12 = 0;
LABEL_17:
  free(v8);
  return v12;
}

uint64_t enumerateTree(void *a1, char *__s)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = strlen(__s);
  if (v3 - 1024 < 0xFFFFFFFFFFFFFBFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3;
  bzero(v7, 0x400uLL);
  __memcpy_chk();
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v7[v6 - 1] == 47);
  v7[v6] = 0;
  return enumerateTree_rec(a1, v7, v6);
}

uint64_t removeFile(const char *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (lstat(a1, &v3))
  {
    return 0;
  }

  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3.st_flags & 0x20002) != 0)
  {
    lchflags(a1, v3.st_flags & 0xFFFDFFFD);
  }

  return unlink(a1);
}

uint64_t enumerateTree_rec(void *a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = "/";
  }

  v7 = opendir(v6);
  if (v7)
  {
    memset(&v23, 0, 512);
    v22 = 0;
    v8 = a1[1];
    if (!v8 || (v8(*a1, a2) & 0x80000000) == 0)
    {
      if (!readdir_r(v7, &v23, &v22))
      {
        v14 = a3 + 1;
        v15 = &a2[a3];
        do
        {
          if (!v22)
          {
            v10 = 1;
            goto LABEL_10;
          }

          d_namlen = v23.d_namlen;
          if ((v23.d_namlen != 1 || v23.d_name[0] != 46) && (v23.d_namlen != 2 || v23.d_name[0] != 46 || v23.d_name[1] != 46))
          {
            v17 = v14 + v23.d_namlen;
            if (v17 > 0x3FF)
            {
              goto LABEL_9;
            }

            *v15 = 47;
            memcpy(v15 + 1, v23.d_name, d_namlen);
            a2[v17] = 0;
            memset(&v21, 0, sizeof(v21));
            if (lstat(a2, &v21))
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s");
            }

            else if ((v21.st_flags & 0x40000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s");
            }

            else
            {
              d_type = v23.d_type;
              if (!v23.d_type)
              {
                if ((v21.st_mode & 0xF000) == 0x4000)
                {
                  d_type = 4;
                  v23.d_type = 4;
                }

                else
                {
                  d_type = 0;
                }
              }

              v19 = a1[3];
              if (v19)
              {
                v20 = v19(*a1, a2) >> 31;
                d_type = v23.d_type;
              }

              else
              {
                LOBYTE(v20) = 0;
              }

              if (d_type == 4 && (enumerateTree_rec(a1, a2, v17) & 0x80000000) != 0)
              {
                v10 = 0;
                *v15 = 0;
                goto LABEL_10;
              }

              *v15 = 0;
              if (v20)
              {
                goto LABEL_9;
              }
            }
          }
        }

        while (!readdir_r(v7, &v23, &v22));
      }

      v9 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r");
    }

LABEL_9:
    v10 = 0;
LABEL_10:
    closedir(v7);
    v11 = a1[2];
    if (v11 && v11(*a1, a2) < 0)
    {
      v10 = 0;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v13, "%s", a2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t removeTree(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = removeEntryProc;
  v2[2] = removeLeaveDirProc;
  return enumerateTree(v2, __s);
}

uint64_t removeEntryProc(int a1, char *a2)
{
  memset(&v6, 0, sizeof(v6));
  if (lstat(a2, &v6))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  if ((v6.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  result = unlink(a2);
  if (result)
  {
    v3 = 1250;
    goto LABEL_3;
  }

  return result;
}

uint64_t removeLeaveDirProc(int a1, char *a2)
{
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ParallelArchiveExtractSubtree(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  enterThreadErrorContext();
  bzero(&v19, 0x430uLL);
  v4 = a2[2];
  strncpy(v21, v4, 0x400uLL);
  v22 = strlen(v4);
  v20 = a1;
  v5 = *a2;
  v19 = *a2;
  v6 = a2[1] & 1;
  v23 = v6;
  if (v22)
  {
    if (v5 >= 1)
    {
      v7 = *MEMORY[0x29EDCA610];
      if (v6)
      {
        fprintf(v7, "Extracting all entries not in subtree: %s\n");
      }

      else
      {
        fprintf(v7, "Extracting subtree: %s\n");
      }
    }

    v15 = 0u;
    v16 = 0u;
    v11 = *a2;
    v8 = a2[5];
    v12 = *(a2 + 3);
    v13 = v8;
    v14 = extractSubtreeBegin;
    *(&v15 + 1) = extractSubtreeData;
    *&v16 = extractSubtreeData;
    v17 = extractSubtreeData;
    v18 = &v19;
    if ((ParallelArchiveRead(&v11) & 0x80000000) == 0)
    {
      result = leaveThreadErrorContext(0, 0, 0);
      if ((result & 0x80000000) == 0)
      {
        if (*a2 >= 1)
        {
          v10 = MEMORY[0x29EDCA610];
          fprintf(*MEMORY[0x29EDCA610], "%12llu entries in input archive\n", v24);
          fprintf(*v10, "%12llu entries in subtree\n", v25);
        }

        return 0;
      }

      return result;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "ParallelArchiveExtractSubtree", 116, 69, 0, "reading archive");
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "ParallelArchiveExtractSubtree", 95, 69, 0, "Invalid path length for subtree: %s\n");
  }

  result = leaveThreadErrorContext(0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

size_t extractSubtreeBegin(uint64_t a1, const void *a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  *(a1 + 1052) = 0;
  ++*(a1 + 1056);
  result = memcpy(__dst, a2, sizeof(__dst));
  if (__dst[1] == 77)
  {
    *(a1 + 1052) = 1;
  }

  else
  {
    if ((__dst[0] & 0x8000) == 0)
    {
      return result;
    }

    v9 = *(a1 + 1040);
    result = strlen(&__dst[36]);
    v10 = result;
    if (result < v9 || (result = memcmp(&__dst[36], (a1 + 16), v9), result))
    {
      v11 = 0;
    }

    else
    {
      if (*(&__dst[36] + v9))
      {
        v12 = *(&__dst[36] + v9) == 47;
      }

      else
      {
        v12 = 1;
      }

      v11 = v12;
    }

    *(a1 + 1052) = v11;
    if (*(a1 + 1048))
    {
      *(a1 + 1052) = v11 ^ 1;
      if (v11)
      {
        return result;
      }
    }

    else
    {
      if (!v11)
      {
        return result;
      }

      if (v10 == v9)
      {
        LOBYTE(__dst[36]) = 0;
      }

      else
      {
        strncpy(&__dst[36], a2 + v9 + 145, 0x400uLL);
      }
    }
  }

  ++*(a1 + 1064);
  if (*a1 >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "%s\n", &__dst[36]);
  }

  result = ParallelArchiveWriteEntryHeader(*(a1 + 8), __dst, a3, a4);
  if ((result & 0x80000000) != 0)
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "extractSubtreeBegin", 70, 69, 0, "writing entry header");
    *(a1 + 1052) = 0;
  }

  return result;
}

uint64_t extractSubtreeData(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 1052))
  {
    result = ParallelArchiveWriteEntryData(*(result + 8), a2, a3);
    if ((result & 0x80000000) != 0)
    {

      return pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/ExtractSubtree.c", "extractSubtreeData", 77, 69, 0, "writing entry data");
    }
  }

  return result;
}

uint64_t io_hint_static_content(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_hint_static_content", 63, 137, "file not open");
  }

  else
  {
    if (fcntl(FD, 68, 1) != -1)
    {
      return 0;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_hint_static_content", 64, 137, "static content hint failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t io_preallocate(unsigned int **a1, unint64_t a2)
{
  RealTime = getRealTime();
  FD = aaFileStreamGetFD(a1);
  memset(&v20, 0, sizeof(v20));
  if (FD < 0)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 84, 137, "file not open");
LABEL_12:
    v11 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v6 = FD;
  if (fstat(FD, &v20) || v20.st_size)
  {
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 85, 137, "file not empty");
    goto LABEL_12;
  }

  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 88, 137, "preallocating %llu B", v7, v8, v9, a2);
  if (!a2)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v18[0] = 0x300000002;
    v18[1] = 0;
    v18[2] = a2 - v11;
    v19 = 0;
    if (fcntl(v6, 42, v18) == -1 || v19 <= 0)
    {
      break;
    }

    v11 += v19;
    v10 = (v10 + 1);
    if (v11 >= a2)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 99, 137, "preallocation failed");
LABEL_13:
  v12 = 0xFFFFFFFFLL;
LABEL_14:
  v13 = getRealTime();
  pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_preallocate", 110, 137, "preallocation %llu/%llu B took %0.2f seconds (# of calls=%i)", v14, v15, v16, v11, a2, v13 - RealTime, v10);
  return v12;
}

uint64_t io_set_nocache(unsigned int **a1)
{
  FD = aaFileStreamGetFD(a1);
  if (FD < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_set_nocache", 126, 137, 0, "aaFileStreamGetFD");
  }

  else
  {
    if (fcntl(FD, 48, 1) != -1)
    {
      return 0;
    }

    v3 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "io_set_nocache", 127, 137, v3, "fcntl");
  }

  return 0xFFFFFFFFLL;
}

uint64_t **aaSegmentStreamOpen(void *a1, void *a2)
{
  v3 = SegmentStreamCreate(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v6 = pc_array_indirect_sort(a2[267], compare_extents_by_position);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = a2[269];
      do
      {
        if (v8 >= v9)
        {
          v11 = 0;
          v10 = a2 + 265;
        }

        else
        {
          v10 = v6[v8];
          v11 = v10[1];
        }

        v12 = *v10;
        v13 = *v10 >= v7;
        v14 = *v10 - v7;
        if (v14 != 0 && v13)
        {
          v30 = v5[397];
          v31 = v14;
          v32 = v7;
          v33 = 0;
          v34 = 0;
          v5[397] = v30 + v14;
          v15 = pc_array_append(v5[395], &v30);
          v5[395] = v15;
          if (!v15)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 476, 137, 0, "segment_add");
            goto LABEL_28;
          }

          v9 = a2[269];
        }

        v7 = v12 + v11;
        ++v8;
      }

      while (v8 <= v9);
      v16 = v5[397];
      a2[258] = v16;
      v17 = a2[270];
      if (v17)
      {
        v18 = 0;
        while (1)
        {
          v19 = (a2[268] + 129 * v18);
          v20 = a2[267];
          v21 = v5[397];
          v19[4] = 0;
          v19[5] = v21;
          if (v19[15])
          {
            break;
          }

LABEL_19:
          if (++v18 >= v17)
          {
            v16 = v5[397];
            goto LABEL_21;
          }
        }

        v22 = 0;
        v23 = v5[395];
        v24 = (v20 + 16 * v19[14] + 8);
        while (1)
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          v30 = v5[397];
          v31 = v25;
          v32 = v26;
          v33 = 0;
          v34 = 0;
          v5[397] = v30 + v25;
          v23 = pc_array_append(v23, &v30);
          v5[395] = v23;
          if (!v23)
          {
            break;
          }

          v27 = *v24;
          v24 += 2;
          v19[4] += v27;
          if (++v22 >= v19[15])
          {
            v17 = a2[270];
            goto LABEL_19;
          }
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 500, 137, 0, "segment_add");
      }

      else
      {
LABEL_21:
        v5[396] = *(v5[395] - 64);
        if (v16 == a2[265])
        {
          free(v6);
          return v4;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 507, 137, 0, "bad image");
      }
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 465, 137, 0, "pc_array_indirect_sort");
    }
  }

  else
  {
    v28 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaSegmentStreamOpen", 457, 137, *v28, "aaSegmentStreamOpen");
    v6 = 0;
    v5 = 0;
  }

LABEL_28:
  free(v6);
  free(v4);
  SegmentStreamClose(v5);
  return 0;
}

void *SegmentStreamCreate(void *a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = calloc(1uLL, 0xC78uLL);
  v6 = v5;
  if (!v4 || !v5)
  {
    v7 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamCreate", 416, 137, v7, "malloc");
LABEL_9:
    free(v4);
    SegmentStreamClose(v6);
    return 0;
  }

  if (!a1[4] || !a1[5])
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamCreate", 417, 137, 0, "stream not compatible");
    goto LABEL_9;
  }

  *v5 = a1;
  v5[1] = a2;
  v5[395] = pc_array_init(29);
  AACustomByteStreamSetData(v4, v6);
  AACustomByteStreamSetPReadProc(v4, SegmentStreamPRead);
  AACustomByteStreamSetPWriteProc(v4, SegmentStreamPWrite);
  AACustomByteStreamSetCancelProc(v4, SegmentStreamCancel);
  AACustomByteStreamSetCloseProc(v4, SegmentStreamClose);
  if (a1[11])
  {
    v4[11] = SegmentStreamSimulate;
  }

  return v4;
}

uint64_t SegmentStreamClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 3152))
    {
      for (i = 16; i != 3088; i += 24)
      {
        free(*(a1 + i));
      }

      pthread_mutex_destroy((a1 + 3088));
    }

    pc_array_free(*(a1 + 3160));
    free(a1);
  }

  return 0;
}

uint64_t *aaForkInputStreamOpen(void *a1, uint64_t a2, int a3)
{
  if ((*(a2 + 2128) & 8) == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 538, 137, 0, "no chunk info");
    v3 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_39;
  }

  v7 = SegmentStreamCreate(a1, a2);
  v3 = v7;
  if (!v7)
  {
    v14 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 542, 137, *v14, "SegmentStreamCreate");
    goto LABEL_12;
  }

  v8 = *v7;
  if (a1[11])
  {
    *(v8 + 3184) = 1;
  }

  v9 = 0;
  *(v8 + 3152) = 1;
  do
  {
    v10 = malloc(0x10000uLL);
    v11 = v8 + v9;
    *(v11 + 16) = v10;
    *(v11 + 24) = -1;
    if (!v10)
    {
      v15 = *__error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", 554, 137, v15, "malloc");
      goto LABEL_39;
    }

    v9 += 24;
  }

  while (v9 != 3072);
  if (pthread_mutex_init((v8 + 3088), 0))
  {
    v12 = "MutexInit";
    v13 = 556;
    goto LABEL_38;
  }

  v37 = 0;
  v36 = 1;
  v35 = a3;
  while (!*(a2 + 2160))
  {
LABEL_32:
    if ((v36 & 1) == 0)
    {
      *(v8 + 3168) = *(*(v8 + 3160) - 64);
      *(a2 + 2080) = *(v8 + 3176);
      return v3;
    }

    v31 = *(v8 + 3176);
    *(a2 + 2056) = v31;
    v32 = *(a2 + 2064);
    if (v32)
    {
      __src = v31;
      v39 = v32;
      v40 = 0;
      v41 = 0;
      *(v8 + 3176) = v32 + v31;
      v33 = pc_array_append(*(v8 + 3160), &__src);
      *(v8 + 3160) = v33;
      if (!v33)
      {
        v12 = "segment_add";
        v13 = 607;
        goto LABEL_38;
      }

      v31 = *(v8 + 3176);
    }

    v36 = 0;
    *(a2 + 2072) = v31;
    v37 = 1;
  }

  v16 = 0;
  while (1)
  {
    v17 = *(a2 + 2144) + 129 * v16;
    if (a3)
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v18 = *(v17 + 104);
    }

    if (!(v37 & 1 | ((v18 & 1) == 0)))
    {
      break;
    }

LABEL_29:
    if (!(v36 & 1 | ((v18 & 2) == 0)))
    {
      v28 = *(v8 + 3176);
      *(v17 + 48) = v28;
      v29 = *(v17 + 32);
      __src = v28;
      v39 = v29;
      v40 = 0;
      v41 = 0;
      *(v8 + 3176) = v29 + v28;
      v30 = pc_array_append(*(v8 + 3160), &__src);
      *(v8 + 3160) = v30;
      if (!v30)
      {
        v12 = "segment_add";
        v13 = 597;
        goto LABEL_38;
      }
    }

LABEL_31:
    ++v16;
    a3 = v35;
    if (v16 >= *(a2 + 2160))
    {
      goto LABEL_32;
    }
  }

  if (!*(v17 + 80))
  {
    v12 = "no chunks found";
    v13 = 572;
    goto LABEL_38;
  }

  *(v17 + 48) = *(v8 + 3176);
  if (!*(v17 + 56))
  {
    goto LABEL_31;
  }

  v19 = 0;
  v20 = 0;
  v21 = *(v17 + 88);
  v22 = *(v8 + 3160);
  while (1)
  {
    v23 = *(v17 + 80) + v19;
    v24 = v21 >= 0x10000 ? 0x10000 : v21;
    v25 = *v23 + *(v17 + 40);
    v26 = *(v23 + 8);
    v27 = *(v17 + 128);
    __src = *(v8 + 3176);
    *&v39 = v24;
    *(&v39 + 1) = v25;
    v40 = v26;
    v41 = v27;
    *(v8 + 3176) = __src + v24;
    v22 = pc_array_append(v22, &__src);
    *(v8 + 3160) = v22;
    if (!v22)
    {
      break;
    }

    v21 -= v24;
    ++v20;
    v19 += 12;
    if (v20 >= *(v17 + 56))
    {
      goto LABEL_29;
    }
  }

  v12 = "segment_add";
  v13 = 584;
LABEL_38:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaForkInputStreamOpen", v13, 137, 0, v12);
LABEL_39:
  free(v3);
  SegmentStreamClose(v8);
  return 0;
}

AAByteStream_impl *aaIntervalInputStreamOpen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x20uLL);
  v8 = v7;
  if (v6 && v7)
  {
    if (a3 >= a2)
    {
      *v7 = a1;
      v7[1] = a2;
      v7[2] = a3 - a2;
      v7[3] = 0;
      AACustomByteStreamSetData(v6, v7);
      AACustomByteStreamSetReadProc(v6, IntervalStreamRead);
      AACustomByteStreamSetPReadProc(v6, IntervalStreamPRead);
      AACustomByteStreamSetSeekProc(v6, IntervalStreamSeek);
      AACustomByteStreamSetCancelProc(v6, IntervalStreamCancel);
      AACustomByteStreamSetCloseProc(v6, IntervalStreamClose);
      return v6;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaIntervalInputStreamOpen", 703, 137, 0, "bad interval");
  }

  else
  {
    v9 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "aaIntervalInputStreamOpen", 702, 137, v9, "malloc");
  }

  free(v6);
  free(v8);
  return 0;
}

ssize_t IntervalStreamPRead(uint64_t a1, void *a2, size_t a3, int64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 == a4)
  {
    return 0;
  }

  if (v5 < a4)
  {
    return -1;
  }

  if ((a4 + a3) > v5)
  {
    a3 = v5 - a4;
  }

  result = AAByteStreamPRead(*a1, a2, a3, *(a1 + 8) + a4);
  if (result < 0)
  {
    return -1;
  }

  *(a1 + 24) += result;
  return result;
}

uint64_t IntervalStreamSeek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = (a1 + 24);
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return -1;
      }

      v3 = (a1 + 16);
    }

    a2 += *v3;
  }

  if ((a2 & 0x8000000000000000) == 0 && a2 <= *(a1 + 16))
  {
    *(a1 + 24) = a2;
    return a2;
  }

  return -1;
}

unint64_t SegmentStreamPRead(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v7 = 0;
  v8 = a1 + 2;
  v64 = a1 + 4;
  while (1)
  {
    v9 = segment_find(a1, a4);
    if (!v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 321, 137, 0, "no segment found");
      return -1;
    }

    v10 = v9;
    v11 = a4 - *v9;
    if (v5 - v7 >= *(v9 + 8) - v11)
    {
      v12 = *(v9 + 8) - v11;
    }

    else
    {
      v12 = v5 - v7;
    }

    v67 = a4 - *v9;
    if (!*(v9 + 24))
    {
      v18 = v8;
      v19 = *a1;
      if (*(*a1 + 32))
      {
        if (!v12)
        {
          goto LABEL_41;
        }

        v20 = 0;
        v21 = v12;
        v22 = a2 + v7;
        v23 = *(v9 + 16) + v11;
        __na = v21;
        while (1)
        {
          v24 = (*(v19 + 32))(*v19, v22, v21, v23);
          if (v24 < 0)
          {
            break;
          }

          if (v24)
          {
            v22 += v24;
            v20 += v24;
            v23 += v24;
            v21 -= v24;
            if (v21)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        v20 = v24;
      }

      else
      {
        __na = v12;
        v20 = -1;
      }

LABEL_39:
      v12 = __na;
      v49 = __na == v20;
      v5 = a3;
      if (!v49)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 337, 137, 0, "aaSegmentStreamProcess");
        return -1;
      }

LABEL_41:
      v8 = v18;
      if (*(a1 + 796) && v12 != aaByteStreamSimulate(*a1))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 340, 137, 0, "aaByteStreamSimulate");
        return -1;
      }

      goto LABEL_56;
    }

    v13 = a1[1];
    v14 = *(v9 + 28);
    if (pthread_mutex_lock((a1 + 386)))
    {
      v56 = "MutexLock";
      v57 = 169;
LABEL_61:
      v58 = 0;
      goto LABEL_68;
    }

    __n = v12;
    v15 = *(v10 + 16);
    v16 = &v8[3 * (((0x317E428CA9 * v15) >> 32) & 0x7F)];
    if (v16[1] != v15)
    {
      break;
    }

    v17 = a1[394] + 1;
    a1[394] = v17;
    v16[2] = v17;
LABEL_26:
    v37 = (*v16 + v67);
    v12 = __n;
    memcpy((a2 + v7), v37, __n);
    v38 = 0;
LABEL_53:
    if (pthread_mutex_unlock((a1 + 386)))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 208, 137, 0, "MutexUnlock");
      goto LABEL_72;
    }

    free(v38);
    if (*(a1 + 796))
    {
      v55 = *(v10 + 24);
      if (aaByteStreamSimulate(*a1) != v55)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 333, 137, 0, "aaByteStreamSimulate");
        return -1;
      }
    }

LABEL_56:
    a4 += v12;
    v7 += v12;
    if (v7 >= v5)
    {
      return v7;
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = v64;
  v28 = v13 + 8 * v14;
  while (*(v27 - 1) != v15)
  {
    v29 = *v27;
    v27 += 3;
    if (v29 < v8[3 * v26 + 2])
    {
      v26 = v25;
    }

    if (++v25 == 128)
    {
      goto LABEL_25;
    }
  }

  v26 = v25;
LABEL_25:
  v30 = v16[2];
  v31 = *v16;
  v32 = &v8[3 * v26];
  v33 = v32[2];
  *v16 = *v32;
  v16[2] = v33;
  *v32 = v31;
  v32[2] = v30;
  v34 = v16[1];
  v35 = *(v10 + 16);
  v36 = a1[394] + 1;
  a1[394] = v36;
  v16[2] = v36;
  if (v34 == v35)
  {
    goto LABEL_26;
  }

  if (pthread_mutex_unlock((a1 + 386)))
  {
    v56 = "MutexUnlock";
    v57 = 175;
    goto LABEL_61;
  }

  v39 = *(v10 + 24);
  v40 = *(v10 + 8) + v39;
  if (v40 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_67:
    v58 = *__error();
    v56 = "aaMalloc";
    v57 = 179;
LABEL_68:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", v57, 137, v58, v56);
    v38 = 0;
    goto LABEL_72;
  }

  v41 = malloc(v40);
  if (!v41)
  {
    goto LABEL_67;
  }

  v38 = v41;
  v63 = v28;
  v42 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_64;
  }

  v61 = v41;
  v62 = v8;
  v43 = v39;
  v60 = v39;
  v44 = 0;
  if (v39)
  {
    v45 = *(v10 + 16);
    v46 = v41;
    v47 = v43;
    while (1)
    {
      v48 = (*(v42 + 32))(*v42, v46, v47, v45);
      if (v48 < 0)
      {
        break;
      }

      if (v48)
      {
        v46 += v48;
        v44 += v48;
        v45 += v48;
        v47 -= v48;
        if (v47)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    v44 = v48;
  }

LABEL_45:
  v38 = v61;
  v49 = v44 == v60;
  v5 = a3;
  v8 = v62;
  if (!v49)
  {
LABEL_64:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 183, 137, 0, "aaByteStreamPReadExpected");
    goto LABEL_72;
  }

  v50 = *(v10 + 8);
  if (*v61 == *(v63 + 4))
  {
    if (v50 + 1 != *(v10 + 24))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 189, 137, 0, "chunk error");
      goto LABEL_72;
    }

    v51 = v61 + 1;
  }

  else
  {
    v52 = *(v10 + 24);
    v51 = &v61[v52];
    if (compression_decode_buffer(&v61[v52], v50, v61, v52, 0, *v63) != *(v10 + 8))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 195, 137, 0, "compression_decode_buffer");
      goto LABEL_72;
    }
  }

  memcpy((a2 + v7), &v51[v67], __n);
  if (!pthread_mutex_lock((a1 + 386)))
  {
    memcpy(*v16, v51, *(v10 + 8));
    v53 = *(v10 + 16);
    v54 = a1[394] + 1;
    a1[394] = v54;
    v16[1] = v53;
    v16[2] = v54;
    v12 = __n;
    goto LABEL_53;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "segment_decode_to_buffer", 202, 137, 0, "MutexLock");
LABEL_72:
  free(v38);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPRead", 330, 137, 0, "segment_decode_to_buffer");
  return -1;
}

unint64_t SegmentStreamPWrite(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = segment_find(a1, a4);
    if (!v8)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", 363, 137, 0, "no segment found");
      return -1;
    }

    v9 = a4 - *v8;
    if (a3 - v7 >= *(v8 + 8) - v9)
    {
      v10 = *(v8 + 8) - v9;
    }

    else
    {
      v10 = a3 - v7;
    }

    if (*(v8 + 24))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", 370, 137, 0, "compressed content");
      return -1;
    }

    v11 = *a1;
    if (!*(*a1 + 40))
    {
      v12 = -1;
      goto LABEL_16;
    }

    if (v10)
    {
      break;
    }

LABEL_17:
    a4 += v10;
    v7 += v10;
    if (v7 >= a3)
    {
      return v7;
    }
  }

  v12 = 0;
  v13 = a2 + v7;
  v14 = *(v8 + 16) + v9;
  v15 = v10;
  while (1)
  {
    v16 = (*(v11 + 40))(*v11, v13, v15, v14);
    if (v16 < 1)
    {
      break;
    }

    v13 += v16;
    v12 += v16;
    v14 += v16;
    v15 -= v16;
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  v12 = v16;
LABEL_16:
  if (v10 == v12)
  {
    goto LABEL_17;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamPWrite", 374, 137, 0, "aaByteStreamPWriteExpected");
  return -1;
}

unint64_t SegmentStreamSimulate(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = 0;
  while (a4 > v8)
  {
    v9 = segment_find(a1, a5);
    if (!v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamSimulate", 276, 137, 0, "no segment found");
      return -1;
    }

    v10 = *(v9 + 8) - (a5 - *v9);
    if (a4 - v8 < v10)
    {
      v10 = a4 - v8;
    }

    a5 += v10;
    v8 += v10;
    if (*(v9 + 24))
    {
      v11 = *(v9 + 24);
    }

    else
    {
      v11 = v10;
    }

    if (v11 != aaByteStreamSimulate(*a1))
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageStreams.c", "SegmentStreamSimulate", 303, 137, 0, "aaByteStreamSimulate");
      return -1;
    }
  }

  return v8;
}

uint64_t segment_find(void *a1, unint64_t a2)
{
  if (a1[397] <= a2)
  {
    return 0;
  }

  v2 = a1[396];
  v3 = a1[395];
  if (v2 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (*(v3 + 29 * ((v4 + v2) >> 1)) <= a2)
      {
        v4 = (v4 + v2) >> 1;
      }

      else
      {
        v2 = (v4 + v2) >> 1;
      }
    }

    while (v4 + 1 < v2);
  }

  return v3 + 29 * v4;
}

uint64_t createSearchThread(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 152) + 2368 * a2;
  bzero(v4, 0x940uLL);
  *(v4 + 16) = a1;
  *(v4 + 8) = a2;
  *(v4 + 24) = 0;
  if (pthread_mutex_init((v4 + 32), 0) || pthread_cond_init((v4 + 96), 0))
  {
    return 0xFFFFFFFFLL;
  }

  *(v4 + 2336) = 0x1000000;
  v6 = malloc(0x1000000uLL);
  *(v4 + 2360) = v6;
  if (!v6)
  {
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "createSearchThread", 142, 23, *v7, "malloc");
    return 0xFFFFFFFFLL;
  }

  if (createThread(v4, searchThreadMain, v4, 0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t searchThreadMain(uint64_t a1)
{
  v2 = *(a1 + 16);
  v36 = *(*v2 + 16);
  Count = CFArrayGetCount(*(*v2 + 64));
  v4 = calloc(Count, 8uLL);
  v37 = calloc(Count, 8uLL);
  if (Count >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*v2 + 64), v5);
      if (ValueAtIndex)
      {
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
        if (CStringPtr)
        {
          v8 = CStringPtr;
          v9 = strlen(CStringPtr);
          v4[v5] = v9;
          v10 = strdup(v8);
          v37[v5] = v10;
          if (*(*v2 + 24))
          {
            v11 = v9 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            v12 = v10;
            do
            {
              *v12 = __tolower(*v12);
              ++v12;
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "searchThreadMain", 65, 23, 0, "CFStringGetCStringPtr returned 0");
        }
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Search.c", "searchThreadMain", 63, 23, 0, "CFArrayGetValueAtIndex(%d) returned 0");
      }

      ++v5;
    }

    while (v5 != (Count & 0x7FFFFFFF));
  }

  v13 = *(a1 + 8);
  if (pthread_mutex_lock((v2 + 32)))
  {
LABEL_16:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 117, 0, "SharedArrayPush: pthread_mutex_lock failed\n");
  }

  else
  {
    v35 = Count & 0x7FFFFFFF;
    while (1)
    {
      v15 = *(v2 + 16);
      v16 = *(v2 + 20);
      v17 = v15;
      if (v15 < v16)
      {
        *(*(v2 + 24) + 4 * v15) = v13;
        v17 = *(v2 + 16);
      }

      *(v2 + 16) = v17 + 1;
      if (!v17)
      {
        if (pthread_cond_broadcast((v2 + 96)))
        {
          break;
        }
      }

      if (pthread_mutex_unlock((v2 + 32)))
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 124, 0, "SharedArrayPush: pthread_mutex_unlock failed\n");
        goto LABEL_17;
      }

      if (v15 >= v16)
      {
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 125, 0, "SharedArrayPush: stack is full\n");
        goto LABEL_17;
      }

      if (pthread_mutex_lock((a1 + 32)))
      {
        goto LABEL_17;
      }

      while (1)
      {
        v18 = *(a1 + 24);
        if (v18 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 96), (a1 + 32)))
        {
          goto LABEL_17;
        }
      }

      *(a1 + 24) = v18 - 1;
      if (pthread_mutex_unlock((a1 + 32)))
      {
        goto LABEL_17;
      }

      v19 = *(a1 + 2344);
      if (!v19)
      {
        free(v4);
        free(v37);
        return 0;
      }

      if (*(*v2 + 24))
      {
        v20 = *(a1 + 2360);
        do
        {
          *v20 = __tolower(*v20);
          ++v20;
          --v19;
        }

        while (v19);
      }

      v34 = Count;
      if (Count >= 1)
      {
        v21 = 0;
        do
        {
          if (v4[v21] >= 2uLL)
          {
            v22 = *(a1 + 2344);
            if (v22 >= 1)
            {
              v23 = *(a1 + 2360);
              v24 = &v23[*(a1 + 2352)];
              v25 = &v23[v22];
              v26 = v23;
              do
              {
                v27 = memmem(v26, v25 - v26, v37[v21], v4[v21]);
                if (!v27)
                {
                  break;
                }

                v28 = v27;
                v29 = &v27[-v36];
                if (&v27[-v36] < v23)
                {
                  v29 = v23;
                }

                v30 = &v27[v4[v21]];
                v31 = &v30[v36];
                if (&v30[v36] > v25)
                {
                  v31 = v25;
                }

                v38[2] = v29;
                v38[3] = v31;
                v38[4] = v27;
                v38[5] = v30;
                v32 = &v27[-v24];
                if (v27 < v24)
                {
                  v32 = -1;
                }

                v38[0] = a1 + 288;
                v38[1] = v32;
                v33 = *(*v2 + 48);
                if (v33)
                {
                  v33(*(*v2 + 56), v38);
                }

                v26 = v28 + 1;
              }

              while ((v28 + 1) < v25);
            }
          }

          ++v21;
        }

        while (v21 != v35);
      }

      v13 = *(a1 + 8);
      Count = v34;
      if (pthread_mutex_lock((v2 + 32)))
      {
        goto LABEL_16;
      }
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/../ParallelCompression/../Common/SharedArray.h", "SharedArrayPush", 122, 0, "SharedArrayPush: pthread_cond_broadcast failed\n");
  }

LABEL_17:
  *(v2 + 8) = 0;
  return 0;
}
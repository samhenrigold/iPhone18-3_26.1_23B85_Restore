uint64_t readboot()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if ((*(v1 + 32))(*(v1 + 24), __buf, 4096, 0) == 4096)
  {
    v4 = *(v2 + 64);
    if (v4 >= 1 && pwrite(v4, __buf, 0x1000uLL, 0) != 4096)
    {
      v5 = *__error();
      v104 = fsck_ctx;
      v105 = qword_100059E30;
      fsck_print(&v104, 6, "Failed to shadow offset 0, length 0x%x (errno: %d)", 4096, v5);
    }

    if ((__buf[0] & 0xFD) == 0xE9)
    {
      v3[28] = 0;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *v3 = 0u;
      v3[18] = -1;
      v6 = v81;
      v7 = __buf[11] | (v81 << 8);
      v8 = v82;
      *v3 = v7;
      v3[1] = v8;
      v9 = v84;
      v3[2] = v83;
      v3[3] = v9;
      v10 = v85;
      v11 = v86;
      v12 = v87;
      v3[4] = v85;
      v3[5] = v12;
      v13 = v88;
      v14 = v89;
      v3[6] = v88;
      v3[7] = v14;
      v3[8] = v90;
      v3[9] = v11;
      v15.i32[1] = HIDWORD(v91);
      *(v3 + 5) = v91;
      v3[22] = v13;
      v3[25] = v7 * v8;
      if (v6 < 2 || v7 > 0x1000 || (v15.i32[0] = v7, v16 = vcnt_s8(v15), v16.i16[0] = vaddlv_u8(v16), v16.i32[0] >= 2u))
      {
        v104 = fsck_ctx;
        v105 = qword_100059E30;
        v72 = v7;
        v21 = "Invalid sector size: %u\n";
      }

      else
      {
        if (v8)
        {
          v16.i32[0] = v8;
          v17 = vcnt_s8(v16);
          v17.i16[0] = vaddlv_u8(v17);
          if (v17.i32[0] < 2u)
          {
            v18 = v3[17];
            if (v10)
            {
              if ((v18 & 1) == 0)
              {
                v19 = 0;
                goto LABEL_14;
              }
            }

            else
            {
              v3[17] = v18 | 1;
            }

            v3[22] = v92;
            if (v93 < 0)
            {
              v3[18] = v93 & 0xF;
            }

            if (v94)
            {
              v104 = fsck_ctx;
              v105 = qword_100059E30;
              v72 = HIBYTE(v94);
              v74 = v94;
              v21 = "Unknown filesystem version: %x.%x\n";
              goto LABEL_25;
            }

            v26 = v95;
            v27 = v96;
            v28 = v97;
            v3[12] = v96;
            v3[13] = v28;
            v3[14] = v26;
            v29 = (*(v2 + 32))(*(v2 + 24), &v104, v7, (v27 * v7));
            v31 = *v3;
            if (v29 != v31)
            {
              v40 = __error();
              v41 = strerror(*v40);
              v76 = fsck_ctx;
              v77 = qword_100059E30;
              v42 = "could not read fsinfo block";
              goto LABEL_39;
            }

            v32 = v29;
            v33 = *(v2 + 64);
            if (v33 >= 1)
            {
              v34 = pwrite(v33, &v104, v32, v3[12] * v31);
              v35 = *v3;
              if (v34 != v35)
              {
                v36 = v3[12] * v35;
                v37 = *__error();
                v76 = fsck_ctx;
                v77 = qword_100059E30;
                fsck_print(&v76, 6, "Failed to shadow offset 0x%x, length 0x%x (errno %d)", v36, v35, v37);
              }
            }

            if (v104 == 1096897106 && v106 == 1631679090 && (v30.i32[0] = v108, v38 = vmovl_u8(v30).u64[0], vuzp1_s8(v38, v38).u32[0] == -1437270016))
            {
              v19 = 0;
            }

            else
            {
              v76 = fsck_ctx;
              v77 = qword_100059E30;
              fsck_print(&v76, 6, "Warning: Invalid signature in fsinfo block\n");
              v76 = fsck_ctx;
              v77 = qword_100059E30;
              if (!fsck_ask(&v76, 0, "fix", v43, v44, v45, v46, v47, v72))
              {
                v3[12] = 0;
                v19 = 8;
                goto LABEL_14;
              }

              LODWORD(v104) = 1096897106;
              v106 = 1631679090;
              v108 = -1437270016;
              v109 = -1437270016;
              if ((*(v2 + 40))(*(v2 + 24), &v104, *v3, v3[12] * *v3) != *v3)
              {
                v53 = __error();
                v41 = strerror(*v53);
                v76 = fsck_ctx;
                v77 = qword_100059E30;
                v42 = "Unable to write FSInfo";
                goto LABEL_39;
              }

              v19 = 1;
            }

            if (v3[12])
            {
              *(v3 + 15) = v107;
            }

LABEL_14:
            v20 = v3[3] * v3[22];
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              v76 = fsck_ctx;
              v77 = qword_100059E30;
              v21 = "Invalid boot->FATs or boot->FATsecs\n";
LABEL_50:
              v24 = &v76;
              goto LABEL_26;
            }

            v3[24] = (*v3 + 32 * v3[4] - 1) / *v3 + v20 + v3[2];
            v39 = v3[9];
            if (v39)
            {
              v3[11] = 0;
            }

            else
            {
              v39 = v3[11];
              if (!v39)
              {
                v3[21] = 0;
                if (v98 == 41 && v99 | (v100 << 32) | (v101 << 40) | (v102 << 48) | (v103 << 54))
                {
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  fsck_print(&v76, 6, "Warning: Encountered special FAT where total sector location is 64bit. Not Supported \n");
                }

                else
                {
                  v79 = 0;
                  v78 = 0;
                  __strlcpy_chk();
                  v79 = 0;
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  fsck_print(&v76, 6, "Warning: OEMName: %s\n");
                }

LABEL_47:
                v48 = v3[21];
                if (!v48 || (v49 = v3[24], v48 < v49))
                {
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  v72 = v48;
                  v21 = "Filesystem has invalid NumSectors %u\n";
                  goto LABEL_50;
                }

                v50 = (v48 - v49) / v3[1];
                v51 = v50 + 2;
                v3[20] = v50 + 2;
                if (v3[17])
                {
                  v52 = 0xFFFFFFF;
                }

                else if (v51 >= 0xFF7)
                {
                  if (v51 >= 0xFFF8)
                  {
                    v76 = fsck_ctx;
                    v77 = qword_100059E30;
                    v72 = v50;
                    v21 = "Filesystem too big (%u clusters) for non-FAT32 partition\n";
                    goto LABEL_50;
                  }

                  v52 = 0xFFFF;
                }

                else
                {
                  v52 = 4095;
                }

                v3[19] = v52;
                v54 = *(v2 + 64);
                v55 = *v3;
                if (v54 >= 1)
                {
                  v56 = ftruncate(v54, v55 * v48);
                  v55 = *v3;
                  if (v56)
                  {
                    v57 = v55 * v3[9];
                    v58 = *__error();
                    v76 = fsck_ctx;
                    v77 = qword_100059E30;
                    fsck_print(&v76, 6, "Failed to truncate shadow file to size 0x%x (errno %d)", v57, v58);
                    v55 = *v3;
                  }
                }

                v59 = v3[22];
                v60 = v59 * v55;
                if ((v60 & 0xFFFFFFFF00000000) != 0)
                {
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  v21 = "Invalid boot->FATsecs or boot->BytesPerSec\n";
                  goto LABEL_50;
                }

                v61 = v3[19];
                if (v61 == 0xFFFF)
                {
                  v62 = v60 >> 1;
                }

                else if (v61 == 0xFFFFFFF)
                {
                  v62 = v60 >> 2;
                }

                else
                {
                  if ((v60 & 0x80000000) != 0)
                  {
                    v76 = fsck_ctx;
                    v77 = qword_100059E30;
                    v21 = "Invalid boot->FATsecs or boot->BytesPerSec for FAT12\n";
                    goto LABEL_50;
                  }

                  v62 = 2 * v60 / 3u;
                }

                v3[23] = v62;
                v63 = v3[20];
                if (v62 < v63)
                {
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  fsck_print(&v76, 6, "Warning: FAT size too small, %u entries won't fit into %u sectors\n", v63, v59);
                  v3[20] = v3[23];
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  if (fsck_ask(&v76, 0, "Fix total sectors", v64, v65, v66, v67, v68, v73))
                  {
                    v69 = v3[24] + (v3[20] - 2) * v3[1];
                    v3[21] = v69;
                    if (v3[9])
                    {
                      v3[9] = v69;
                      v86 = v69;
                    }

                    else
                    {
                      v3[11] = v69;
                      HIDWORD(v91) = v69;
                    }

                    if ((*(v2 + 40))(*(v2 + 24), __buf, *v3, 0) == *v3)
                    {
                      v19 = v19 | 1;
                      goto LABEL_85;
                    }

                    v71 = __error();
                    v41 = strerror(*v71);
                    v76 = fsck_ctx;
                    v77 = qword_100059E30;
                    v42 = "could not write boot sector";
LABEL_39:
                    v72 = v42;
                    v74 = v41;
                    v21 = "%s (%s)\n";
                    goto LABEL_50;
                  }

                  v70 = v3[23] - 2;
                  v76 = fsck_ctx;
                  v77 = qword_100059E30;
                  fsck_print(&v76, 6, "Warning: Continuing, assuming %u clusters\n", v70);
                }

LABEL_85:
                v3[27] = 0;
                return v19;
              }
            }

            v3[21] = v39;
            goto LABEL_47;
          }
        }

        v104 = fsck_ctx;
        v105 = qword_100059E30;
        v72 = v8;
        v21 = "Invalid sectors per cluster: %u\n";
      }
    }

    else
    {
      v104 = fsck_ctx;
      v105 = qword_100059E30;
      v74 = __buf[1];
      v75 = __buf[2];
      v72 = __buf[0];
      v21 = "Invalid BS_jmpBoot in boot block: %02x%02x%02x\n";
    }
  }

  else
  {
    v22 = __error();
    v23 = strerror(*v22);
    v104 = fsck_ctx;
    v105 = qword_100059E30;
    v72 = "could not read boot block";
    v74 = v23;
    v21 = "%s (%s)\n";
  }

LABEL_25:
  v24 = &v104;
LABEL_26:
  fsck_print(v24, 2, v21, v72, v74, v75);
  return 16;
}

uint64_t writefsinfo()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = (*v0 * v0[12]);
  v5 = (*(v1 + 32))(*(v1 + 24), v14);
  if (v5 == *v3)
  {
    v6 = v3[16];
    v15 = v3[15];
    v16 = v6;
    if ((*(v2 + 40))(*(v2 + 24), v14, v5, v4) == *v3)
    {
      return 0;
    }

    v11 = __error();
    v9 = strerror(*v11);
    v12 = fsck_ctx;
    v13 = qword_100059E30;
    v10 = "Unable to write FSInfo";
  }

  else
  {
    v8 = __error();
    v9 = strerror(*v8);
    v12 = fsck_ctx;
    v13 = qword_100059E30;
    v10 = "could not read fsinfo block";
  }

  fsck_print(&v12, 2, "%s (%s)\n", v10, v9);
  return 16;
}

uint64_t checkfilesys(char *a1, void *a2)
{
  v3 = a1;
  if (a2 && *a2 && (v4 = a2[1]) != 0)
  {
    v5 = a2[2];
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v65 = -1;
    if (v5)
    {
      v6 = 1;
      v4("Check device: Checking parameters", 1, 3, &v75);
      if (!v3)
      {
LABEL_16:
        v10 = 0;
        LOBYTE(v11) = 0;
        v12 = 8;
        v13 = 1;
LABEL_17:
        v14 = 1;
        goto LABEL_58;
      }
    }

    else
    {
      v6 = 0;
      if (!a1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v65 = -1;
    if (!a1)
    {
      goto LABEL_16;
    }
  }

  v7 = fsck_fd();
  if ((v7 & 0x80000000) == 0)
  {
    v8 = fsck_fd();
    v65 = v8;
    goto LABEL_26;
  }

  if (!strncmp(v3, "/dev/disk", 9uLL))
  {
    if (snprintf(__str, 0x40uLL, "/dev/r%s", v3 + 5) <= 0x3F)
    {
      v15 = a2[7];
      if (v15)
      {
        asprintf(&v74, "%s/shadow-r%s", v15, v3 + 5);
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (strncmp(v3, "disk", 4uLL))
    {
      if (!strncmp(v3, "/dev/fd/", 8uLL))
      {
        __endptr[0] = 0;
        v9 = strtol(v3 + 8, __endptr, 10);
        v65 = v9;
        if (*__endptr[0])
        {
          *v56 = fsck_ctx;
          *&v57 = qword_100059E30;
          fsck_print(v56, 2, "Invalid file descriptor path: %s", v3);
          goto LABEL_16;
        }

        if (a2[7])
        {
          asprintf(&v74, "%s/shadow-%d", a2[7], v9);
        }
      }

      goto LABEL_25;
    }

    if (snprintf(__str, 0x40uLL, "/dev/r%s", v3) <= 0x3F)
    {
      v16 = a2[7];
      if (v16)
      {
        asprintf(&v74, "%s/shadow-r%s", v16, v3);
      }

LABEL_24:
      v3 = __str;
    }
  }

LABEL_25:
  v8 = v65;
LABEL_26:
  v14 = v7 >> 31;
  v17 = ++v75;
  if ((v8 & 0x80000000) == 0)
  {
    if (!a2[3])
    {
      a2[3] = &v65;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *v56 = 0u;
    if ((a2[6])())
    {
      v18 = __error();
      v19 = strerror(*v18);
      *__endptr = fsck_ctx;
      v55 = qword_100059E30;
      fsck_print(__endptr, 2, "%s (%s)\n", "Cannot stat", v19);
      v10 = 0;
LABEL_57:
      LOBYTE(v11) = 0;
      v12 = 8;
      v13 = 1;
      goto LABEL_58;
    }

    v17 = v75;
  }

  v75 = v17 + 1;
  v20 = fsck_alwaysno() || fsck_quick();
  fsck_set_rdonly(v20);
  if (!fsck_preen())
  {
    *v56 = fsck_ctx;
    *&v57 = qword_100059E30;
    fsck_print(v56, 6, "** %s", v3);
  }

  ++v75;
  if (v6)
  {
    (a2[2])("Check device: Checking parameters", *a2);
    v75 = 0;
    v10 = 1;
    (a2[1])("Check device: open file", 1, 3, &v75, *a2);
  }

  else
  {
    v10 = 0;
  }

  if ((v65 & 0x80000000) == 0)
  {
    ++v75;
    goto LABEL_52;
  }

  if (a2[3])
  {
    ++v75;
  }

  else
  {
    if (fsck_rdonly())
    {
      v21 = open(v3, 0, 0);
    }

    else
    {
      v21 = open(v3, 34, 0);
    }

    v65 = v21;
    ++v75;
    v14 = 1;
    if ((v21 & 0x80000000) == 0)
    {
LABEL_52:
      if (!fsck_preen())
      {
        *v56 = fsck_ctx;
        *&v57 = qword_100059E30;
        fsck_print(v56, 6, "\n");
      }

      goto LABEL_54;
    }
  }

  if (a2[3] || fsck_rdonly())
  {
    goto LABEL_52;
  }

  v65 = open(v3, 0, 0);
  if (v65 < 0)
  {
    if (!fsck_preen())
    {
      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      fsck_print(v56, 6, "\n");
    }
  }

  else
  {
    *v56 = fsck_ctx;
    *&v57 = qword_100059E30;
    fsck_print(v56, 6, "Warning: (NO WRITE)\n");
  }

  v14 = 1;
  fsck_set_rdonly(1);
LABEL_54:
  ++v75;
  v22 = a2[3];
  if (!v22 && v65 < 0)
  {
    v23 = __error();
    v24 = strerror(*v23);
    *v56 = fsck_ctx;
    *&v57 = qword_100059E30;
    fsck_print(v56, 2, "%s (%s)\n", "Can't open\n", v24);
    goto LABEL_57;
  }

  if (!v22)
  {
    a2[3] = &v65;
  }

  if (v74)
  {
    v29 = open(v74, 3586);
    *(a2 + 16) = v29;
    if (v29 < 0)
    {
      if (*__error() == 17)
      {
        v30 = 1;
        while (1)
        {
          v31 = *(a2 + 16);
          if (v31 != -1)
          {
            break;
          }

          v56[0] = 0;
          v32 = v30 + 1;
          asprintf(v56, "%s-%d", v74, v30);
          *(a2 + 16) = open(v56[0], 3586);
          free(v56[0]);
          v30 = v32;
          if (v32 == 200)
          {
            goto LABEL_88;
          }
        }
      }

      else
      {
LABEL_88:
        v31 = *(a2 + 16);
      }

      if (v31 < 0)
      {
        v33 = v74;
        v34 = *__error();
        *v56 = fsck_ctx;
        *&v57 = qword_100059E30;
        fsck_print(v56, 3, "Failed to open shadow file at %s (%d)\n", v33, v34);
      }
    }
  }

  ++v75;
  if (v6)
  {
    (a2[2])(off_1000505B0[v10], *a2);
    v75 = 0;
    (a2[1])(off_1000505B0[++v10], 2, 1, &v75, *a2);
  }

  v35 = readboot();
  if ((v35 & 0x10) != 0)
  {
    if (v14)
    {
      close(v65);
      v12 = 201;
      v13 = 1;
      v14 = 1;
    }

    else
    {
      v12 = 201;
      v13 = 1;
    }

    LOBYTE(v11) = v35;
    goto LABEL_58;
  }

  ++v75;
  if (v6)
  {
    (a2[2])(off_1000505B0[v10], *a2);
    v75 = 0;
    if (fsck_quick())
    {
      (a2[1])(off_1000505B0[++v10], 19, 1, &v75, *a2);
LABEL_100:
      if (HIDWORD(v70) != 4095)
      {
        if (isdirty(&v66, DWORD2(v70) & ~(SDWORD2(v70) >> 31), a2))
        {
          *v56 = fsck_ctx;
          *&v57 = qword_100059E30;
          fsck_print(v56, 6, "Warning: FILESYSTEM DIRTY; SKIPPING CHECKS\n");
          v12 = 200;
        }

        else
        {
          *v56 = fsck_ctx;
          *&v57 = qword_100059E30;
          fsck_print(v56, 6, "Warning: FILESYSTEM CLEAN; SKIPPING CHECKS\n");
          v12 = 0;
        }

        if (v14)
        {
          close(v65);
        }

        if (!v6)
        {
          LOBYTE(v11) = v35;
          goto LABEL_67;
        }

        (a2[2])(off_1000505B0[v10], *a2);
        v10 += 2;
        v75 = 0;
        v13 = 1;
        LOBYTE(v11) = v35;
        goto LABEL_59;
      }

      fsck_set_rdonly(1);
      fsck_set_alwaysno(1);
      fsck_set_alwaysyes(0);
      fsck_set_quick(1);
      if (v6)
      {
        (a2[2])(off_1000505B0[v10], *a2);
        v75 = 0;
        ++v10;
      }

      goto LABEL_107;
    }

    ++v10;
  }

  else if (fsck_quick())
  {
    goto LABEL_100;
  }

  ++v10;
LABEL_107:
  v13 = 1;
  v52 = 3;
  v36 = 1;
  v53 = 3;
  while (1)
  {
    if (v6)
    {
      if (fsck_quick())
      {
        v37 = 58;
      }

      else
      {
        v37 = 77;
      }

      (a2[1])(off_1000505B0[v10], v37, 6, &v75, *a2);
    }

    DWORD2(v72) = 0;
    v73 = 0;
    if (!fsck_preen() && !fsck_quiet())
    {
      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      fsck_print(v56, 6, "** Phase 1 - Preparing FAT\n");
    }

    ++v75;
    v38 = fat_init(&v66, a2);
    v11 = v38 | v35;
    if ((v38 & 0x10) != 0)
    {
      break;
    }

    ++v75;
    if (!fsck_preen() && !fsck_quiet())
    {
      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      fsck_print(v56, 6, "** Phase 2 - Checking Directories\n");
    }

    v39 = resetDosDirSection(&v66, a2);
    v11 |= v39;
    if ((v39 & 0x10) != 0)
    {
      v13 = 0;
      v12 = 203;
      goto LABEL_58;
    }

    ++v75;
    v40 = v65;
    v41 = fsck_rdonly();
    v42 = handleDirTree(v40, &v66, v41, a2);
    v11 |= v42;
    if ((v42 & 0x10) != 0)
    {
      v13 = 0;
      v12 = 204;
      goto LABEL_58;
    }

    if (!fsck_preen() && !fsck_quiet())
    {
      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      fsck_print(v56, 6, "** Phase 3 - Checking for Orphan Clusters\n");
    }

    ++v75;
    v11 |= fat_free_unused(a2);
    if ((v11 & 0x10) != 0)
    {
      v13 = 0;
      v12 = 205;
      goto LABEL_58;
    }

    if (fsck_quick())
    {
      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      if (v11)
      {
        fsck_print(v56, 6, "FILESYSTEM DIRTY\n");
      }

      else
      {
        fsck_print(v56, 6, "FILESYSTEM CLEAN\n");
      }
    }

    *v56 = fsck_ctx;
    *&v57 = qword_100059E30;
    if (v73)
    {
      fsck_print(v56, 6, "Warning: %d files, %lld KiB free (%d clusters), %lld KiB bad (%d clusters)\n");
    }

    else
    {
      fsck_print(v56, 6, "Warning: %d files, %lld KiB free (%d clusters)\n");
    }

    if (v11 && (v11 & 0x28) == 0x20)
    {
      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      if (!fsck_ask(v56, 1, "MARK FILE SYSTEM CLEAN", v43, v44, v45, v46, v47, v51))
      {
        v11 &= 0xFFFFFFC7;
      }

      *v56 = fsck_ctx;
      *&v57 = qword_100059E30;
      if ((v11 & 0x20) != 0)
      {
        fsck_print(v56, 6, "Warning: MARKING FILE SYSTEM CLEAN\n");
        v11 |= fat_mark_clean(a2);
      }

      else
      {
        fsck_print(v56, 6, "Warning: \n***** FILE SYSTEM IS LEFT MARKED AS DIRTY *****\n");
      }
    }

    ++v75;
    v48 = fat_flush(a2);
    ++v75;
    v11 |= v48;
    if (v11)
    {
      if (fsck_rdonly())
      {
        v13 = 0;
        v12 = 206;
        goto LABEL_58;
      }

      if ((v11 & 0x10) != 0)
      {
        v13 = 0;
        v35 = 0;
        v49 = __OFSUB__(v36--, 1);
        if (!((v36 < 0) ^ v49 | (v36 == 0)))
        {
          continue;
        }
      }

      if ((v11 & 8) != 0)
      {
        v13 = 0;
        v35 = 0;
        v50 = v53-- <= 1;
        if (!v50)
        {
          continue;
        }
      }

      if ((v11 & 0x40) != 0)
      {
        v13 = 0;
        v35 = 0;
        v50 = v52-- <= 1;
        if (!v50)
        {
          continue;
        }
      }
    }

    v13 = 0;
    if ((v11 & 0x18) != 0)
    {
      v12 = 207;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_58;
  }

  if (v14)
  {
    close(v65);
    v12 = 202;
    goto LABEL_17;
  }

  v12 = 202;
LABEL_58:
  if (v6)
  {
LABEL_59:
    if (!fsck_quick() || HIDWORD(v70) == 4095)
    {
      v25 = off_100050580;
      if (!v12)
      {
        v25 = off_1000505B0;
      }

      (a2[2])(v25[v10++], *a2);
    }

    v75 = 0;
    (a2[1])(off_1000505B0[v10], 19, 1, &v75, *a2);
  }

  if ((v13 & 1) == 0)
  {
    finishDosDirSection();
  }

LABEL_67:
  ++v75;
  fat_uninit();
  freeUseMap();
  if (v14)
  {
    close(v65);
  }

  v26 = a2[7];
  if (v26)
  {
    free(v26);
  }

  if (v74)
  {
    free(v74);
  }

  v27 = *(a2 + 16);
  if (v27 >= 1)
  {
    close(v27);
  }

  if ((v11 & 6) != 0)
  {
    *v56 = fsck_ctx;
    *&v57 = qword_100059E30;
    fsck_print(v56, 6, "Warning: \n***** FILE SYSTEM WAS MODIFIED *****\n");
  }

  if (v6)
  {
    (a2[2])(off_1000505B0[v10], *a2);
  }

  return v12;
}

uint64_t CONV_UTF8ToUnistr255(unsigned __int8 *a1, uint64_t a2, _WORD *a3, int a4)
{
  v5 = a3 + 1;
  if (!a2)
  {
    result = 0;
    LODWORD(v10) = a3 + 2;
    goto LABEL_95;
  }

  v6 = a2;
  v8 = 0;
  v9 = 2;
  v10 = a3 + 1;
  do
  {
    v11 = a1;
    while (1)
    {
      v13 = *a1++;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_91;
      }

      if (v9 > 511)
      {
LABEL_94:
        result = 63;
        goto LABEL_95;
      }

      --v6;
      if ((v12 & 0x80) == 0)
      {
        v42 = a4;
        v43 = v8;
        if ((a4 & 0x20) == 0 && v12 != 47)
        {
          goto LABEL_45;
        }

        if (v6)
        {
          goto LABEL_36;
        }

        if (v12 == 32)
        {
          v27 = -4056;
        }

        else
        {
          if (v12 != 46)
          {
LABEL_36:
            if (v12 > 0x1F)
            {
              v27 = word_10003BC46[v12];
            }

            else
            {
              v27 = v12 | 0xF000;
            }

            goto LABEL_44;
          }

          v27 = -4055;
        }

LABEL_44:
        LOWORD(v12) = v27;
        goto LABEL_45;
      }

      v14 = utf_extrabytes[v12 >> 3];
      if ((v14 & 0x80000000) != 0 || v6 < v14)
      {
        goto LABEL_27;
      }

      v6 -= v14;
      if (v14 == 1)
      {
        v24 = *a1;
        if ((v24 & 0xC0) == 0x80)
        {
          v23 = v24 + (v12 << 6) - 12416;
          if (v23 >= 0x80)
          {
            v28 = 2;
            goto LABEL_53;
          }
        }

        goto LABEL_27;
      }

      if (utf_extrabytes[v12 >> 3] == 2)
      {
        break;
      }

      if (utf_extrabytes[v12 >> 3] != 3)
      {
        LODWORD(v10) = a3 + v9;
        result = 22;
        goto LABEL_95;
      }

      v15 = *a1;
      if ((v15 & 0xC0) == 0x80)
      {
        v16 = v11[2];
        if ((v16 & 0xC0) == 0x80)
        {
          v17 = v11[3];
          if ((v17 & 0xC0) == 0x80)
          {
            v18 = v17 + (((v15 << 6) + (v12 << 12) + v16) << 6) - 63512704;
            if (!(v18 >> 20))
            {
              *v10 = (v18 >> 10) | 0xD800;
              v10 = (v5 + v9);
              if (v9 >= 510)
              {
                goto LABEL_94;
              }

              a1 = v11 + 4;
              *v10 = v18 & 0x3FF | 0xDC00;
              v19 = 4;
              goto LABEL_31;
            }
          }
        }
      }

LABEL_27:
      v10 = (a3 + v9);
      if (v9 > 507)
      {
        goto LABEL_94;
      }

      v25 = hexdigits[v12 >> 4];
      v26 = hexdigits[v12 & 0xF];
      *v10 = 37;
      if (v14 <= 0)
      {
        v14 = 0;
      }

      v6 += v14;
      v10[1] = v25;
      v10[2] = v26;
      v19 = 6;
LABEL_31:
      v9 += v19;
      v10 = (a3 + v9);
      v11 = a1;
      if (!v6)
      {
        goto LABEL_91;
      }
    }

    v20 = *a1;
    if ((v20 & 0xC0) != 0x80)
    {
      goto LABEL_27;
    }

    v21 = v11[2];
    if ((v21 & 0xC0) != 0x80)
    {
      goto LABEL_27;
    }

    v22 = (v20 << 6) + (v12 << 12) + v21;
    v23 = v22 - 925824;
    if ((v22 - 925824) < 0x800 || v23 >> 11 >= 0x1B && (v23 < 0xE000 || (v22 & 0x3FFFFE) == 0xF207E))
    {
      goto LABEL_27;
    }

    v28 = 3;
LABEL_53:
    v42 = a4;
    v43 = v8;
    if (v9 == 2)
    {
      goto LABEL_80;
    }

    v41 = v28;
    if (!sub_100002B28(v23))
    {
      v28 = v41;
      goto LABEL_80;
    }

    v29 = *(a3 + v9 - 2);
    if ((v23 - 4449) > 0x61u)
    {
      if ((v23 - 12443) < 0xD265u)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if ((v23 >> 1) <= 0x8BAu && (v29 - 4352) <= 0x12u)
      {
        v30 = 588 * v29 + 28 * v23 - 18076;
LABEL_77:
        v28 = v41;
        goto LABEL_78;
      }

      if ((v23 >> 3) >= 0x235u && ((v29 + 21504) >> 2) <= 0xAE8u)
      {
        HIDWORD(v34) = -1840706560 - 1227133513 * v29;
        LODWORD(v34) = HIDWORD(v34);
        if ((v34 >> 2) <= 0x9249249)
        {
          v30 = v23 + v29 - 4519;
          goto LABEL_77;
        }

LABEL_76:
        v30 = 0;
        goto LABEL_77;
      }
    }

    v31 = &unk_10003C0C8;
    v32 = &unk_10003C268;
    while (2)
    {
      v33 = &v31[8 * ((v32 - v31) >> 4)];
      if (*v33 > v23)
      {
        v32 = v33 - 2;
        goto LABEL_66;
      }

      if (*v33 < v23)
      {
        v31 = v33 + 2;
LABEL_66:
        if (v31 > v32)
        {
          goto LABEL_76;
        }

        continue;
      }

      break;
    }

    v35 = v33[1];
    if (!v35)
    {
      goto LABEL_76;
    }

    v36 = &unk_10003C270 + 4 * v35;
    v28 = v41;
    if (*v36 <= v29)
    {
      v37 = &v36[4 * HIWORD(v35) - 4];
      if (*v37 >= v29)
      {
        while (1)
        {
          v38 = &v36[4 * ((v37 - v36) >> 3)];
          v39 = *v38;
          if (v39 <= v29)
          {
            if (v39 >= v29)
            {
              v30 = v38[1];
              goto LABEL_78;
            }

            v36 = (v38 + 2);
          }

          else
          {
            v37 = v38 - 2;
          }

          v30 = 0;
          if (v36 > v37)
          {
            goto LABEL_78;
          }
        }
      }
    }

    v30 = 0;
LABEL_78:
    if (v30)
    {
      v9 -= 2;
      v23 = v30;
    }

LABEL_80:
    a1 = &v11[v28];
    if (v23 == 9216)
    {
      LOWORD(v12) = 0;
    }

    else
    {
      LOWORD(v12) = v23;
    }

LABEL_45:
    if (sub_100002B28(v12))
    {
      v8 = v43 + 1;
    }

    else
    {
      if (v43 >= 2)
      {
        sub_100002B80((a3 + v9 + -2 * v43), v43);
      }

      v8 = 0;
    }

    *(a3 + v9) = v12;
    v9 += 2;
    v10 = (a3 + v9);
    a4 = v42;
  }

  while (v6);
LABEL_91:
  if (v8 >= 2)
  {
    sub_100002B80(&v10[-v8], v8);
  }

  result = 0;
LABEL_95:
  *a3 = (v10 - v5) >> 1;
  return result;
}

uint64_t sub_100002B28(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = byte_10003BD46[a1 >> 8];
  if (!byte_10003BD46[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (byte_10003BD46[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

_WORD *sub_100002B80(_WORD *result, unsigned int a2)
{
  do
  {
    if (byte_10003D0C4[*result >> 8])
    {
      v2 = byte_10003D0C4[256 * byte_10003D0C4[*result >> 8] + *result];
    }

    else
    {
      v2 = 0;
    }

    if (a2 < 2)
    {
      break;
    }

    v3 = 0;
    v4 = result + 1;
    do
    {
      v5 = *v4;
      v6 = byte_10003D0C4[v5 >> 8];
      if (byte_10003D0C4[v5 >> 8])
      {
        LODWORD(v6) = byte_10003D0C4[256 * v6 + *v4];
      }

      if (v2 > v6)
      {
        v7 = *(v4 - 1);
        *(v4 - 1) = v5;
        *v4 = v7;
        v3 = 1;
      }

      ++v4;
      v2 = v6;
    }

    while (v4 < &result[a2]);
  }

  while (v3);
  return result;
}

unint64_t CONV_Unistr255ToUTF8(unint64_t result, _BYTE *a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (result + 2);
    v8 = a2;
    while (1)
    {
      --v3;
      if (v4 < 1)
      {
        v10 = *v7++;
        result = v10;
        if (v10 >= 0xC0uLL)
        {
          v11 = byte_10003E5C4[result >> 8];
          if (byte_10003E5C4[result >> 8])
          {
            if (v11 == 255 || ((byte_10003E5C4[32 * v11 + 224 + (result >> 3)] >> (result & 7)) & 1) != 0)
            {
              v12 = result + 21504;
              if ((result + 21504) > 0x2BA4u)
              {
                v4 = sub_1000032A0(result, &v21) - 1;
                result = v21;
              }

              else
              {
                v13 = (result + 21504) % 0x1Cu;
                result = ((28533 * (result + 21504)) >> 24) | 0x1100;
                v21 = ((28533 * v12) >> 24) | 0x1100;
                v22[0] = v12 % 0x24Cu / 0x1C + 4449;
                if (v12 % 0x1Cu)
                {
                  v22[1] = v13 + 4519;
                  v4 = 2;
                }

                else
                {
                  v4 = 1;
                }
              }

              v3 += v4;
              v5 = v22;
            }
          }
        }
      }

      else
      {
        v9 = *v5++;
        result = v9;
        --v4;
      }

      if (result)
      {
        v14 = result;
      }

      else
      {
        v14 = 9216;
      }

      if (result == 47)
      {
        v14 = 95;
      }

      if (v14 > 0x7F)
      {
        if (v14 > 0x7FF)
        {
          if (v14 > 0xFFFD)
          {
            goto LABEL_46;
          }

          if (v14 >> 10 != 54 || v3 == 0)
          {
            if ((v14 & 0xFFC0) != 0xF000 || (v14 & 0x3F) >= 0x2B)
            {
              v19 = v14 >> 6;
              v20 = (v14 >> 12) | 0xFFFFFFE0;
LABEL_41:
              v8 = &a2[v6];
              if (v6 > 762)
              {
                goto LABEL_46;
              }

              *v8 = v20;
              v8[1] = v19 & 0x3F | 0x80;
              v6 += 3;
              v8[2] = v14 & 0x3F | 0x80;
              goto LABEL_43;
            }

            if (v6 > 764)
            {
              goto LABEL_46;
            }

            ++v6;
            *v8 = byte_1000406EC[v14 & 0x3F];
          }

          else
          {
            v16 = *v7;
            if ((v16 & 0xFC00) != 0xDC00)
            {
              v19 = v14 >> 6;
              LOBYTE(v20) = -19;
              goto LABEL_41;
            }

            if (v6 >= 762)
            {
              v8 = &a2[v6];
              goto LABEL_46;
            }

            v17 = v16 + (v14 << 10) - 56613888;
            --v3;
            ++v7;
            v18 = &a2[v6];
            *v8 = (v17 >> 18) | 0xF0;
            v18[1] = (v17 >> 12) & 0x3F | 0x80;
            v18[2] = (v17 >> 6) & 0x3F | 0x80;
            v6 += 4;
            v8[3] = v16 & 0x3F | 0x80;
          }
        }

        else
        {
          if (v6 > 763)
          {
            goto LABEL_46;
          }

          *v8 = (v14 >> 6) | 0xC0;
          v6 += 2;
          v8[1] = v14 & 0x3F | 0x80;
        }
      }

      else
      {
        if (v6 > 764)
        {
          goto LABEL_46;
        }

        ++v6;
        *v8 = v14;
      }

LABEL_43:
      v8 = &a2[v6];
      if (!v3)
      {
        goto LABEL_46;
      }
    }
  }

  v8 = a2;
LABEL_46:
  *v8 = 0;
  return result;
}

_WORD *CONV_Unistr255ToLowerCase(_WORD *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result + 1;
    do
    {
      v3 = *v2;
      if (v3 <= 0xFF)
      {
        *v2 = byte_100059B94[v3];
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t CONV_UTF8ToLowerCase(char *a1, _BYTE *a2)
{
  result = 22;
  if (a1 && a2)
  {
    v5 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
    if (v5)
    {
      v6 = v5;
      v7 = strlen(a1);
      CONV_UTF8ToUnistr255(a1, v7, v6, 32);
      v8 = *v6;
      if (*v6)
      {
        v9 = v6 + 1;
        do
        {
          v10 = *v9;
          if (v10 <= 0xFF)
          {
            *v9 = byte_100059B94[v10];
          }

          ++v9;
          --v8;
        }

        while (v8);
      }

      CONV_Unistr255ToUTF8(v6, a2);
      free(v6);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

_WORD *CONV_ConvertToFSM(_WORD *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = (v1 - 1);
    v3 = result + 1;
    v4 = result + 1;
    for (i = v2; !i; --i)
    {
      v7 = v3[v2];
      if (v7 == 46)
      {
        v3[v2] = -4055;
      }

      else
      {
        if (v7 != 32)
        {
          break;
        }

        v3[v2] = -4056;
      }

LABEL_10:
      ++v4;
      if (!--v1)
      {
        return result;
      }
    }

    v6 = *v4;
    if (v6 <= 0x7F)
    {
      *v4 = word_10003BC46[v6];
    }

    goto LABEL_10;
  }

  return result;
}

char *CONV_DuplicateName(char *result, char *__s)
{
  *result = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s);
    result = malloc_type_malloc((v4 + 1), 0xCB359747uLL);
    *v3 = result;
    if (result)
    {

      return strcpy(result, __s);
    }
  }

  return result;
}

uint64_t CONV_LabelUTF8ToUTF16LocalEncoding(char *a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  v4 = strnlen(a1, 0x40uLL);
  if (v4 > 0x3F)
  {
    return 22;
  }

  memset(v14, 0, sizeof(v14));
  result = CONV_UTF8ToUnistr255(a1, v4, v14, 32);
  if (!result)
  {
    v6 = LOWORD(v14[0]);
    if (LOWORD(v14[0]) > 0xBu)
    {
      return 22;
    }

    memset(a2, 32, 11);
    if (v6)
    {
      v7 = 2;
      v8 = v6;
      do
      {
        v9 = *(v14 + v7);
        if (v9 <= 0xFF)
        {
          *(v14 + v7) = byte_100059B94[v9];
        }

        v7 += 2;
        --v8;
      }

      while (v8);
      v10 = 0;
      do
      {
        v11 = *(v14 + v10 + 1);
        if (v11 == 32)
        {
          v12 = 32;
        }

        else
        {
          v13 = msdosfs_unicode2dos(v11);
          if (v13 < 3)
          {
            return 22;
          }

          v12 = v13;
          LODWORD(v6) = LOWORD(v14[0]);
        }

        result = 0;
        *(a2 + v10++) = v12;
      }

      while (v10 < v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000032A0(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &unk_10003E904;
  v4 = &unk_10003F828;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &unk_10003F82C + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&unk_10003F82C + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = sub_1000032A0(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}

uint64_t resetDosDirSection(uint64_t a1, uint64_t a2)
{
  v4 = 32 * *(a1 + 16);
  v5 = *a1 * *(a1 + 4);
  if (v4 <= v5)
  {
    v4 = *a1 * *(a1 + 4);
  }

  qword_100059E88 = malloc_type_malloc(v4, 0x670E7BCAuLL);
  if (!qword_100059E88)
  {
    goto LABEL_18;
  }

  qword_100059E90 = malloc_type_malloc(v5, 0x2A6F26ADuLL);
  if (!qword_100059E90)
  {
    goto LABEL_18;
  }

  v6 = qword_100059E98;
  if (qword_100059E98)
  {
    qword_100059E98 = *(qword_100059E98 + 8);
    goto LABEL_8;
  }

  v6 = malloc_type_malloc(0x148uLL, 0x1020040DB0A7303uLL);
  if (!v6)
  {
    rootDir = 0;
LABEL_18:
    v16 = __error();
    strerror(*v16);
    v20 = fsck_ctx;
    v21 = qword_100059E30;
    fsck_print(&v20, 2, "%s (%s)\n");
    return 16;
  }

LABEL_8:
  rootDir = v6;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[13] = 0u;
  v6[14] = 0u;
  v6[15] = 0u;
  v6[16] = 0u;
  v6[17] = 0u;
  v6[18] = 0u;
  v6[19] = 0u;
  *(v6 + 40) = 0;
  if ((*(a1 + 68) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  if (v8 < 2 || v8 >= *(a1 + 80))
  {
    v20 = fsck_ctx;
    v21 = qword_100059E30;
    fsck_print(&v20, 2, "Root directory starts with cluster out of range(%u)\n");
    return 16;
  }

  v9 = fat_get(v8, a2);
  v15 = 0;
  if ((v9 & 0x80000000) != 0)
  {
    if (v9 + 10 >= 2)
    {
      if (v9 != -286331154)
      {
        goto LABEL_30;
      }

      return 16;
    }

    goto LABEL_23;
  }

  if (v9 == 1)
  {
LABEL_23:
    if (v9 >= 0xFFFFFFF6)
    {
      rsrvdcltype(v9);
      v20 = fsck_ctx;
      v21 = qword_100059E30;
      fsck_print(&v20, 6, "Warning: Root directory starts with cluster marked %s\n");
    }

LABEL_25:
    v20 = fsck_ctx;
    v21 = qword_100059E30;
    if (fsck_ask(&v20, 1, "Fix", v10, v11, v12, v13, v14, v19))
    {
      v17 = fat_set(*(a1 + 56), 0xFFFFFFFFLL, a2);
      if (v17)
      {
        v15 = v17;
      }

      else
      {
        v15 = 4;
      }

      markFree(*(a1 + 56));
      goto LABEL_30;
    }

    return 16;
  }

  if (!v9)
  {
    v20 = fsck_ctx;
    v21 = qword_100059E30;
    fsck_print(&v20, 6, "Warning: Root directory starts with free cluster\n");
    goto LABEL_25;
  }

LABEL_30:
  v18 = rootDir;
  *(rootDir + 300) = *(a1 + 56);
  return sub_100003648(a1, v18, a2) | v15;
}

uint64_t sub_100003648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 300);
  if (v6 < 2)
  {
    v8 = 0;
    v7 = 0;
LABEL_12:
    if (v6 != 0 && v6 < 0xFFFFFFF6)
    {
      if (v6 < 2 || v6 >= *(a1 + 80))
      {
        sub_1000056B0(a2);
        v18 = fsck_ctx;
        v19 = qword_100059E30;
        fsck_print(&v18, 6, "Warning: %s: Cluster chain starting at %u continues with cluster out of range (%u)\n");
      }

      else
      {
        sub_1000056B0(a2);
        v18 = fsck_ctx;
        v19 = qword_100059E30;
        fsck_print(&v18, 6, "Warning: %s: Cluster chain starting at %u is cross-linked at cluster %u\n");
      }
    }

    else
    {
      sub_1000056B0(a2);
      rsrvdcltype(v6);
      v18 = fsck_ctx;
      v19 = qword_100059E30;
      fsck_print(&v18, 6, "Warning: %s: Cluster chain starting at %u ends with cluster marked %s\n");
    }

    v18 = fsck_ctx;
    v19 = qword_100059E30;
    LODWORD(result) = fsck_ask(&v18, 1, "Truncate", v12, v13, v14, v15, v16, v17);
    if (result)
    {
      LODWORD(result) = fat_set(v8, 0xFFFFFFFFLL, a3);
      if (result)
      {
        LODWORD(v9) = -286331154;
      }

      else
      {
        LODWORD(v9) = -1;
      }
    }

    else
    {
      LODWORD(v9) = v6;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v6;
      if (v6 >= *(a1 + 80) || isUsed(v6))
      {
        break;
      }

      v10 = fat_get(v6, a3);
      if ((v10 & 0xFFFFFFFE) == 0xFFFFFFF6)
      {
        LODWORD(v6) = v10;
        goto LABEL_12;
      }

      markUsed(v6);
      ++v7;
      v6 = fat_get(v6, a3);
      v8 = v9;
      if (v6 <= 1)
      {
        goto LABEL_12;
      }
    }

    if (v6 <= 0xFFFFFFF7)
    {
      goto LABEL_12;
    }

    LODWORD(result) = 0;
  }

  *(a2 + 304) = v9;
  *(a2 + 312) = *(a1 + 100) * v7;
  if (v9 == -286331154)
  {
    return 16;
  }

  else
  {
    return result;
  }
}

void finishDosDirSection()
{
  v0 = pendingDirectories;
  if (pendingDirectories)
  {
    v1 = qword_10005A2A8;
    do
    {
      v2 = v1;
      v1 = v0;
      v0 = *(v0 + 8);
      *(v1 + 8) = v2;
    }

    while (v0);
    qword_10005A2A8 = v1;
  }

  pendingDirectories = 0;
  v3 = rootDir;
  if (rootDir)
  {
    v4 = qword_100059E98;
    do
    {
      v5 = v3[2];
      if (v5)
      {
        v3[2] = 0;
      }

      else
      {
        v5 = v3[1];
        if (!v5)
        {
          v5 = *v3;
        }

        v3[1] = v4;
        qword_100059E98 = v3;
        v4 = v3;
      }

      v3 = v5;
    }

    while (v5);
  }

  rootDir = 0;
  free(qword_100059E88);
  free(qword_100059E90);
  qword_100059E88 = 0;
  qword_100059E90 = 0;
}

uint64_t handleDirTree(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  v7 = sub_1000039D0(a2, rootDir, a3, a4);
  if ((v7 & 0x10) != 0)
  {
    return 16;
  }

  v8 = v7;
  while (1)
  {
    v9 = pendingDirectories;
    if (!pendingDirectories)
    {
      break;
    }

    v10 = *pendingDirectories;
    v11 = *(pendingDirectories + 8);
    *(pendingDirectories + 8) = qword_10005A2A8;
    qword_10005A2A8 = v9;
    pendingDirectories = v11;
    v8 = sub_1000039D0(a2, v10, a3, a4) | v8;
    if ((v8 & 0x10) != 0)
    {
      return 16;
    }
  }

  return v8;
}

uint64_t sub_1000039D0(unsigned int *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v4 = a4;
  memset(__src, 0, 328);
  v6 = *(a2 + 75);
  if (*a2 && (v6 < 2 || v6 >= a1[20]))
  {
    v245 = fsck_ctx;
    v246 = qword_100059E30;
    fsck_print(&v245, 3, "%s: Start cluster (%u) out of range; ignoring\n", "readDosDirSection", v6);
    return 0;
  }

  v7 = 0;
  v236 = 0;
  v8 = 0;
  v229 = 0;
  v243 = 0;
  v9 = 0xFFFFFFFFLL;
  v10 = 0xFFFFFFFFLL;
  v11 = -1;
  v230 = -1;
  v232 = a1;
  while (1)
  {
    v238 = v6;
    v234 = v11;
    v239 = v7;
    if ((a1[17] & 1) != 0 || *a2)
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = a1;
      v15 = *a1 * v13;
      v16 = v14[24] + v13 * (v6 - 2);
    }

    else
    {
      v197 = a1;
      v15 = 32 * a1[4];
      v16 = v197[2] + v197[22] * v197[3];
      v12 = *v197;
    }

    v17 = v12 * v16;
    if ((*(v4 + 32))(*(v4 + 24), qword_100059E88, v15, v17) != v15)
    {
      v198 = __error();
      v199 = strerror(*v198);
      v245 = fsck_ctx;
      v246 = qword_100059E30;
      v200 = "Unable to read directory";
      goto LABEL_352;
    }

    v18 = *(v4 + 64);
    if (v18 >= 1 && pwrite(v18, qword_100059E88, v15, v17) != v15)
    {
      v19 = *__error();
      v245 = fsck_ctx;
      v246 = qword_100059E30;
      fsck_print(&v245, 6, "Failed to shadow at offset 0x%llx, length 0x%x (errno %d)", v17, v15, v19);
    }

    v235 = v8;
    v20 = v15 / 32;
    v233 = v15 / 32;
    if (v15 >= 32)
    {
      v21 = 0;
      v22 = qword_100059E88;
      v222 = qword_100059E88;
      v23 = qword_100059E88;
      v231 = v17;
      while (1)
      {
        v24 = *(a2 + 80);
        if ((v24 & 2) != 0)
        {
          goto LABEL_75;
        }

        if (*v23 != 229)
        {
          if (*v23)
          {
            if ((v24 & 1) == 0)
            {
              goto LABEL_62;
            }

            v25 = sub_1000056B0(a2);
            v245 = fsck_ctx;
            v246 = qword_100059E30;
            fsck_print(&v245, 6, "Warning: %s has entries after end of directory\n", v25);
            v245 = fsck_ctx;
            v246 = qword_100059E30;
            if (fsck_ask(&v245, 1, "Truncate", v26, v27, v28, v29, v30, v211))
            {
              v36 = *(a2 + 80) | 2;
              *(a2 + 80) = v36;
            }

            else
            {
              v245 = fsck_ctx;
              v246 = qword_100059E30;
              v37 = fsck_ask(&v245, 0, "Extend", v31, v32, v33, v34, v35, v212);
              v36 = *(a2 + 80);
              if (v37)
              {
                *(a2 + 80) = v36 & 0xFFFFFFFE;
                result = sub_100005778(v232, v234, &v235[-qword_100059E88], v238, &v23[-qword_100059E88], 1, v4);
                if (result == 16)
                {
                  return result;
                }

                if (v234 == v238)
                {
                  v39 = v235;
                }

                else
                {
                  v39 = qword_100059E88;
                }

                v10 = v10;
                if (v39 < v23)
                {
                  v40 = 0;
                  v41 = v222 + 32 * v21;
                  if (v41 <= v39 + 32)
                  {
                    v41 = v39 + 32;
                  }

                  v42 = vdupq_n_s64((v41 + ~v39) >> 5);
                  if (v22 <= v39 + 32)
                  {
                    v43 = v39 + 32;
                  }

                  else
                  {
                    v43 = v22;
                  }

                  v44 = (((~v39 + v43) >> 5) + 16) & 0xFFFFFFFFFFFFFF0;
                  v45 = (v39 + 256);
                  do
                  {
                    v46 = vdupq_n_s64(v40);
                    v47 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040790)));
                    if (vuzp1_s8(vuzp1_s16(v47, *v42.i8), *v42.i8).u8[0])
                    {
                      *(v45 - 256) = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(v47, *&v42), *&v42).i8[1])
                    {
                      *(v45 - 224) = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040780)))), *&v42).i8[2])
                    {
                      *(v45 - 192) = -27;
                      *(v45 - 160) = -27;
                    }

                    v48 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040770)));
                    if (vuzp1_s8(*&v42, vuzp1_s16(v48, *&v42)).i32[1])
                    {
                      *(v45 - 128) = -27;
                    }

                    if (vuzp1_s8(*&v42, vuzp1_s16(v48, *&v42)).i8[5])
                    {
                      *(v45 - 96) = -27;
                    }

                    if (vuzp1_s8(*&v42, vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040760))))).i8[6])
                    {
                      *(v45 - 64) = -27;
                      *(v45 - 32) = -27;
                    }

                    v49 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040750)));
                    if (vuzp1_s8(vuzp1_s16(v49, *v42.i8), *v42.i8).u8[0])
                    {
                      *v45 = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(v49, *&v42), *&v42).i8[1])
                    {
                      v45[32] = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040740)))), *&v42).i8[2])
                    {
                      v45[64] = -27;
                      v45[96] = -27;
                    }

                    v50 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040730)));
                    if (vuzp1_s8(*&v42, vuzp1_s16(v50, *&v42)).i32[1])
                    {
                      v45[128] = -27;
                    }

                    if (vuzp1_s8(*&v42, vuzp1_s16(v50, *&v42)).i8[5])
                    {
                      v45[160] = -27;
                    }

                    if (vuzp1_s8(*&v42, vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v46, xmmword_100040720))))).i8[6])
                    {
                      v45[192] = -27;
                      v45[224] = -27;
                    }

                    v40 += 16;
                    v45 += 512;
                  }

                  while (v44 != v40);
                }

                v243 |= 0x8002u;
                v36 = *(a2 + 80);
              }
            }

            v20 = v233;
            v17 = v231;
            if ((v36 & 2) == 0)
            {
              v235 = 0;
              v243 |= 8 * (v36 & 1);
LABEL_62:
              if (v23[11] == 15)
              {
                v51 = *v23;
                if ((*v23 & 0x40) != 0)
                {
                  v59 = v236;
                  v60 = v230 != -1 && v236 == 0;
                  if (v60)
                  {
                    v59 = v239;
                  }

                  v236 = v59;
                  xmmword_10005A390 = 0u;
                  unk_10005A3A0 = 0u;
                  if (v60)
                  {
                    v10 = v9;
                  }

                  else
                  {
                    v10 = v10;
                  }

                  xmmword_10005A370 = 0uLL;
                  unk_10005A380 = 0uLL;
                  xmmword_10005A350 = 0uLL;
                  unk_10005A360 = 0uLL;
                  xmmword_10005A330 = 0uLL;
                  unk_10005A340 = 0uLL;
                  xmmword_10005A310 = 0uLL;
                  unk_10005A320 = 0uLL;
                  xmmword_10005A2F0 = 0uLL;
                  unk_10005A300 = 0uLL;
                  xmmword_10005A2D0 = 0uLL;
                  unk_10005A2E0 = 0uLL;
                  xmmword_10005A2B0 = 0uLL;
                  unk_10005A2C0 = 0uLL;
                  v230 = v23[13];
                  v239 = v23;
                  v9 = v238;
                  v51 = *v23;
                }

                else if (v230 != v23[13] || v229 != (v51 & 0x1F))
                {
                  v52 = v236;
                  if (v236)
                  {
                    v53 = v10;
                  }

                  else
                  {
                    v52 = v239;
                    v53 = v9;
                  }

                  v54 = v52 == 0;
                  if (!v52)
                  {
                    v52 = v23;
                  }

                  v236 = v52;
                  if (v54)
                  {
                    v10 = v238;
                  }

                  else
                  {
                    v10 = v53;
                  }

                  v239 = 0;
                }

                v61 = v51 & 0x1F;
                if ((v51 & 0x1F) != 0)
                {
                  v229 = v61 - 1;
                  v62 = 13 * (v61 - 1);
                  if (v61 > 0x14)
                  {
LABEL_137:
                    v79 = v62;
LABEL_138:
                    if (v79 >= 256)
                    {
                      v245 = fsck_ctx;
                      v246 = qword_100059E30;
                      fsck_print(&v245, 6, "Warning: long filename too long\n");
                      v87 = v236;
                      v88 = v236 == 0;
                      if (!v236)
                      {
                        v87 = v239;
                      }

                      v236 = v87;
                      if (v88)
                      {
                        v10 = v9;
                      }

                      else
                      {
                        v10 = v10;
                      }

                      v239 = 0;
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = &xmmword_10005A2B0 + v62 + 2;
                    while (1)
                    {
                      v65 = v62;
                      v66 = v64;
                      v67 = &v23[v63];
                      v68 = v23[v63 + 1];
                      if (!v68 && !v67[2])
                      {
                        break;
                      }

                      v69 = v63 + 1;
                      ++v62;
                      *(&xmmword_10005A2B0 + v65) = v68;
                      if (v67[2])
                      {
                        v68 = 63;
                      }

                      *(&xmmword_10005A2B0 + v65) = v68;
                      v63 += 2;
                      if (v69 <= 8)
                      {
                        v64 = v66 + 1;
                        if (v65 < 0xFF)
                        {
                          continue;
                        }
                      }

                      if ((v63 - 1) < 9 || v65 > 0xFE)
                      {
                        goto LABEL_137;
                      }

                      v70 = 0;
                      while (1)
                      {
                        v71 = v62;
                        v72 = v66;
                        v73 = &v23[v70];
                        v74 = v23[v70 + 14];
                        if (!v74 && !v73[15])
                        {
                          goto LABEL_145;
                        }

                        v75 = v70 + 14;
                        ++v62;
                        *(&xmmword_10005A2B0 + v71) = v74;
                        if (v73[15])
                        {
                          v74 = 63;
                        }

                        *(&xmmword_10005A2B0 + v71) = v74;
                        v70 += 2;
                        if (v75 <= 0x17)
                        {
                          v66 = v72 + 1;
                          if (v71 < 0xFF)
                          {
                            continue;
                          }
                        }

                        if ((v70 + 12) < 0x18 || v71 > 0xFE)
                        {
                          goto LABEL_137;
                        }

                        v76 = 0;
                        while (1)
                        {
                          v77 = &v23[v76];
                          v78 = v23[v76 + 28];
                          if (!v78 && !v77[29])
                          {
                            goto LABEL_145;
                          }

                          v79 = v62 + 1;
                          *v72 = v78;
                          if (v77[29])
                          {
                            v78 = 63;
                          }

                          *v72++ = v78;
                          if ((v76 + 28) <= 0x1D)
                          {
                            v76 += 2;
                            v80 = v62++ >= 0xFF;
                            if (!v80)
                            {
                              continue;
                            }
                          }

                          goto LABEL_138;
                        }
                      }
                    }
                  }

LABEL_145:
                  if (!*(v23 + 13))
                  {
                    goto LABEL_309;
                  }

                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Warning: long filename record cluster start != 0\n");
                  v89 = v236;
                  v90 = v236 == 0;
                  if (!v236)
                  {
                    v89 = v239;
                  }

                  v236 = v89;
                  if (v90)
                  {
                    v10 = v238;
                  }

                  else
                  {
                    v10 = v10;
                  }
                }

                else
                {
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Warning: long file name is not available\n");
                  v229 = 0;
                  v91 = v236;
                  v92 = v236 == 0;
                  if (!v236)
                  {
                    v91 = v239;
                  }

                  v236 = v91;
                  if (v92)
                  {
                    v10 = v9;
                  }

                  else
                  {
                    v10 = v10;
                  }
                }

                v239 = 0;
                goto LABEL_309;
              }

              v55 = 0;
              memset(__src, 0, 328);
              DWORD2(__src[18]) = v23[11];
              do
              {
                *(&__src[1] + v55 + 8) = v23[v55];
                ++v55;
              }

              while (v55 != 8);
              LOBYTE(__src[2]) = 0;
              v56 = 31;
              while (*(__src + v56) == 32)
              {
                *(__src + v56) = 0;
                v57 = v56 - 23;
                --v56;
                if (v57 <= 1)
                {
                  v58 = 0;
                  goto LABEL_85;
                }
              }

              v58 = v56 - 23;
LABEL_85:
              if (BYTE8(__src[1]) == 5)
              {
                BYTE8(__src[1]) = -27;
              }

              if ((BYTE8(__src[18]) & 8) != 0)
              {
                if (v239 | v236)
                {
                  v81 = v10;
                  if (v236)
                  {
                    v82 = v236;
                  }

                  else
                  {
                    v82 = v239;
                  }

                  v83 = v9;
                  if (v236)
                  {
                    v9 = v81;
                  }

                  else
                  {
                    v9 = v9;
                  }

                  v84 = sub_1000056B0(a2);
                  v85 = v82;
                  v10 = v81;
                  v17 = v231;
                  v86 = v9;
                  v9 = v83;
                  v239 = 0;
                  v236 = 0;
                  v243 |= sub_100005BDC(v232, v85, v23, v86, v238, v238, v84, 2, 0, v4);
                  goto LABEL_309;
                }

LABEL_308:
                v239 = 0;
                v236 = 0;
LABEL_309:
                v20 = v233;
                goto LABEL_76;
              }

              if (v23[8] != 32)
              {
                *(&__src[1] + v58++ + 8) = 46;
              }

              v93 = v236;
              v94 = v239;
              v95 = v58;
              v96 = v58 + 1;
              v97 = 24;
              v98 = __src + v58;
              do
              {
                v99 = v96;
                v98[v97] = v23[v97 - 16];
                ++v97;
                ++v96;
              }

              while (v97 != 27);
              *(&__src[1] + v95 + 11) = 0;
              do
              {
                if (*(&__src[1] + --v99 + 8) != 32)
                {
                  break;
                }

                *(&__src[1] + v99 + 8) = 0;
              }

              while (v99 > 0);
              if (v239)
              {
                v100 = 0;
                v101 = 0;
                do
                {
                  v101 = v23[v100++] + ((v101 >> 1) | (v101 << 7));
                }

                while (v100 != 11);
                if (v230 != v101)
                {
                  if (v236)
                  {
                    v10 = v10;
                  }

                  else
                  {
                    v93 = v239;
                    v10 = v9;
                  }

                  v94 = 0;
                }
              }

              v102 = v4;
              v103 = *(v23 + 13);
              HIDWORD(__src[18]) = v103;
              if (v232[19] == 0xFFFFFFF)
              {
                HIDWORD(__src[18]) = (v23[21] << 24) | (v23[20] << 16) | v103;
              }

              DWORD1(__src[19]) = *(v23 + 7);
              if (v94)
              {
                v104 = v9;
                v105 = v94;
                __strlcpy_chk();
                v94 = v105;
                v9 = v104;
                LOBYTE(xmmword_10005A2B0) = 0;
                v230 = -1;
              }

              v106 = a2[2];
              *&__src[0] = a2;
              *(&__src[0] + 1) = v106;
              if (v93)
              {
                v237 = v93;
                if (v94)
                {
                  v107 = v94;
                }

                else
                {
                  v107 = v23;
                }

                v224 = v107;
                if (v94)
                {
                  v108 = v9;
                }

                else
                {
                  v108 = v238;
                }

                v240 = v108;
                v109 = v94;
                v110 = sub_1000056B0(__src);
                v111 = sub_100005BDC(v232, v237, v224, v10, v240, v238, v110, 0, 0, v102);
                v243 |= v111;
                if ((v243 & 0x10) != 0)
                {
                  return 16;
                }

                if (v109)
                {
                  if (v9 == v238)
                  {
                    v17 = v231;
                    v4 = a4;
                    if (v109 == qword_100059E88)
                    {
                      goto LABEL_209;
                    }

LABEL_206:
                    v243 |= (v111 << 14) & 0x8000;
                  }

                  else
                  {
                    v17 = v231;
                    v4 = a4;
                  }
                }

                else
                {
                  v4 = a4;
                  v17 = v231;
                  if (v23 != qword_100059E88)
                  {
                    goto LABEL_206;
                  }
                }
              }

              else
              {
                v4 = v102;
                if (v94)
                {
                  v17 = v231;
                  if (!a3)
                  {
                    v112 = *(&__src[2] + 5) == 0x3030322E73666E2ELL && *(&__src[2] + 13) == 12597;
                    if (v112 && (BYTE8(__src[18]) & 0x10) == 0)
                    {
                      v113 = v94;
                      v114 = sub_1000056B0(__src);
                      v115 = sub_100005BDC(v232, v113, (v23 + 32), v9, v238, v238, v114, 3, 1, v4);
                      v116 = v115 | v243;
                      if (((v115 | v243) & 0x10) != 0)
                      {
                        return 16;
                      }

                      v236 = 0;
                      if (v9 == v238 && (v115 & 2) != 0 && v113 != qword_100059E88)
                      {
                        v116 |= 0x8000u;
                      }

                      v243 = v116;
                      v239 = 0;
                      v10 = v10;
                      goto LABEL_309;
                    }
                  }
                }

                else
                {
                  v17 = v231;
                }
              }

LABEL_209:
              if (WORD4(__src[1]) == 46 || !(WORD4(__src[1]) ^ 0x2E2E | BYTE10(__src[1])))
              {
                goto LABEL_231;
              }

              if (HIDWORD(__src[18]) == 1)
              {
                goto LABEL_218;
              }

              if (!HIDWORD(__src[18]))
              {
                if (BYTE8(__src[18]) & 0x10 | DWORD1(__src[19]))
                {
                  sub_1000056B0(__src);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Warning: %s has no clusters\n");
                  goto LABEL_219;
                }

LABEL_228:
                if (HIDWORD(__src[18]) >= 2 && HIDWORD(__src[18]) < v232[20])
                {
                  v243 |= sub_100003648(v232, __src, v4);
                  if ((v243 & 0x10) != 0)
                  {
                    return 16;
                  }
                }

LABEL_231:
                v124 = DWORD1(__src[19]);
                if ((BYTE8(__src[18]) & 0x10) != 0)
                {
                  if (DWORD1(__src[19]))
                  {
                    v125 = sub_1000056B0(__src);
                    v245 = fsck_ctx;
                    v246 = qword_100059E30;
                    fsck_print(&v245, 6, "Warning: Directory %s has size != 0\n", v125);
                    v245 = fsck_ctx;
                    v246 = qword_100059E30;
                    if (fsck_ask(&v245, 1, "Correct", v126, v127, v128, v129, v130, v214))
                    {
                      *(v23 + 7) = 0;
                      DWORD1(__src[19]) = 0;
                      v243 |= 0x8002u;
                    }

                    else
                    {
                      v243 |= 8u;
                    }

                    v10 = v10;
                  }

                  goto LABEL_238;
                }

LABEL_259:
                v80 = *(&__src[19] + 1) >= v124;
                v148 = *(&__src[19] + 1) - v124;
                if (!v80)
                {
                  v149 = sub_1000056B0(__src);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Warning: size of %s is %u, should at most be %llu\n", v149, DWORD1(__src[19]), *(&__src[19] + 1));
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  if (fsck_ask(&v245, 1, "Truncate", v150, v151, v152, v153, v154, v216))
                  {
                    DWORD1(__src[19]) = DWORD2(__src[19]);
                    *(v23 + 7) = DWORD2(__src[19]);
                    v155 = 2;
                    goto LABEL_277;
                  }

LABEL_276:
                  v155 = 8;
LABEL_277:
                  v20 = v233;
LABEL_278:
                  v243 |= v155 | (v155 << 14) & 0x8000;
                  v4 = a4;
LABEL_279:
                  v239 = 0;
                  v236 = 0;
                  ++v232[26];
                  goto LABEL_76;
                }

                if (v148 < v232[25])
                {
                  v155 = 0;
                  goto LABEL_277;
                }

                v166 = sub_1000056B0(__src);
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                fsck_print(&v245, 6, "Warning: %s has too many clusters allocated (logical=%u, physical=%llu)\n", v166, DWORD1(__src[19]), *(&__src[19] + 1));
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                if (!fsck_ask(&v245, 1, "Drop superfluous clusters", v167, v168, v169, v170, v171, v218))
                {
                  goto LABEL_276;
                }

                v227 = v10;
                if (DWORD1(__src[19]))
                {
                  v242 = v9;
                  v172 = 0;
                  v173 = HIDWORD(__src[18]);
                  while (1)
                  {
                    v172 += v232[25];
                    v174 = DWORD1(__src[19]);
                    v175 = fat_get(v173, a4);
                    v176 = v175;
                    if (v172 >= v174)
                    {
                      break;
                    }

                    v173 = v175;
                    if (v175 == -286331154)
                    {
                      goto LABEL_298;
                    }
                  }

                  if (v175 == -286331154 || fat_set(v173, 0xFFFFFFFFLL, a4))
                  {
                    goto LABEL_298;
                  }

                  v155 = 4;
                  v9 = v242;
                }

                else
                {
                  v172 = 0;
                  *(v23 + 13) = 0;
                  *(v23 + 10) = 0;
                  v155 = 6;
                  v176 = HIDWORD(__src[18]);
                }

                v20 = v233;
                if (v172 >= *(&__src[19] + 1))
                {
                  v10 = v227;
                  goto LABEL_278;
                }

                v242 = v9;
                while (1)
                {
                  v185 = fat_get(v176, a4);
                  if (v185 == -286331154)
                  {
                    break;
                  }

                  v186 = v185;
                  if (fat_set(v176, 0, a4))
                  {
                    break;
                  }

                  v172 += v232[25];
                  v176 = v186;
                  if (v172 >= *(&__src[19] + 1))
                  {
                    goto LABEL_299;
                  }
                }

LABEL_298:
                v155 = 16;
LABEL_299:
                v9 = v242;
                v10 = v227;
                goto LABEL_277;
              }

              if (HIDWORD(__src[18]) >= v232[20])
              {
LABEL_218:
                sub_1000056B0(__src);
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                fsck_print(&v245, 6, "Warning: %s starts with cluster out of range (%u)\n");
              }

              else if (isUsed(HIDWORD(__src[18])))
              {
                sub_1000056B0(__src);
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                fsck_print(&v245, 6, "Warning: %s starts with cross-linked cluster (%u)\n");
              }

              else
              {
                v228 = v10;
                v187 = fat_get(HIDWORD(__src[18]), v4);
                if (v187)
                {
                  v188 = v187;
                  if (v187 == -286331154)
                  {
                    return 16;
                  }

                  if ((v187 & 0xFFFFFFFE) != 0xFFFFFFF6)
                  {
                    v10 = v228;
                    goto LABEL_228;
                  }

                  sub_1000056B0(__src);
                  rsrvdcltype(v188);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Warning: %s starts with cluster marked %s\n");
                }

                else
                {
                  sub_1000056B0(__src);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Warning: %s starts with free cluster\n");
                }

                v10 = v228;
              }

LABEL_219:
              if ((BYTE8(__src[18]) & 0x10) != 0)
              {
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                v239 = 0;
                v236 = 0;
                if (fsck_ask(&v245, 0, "Remove", v119, v120, v121, v122, v123, v213))
                {
                  *v23 = -27;
                  v243 |= 0x8002u;
                }

                else
                {
                  v243 |= 8u;
                }

                goto LABEL_309;
              }

              v245 = fsck_ctx;
              v246 = qword_100059E30;
              if (!fsck_ask(&v245, 1, "Truncate", v119, v120, v121, v122, v123, v213))
              {
                v243 |= 8u;
                goto LABEL_228;
              }

              *(v23 + 15) = 0;
              *(v23 + 26) = 0;
              if (v232[19] == 0xFFFFFFF)
              {
                *(v23 + 10) = 0;
              }

              HIDWORD(__src[18]) = 0;
              DWORD1(__src[19]) = 0;
              v243 |= 0x8002u;
              if ((BYTE8(__src[18]) & 0x10) == 0)
              {
                v124 = 0;
                goto LABEL_259;
              }

LABEL_238:
              if (WORD4(__src[1]) == 46)
              {
                if (HIDWORD(__src[18]) != *(a2 + 75))
                {
                  v226 = v10;
                  v156 = v9;
                  v157 = v17;
                  v158 = v4;
                  v159 = sub_1000056B0(a2);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  if (!fsck_ask(&v245, 1, "Correct", v160, v161, v162, v163, v164, v217))
                  {
                    goto LABEL_310;
                  }

                  v165 = a2;
LABEL_267:
                  HIDWORD(__src[18]) = *(v165 + 75);
                  *(v23 + 13) = WORD6(__src[18]);
                  v20 = v233;
                  v4 = v158;
                  if (v232[19] == 0xFFFFFFF)
                  {
                    *(v23 + 10) = HIWORD(__src[18]);
                  }

                  goto LABEL_269;
                }

                goto LABEL_308;
              }

              if (!(WORD4(__src[1]) ^ 0x2E2E | BYTE10(__src[1])))
              {
                v177 = *a2;
                if (*a2)
                {
                  if (*v177)
                  {
                    if (HIDWORD(__src[18]) != *(v177 + 300))
                    {
                      v226 = v10;
                      v156 = v9;
                      v157 = v17;
                      v158 = v4;
                      v178 = sub_1000056B0(a2);
                      v245 = fsck_ctx;
                      v246 = qword_100059E30;
                      v245 = fsck_ctx;
                      v246 = qword_100059E30;
                      if (!fsck_ask(&v245, 1, "Correct", v179, v180, v181, v182, v183, v219))
                      {
                        goto LABEL_310;
                      }

                      v165 = *a2;
                      goto LABEL_267;
                    }
                  }

                  else if (HIDWORD(__src[18]))
                  {
                    v226 = v10;
                    v156 = v9;
                    v157 = v17;
                    v158 = v4;
                    v189 = sub_1000056B0(a2);
                    v245 = fsck_ctx;
                    v246 = qword_100059E30;
                    v245 = fsck_ctx;
                    v246 = qword_100059E30;
                    if (fsck_ask(&v245, 1, "Correct", v190, v191, v192, v193, v194, v220))
                    {
                      HIDWORD(__src[18]) = 0;
                      *(v23 + 13) = 0;
                      v20 = v233;
                      if (v232[19] == 0xFFFFFFF)
                      {
                        *(v23 + 10) = 0;
                      }

LABEL_269:
                      v239 = 0;
                      v236 = 0;
                      v243 |= 0x8002u;
LABEL_311:
                      v17 = v157;
                      v9 = v156;
                      v10 = v226;
                      goto LABEL_76;
                    }

LABEL_310:
                    v239 = 0;
                    v236 = 0;
                    v243 |= 8u;
                    v20 = v233;
                    v4 = v158;
                    goto LABEL_311;
                  }
                }

                goto LABEL_308;
              }

              v225 = v10;
              v131 = malloc_type_malloc(*v232, 0x2D8BE58CuLL);
              if (!v131)
              {
                v208 = __error();
                v199 = strerror(*v208);
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                v200 = "No memory for subdirectory buffer";
                goto LABEL_352;
              }

              v132 = v131;
              v241 = v9;
              v133 = (v232[24] + (HIDWORD(__src[18]) - 2) * v232[1]) * *v232;
              v134 = (*(v4 + 32))(*(v4 + 24), v131);
              if (v134 != *v232)
              {
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                fsck_print(&v245, 2, "Unable to read cluster %u", HIDWORD(__src[18]));
                free(v132);
                return 16;
              }

              v135 = v134;
              v136 = *(v4 + 64);
              if (v136 >= 1)
              {
                v137 = pwrite(v136, v132, v135, v133);
                v138 = *v232;
                if (v137 != v138)
                {
                  v139 = *__error();
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  fsck_print(&v245, 6, "Failed to shadow at offset 0x%llx, length 0x%x (errno %d)", v133, v138, v139);
                }
              }

              v140 = *v132 == 0x202020202020202ELL && *(v132 + 3) == 0x2020202020202020;
              v17 = v231;
              if (v140 && (v132[4] == 0x2020202020202E2ELL ? (v141 = *(v132 + 35) == 0x2020202020202020) : (v141 = 0), v141 && (*(v132 + 11) & 0x10) != 0 && (*(v132 + 43) & 0x10) != 0))
              {
                free(v132);
                v9 = v241;
              }

              else
              {
                free(v132);
                v142 = sub_1000056B0(__src);
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                fsck_print(&v245, 6, "Warning: Item %s does not appear to be a subdirectory\n", v142);
                v245 = fsck_ctx;
                v246 = qword_100059E30;
                v9 = v241;
                if (fsck_ask(&v245, 0, "Correct", v143, v144, v145, v146, v147, v215))
                {
                  v23[11] &= ~0x10u;
                  DWORD2(__src[18]) &= ~0x10u;
                  v243 |= 0x8002u;
                  v124 = DWORD1(__src[19]);
                  v10 = v225;
                  goto LABEL_259;
                }

                v243 |= 8u;
              }

              v184 = qword_100059E98;
              if (qword_100059E98)
              {
                qword_100059E98 = *(qword_100059E98 + 8);
              }

              else
              {
                v184 = malloc_type_malloc(0x148uLL, 0x1020040DB0A7303uLL);
                if (!v184)
                {
                  v209 = __error();
                  v199 = strerror(*v209);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  v200 = "No space for directory";
                  goto LABEL_352;
                }
              }

              memcpy(v184, __src, 0x148uLL);
              a2[2] = v184;
              v195 = qword_10005A2A8;
              if (qword_10005A2A8)
              {
                qword_10005A2A8 = *(qword_10005A2A8 + 8);
                v17 = v231;
              }

              else
              {
                v195 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
                v17 = v231;
                if (!v195)
                {
                  v210 = __error();
                  v199 = strerror(*v210);
                  v245 = fsck_ctx;
                  v246 = qword_100059E30;
                  v200 = "No space for todo list";
                  goto LABEL_352;
                }
              }

              v196 = pendingDirectories;
              *v195 = v184;
              v195[1] = v196;
              pendingDirectories = v195;
              v10 = v225;
              v20 = v233;
              goto LABEL_279;
            }

LABEL_75:
            *v23 = 0;
            v243 |= 0x8002u;
            goto LABEL_76;
          }

          *(a2 + 80) = v24 | 1;
          v235 = v23;
          v234 = v238;
        }

LABEL_76:
        ++v21;
        v23 += 32;
        v22 += 32;
        if (v21 == v20)
        {
          goto LABEL_324;
        }
      }
    }

    v23 = qword_100059E88;
LABEL_324:
    v8 = v235;
    if ((v243 & 0x8000) != 0)
    {
      if ((*(v4 + 40))(*(v4 + 24), qword_100059E88, 32 * v20, v17) != 32 * v20)
      {
        goto LABEL_351;
      }

      v243 &= ~0x8000u;
    }

    a1 = v232;
    if ((v232[17] & 1) == 0 && !*a2)
    {
      break;
    }

    v6 = fat_get(v238, v4);
    if (v6 < 2)
    {
      goto LABEL_337;
    }

    v7 = v239;
    if (v6 < v232[20])
    {
      v11 = v234;
      if (v6 != *(a2 + 76))
      {
        continue;
      }
    }

    goto LABEL_338;
  }

  v6 = v238;
LABEL_337:
  v7 = v239;
LABEL_338:
  if (v6 == -286331154)
  {
    v201 = v243 | 0x10;
  }

  else
  {
    v201 = v243;
  }

  if (!(v236 | v7))
  {
    return v201 & 0xFFFF7FFF;
  }

  if (v236)
  {
    v202 = v236;
  }

  else
  {
    v202 = v7;
  }

  if (v236)
  {
    v10 = v10;
  }

  else
  {
    v10 = v9;
  }

  v203 = sub_1000056B0(a2);
  v204 = sub_100005BDC(v232, v202, v23, v10, v238, v238, v203, 1, 0, v4);
  v205 = v17;
  v206 = v204;
  if ((*(v4 + 40))(*(v4 + 24), qword_100059E88, 32 * v233, v205) == 32 * v233)
  {
    v201 |= v206;
    return v201 & 0xFFFF7FFF;
  }

LABEL_351:
  v207 = __error();
  v199 = strerror(*v207);
  v245 = fsck_ctx;
  v246 = qword_100059E30;
  v200 = "Unable to write directory";
LABEL_352:
  fsck_print(&v245, 2, "%s (%s)\n", v200, v199);
  return 16;
}

__int16 *sub_1000056B0(uint64_t *a1)
{
  if (rootDir == a1)
  {
    v5 = &word_100059EA0;
    word_100059EA0 = 47;
  }

  else
  {
    v1 = a1;
    v2 = &byte_10005A2A0;
    byte_10005A2A0 = 0;
    while (1)
    {
      v3 = *(v1 + 37) ? v1 + 37 : (v1 + 3);
      v4 = strlen(v3);
      v5 = &v2[-v4];
      if (&v2[-v4] <= &word_100059EA0 + 1)
      {
        break;
      }

      memcpy(&v2[-v4], v3, v4);
      *(v5 - 1) = 47;
      v2 = v5 - 1;
      v1 = *v1;
      if (!v1)
      {
        return v5;
      }
    }

    *(v2 - 1) = 63;
    return (v2 - 1);
  }

  return v5;
}

uint64_t sub_100005778(unsigned int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a2 >= 2)
  {
    v9 = a2;
    v11 = (*a1 * a1[1]);
    v12 = qword_100059E90;
    v13 = qword_100059E90 + v11;
    v14 = qword_100059E90 + a3;
    while (1)
    {
      if (v9 >= a1[20])
      {
        return 0;
      }

      if (v9 == a4)
      {
        if (a6)
        {
          return 0;
        }

        v13 = v12 + a5;
      }

      v15 = *a1 * (a1[24] + a1[1] * (v9 - 2));
      if ((*(a7 + 32))(*(a7 + 24)) != v11)
      {
        break;
      }

      v16 = *(a7 + 64);
      if (v16 >= 1 && pwrite(v16, qword_100059E90, v11, v15) != v11)
      {
        v17 = *__error();
        v37 = fsck_ctx;
        v38 = qword_100059E30;
        fsck_print(&v37, 6, "Failed to shadow at offset 0x%llx, length 0x%x (errno %d)", v15, v11, v17);
      }

      if (v14 < v13)
      {
        v18 = 0;
        v19 = v14 + 32;
        if (v13 > v14 + 32)
        {
          v19 = v13;
        }

        v20 = (v19 + ~v14) >> 5;
        v21 = vdupq_n_s64(v20);
        v22 = (v20 + 16) & 0xFFFFFFFFFFFFFF0;
        v23 = (v14 + 256);
        do
        {
          v24 = vdupq_n_s64(v18);
          v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040790)));
          if (vuzp1_s8(vuzp1_s16(v25, *v21.i8), *v21.i8).u8[0])
          {
            *(v23 - 256) = -27;
          }

          if (vuzp1_s8(vuzp1_s16(v25, *&v21), *&v21).i8[1])
          {
            *(v23 - 224) = -27;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040780)))), *&v21).i8[2])
          {
            *(v23 - 192) = -27;
            *(v23 - 160) = -27;
          }

          v26 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040770)));
          if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i32[1])
          {
            *(v23 - 128) = -27;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(v26, *&v21)).i8[5])
          {
            *(v23 - 96) = -27;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040760))))).i8[6])
          {
            *(v23 - 64) = -27;
            *(v23 - 32) = -27;
          }

          v27 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040750)));
          if (vuzp1_s8(vuzp1_s16(v27, *v21.i8), *v21.i8).u8[0])
          {
            *v23 = -27;
          }

          if (vuzp1_s8(vuzp1_s16(v27, *&v21), *&v21).i8[1])
          {
            v23[32] = -27;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040740)))), *&v21).i8[2])
          {
            v23[64] = -27;
            v23[96] = -27;
          }

          v28 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040730)));
          if (vuzp1_s8(*&v21, vuzp1_s16(v28, *&v21)).i32[1])
          {
            v23[128] = -27;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(v28, *&v21)).i8[5])
          {
            v23[160] = -27;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_100040720))))).i8[6])
          {
            v23[192] = -27;
            v23[224] = -27;
          }

          v18 += 16;
          v23 += 512;
        }

        while (v22 != v18);
      }

      if ((*(a7 + 40))(*(a7 + 24), qword_100059E90, v11, v15) != v11)
      {
        v34 = __error();
        v32 = strerror(*v34);
        v37 = fsck_ctx;
        v38 = qword_100059E30;
        v33 = "Unable to write directory";
        goto LABEL_47;
      }

      if (v9 == a4)
      {
        return 0;
      }

      v29 = fat_get(v9, a7);
      if (v29 == -286331154)
      {
        return 16;
      }

      v9 = v29;
      v12 = qword_100059E90;
      v14 = qword_100059E90;
      if (v29 <= 1)
      {
        return 0;
      }
    }

    v31 = __error();
    v32 = strerror(*v31);
    v37 = fsck_ctx;
    v38 = qword_100059E30;
    v33 = "Unable to read directory";
LABEL_47:
    fsck_print(&v37, 2, "%s (%s)\n", v33, v32);
    return 16;
  }

  return 0;
}

uint64_t sub_100005BDC(unsigned int *a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  if (a8 > 1)
  {
    v34 = fsck_ctx;
    v35 = qword_100059E30;
    if (a8 == 2)
    {
      fsck_print(&v34, 6, "Warning: Invalid long filename entry for volume label\n");
    }

    else
    {
      fsck_print(&v34, 6, "Warning: Remove unlinked file entry\n");
    }
  }

  else
  {
    v34 = fsck_ctx;
    v35 = qword_100059E30;
    if (a8)
    {
      fsck_print(&v34, 6, "Warning: Invalid long filename entry at end of directory %s\n");
    }

    else
    {
      fsck_print(&v34, 6, "Warning: Invalid long filename entry for %s\n");
    }
  }

  if (!a9)
  {
    v34 = fsck_ctx;
    v35 = qword_100059E30;
    if (!fsck_ask(&v34, 0, "Remove", v16, v17, v18, v19, v20, v33))
    {
      return 8;
    }
  }

  if (a4 != a6)
  {
    result = sub_100005778(a1, a4, a2 - qword_100059E88, a5, a3 - qword_100059E88, a5 == a6, a10);
    if (result == 16)
    {
      return result;
    }

    a2 = qword_100059E88;
  }

  result = 2;
  if (a5 == a6 && a2 < a3)
  {
    v22 = 0;
    v23 = a2 + 32;
    if (a3 > a2 + 32)
    {
      v23 = a3;
    }

    v24 = (v23 + ~a2) >> 5;
    v25 = (v24 + 16) & 0xFFFFFFFFFFFFFF0;
    v26 = vdupq_n_s64(v24);
    v27 = (a2 + 256);
    do
    {
      v28 = vdupq_n_s64(v22);
      v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040790)));
      if (vuzp1_s8(vuzp1_s16(v29, *v26.i8), *v26.i8).u8[0])
      {
        *(v27 - 256) = -27;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v26), *&v26).i8[1])
      {
        *(v27 - 224) = -27;
      }

      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040780)))), *&v26).i8[2])
      {
        *(v27 - 192) = -27;
        *(v27 - 160) = -27;
      }

      v30 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040770)));
      if (vuzp1_s8(*&v26, vuzp1_s16(v30, *&v26)).i32[1])
      {
        *(v27 - 128) = -27;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(v30, *&v26)).i8[5])
      {
        *(v27 - 96) = -27;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040760))))).i8[6])
      {
        *(v27 - 64) = -27;
        *(v27 - 32) = -27;
      }

      v31 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040750)));
      if (vuzp1_s8(vuzp1_s16(v31, *v26.i8), *v26.i8).u8[0])
      {
        *v27 = -27;
      }

      if (vuzp1_s8(vuzp1_s16(v31, *&v26), *&v26).i8[1])
      {
        v27[32] = -27;
      }

      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040740)))), *&v26).i8[2])
      {
        v27[64] = -27;
        v27[96] = -27;
      }

      v32 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040730)));
      if (vuzp1_s8(*&v26, vuzp1_s16(v32, *&v26)).i32[1])
      {
        v27[128] = -27;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(v32, *&v26)).i8[5])
      {
        v27[160] = -27;
      }

      if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_100040720))))).i8[6])
      {
        v27[192] = -27;
        v27[224] = -27;
      }

      v22 += 16;
      v27 += 512;
    }

    while (v25 != v22);
    return 2;
  }

  return result;
}

void sub_10000661C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006680(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_10000720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose((v40 - 248), 8);
  _Block_object_dispose((v40 - 200), 8);
  _Block_object_dispose((v40 - 168), 8);
  _Block_object_dispose((v40 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007278(uint64_t a1, void *a2, const void *a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    memcpy((*(*(a1 + 40) + 8) + 32), a3, 0x200uLL);
  }
}

uint64_t sub_100007300(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    if ([v6 code] != 2 || (objc_msgSend(*(a1 + 32), "isIncomplete") & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return _objc_release_x1();
}

uint64_t sub_1000073B0(void *a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, void *a6)
{
  v10 = a2;
  v11 = a6;
  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D4F8();
    }
  }

  else if (a3 == 2 && *(*(a1[4] + 8) + 32) == *a5)
  {
    CONV_Unistr255ToLowerCase(a5);
    if (!memcmp(a5 + 1, (*(a1[4] + 8) + 34), 2 * *(*(a1[4] + 8) + 32)))
    {
      *(*(a1[5] + 8) + 24) = 1;
      objc_storeStrong((*(a1[6] + 8) + 40), a6);
    }
  }

  return 1;
}

BOOL sub_100007498(uint64_t **a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D574();
    }

    objc_storeStrong((a1[4][1] + 40), a2);
  }

  else
  {
    if (a3 == 2 && *(a1[5][1] + 32) == *a5)
    {
      CONV_Unistr255ToLowerCase(a5);
      if (!memcmp(a5 + 1, (a1[5][1] + 34), 2 * *(a1[5][1] + 32)))
      {
        v16 = 1;
        *(a1[6][1] + 24) = 1;
        objc_storeStrong((a1[7][1] + 40), a6);
        goto LABEL_13;
      }
    }

    if (!a1[8])
    {
      v16 = a3 == 1;
      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002D5F0(a1 + 8);
    }

    v13 = fs_errorForPOSIXError();
    v14 = a1[4][1];
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = 1;
LABEL_13:

  return v16;
}

void sub_100007730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007748(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a2;
  v13 = a6;
  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D68C();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    if (a3 == 1)
    {
      goto LABEL_6;
    }

    if (a3 != 2 || ([*(a1 + 32) insertDirEntryNamedUtf16:a5 offsetInDir:a4], v15 = objc_claimAutoreleasedReturnValue(), v16 = *(*(a1 + 40) + 8), v17 = *(v16 + 40), *(v16 + 40) = v15, v17, !*(*(*(a1 + 40) + 8) + 40)))
    {
      a3 = 0;
      goto LABEL_6;
    }

    v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      sub_10002D708(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  a3 = 1;
LABEL_6:

  return a3;
}

void sub_100007D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 208), 8);
  _Block_object_dispose((v36 - 176), 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

BOOL sub_100007D94(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D988();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
LABEL_5:
    v13 = 1;
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24);
    if (!v18)
    {
      *(*(*(a1 + 56) + 8) + 24) = a4;
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 24);
    }

    *(v17 + 24) = v18 + 1;
    goto LABEL_5;
  }

  if (a3)
  {
    v13 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 24);
    if (!v16)
    {
      *(*(*(a1 + 56) + 8) + 24) = a4;
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 24);
    }

    *(v15 + 24) = v16 + 1;
    v13 = *(*(*(a1 + 48) + 8) + 24) == *(a1 + 64);
  }

LABEL_6:

  return v13;
}

void sub_100007EE8(void *a1, void *a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  if (v9)
  {
    v10 = v9;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v9 = v10;
  }

  else
  {
    if (!*(*(a1[5] + 8) + 24))
    {
      *(*(a1[6] + 8) + 24) = a1[9];
    }

    *(*(a1[7] + 8) + 24) = a3;
    *(*(a1[8] + 8) + 24) = a5;
  }
}

void sub_100008678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_1000086F0(uint64_t a1, void *a2, const void *a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    memcpy((*(*(a1 + 40) + 8) + 32), a3, 0x200uLL);
  }
}

void sub_100008778(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_1000087F4(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_100008880(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100008D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008D58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E024();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    if (a3 == 1)
    {
      goto LABEL_6;
    }

    if (a3 != 2 || *a5 < 3u && (bzero(__s, 0x2FEuLL), CONV_Unistr255ToUTF8(a5, __s), [Utilities isDotOrDotDot:__s length:strlen(__s)]))
    {
      a3 = 0;
      goto LABEL_6;
    }

    v14 = fs_errorForPOSIXError();
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  a3 = 1;
LABEL_6:

  return a3;
}

void sub_100009040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000907C(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v8 = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E0A0(v8);
    }
  }

  else
  {
    if (a3 == 1)
    {
      v9 = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_5;
    }

    if (a3 != 2)
    {
      v9 = 0;
      goto LABEL_5;
    }

    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 24);
    if (v12 != *(a1 + 64))
    {
      v9 = 0;
      *(v11 + 24) = v12 + 1;
      goto LABEL_5;
    }

    *(*(*(a1 + 48) + 8) + 24) = a4;
  }

  v9 = 1;
LABEL_5:

  return v9;
}

void sub_100009514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100009540(void *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E22C();
    }

    (*(a1[4] + 16))();
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_100009738(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_10000AF38@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 1024;
  *(result + 14) = a2;
  return result;
}

void sub_10000B6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B758(uint64_t a1, void *a2, int a3, int a4)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v9 = a2;
  v8 = [*(a1 + 32) systemInfo];
  *(*(*(a1 + 48) + 8) + 24) = [v8 bytesPerCluster] * a3;

  *(*(*(a1 + 56) + 8) + 24) = a4;
}

void sub_10000BE40(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10000BE9C(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  *(*(*(a1 + 40) + 8) + 24) += a3;
  v8 = [*(a1 + 32) systemInfo];
  *(*(*(a1 + 48) + 8) + 24) = [v8 bytesPerCluster] * a3;

  *(*(*(a1 + 56) + 8) + 24) = a4;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

void sub_10000BF44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10000C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

size_t sub_10000C21C(size_t result, char a2, id a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (a3)
  {
    v3 = result;
    result = strlen([a3 UTF8String]);
    *(*(*(v3 + 40) + 8) + 24) = result;
  }

  return result;
}

void sub_10000C600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_10000C640(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_10000C8F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C9A4;
  v6[3] = &unk_100050890;
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  [v1 createItemNamed:v2 type:v5 inDirectory:v3 attributes:v4 content:0 replyHandler:v6];
}

void sub_10000D654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v65 - 232), 8);
  _Block_object_dispose((v65 - 200), 8);
  _Block_object_dispose((v65 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10000D6E0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F1C4();
  }
}

void sub_10000D72C(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F248();
    }
  }

  else if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void sub_10000D7C4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    if ([v7 code] != 2)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_10000D860(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = a2;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if (*(a1 + 56) == v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002F2CC((a1 + 56), v5);
    }

    v10 = fs_errorForPOSIXError();
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_10000D934(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_10000D9B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) createFATItemWithParent:*(a1 + 40) name:*(a1 + 48) dirEntryData:a3];
    v10 = *(*(a1 + 64) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10000DA3C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F36C();
  }
}

void sub_10000DA88(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000DE4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DF00;
  v6[3] = &unk_100050890;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 createItemNamed:v2 type:3 inDirectory:v3 attributes:v4 content:v5 replyHandler:v6];
}

void sub_10000E13C(uint64_t a1)
{
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v2 = *(a1 + 72);
  v111 = v2;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = HIDWORD(v2);
  v3 = *(a1 + 32);
  v4 = v3 != 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_10000B740;
  v90 = sub_10000B750;
  v91 = 0;
  v5 = [*(a1 + 40) isRoot];
  v6 = v109;
  if (v5 && !v3)
  {
    v7 = *(v109 + 6);
    if ((v7 | 2) == 2)
    {
      v8 = 0;
      *(v93 + 24) = v7 == 0;
      *(v97 + 24) = 1;
    }

    else
    {
      v8 = v7 - 4;
    }

    *(v6 + 6) = v8;
    *(v101 + 6) = 4;
  }

  v9 = *(v6 + 6);
  if (v9 % [*(a1 + 40) dirEntrySize])
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002F4F8(buf, *(v109 + 6), [*(a1 + 40) dirEntrySize]);
    }

    v11 = fs_errorForPOSIXError();
    v12 = v87[5];
    v87[5] = v11;
  }

  if ([*(a1 + 40) dirVersion] == *(a1 + 80) || (v93[3] & 1) != 0 || (v97[3] & 1) != 0)
  {
    if (v87[5])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002F5E4();
      }

      v13 = [NSError errorWithDomain:FSKitErrorDomain code:4506 userInfo:0];
      v14 = v87[5];
      v87[5] = v13;
    }
  }

  else
  {
    v21 = v87;
    v22 = v87[5];
    if (v22)
    {
      v23 = v22;
      v24 = v21[5];
      v21[5] = v23;
    }

    else
    {
      v35 = [*(a1 + 40) verifyCookieOffset:*(v109 + 6)];
      v24 = v87[5];
      v87[5] = v35;
    }

    if (v87[5])
    {
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      LOBYTE(v75) = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002F560();
      }

      [*(a1 + 48) adjustCookieIndex:v105 + 3 dirItem:*(a1 + 40) provideAttributes:v3 != 0];
      v36 = *(a1 + 40);
      v37 = *(v105 + 6);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10000E9E4;
      v78[3] = &unk_100050A30;
      v80 = &v86;
      v81 = &v108;
      v82 = &v72;
      v38 = v36;
      v85 = v3 != 0;
      v79 = v38;
      v83 = &v92;
      v84 = &v96;
      [v38 getDirEntryOffsetByIndex:v37 replyHandler:v78];
      if (v87[5] || *(v73 + 24) == 1)
      {
        (*(*(a1 + 64) + 16))();

        _Block_object_dispose(&v72, 8);
        goto LABEL_33;
      }

      _Block_object_dispose(&v72, 8);
    }
  }

  if (v87[5])
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_10000B740;
    v76 = sub_10000B750;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_10000B740;
    v70 = sub_10000B750;
    v71 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    if (*(v93 + 24) == 1 && (++*(v105 + 6), v15 = *(a1 + 56), +[FSFileName nameWithCString:](FSFileName, "nameWithCString:", "."), v16 = objc_claimAutoreleasedReturnValue(), v17 = [*(a1 + 40) getFileID], LOBYTE(v15) = objc_msgSend(v15, "packEntryWithName:itemType:itemID:nextCookie:attributes:", v16, 2, v17, (*(v105 + 6) << 32) | 2, 0), v16, (v15 & 1) == 0))
    {
      v25 = *(a1 + 64);
      v26 = [*(a1 + 40) dirVersion];
      (*(v25 + 16))(v25, v26, v87[5]);
    }

    else
    {
      if (*(v97 + 24) == 1)
      {
        v18 = [[FSFileName alloc] initWithCString:".."];
        v19 = v73[5];
        v73[5] = v18;

        v63[3] = 2;
        if ([*(a1 + 40) isRoot])
        {
          v20 = [*(a1 + 48) getNextAvailableFileID];
          v59[3] = v20;
        }

        else
        {
          v27 = [*(a1 + 40) parentDir];
          v28 = [v27 getFileID];
          v59[3] = v28;
        }
      }

      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x3032000000;
      v56[3] = sub_10000B740;
      v56[4] = sub_10000B750;
      v57 = [NSMutableData dataWithLength:766];
      v29 = *(a1 + 40);
      v30 = *(v109 + 6);
      v40 = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_10000EAB8;
      v43 = &unk_100050A80;
      v47 = &v86;
      v48 = &v72;
      v49 = &v100;
      v50 = &v104;
      v44 = *(a1 + 56);
      v51 = &v62;
      v52 = &v58;
      v53 = &v66;
      v54 = v56;
      v55 = v4;
      v39 = *(a1 + 40);
      v31 = v39.i64[0];
      v45 = vextq_s8(v39, v39, 8uLL);
      v46 = *(a1 + 32);
      [v29 iterateFromOffset:v30 options:0 replyHandler:&v40];
      v32 = v73[5];
      if (v32)
      {
        [*(a1 + 56) packEntryWithName:v32 itemType:v63[3] itemID:v59[3] nextCookie:0 attributes:v67[5]];
      }

      v33 = *(a1 + 64);
      v34 = [*(a1 + 40) dirVersion];
      (*(v33 + 16))(v33, v34, v87[5]);

      _Block_object_dispose(v56, 8);
    }

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);

    _Block_object_dispose(&v72, 8);
  }

LABEL_33:
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
}

void sub_10000E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 192), 8);
  _Block_object_dispose((v65 - 160), 8);
  _Block_object_dispose((v65 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000E9E4(uint64_t a1, void *a2, int a3, char a4)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = a3;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  if ([*(a1 + 32) isRoot])
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      v8 = *(*(*(a1 + 48) + 8) + 24);
      if ((v8 | 2) == 2)
      {
        *(*(*(a1 + 64) + 8) + 24) = v8 == 0;
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }
    }
  }
}

uint64_t sub_10000EAB8(uint64_t a1, void *a2, uint64_t a3, int a4, unint64_t a5, void *a6)
{
  v12 = a2;
  v13 = a6;
  if (v12)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F668(v12);
    }

    goto LABEL_4;
  }

  if (a3 == 1)
  {
    goto LABEL_20;
  }

  if (a3 != 2)
  {
LABEL_19:
    a3 = 0;
    goto LABEL_20;
  }

  if (!*(*(*(a1 + 72) + 8) + 40) || (v14 = *(*(*(a1 + 80) + 8) + 24), ++*(*(*(a1 + 88) + 8) + 24), v15 = [*(a1 + 32) packEntryWithName:*(*(*(a1 + 72) + 8) + 40) itemType:*(*(*(a1 + 96) + 8) + 24) itemID:*(*(*(a1 + 104) + 8) + 24) nextCookie:(v14 + a4) | (*(*(*(a1 + 88) + 8) + 24) << 32) attributes:*(*(*(a1 + 112) + 8) + 40)], v16 = *(*(a1 + 72) + 8), v17 = *(v16 + 40), *(v16 + 40) = 0, v17, v15))
  {
    CONV_Unistr255ToUTF8(a5, [*(*(*(a1 + 120) + 8) + 40) mutableBytes]);
    v18 = [[FSFileName alloc] initWithCString:{objc_msgSend(*(*(*(a1 + 120) + 8) + 40), "mutableBytes")}];
    v19 = v18;
    if (!v18)
    {
      goto LABEL_18;
    }

    v20 = [v18 data];
    v21 = [v20 length];

    if (!v21)
    {
      goto LABEL_18;
    }

    if (*(a1 + 128) == 1)
    {
      v22 = [v19 data];
      v23 = [v22 bytes];
      v24 = [v19 data];
      v25 = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v23, [v24 length]);

      if (v25)
      {
LABEL_18:

        goto LABEL_19;
      }

      v26 = [*(a1 + 40) createFATItemWithParent:*(a1 + 48) name:v19 dirEntryData:v13];
      v27 = [v26 getAttributes:*(a1 + 56)];
      v28 = *(*(a1 + 112) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      *(*(*(a1 + 96) + 8) + 24) = [*(*(*(a1 + 112) + 8) + 40) type];
    }

    else if ([v13 type] == 2)
    {
      *(*(*(a1 + 96) + 8) + 24) = 2;
    }

    else
    {
      v30 = *(a1 + 40);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10000EDF8;
      v34[3] = &unk_100050A58;
      v34[4] = *(a1 + 96);
      [v30 isSymLink:v13 replyHandler:v34];
    }

    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v19;
    v19 = v19;

    *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 40) getFileID:v13];
    goto LABEL_18;
  }

LABEL_4:
  a3 = 1;
LABEL_20:

  return a3;
}

uint64_t sub_10000EDF8(uint64_t result, int a2)
{
  v2 = 3;
  if (!a2)
  {
    v2 = 1;
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void sub_10000EF5C(uint64_t a1)
{
  v2 = [*(a1 + 32) getAttributes:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_10000F1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000F1E8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([*(*(*(a1 + 56) + 8) + 40) isDeleted])
    {
      v2 = *(a1 + 48);
LABEL_9:
      v26 = fs_errorForPOSIXError();
      (*(v2 + 16))(v2, 0, 0, v26);

      return;
    }

    v5 = [*(a1 + 32) data];
    v6 = [v5 bytes];
    v7 = [*(a1 + 32) data];
    v8 = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v6, [v7 length]);

    if (v8)
    {
      v2 = *(a1 + 48);
      goto LABEL_9;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_10000B740;
    v49 = sub_10000B750;
    v50 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v9 = [*(a1 + 40) nameCachePool];
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10000F704;
    v40[3] = &unk_100050920;
    v40[4] = &v45;
    v40[5] = &v41;
    [v9 getNameCacheForDir:v10 cachedOnly:0 replyHandler:v40];

    if (v46[5])
    {
      if (*(v42 + 24) == 1)
      {
        v11 = [*(*(*(a1 + 56) + 8) + 40) fillNameCache:?];
        v12 = *(*(a1 + 64) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        if (*(*(*(a1 + 64) + 8) + 40))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002F804();
          }

          v14 = *(*(a1 + 64) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = 0;
        }
      }
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10000B740;
    v38 = sub_10000B750;
    v39 = 0;
    v16 = *(a1 + 56);
    v17 = *(*(v16 + 8) + 40);
    v18 = v46[5];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000F79C;
    v29[3] = &unk_100050AF8;
    v31 = *(a1 + 64);
    v32 = &v34;
    v33 = v16;
    v27 = *(a1 + 32);
    v30 = vextq_s8(v27, v27, 8uLL);
    [v17 lookupDirEntryNamed:v27.i64[0] dirNameCache:v18 lookupOffset:0 replyHandler:v29];
    if (v46[5])
    {
      v19 = [*(a1 + 40) nameCachePool];
      [v19 doneWithNameCacheForDir:*(*(*(a1 + 56) + 8) + 40)];
    }

    if (v35[5])
    {
      v20 = [*(a1 + 40) itemCache];
      v21 = v35[5];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000F830;
      v28[3] = &unk_1000509E0;
      v28[4] = *(a1 + 64);
      v28[5] = &v34;
      [v20 insertItem:v21 replyHandler:v28];

      v22 = *(a1 + 64);
      if (v35[5])
      {
LABEL_26:
        (*(*(a1 + 48) + 16))();

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(&v45, 8);

        return;
      }
    }

    else
    {
      v22 = *(a1 + 64);
    }

    if (!*(*(v22 + 8) + 40))
    {
      v23 = fs_errorForPOSIXError();
      v24 = *(*(a1 + 64) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F894();
  }

  v3 = *(a1 + 48);
  v4 = fs_errorForPOSIXError();
  (*(v3 + 16))(v3, 0, 0, v4);
}

void sub_10000F6CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000F704(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F918();
    }
  }

  else if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void sub_10000F79C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) createFATItemWithParent:*(*(*(a1 + 64) + 8) + 40) name:*(a1 + 40) dirEntryData:a3];
    v10 = *(*(a1 + 56) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10000F830(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000F9A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [(FATItem *)FileItem dynamicCast:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 entryData];
      v13 = [v12 getSize];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000FAE0;
      v15[3] = &unk_100050B48;
      v14 = *(a1 + 32);
      v16 = *(a1 + 40);
      [v11 fetchFileExtentsFrom:0 to:v13 usingBlocks:v14 replyHandler:v15];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000FAE0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F99C();
  }
}

void sub_10000FEA4(uint64_t a1)
{
  v2 = [*(a1 + 32) systemInfo];
  v3 = [v2 bytesPerSector] + 1066;
  v4 = [*(a1 + 32) systemInfo];
  v5 = v3 / [v4 bytesPerSector];
  v6 = [*(a1 + 32) systemInfo];
  v7 = v5 * [v6 bytesPerSector];

  v8 = [[NSMutableData alloc] initWithLength:v7];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = v7;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000B740;
  v32 = sub_10000B750;
  v33 = 0;
  v9 = [*(a1 + 32) fatManager];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000101DC;
  v22[3] = &unk_100050B98;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v24 = &v28;
  v25 = v34;
  v22[4] = v10;
  v26 = v36;
  v12 = v8;
  v23 = v12;
  v27 = v35;
  [v9 iterateClusterChainOfItem:v11 replyHandler:v22];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000B740;
  v20 = sub_10000B750;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010378;
  v15[3] = &unk_100050840;
  v15[4] = &v28;
  v15[5] = &v16;
  [SymLinkItem verifyAndGetLink:v12 replyHandler:v15];
  v13 = *(a1 + 48);
  v14 = [FSFileName nameWithString:v17[5]];
  (*(v13 + 16))(v13, v14, v29[5]);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
}

void sub_10001018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 192), 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000101DC(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v9 = [*(a1 + 32) systemInfo];
    v10 = [v9 bytesPerCluster] * a4;

    v11 = *(*(*(a1 + 64) + 8) + 24);
    if (v10 < v11)
    {
      v11 = v10;
    }

    *(*(*(a1 + 56) + 8) + 24) = v11;
    v12 = [*(a1 + 32) resource];
    v13 = [*(a1 + 40) mutableBytes];
    v14 = *(*(*(a1 + 72) + 8) + 24);
    v15 = [*(a1 + 32) systemInfo];
    v16 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v12, &v13[v14], [v15 offsetForCluster:a3], *(*(*(a1 + 56) + 8) + 24));
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      *(*(*(a1 + 72) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) -= *(*(*(a1 + 56) + 8) + 24);
      v19 = *(*(*(a1 + 64) + 8) + 24) < 1;
      goto LABEL_7;
    }
  }

  v19 = 1;
LABEL_7:

  return v19;
}

void sub_100010378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_100010524(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) reclaim:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100010980(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010A98;
  block[3] = &unk_100050C80;
  v3 = *(a1 + 32);
  v9 = *(a1 + 64);
  v4 = v9;
  v14 = v9;
  v15 = *(a1 + 80);
  *&v5 = v3;
  *(&v5 + 1) = *(a1 + 40);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  dispatch_sync(v2, block);
}

void sub_100010A98(uint64_t a1)
{
  v2 = [*(a1 + 32) entryData];
  v3 = [v2 type];

  if (v3 != 2)
  {
LABEL_7:
    v12 = [*(a1 + 40) fatManager];
    [v12 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050BE0];

    v13 = *(*(*(a1 + 72) + 8) + 40);
    if (v13)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100010F80;
      v41[3] = &unk_100050C08;
      v42 = *(a1 + 64);
      [v13 purgeMetaBlocksFromCache:v41];
    }

    v14 = [*(a1 + 48) markDirEntriesAsDeletedAndUpdateMtime:*(a1 + 32)];
    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_10000B740;
      v39 = sub_10000B750;
      v40 = 0;
      v17 = [*(a1 + 40) nameCachePool];
      v18 = *(a1 + 48);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100010FE4;
      v34[3] = &unk_100050C30;
      v34[4] = &v35;
      [v17 getNameCacheForDir:v18 cachedOnly:1 replyHandler:v34];

      v19 = v36[5];
      if (v19)
      {
        v20 = [*(a1 + 56) data];
        v21 = [v20 bytes];
        v22 = [*(a1 + 56) data];
        v23 = [v22 length];
        v24 = [*(a1 + 32) entryData];
        [v19 removeDirEntryNamed:v21 ofLength:v23 offsetInDir:{objc_msgSend(v24, "firstEntryOffsetInDir")}];

        v25 = [*(a1 + 40) nameCachePool];
        [v25 doneWithNameCacheForDir:*(a1 + 48)];
      }

      v26 = [*(a1 + 40) itemCache];
      [v26 removeItem:*(a1 + 32)];

      [*(a1 + 48) setDirVersion:{objc_msgSend(*(a1 + 48), "dirVersion") + 1}];
      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v27 = [*(a1 + 48) volume];
        v28 = [v27 fatManager];
        v29 = [*(*(*(a1 + 72) + 8) + 40) numberOfClusters];
        v30 = *(*(*(a1 + 72) + 8) + 40);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100010FF8;
        v33[3] = &unk_100050C58;
        v33[4] = *(a1 + 80);
        [v28 freeClusters:v29 ofItem:v30 replyHandler:v33];
      }

      [*(a1 + 32) setDeleted];
      (*(*(a1 + 64) + 16))();
      _Block_object_dispose(&v35, 8);
    }

    return;
  }

  v4 = [(FATItem *)DirItem dynamicCast:*(a1 + 32)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 72) + 8) + 40);
  if (v7)
  {
    v8 = [v7 checkIfEmpty];
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      v11 = *(*(a1 + 64) + 16);

      v11();
      return;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FD44();
  }

  v31 = *(a1 + 64);
  v32 = fs_errorForPOSIXError();
  (*(v31 + 16))(v31, v32);
}

void sub_100010F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010F34(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FDC8();
  }
}

void sub_100010F80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002FE4C();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001176C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000117A0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 112) + 8) + 40) entryData];
  v116 = 0;
  v117 = &v116;
  v118 = 0x3032000000;
  v119 = sub_10000B740;
  v120 = sub_10000B750;
  v121 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = sub_10000B740;
  v114 = sub_10000B750;
  v115 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = sub_10000B740;
  v104 = sub_10000B750;
  v105 = 0;
  if ([v2 type] != 2 || (objc_msgSend(*(a1 + 32), "parentDir"), v3 = objc_claimAutoreleasedReturnValue(), +[FATItem dynamicCast:](DirItem, "dynamicCast:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
LABEL_5:
    v8 = [*(a1 + 40) fatManager];
    [v8 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050CA0];

    v9 = [*(a1 + 40) getAttrRequestForNewDirEntry];
    v75 = [*(*(*(a1 + 112) + 8) + 40) getAttributes:v9];
    v94 = 0;
    v95 = &v94;
    v96 = 0x3032000000;
    v97 = sub_10000B740;
    v98 = sub_10000B750;
    v99 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = sub_10000B740;
    v92 = sub_10000B750;
    v93 = 0;
    v10 = [*(a1 + 40) nameCachePool];
    v11 = *(a1 + 32);
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_10001267C;
    v87[3] = &unk_100050C30;
    v87[4] = &v88;
    [v10 getNameCacheForDir:v11 cachedOnly:1 replyHandler:v87];

    if (*(a1 + 48) && !*(a1 + 56))
    {
      v12 = *(a1 + 64);
      v13 = v89[5];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_100012690;
      v82[3] = &unk_100050998;
      v14 = *(a1 + 120);
      v85 = &v100;
      v86 = v14;
      v73 = *(a1 + 32);
      v15 = v73.i64[0];
      v83 = vextq_s8(v73, v73, 8uLL);
      v84 = *(a1 + 64);
      [v15 lookupDirEntryNamed:v12 dirNameCache:v13 lookupOffset:0 replyHandler:v82];
      v16 = v101[5];
      if (v16)
      {
        if ([v16 code] != 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100030060();
          }

          v31 = 0;
          v21 = 0;
          v4 = 0;
          goto LABEL_54;
        }

        v17 = v101[5];
        v101[5] = 0;
      }
    }

    v18 = *(*(*(a1 + 120) + 8) + 40);
    if (!v18)
    {
      v21 = 0;
      v4 = 0;
      goto LABEL_19;
    }

    v4 = [v18 entryData];
    v19 = [v2 type];
    if (v19 != [v4 type])
    {
      if ([v2 type] == 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030168();
        }

        goto LABEL_53;
      }

      if ([v4 type] == 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000300E4();
        }

        goto LABEL_53;
      }
    }

    if ([v4 type] != 2)
    {
      v21 = 0;
LABEL_29:
      [*(a1 + 32) setDirVersion:{objc_msgSend(*(a1 + 32), "dirVersion") + 1}];
      v29 = [*(a1 + 32) markDirEntriesAsDeletedAndUpdateMtime:*(*(*(a1 + 120) + 8) + 40)];
      v30 = v101[5];
      v101[5] = v29;

      if (v101[5])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030270();
        }

        goto LABEL_42;
      }

      [*(*(a1 + 40) + 80) removeItem:*(*(*(a1 + 120) + 8) + 40)];
      v35 = v89[5];
      if (v35)
      {
        v36 = [*(a1 + 64) data];
        v74 = [v36 bytes];
        v37 = [*(a1 + 64) data];
        v38 = [v37 length];
        v39 = [*(*(*(a1 + 120) + 8) + 40) entryData];
        [v35 removeDirEntryNamed:v74 ofLength:v38 offsetInDir:{objc_msgSend(v39, "firstEntryOffsetInDir")}];
      }

      v40 = *(*(*(a1 + 120) + 8) + 40);
      if (*(a1 + 56))
      {
        [v40 setDeleted];
      }

      else if ([v40 firstCluster])
      {
        v65 = [*(a1 + 32) volume];
        v66 = [v65 fatManager];
        v67 = [*(*(*(a1 + 120) + 8) + 40) numberOfClusters];
        v68 = *(*(*(a1 + 120) + 8) + 40);
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_10001271C;
        v81[3] = &unk_100050C58;
        v81[4] = &v100;
        [v66 freeClusters:v67 ofItem:v68 replyHandler:v81];

        if (v101[5])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000302F4();
          }

          goto LABEL_42;
        }
      }

LABEL_19:
      v24 = [(FATItem *)SymLinkItem dynamicCast:*(a1 + 48)];

      v25 = *(a1 + 32);
      v26 = *(a1 + 64);
      if (v24)
      {
        v27 = 3;
      }

      else
      {
        v27 = [v2 type];
      }

      v32 = [*(*(*(a1 + 112) + 8) + 40) firstCluster];
      v80[0] = _NSConcreteStackBlock;
      v80[1] = 3221225472;
      v80[2] = sub_10001272C;
      v80[3] = &unk_100050970;
      v80[4] = &v100;
      v80[5] = &v106;
      [v25 createNewDirEntryNamed:v26 type:v27 attributes:v75 firstDataCluster:v32 replyHandler:v80];
      if (v101[5])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000303FC();
        }
      }

      else
      {
        [*(*(a1 + 40) + 80) removeItem:*(*(*(a1 + 112) + 8) + 40)];
        v33 = *(a1 + 32);
        v34 = *(a1 + 64);
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_1000127A8;
        v79[3] = &unk_100050778;
        v79[4] = &v100;
        v79[5] = &v116;
        [v33 lookupDirEntryNamed:v34 dirNameCache:0 lookupOffset:v107 + 3 replyHandler:v79];
        if (!v101[5])
        {
          [*(*(*(a1 + 112) + 8) + 40) setName:*(a1 + 64)];
          [*(*(*(a1 + 112) + 8) + 40) setParentDir:*(a1 + 32)];
          v44 = v89[5];
          if (v44)
          {
            v45 = [*(a1 + 64) data];
            v46 = [v45 bytes];
            v47 = [*(a1 + 64) data];
            v48 = [v47 length];
            v49 = [v44 insertDirEntryNamed:v46 ofLength:v48 offsetInDir:{objc_msgSend(v117[5], "firstEntryOffsetInDir")}];

            v50 = [*(a1 + 40) nameCachePool];
            [v50 doneWithNameCacheForDir:*(a1 + 32)];

            v51 = v89[5];
            v89[5] = 0;
          }

          v52 = [*(a1 + 40) nameCachePool];
          v53 = *(a1 + 72);
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_10001282C;
          v78[3] = &unk_100050C30;
          v78[4] = &v94;
          [v52 getNameCacheForDir:v53 cachedOnly:1 replyHandler:v78];

          v54 = [*(a1 + 72) markDirEntriesAsDeletedAndUpdateMtime:*(*(*(a1 + 112) + 8) + 40)];
          v55 = v101[5];
          v101[5] = v54;

          if (v101[5] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100030504();
          }

          v56 = v95[5];
          if (v56)
          {
            v57 = [*(a1 + 80) data];
            v72 = [v57 bytes];
            v58 = [*(a1 + 80) data];
            v59 = [v58 length];
            v60 = [*(*(*(a1 + 112) + 8) + 40) entryData];
            [v56 removeDirEntryNamed:v72 ofLength:v59 offsetInDir:{objc_msgSend(v60, "firstEntryOffsetInDir")}];

            v61 = [*(a1 + 40) nameCachePool];
            [v61 doneWithNameCacheForDir:*(a1 + 72)];
          }

          [*(*(*(a1 + 112) + 8) + 40) setEntryData:v117[5]];
          v62 = *(*(a1 + 40) + 80);
          v63 = *(*(*(a1 + 112) + 8) + 40);
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_100012840;
          v77[3] = &unk_100050CC8;
          v77[4] = &v100;
          [v62 insertItem:v63 replyHandler:v77];
          if ([v2 type] != 2 || *(a1 + 88) == *(a1 + 96))
          {
            v31 = 0;
          }

          else
          {
            v31 = [(FATItem *)DirItem dynamicCast:*(*(*(a1 + 112) + 8) + 40)];
            v64 = [[FSFileName alloc] initWithCString:".."];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_1000128A0;
            v76[3] = &unk_100050778;
            v76[4] = &v100;
            v76[5] = &v110;
            [v31 lookupDirEntryNamed:v64 dirNameCache:0 lookupOffset:0 replyHandler:v76];

            if (v101[5])
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100030588();
              }
            }

            else
            {
              v69 = v111[5];
              v70 = [*(a1 + 32) firstCluster];
              v71 = [*(a1 + 40) systemInfo];
              [v69 setFirstCluster:v70 fileSystemInfo:v71];
            }
          }

          [*(a1 + 72) setDirVersion:{objc_msgSend(*(a1 + 72), "dirVersion") + 1}];
          goto LABEL_54;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030480();
        }
      }

      goto LABEL_42;
    }

    v20 = [(FATItem *)DirItem dynamicCast:*(*(*(a1 + 120) + 8) + 40)];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 checkIfEmpty];
      v23 = v101[5];
      v101[5] = v22;

      if (v101[5])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000301EC();
        }

LABEL_42:
        v31 = 0;
LABEL_54:
        if (v89[5])
        {
          v43 = [*(a1 + 40) nameCachePool];
          [v43 doneWithNameCacheForDir:*(a1 + 32)];
        }

        (*(*(a1 + 104) + 16))();
        _Block_object_dispose(&v88, 8);

        _Block_object_dispose(&v94, 8);
        goto LABEL_57;
      }

      goto LABEL_29;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030378();
    }

LABEL_53:
    v41 = fs_errorForPOSIXError();
    v42 = v101[5];
    v101[5] = v41;

    v31 = 0;
    v21 = 0;
    goto LABEL_54;
  }

  while (1)
  {
    v5 = [v4 firstCluster];
    if (v5 == [*(*(*(a1 + 112) + 8) + 40) firstCluster])
    {
      break;
    }

    v6 = [v4 parentDir];
    v7 = [(FATItem *)DirItem dynamicCast:v6];

    v4 = v7;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FFDC();
  }

  v28 = *(a1 + 104);
  v21 = fs_errorForPOSIXError();
  (*(v28 + 16))(v28, 0, v21);
LABEL_57:

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(&v116, 8);
}

void sub_1000125C4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100012630(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003060C();
  }
}

void sub_100012690(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) createFATItemWithParent:*(a1 + 40) name:*(a1 + 48) dirEntryData:a3];
    v10 = *(*(a1 + 64) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10001272C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_1000127A8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100012840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v5 = v6;
  }
}

void sub_1000128A0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100012924(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000129D4;
  v3[3] = &unk_100050D40;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);
}

void sub_1000129D4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012AAC;
    block[3] = &unk_100050D18;
    v6 = *(a1 + 32);
    dispatch_sync(v3, block);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_100012ABC(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012B70;
  block[3] = &unk_100050D68;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_sync(v2, block);
}

void sub_100012B70(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012C20;
  v3[3] = &unk_100050D40;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);
}

void sub_100012C20(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012CF8;
    block[3] = &unk_100050D18;
    v6 = *(a1 + 32);
    dispatch_sync(v3, block);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_100012E38(uint64_t a1)
{
  v8 = objc_alloc_init(FSItemGetAttributesRequest);
  if ([Utilities containsReadOnlyAttributes:*(a1 + 32)])
  {
    v2 = *(a1 + 56);
    v3 = fs_errorForPOSIXError();
    v4 = *(v2 + 16);
    v5 = v2;
LABEL_5:
    v4(v5, 0, v3);
    goto LABEL_6;
  }

  v6 = [*(a1 + 40) fatManager];
  [v6 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050DB0];

  v7 = [*(a1 + 48) setAttributes:*(a1 + 32)];
  if (v7)
  {
    v3 = v7;
    v5 = *(a1 + 56);
    v4 = *(v5 + 16);
    goto LABEL_5;
  }

  [v8 setWantedAttributes:0x3FFFLL];
  v3 = [*(a1 + 48) getAttributes:v8];
  (*(*(a1 + 56) + 16))(*(a1 + 56), v3, 0);
LABEL_6:
}

void sub_100012F50(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030714();
  }
}

void sub_100013048(uint64_t a1)
{
  v2 = [*(a1 + 32) sync];
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030798();
  }

  v3 = [*(a1 + 32) systemInfo];
  if ([v3 type])
  {
    v4 = [*(a1 + 32) systemInfo];
    v5 = [v4 dirtyBitValue];

    if (v5 != 1)
    {
      v6 = v2;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) resource];
  v9 = v8;
  if ((v7 & 2) != 0)
  {
    v15 = v2;
    v10 = &v15;
    [v8 asynchronousMetadataFlushWithError:&v15];
  }

  else
  {
    v14 = v2;
    v10 = &v14;
    [v8 metadataFlushWithError:&v14];
  }

  v6 = *v10;

  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003081C(v6);
  }

LABEL_14:
  if (![*(a1 + 32) getNumberOfPreallocatedFiles] && !objc_msgSend(*(a1 + 32), "getNumberOfOpenUnlinkedFiles"))
  {
    v11 = [*(a1 + 32) fatManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013234;
    v12[3] = &unk_100050C08;
    v13 = *(a1 + 40);
    [v11 setDirtyBitValue:0 forceWriteToDisk:0 replyHandler:v12];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100013234(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000134C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000135A0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) systemInfo];
  v4 = [v3 type];

  if (v4)
  {
    v5 = [*v2 systemInfo];
    v6 = [v5 dirtyBitValue];

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100030ADC(v2);
      }
    }

    else
    {
      v7 = [*(a1 + 32) fatManager];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000136C4;
      v9[3] = &unk_100050C08;
      v10 = *(a1 + 40);
      [v7 setDirtyBitValue:0 forceWriteToDisk:1 replyHandler:v9];
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000136C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030BA4();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100013960(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013A18;
  v7[3] = &unk_100050C08;
  v8 = *(a1 + 48);
  [v5 blockmapOffset:v1 length:v2 flags:v3 operationID:v4 packer:v6 replyHandler:v7];
}

void sub_100013A18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030CAC();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013BE8(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  v5 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    v6 = [v4 code];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 completeIOAtOffset:v2 length:v3 status:v6 flags:a1[9] operationID:a1[10]];
  (*(a1[6] + 16))();
}

void sub_100013FC8(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000B740;
  v17 = sub_10000B750;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000B740;
  v11 = sub_10000B750;
  v12 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) data];
  v4 = [*(a1 + 32) rootItem];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014174;
  v6[3] = &unk_100050EE0;
  v6[4] = &v7;
  v6[5] = &v13;
  [v2 setVolumeLabel:v3 rootDir:v4 replyHandler:v6];

  v5 = *(a1 + 48);
  if (v8[5])
  {
    (*(v5 + 16))(v5, 0);
  }

  else
  {
    (*(v5 + 16))(v5, v14[5]);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void sub_100014150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100014174(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_100014374(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = a1[7];
    v7 = a1[4];
    v8 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001442C;
    v9[3] = &unk_100050F00;
    v9[4] = v6;
    v9[5] = a2;
    [v7 fetchFileExtentsFrom:v6 to:v6 + a2 usingBlocks:v8 replyHandler:v9];
  }

  (*(a1[6] + 16))();
}

void sub_10001442C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030DB4();
  }
}

void sub_1000145F8(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_10000B740;
  v7[4] = sub_10000B750;
  v8 = 0;
  v2 = [*(a1 + 32) fatManager];
  [v2 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050F48];

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = (*(a1 + 64) & 4) == 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000147B8;
  v6[3] = &unk_100050970;
  v6[4] = v7;
  v6[5] = v9;
  [v3 preallocate:v4 allowPartial:v5 mustBeContig:0 replyHandler:v6];
  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(v9, 8);
}

void sub_100014748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10001476C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030F68();
  }
}

void sub_1000147B8(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_10001493C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) reclaim:1];
  (*(v1 + 16))(v1, v2);
}

void sub_1000151C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000151E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000151FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031070();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_10001526C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000310F4();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_100015988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000159B8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031548();
  }
}

void sub_100015A04(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000315CC();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_100015F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015F84(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003186C();
  }
}

uint64_t sub_100015FD0(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_100016484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000164CC(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

uint64_t fat_init(_DWORD *a1, uint64_t a2)
{
  fat_uninit();
  qword_10005A3B0 = a1;
  v4 = a1[19];
  v5 = sub_100016F3C;
  v6 = sub_100016E84;
  if (v4 != 4095)
  {
    if (v4 == 0xFFFFFFF)
    {
      v5 = sub_100017298;
      v6 = sub_1000171E0;
    }

    else
    {
      if (v4 != 0xFFFF)
      {
        v38 = fsck_ctx;
        v39 = qword_100059E30;
        fsck_print(&v38, 2, "Unknown cluster mask (0x%08X)\n");
        return 16;
      }

      v5 = sub_1000170F4;
      v6 = sub_100017054;
    }
  }

  fat_get = v6;
  fat_set = v5;
  if (initUseMap(a1))
  {
    return 16;
  }

  if (fsck_maxmem())
  {
    v7 = (fsck_maxmem() - qword_10005A3B8) >> 16;
  }

  else
  {
    v7 = (*a1 * a1[22] + 0xFFFF) >> 16;
  }

  qword_10005A3C0 = v7;
  if (!v7)
  {
    if (qword_10005A3E0)
    {
      free(qword_10005A3E0);
    }

    qword_10005A3E0 = 0;
    v38 = fsck_ctx;
    v39 = qword_100059E30;
    fsck_print(&v38, 2, "Calculated zero cache blocks\n");
    return 16;
  }

  qword_10005A3C8 = malloc_type_calloc(v7, 0x20uLL, 0x10300409F66AF54uLL);
  if (!qword_10005A3C8)
  {
    if (qword_10005A3E0)
    {
      free(qword_10005A3E0);
    }

    goto LABEL_30;
  }

  v8 = malloc_type_calloc(qword_10005A3C0, 0x10000uLL, 0x3F72BAD1uLL);
  qword_10005A3D0 = v8;
  if (!v8)
  {
    free(qword_10005A3C8);
    qword_10005A3C8 = 0;
    if (qword_10005A3E0)
    {
      free(qword_10005A3E0);
    }

LABEL_30:
    qword_10005A3E0 = 0;
    v16 = __error();
    strerror(*v16);
    v38 = fsck_ctx;
    v39 = qword_100059E30;
    fsck_print(&v38, 2, "%s (%s)\n");
    return 16;
  }

  v9 = qword_10005A3C0;
  v10 = qword_10005A3C8;
  if (qword_10005A3C0)
  {
    v11 = qword_10005A3C8 + 32;
    do
    {
      *(v11 - 32) = -2;
      *(v11 - 16) = v8;
      if (v9 != 1)
      {
        *(v11 - 24) = v11;
      }

      v11 += 32;
      v8 += 0x10000;
      --v9;
    }

    while (v9);
  }

  qword_10005A3D8 = v10;
  v12 = fat_get(0, a2);
  if (v12 == -286331154)
  {
    return 16;
  }

  v13 = a1[19];
  v14 = (a1[5] - 256) & v13;
  if ((v13 & v12) == v14)
  {
    v15 = 0;
  }

  else
  {
    v38 = fsck_ctx;
    v39 = qword_100059E30;
    fsck_print(&v38, 6, "Warning: FAT[0] is incorrect (is 0x%X; should be 0x%X)\n", v13 & v12, v14);
    v38 = fsck_ctx;
    v39 = qword_100059E30;
    if (fsck_ask(&v38, 1, "Correct", v19, v20, v21, v22, v23, v37))
    {
      v24 = fat_set(0, v14, a2);
      v15 = v24 ? v24 : 4;
    }

    else
    {
      v15 = 8;
    }
  }

  v25 = fat_get(1, a2);
  if (v25 == -286331154)
  {
    return 16;
  }

  v26 = v25;
  v27 = a1[19];
  v28 = ~(v25 >> 10) & 0x20 | v15;
  if (v27 != 0xFFFF)
  {
    v28 = v15;
  }

  if (v27 == 0xFFFFFFF)
  {
    v17 = ~(v25 >> 22) & 0x20 | v15;
  }

  else
  {
    v17 = v28;
  }

  if (v27 == 4095)
  {
    v29 = 4095;
  }

  else
  {
    v29 = v27 >> 2;
  }

  if ((v29 & v25) < (v29 & 0x3FFFFFF8u))
  {
    v38 = fsck_ctx;
    v39 = qword_100059E30;
    fsck_print(&v38, 6, "Warning: FAT[1] is incorrect\n");
    v38 = fsck_ctx;
    v39 = qword_100059E30;
    if (fsck_ask(&v38, 1, "Correct", v30, v31, v32, v33, v34, v36))
    {
      v35 = fat_set(1, v29 | v26, a2);
      if (v35)
      {
        return v35 | v17;
      }

      else
      {
        return v17 | 4;
      }
    }

    else
    {
      return v17 | 8;
    }
  }

  return v17;
}

void fat_uninit()
{
  if (qword_10005A3C8)
  {
    free(qword_10005A3C8);
    qword_10005A3C8 = 0;
  }

  if (qword_10005A3D0)
  {
    free(qword_10005A3D0);
    qword_10005A3D0 = 0;
  }

  if (qword_10005A3E0)
  {
    free(qword_10005A3E0);
  }

  qword_10005A3E0 = 0;
}

uint64_t sub_100016E84(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  v3 = 4008636142;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v10 = fsck_ctx;
    v11 = qword_100059E30;
    fsck_print(&v10, 3, "fat12_get: invalid cluster (%u)\n", a1);
  }

  else
  {
    v4 = a1 + (a1 >> 1);
    v5 = sub_100017C34(v4, a2);
    if (v5)
    {
      v6 = *(*(v5 + 16) + v4);
      v7 = v6 >> 4;
      v8 = v6 & 0xFFF;
      if (v2)
      {
        v8 = v7;
      }

      if (v8 <= 0xFF5)
      {
        return v8;
      }

      else
      {
        return v8 | 0xFFFFF000;
      }
    }
  }

  return v3;
}

uint64_t sub_100016F3C(unsigned int a1, __int16 a2, uint64_t a3)
{
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v15 = fsck_ctx;
    v16 = qword_100059E30;
    fsck_print(&v15, 3, "fat16_set: invalid cluster (%u)\n", a1);
  }

  else
  {
    v5 = a1 + (a1 >> 1);
    v6 = sub_100017C34(v5, a3);
    if (v6)
    {
      v7 = (*(v6 + 16) + v5);
      if (a1)
      {
        v8 = *v7 & 0xF | (16 * (a2 & 0xFFF));
      }

      else
      {
        v8 = a2 & 0xFFF | ((((v7[1] & 0xF0) >> 4) & 0xF) << 12);
      }

      *v7 = v8;
      v10 = 1 << a1;
      v11 = *(qword_10005A3E0 + 4 * (a1 >> 5));
      v12 = v11 & (1 << a1);
      if (v8)
      {
        if (!v12)
        {
          v13 = v11 | v10;
LABEL_13:
          *(qword_10005A3E0 + 4 * (a1 >> 5)) = v13;
        }
      }

      else if (v12)
      {
        v13 = v11 & ~v10;
        goto LABEL_13;
      }

      v9 = 0;
      *v6 |= 1u;
      return v9;
    }
  }

  return 16;
}

uint64_t sub_100017054(unsigned int a1, uint64_t a2)
{
  v2 = 4008636142;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v7 = fsck_ctx;
    v8 = qword_100059E30;
    fsck_print(&v7, 3, "fat16_get: invalid cluster (%u)\n", a1);
  }

  else
  {
    v3 = 2 * a1;
    v4 = sub_100017C34(2 * a1, a2);
    if (v4)
    {
      v5 = *(*(v4 + 16) + (v3 & 0xFFFE));
      if (v5 <= 0xFFF5)
      {
        return *(*(v4 + 16) + (v3 & 0xFFFE));
      }

      else
      {
        return v5 | 0xFFFF0000;
      }
    }
  }

  return v2;
}

uint64_t sub_1000170F4(unsigned int a1, int a2, uint64_t a3)
{
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v13 = fsck_ctx;
    v14 = qword_100059E30;
    fsck_print(&v13, 3, "fat16_set: invalid cluster (%u)\n", a1);
  }

  else
  {
    v5 = 2 * a1;
    v6 = sub_100017C34(2 * a1, a3);
    if (v6)
    {
      *(*(v6 + 16) + (v5 & 0xFFFE)) = a2;
      v7 = 1 << a1;
      v8 = *(qword_10005A3E0 + 4 * (a1 >> 5));
      v9 = v8 & (1 << a1);
      if (a2)
      {
        if (!v9)
        {
          v10 = v8 | v7;
LABEL_10:
          *(qword_10005A3E0 + 4 * (a1 >> 5)) = v10;
        }
      }

      else if (v9)
      {
        v10 = v8 & ~v7;
        goto LABEL_10;
      }

      v11 = 0;
      *v6 |= 1u;
      return v11;
    }
  }

  return 16;
}

uint64_t sub_1000171E0(unsigned int a1, uint64_t a2)
{
  v2 = 4008636142;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v7 = fsck_ctx;
    v8 = qword_100059E30;
    fsck_print(&v7, 3, "fat32_get: invalid cluster (%u)\n", a1);
  }

  else
  {
    v3 = 4 * a1;
    v4 = sub_100017C34(4 * a1, a2);
    if (v4)
    {
      v5 = (*(*(v4 + 16) + (v3 & 0xFFFC)) | (*(*(v4 + 16) + (v3 & 0xFFFC) + 2) << 16)) & 0xF0FFFFFF | ((*(*(v4 + 16) + (v3 & 0xFFFC) + 3) & 0xF) << 24);
      if (v5 <= 0xFFFFFF5)
      {
        return v5;
      }

      else
      {
        return v5 | 0xF0000000;
      }
    }
  }

  return v2;
}

uint64_t sub_100017298(unsigned int a1, int a2, uint64_t a3)
{
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v14 = fsck_ctx;
    v15 = qword_100059E30;
    fsck_print(&v14, 3, "fat32_set: invalid cluster (%u)\n", a1);
  }

  else
  {
    v5 = 4 * a1;
    v6 = sub_100017C34(4 * a1, a3);
    if (v6)
    {
      v7 = *(v6 + 16) + (v5 & 0xFFFC);
      *v7 = a2;
      *(v7 + 2) = BYTE2(a2);
      *(v7 + 3) = *(v7 + 3) & 0xF0 | HIBYTE(a2) & 0xF;
      v8 = 1 << a1;
      v9 = *(qword_10005A3E0 + 4 * (a1 >> 5));
      v10 = v9 & (1 << a1);
      if (a2)
      {
        if (!v10)
        {
          v11 = v9 | v8;
LABEL_10:
          *(qword_10005A3E0 + 4 * (a1 >> 5)) = v11;
        }
      }

      else if (v10)
      {
        v11 = v9 & ~v8;
        goto LABEL_10;
      }

      v12 = 0;
      *v6 |= 1u;
      return v12;
    }
  }

  return 16;
}

BOOL initUseMap(uint64_t a1)
{
  v1 = *(a1 + 80) + 31;
  if (qword_10005A3E0)
  {
    free(qword_10005A3E0);
  }

  qword_10005A3B8 = (v1 & 0xFFFFFFE0) >> 3;
  if (fsck_maxmem() && (v2 = fsck_maxmem(), v3 = qword_10005A3B8, v2 < qword_10005A3B8 + 0x10000))
  {
    v4 = fsck_maxmem();
    v7 = fsck_ctx;
    v8 = qword_100059E30;
    fsck_print(&v7, 2, "Cannot allocate %zd bytes for usemap (maxmem=%zd, clusters=%d)\nmaxmem must be at least %zd\n", v3, v4, v1 & 0xFFFFFFE0, qword_10005A3B8 + 0x10000);
    v5 = 0;
  }

  else
  {
    v5 = malloc_type_calloc(v1 >> 5, 4uLL, 0x100004052888210uLL);
  }

  qword_10005A3E0 = v5;
  return v5 == 0;
}

void freeUseMap()
{
  if (qword_10005A3E0)
  {
    free(qword_10005A3E0);
  }

  qword_10005A3E0 = 0;
}

uint64_t fat_flush(uint64_t a1)
{
  v1 = qword_10005A3C0;
  if (!qword_10005A3C0)
  {
    return 0;
  }

  v3 = 0;
  v4 = &unk_10005A000;
  v5 = *(qword_10005A3B0 + 72) & ~(*(qword_10005A3B0 + 72) >> 31);
  v6 = qword_10005A3C8;
  while (1)
  {
    v7 = (v6 + 32 * v3);
    v8 = *v7;
    if (v8)
    {
      break;
    }

LABEL_13:
    if (v1 <= ++v3)
    {
      return 0;
    }
  }

  v9 = v7[6];
  if (!v9)
  {
LABEL_12:
    *(v6 + 32 * v3) &= ~1u;
    v1 = qword_10005A3C0;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = v4;
  v12 = v5;
  v13 = ((*(v4[118] + 8) + *(v4[118] + 88) * v5) * *v4[118]) + ((v8 << 15) & 0x7FFF0000);
  while (1)
  {
    v14 = v9 >= 0x4000 ? 0x4000 : v9;
    if ((*(a1 + 40))(*(a1 + 24), *(qword_10005A3C8 + 32 * v3 + 16) + v10, v14, v13 + v10) != v14)
    {
      break;
    }

    v10 += v14;
    v9 -= v14;
    if (!v9)
    {
      v6 = qword_10005A3C8;
      v4 = v11;
      v5 = v12;
      goto LABEL_12;
    }
  }

  v16 = __error();
  v17 = strerror(*v16);
  v18 = fsck_ctx;
  v19 = qword_100059E30;
  fsck_print(&v18, 2, "%s (%s)\n", "Unable to write FAT", v17);
  return 16;
}

uint64_t fat_free_unused(uint64_t a1)
{
  if (*(qword_10005A3B0 + 80) < 3u)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v2 = 0;
  v3 = 0;
  v4 = 2;
  do
  {
    v5 = fat_get(v4, a1);
    if (v5 == -286331154)
    {
      break;
    }

    if (((*(qword_10005A3E0 + 4 * (v4 >> 5)) >> v4) & 1) == 0)
    {
      if (v5 == -9)
      {
        v12 = 112;
      }

      else
      {
        if (v5)
        {
          if (!v3)
          {
            v23 = fsck_ctx;
            v24 = qword_100059E30;
            fsck_print(&v23, 6, "Warning: Found orphan cluster(s)\n");
            v23 = fsck_ctx;
            v24 = qword_100059E30;
            v2 = fsck_ask(&v23, 1, "Fix", v6, v7, v8, v9, v10, v21);
          }

          ++v3;
          if (!v2)
          {
            goto LABEL_14;
          }

          v11 = fat_set(v4, 0, a1);
          if (v11)
          {
            v13 = v11;
            if (!v3)
            {
              goto LABEL_20;
            }

LABEL_18:
            v23 = fsck_ctx;
            v24 = qword_100059E30;
            fsck_print(&v23, 6, "Warning: Marked %u clusters as free\n", v3);
            v13 = v13 | 4;
            goto LABEL_20;
          }
        }

        v12 = 108;
      }

      ++*(qword_10005A3B0 + v12);
    }

LABEL_14:
    v4 = (v4 + 1);
  }

  while (v4 < *(qword_10005A3B0 + 80));
  if (!v3)
  {
    goto LABEL_19;
  }

  if (v2)
  {
    LODWORD(v13) = 0;
    goto LABEL_18;
  }

  v23 = fsck_ctx;
  v24 = qword_100059E30;
  fsck_print(&v23, 6, "Warning: Found %u orphaned clusters\n", v3);
  v13 = 8;
LABEL_20:
  if (*(qword_10005A3B0 + 48))
  {
    v14 = *(qword_10005A3B0 + 60);
    if (v14 != *(qword_10005A3B0 + 108))
    {
      v23 = fsck_ctx;
      v24 = qword_100059E30;
      if (v14 == -1)
      {
        fsck_print(&v23, 6, "Warning: Free space in FSInfo block is unset (should be %d)\n");
      }

      else
      {
        fsck_print(&v23, 6, "Warning: Free space in FSInfo block (%d) not correct (%d)\n");
      }

      v23 = fsck_ctx;
      v24 = qword_100059E30;
      if (fsck_ask(&v23, 1, "Fix", v15, v16, v17, v18, v19, v22))
      {
        *(qword_10005A3B0 + 60) = *(qword_10005A3B0 + 108);
        return writefsinfo() | v13;
      }
    }
  }

  return v13;
}

BOOL isdirty(unsigned int *a1, int a2, uint64_t a3)
{
  if (a1[19] != 4095)
  {
    v6 = malloc_type_malloc(*a1, 0xE1FCEED2uLL);
    if (v6)
    {
      v7 = v6;
      v8 = *a1;
      if (v8)
      {
        v9 = 0;
        v10 = v8 * (a1[2] + a1[22] * a2);
        while (1)
        {
          v11 = v8 >= 0x4000 ? 0x4000 : v8;
          if ((*(a3 + 32))(*(a3 + 24), &v7[v9], v11, v9 + v10) != v11)
          {
            break;
          }

          v12 = *(a3 + 64);
          if (v12 >= 1 && pwrite(v12, &v7[v9], v11, v9 + v10) != v11)
          {
            v13 = *__error();
            v21 = fsck_ctx;
            v22 = qword_100059E30;
            fsck_print(&v21, 6, "Failed to shadow at offset 0x%llx, length 0x%zx (errno %d)", v9 + v10, v11, v13);
          }

          v9 += v11;
          v8 -= v11;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        v18 = __error();
        v19 = strerror(*v18);
        v21 = fsck_ctx;
        v22 = qword_100059E30;
        fsck_print(&v21, 2, "%s (%s)\n", "Unable to read FAT", v19);
      }

      else
      {
LABEL_13:
        v14 = a1[19];
        if (v14 == 0xFFFF)
        {
          v15 = v7[3] >= 0;
          goto LABEL_21;
        }

        if (v14 == 0xFFFFFFF)
        {
          v15 = (v7[7] & 8) == 0;
LABEL_21:
          free(v7);
          return v15;
        }
      }

      v15 = 1;
      goto LABEL_21;
    }

    v16 = __error();
    v17 = strerror(*v16);
    v21 = fsck_ctx;
    v22 = qword_100059E30;
    fsck_print(&v21, 2, "%s (%s)\n", "No space for FAT sector", v17);
  }

  return 1;
}

uint64_t fat_mark_clean(uint64_t a1)
{
  if (*(qword_10005A3B0 + 76) == 4095)
  {
    return 0;
  }

  v3 = fat_get(1, a1);
  if (v3 == -286331154)
  {
    return 8;
  }

  if (*(qword_10005A3B0 + 76) == 0xFFFF)
  {
    v4 = 0x8000;
  }

  else
  {
    v4 = 0x8000000;
  }

  v5 = fat_set;

  return v5(1, v4 | v3, a1);
}

const char *rsrvdcltype(unsigned int a1)
{
  v1 = "reserved";
  v2 = "as EOF";
  if (a1 == -9)
  {
    v2 = "bad";
  }

  if (a1 >= 0xFFFFFFF7)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "free";
  }
}

uint64_t markUsed(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 5;
  result = 1;
  v4 = 1 << v1;
  v5 = *(qword_10005A3E0 + 4 * v2);
  if ((v5 & v4) == 0)
  {
    result = 0;
    *(qword_10005A3E0 + 4 * v2) = v5 | v4;
  }

  return result;
}

uint64_t markFree(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 5;
  result = 1;
  v4 = 1 << v1;
  v5 = *(qword_10005A3E0 + 4 * v2);
  if ((v5 & v4) != 0)
  {
    result = 0;
    *(qword_10005A3E0 + 4 * v2) = v5 & ~v4;
  }

  return result;
}

uint64_t sub_100017C34(unsigned int a1, uint64_t a2)
{
  v3 = 0;
  v4 = HIWORD(a1);
  v5 = *(qword_10005A3B0 + 88);
  v6 = *qword_10005A3B0 * v5;
  v7 = a1 & 0xFFFF0000;
  v8 = v6 - (a1 & 0xFFFF0000);
  if (v8 >= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_10005A3D8;
  do
  {
    v11 = v10;
    v12 = v3;
    v13 = *v10;
    if (v4 == v13 >> 1)
    {
      goto LABEL_27;
    }

    v10 = *(v10 + 1);
    v3 = v11;
  }

  while (v10);
  v14 = *(qword_10005A3B0 + 72) & ~(*(qword_10005A3B0 + 72) >> 31);
  if (v13)
  {
    v15 = *(v11 + 24);
    if (v15)
    {
      v31 = *qword_10005A3B0 * v5;
      v32 = a1 & 0xFFFF0000;
      v16 = 0;
      v30 = *(qword_10005A3B0 + 72) & ~(*(qword_10005A3B0 + 72) >> 31);
      v17 = ((*(qword_10005A3B0 + 8) + v14 * v5) * *qword_10005A3B0) + ((v13 << 15) & 0x7FFF0000);
      while (1)
      {
        v18 = v15 >= 0x4000 ? 0x4000 : v15;
        if ((*(a2 + 40))(*(a2 + 24), *(v11 + 16) + v16, v18, v17 + v16) != v18)
        {
          break;
        }

        v16 += v18;
        v15 -= v18;
        if (!v15)
        {
          LODWORD(v13) = *v11;
          v6 = v31;
          v7 = v32;
          v14 = v30;
          goto LABEL_16;
        }
      }

      v28 = __error();
      v26 = strerror(*v28);
      v33 = fsck_ctx;
      v34 = qword_100059E30;
      v27 = "Unable to write FAT";
      goto LABEL_33;
    }

LABEL_16:
    *v11 = v13 & 0xFFFFFFFE;
  }

  *v11 = 2 * v4;
  *(v11 + 24) = v9;
  if (v6 != v7)
  {
    v19 = 0;
    v20 = ((*(qword_10005A3B0 + 8) + *(qword_10005A3B0 + 88) * v14) * *qword_10005A3B0) + v7;
    while (1)
    {
      v21 = v9 >= 0x4000 ? 0x4000 : v9;
      if ((*(a2 + 32))(*(a2 + 24), *(v11 + 16) + v19, v21, v20 + v19) != v21)
      {
        break;
      }

      v22 = *(a2 + 64);
      if (v22 >= 1 && pwrite(v22, (*(v11 + 16) + v19), v21, v20 + v19) != v21)
      {
        v23 = *__error();
        v33 = fsck_ctx;
        v34 = qword_100059E30;
        fsck_print(&v33, 6, "Failed to shadow at offset 0x%llx, length 0x%zx (errno %d)", v20 + v19, v21, v23);
      }

      v19 += v21;
      v9 -= v21;
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    v25 = __error();
    v26 = strerror(*v25);
    v33 = fsck_ctx;
    v34 = qword_100059E30;
    v27 = "Unable to read FAT";
LABEL_33:
    fsck_print(&v33, 2, "%s (%s)\n", v27, v26);
    return 0;
  }

LABEL_27:
  v24 = qword_10005A3D8;
  if (v11 != qword_10005A3D8)
  {
    if (v12)
    {
      *(v12 + 8) = *(v11 + 8);
    }

    *(v11 + 8) = v24;
    qword_10005A3D8 = v11;
  }

  return v11;
}

void sub_100018310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100018358(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a4;
    *(*(a1[6] + 8) + 24) = a3;
  }
}

void sub_1000193B4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031DC8();
  }
}

void sub_100019400(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031E4C();
  }
}

void sub_10001944C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031ED0();
  }
}

void sub_100019498(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031E4C();
  }
}

void sub_1000194E4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031F54(v2);
  }
}

void sub_100019FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100019FD4(void *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032174();
    }

    (*(a1[4] + 16))();
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_10001AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void *sub_10001AD90(void *result, int a2, int a3)
{
  *(*(result[4] + 8) + 24) += a2;
  if (*(*(result[5] + 8) + 24) == 1)
  {
    *(*(result[6] + 8) + 24) = a3;
    *(*(result[5] + 8) + 24) = 0;
  }

  return result;
}

void sub_10001B6CC(uint64_t a1)
{
  v83 = -[FATBlock initWithOffset:andLength:]([FATBlock alloc], "initWithOffset:andLength:", 0, [*(a1 + 32) rwSize]);
  v2 = -[FATBlock initWithOffset:andLength:]([FATBlock alloc], "initWithOffset:andLength:", 0, [*(a1 + 32) rwSize]);
  v113[0] = 0;
  v113[1] = v113;
  v113[2] = 0x2020000000;
  v114 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_10001C128;
  v99 = sub_10001C138;
  v100 = 0;
  v82 = *(a1 + 48);
  v3 = [*(a1 + 32) fsInfo];
  v4 = [v3 freeClusters] < v82;

  if (v4)
  {
    if (*(a1 + 56) != 1 || ([*(a1 + 32) fsInfo], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "freeClusters") == 0, v5, v6))
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v74 = *(a1 + 56);
        v75 = [*(a1 + 32) fsInfo];
        v76 = [v75 freeClusters];
        *buf = 136315906;
        v116 = "[FATManager allocateClusters:searchFromCluster:allowPartial:zeroFill:mustBeContig:replyHandler:]_block_invoke";
        v117 = 1024;
        v118 = v74;
        v119 = 1024;
        *v120 = v82;
        *&v120[4] = 2048;
        *&v120[6] = v76;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: (allowPartial = %d) %u clusters requested,but only %llu are available. Returning ENOSPC.", buf, 0x22u);
      }

      v12 = *(a1 + 40);
      v13 = fs_errorForPOSIXError();
      (*(v12 + 16))(v12, v13, 0, 0, 0);

      goto LABEL_42;
    }

    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v77 = [*(a1 + 32) fsInfo];
      v78 = [v77 freeClusters];
      v79 = [*(a1 + 32) fsInfo];
      v80 = [v79 freeClusters];
      *buf = 136315906;
      v116 = "[FATManager allocateClusters:searchFromCluster:allowPartial:zeroFill:mustBeContig:replyHandler:]_block_invoke";
      v117 = 1024;
      v118 = v82;
      v119 = 2048;
      *v120 = v78;
      *&v120[8] = 2048;
      *&v120[10] = v80;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: (allowPartial = true) %u clusters requested,but only %llu are available. Will try to allocate %llu clusters.", buf, 0x26u);
    }

    v8 = [*(a1 + 32) fsInfo];
    v9 = [v8 freeClusters];

    LODWORD(v82) = v9;
  }

  if (v82)
  {
    v10 = *(a1 + 52);
    if (v10)
    {
      *(v102 + 6) = v10;
    }

    else
    {
      v14 = [*(a1 + 32) fsInfo];
      v15 = [v14 firstFreeCluster];
      v16 = [*(a1 + 32) fsInfo];
      v17 = [v16 maxValidCluster] > v15;

      if (v17)
      {
        v18 = [*(a1 + 32) fsInfo];
        v19 = [v18 firstFreeCluster];
        *(v102 + 6) = v19;
      }
    }

    v20 = 0;
    v81 = v86;
    do
    {
      v21 = *(a1 + 32);
      v22 = *(v102 + 6);
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_10001C140;
      v94[3] = &unk_1000510F0;
      v94[4] = &v95;
      v94[5] = &v101;
      [v21 findNextFreeCluster:v22 replyHandler:{v94, v81}];
      if (v96[5])
      {
        break;
      }

      v23 = [*(a1 + 32) getRWOffsetForClusterEntry:*(v102 + 6)];
      [(FATBlock *)v2 setStartOffset:v23];
      v24 = [(FATBlock *)v2 data];
      v25 = v24 == 0;

      if (!v25)
      {
        v26 = [(FATBlock *)v2 data];
        v27 = v26;
        [v26 mutableBytes];
      }

      v28 = *(a1 + 32);
      v29 = [(FATBlock *)v2 data];
      v30 = v29;
      v31 = [v28 syncMetaReadFromFAT:objc_msgSend(v29 startingAt:{"mutableBytes"), v23}];
      v32 = v96[5];
      v96[5] = v31;

      v33 = [*(a1 + 32) getRWOffsetForClusterEntry:v20];
      if (v20)
      {
        v34 = v33;
        if (v33 == v23)
        {
          v35 = v2;

          v83 = v35;
          [(FATBlock *)v35 data];
        }

        else
        {
          [(FATBlock *)v83 setStartOffset:v33];
          v36 = *(a1 + 32);
          v37 = [(FATBlock *)v83 data];
          v38 = v37;
          v39 = [v36 syncMetaReadFromFAT:objc_msgSend(v37 startingAt:{"mutableBytes"), v34}];
          v40 = v96[5];
          v96[5] = v39;

          if (v96[5])
          {
            break;
          }

          [(FATBlock *)v83 data];
        }
        v41 = ;
        v42 = v41;
        v43 = [v41 mutableBytes];
        v44 = [*(a1 + 32) getOffsetForClusterEntry:v20];

        v45 = [(FATBlock *)v2 data];
        v46 = v45;
        v47 = [v45 mutableBytes];
        v48 = [*(a1 + 32) getOffsetForClusterEntry:*(v102 + 6)];

        v49 = [*(a1 + 32) fsOps];
        LODWORD(v48) = [v49 getNextClusterFromEntryForCluster:*(v102 + 6) entry:&v47[v48 - v23]];

        if (v48)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10003239C();
          }

          goto LABEL_36;
        }

        v50 = [*(a1 + 32) fsOps];
        v51 = *(v102 + 6);
        v52 = [*(a1 + 32) fsInfo];
        [v50 setFatEntryForCluster:v20 entry:&v43[v44 - v34] withValue:{objc_msgSend(v52, "FATMask") & v51}];

        v53 = *(a1 + 32);
        v54 = [(FATBlock *)v83 data];
        v55 = v54;
        v56 = [v53 metaWriteToFATs:objc_msgSend(v54 startingAt:{"mutableBytes"), v34}];
        v57 = v96[5];
        v96[5] = v56;

        if (v96[5])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_10003243C();
          }

LABEL_36:
          v67 = fs_errorForPOSIXError();
          v68 = v96[5];
          v96[5] = v67;

          break;
        }
      }

      v58 = *(a1 + 32);
      v59 = [(FATBlock *)v2 data];
      v60 = v59;
      v61 = [v59 mutableBytes];
      v62 = (v82 - *(v106 + 6));
      v63 = *(v102 + 6);
      v64 = *(a1 + 57);
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v86[0] = sub_10001C1A0;
      v86[1] = &unk_100051118;
      v88 = *(a1 + 40);
      v89 = v113;
      v90 = &v101;
      v91 = &v105;
      v92 = &v109;
      v86[2] = *(a1 + 32);
      v87 = v2;
      v93 = v23;
      [v58 allocateClustersInBlock:v61 numClusters:v62 startingAtCluster:v63 startOffset:v23 mustBeContig:v64 replyHandler:v85];

      v20 = *(v110 + 6);
      v65 = (v20 + 1);
      *(v102 + 6) = v65;
      v66 = [*(a1 + 32) fsInfo];
      LODWORD(v65) = [v66 maxValidCluster] < v65;

      if (v65)
      {
        *(v102 + 6) = 2;
      }
    }

    while (*(v106 + 6) < v82);
    if (!v96[5])
    {
      if (!*(a1 + 52) || (v69 = *(v102 + 6), [*(a1 + 32) fsInfo], v70 = objc_claimAutoreleasedReturnValue(), v71 = v69 > objc_msgSend(v70, "firstFreeCluster"), v70, v71))
      {
        v72 = *(a1 + 32);
        v73 = *(v102 + 6);
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_10001C2F8;
        v84[3] = &unk_100051140;
        v84[4] = v72;
        [v72 findNextFreeCluster:v73 replyHandler:v84];
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_42:
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(v113, 8);
}

void sub_10001C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 256), 8);
  _Block_object_dispose((v42 - 224), 8);
  _Block_object_dispose((v42 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C140(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_10001C1A0(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (a3)
  {
    v8 = *(*(a1 + 56) + 8);
    if (!*(v8 + 24))
    {
      *(v8 + 24) = *(*(*(a1 + 64) + 8) + 24);
    }

    *(*(*(a1 + 72) + 8) + 24) += a3;
    *(*(*(a1 + 80) + 8) + 24) = a4;
    v9 = [*(a1 + 32) fsInfo];
    [v9 setFreeClusters:{objc_msgSend(v9, "freeClusters") - a3}];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) data];
    v12 = [v10 syncMetaWriteToFATs:objc_msgSend(v11 startingAt:{"mutableBytes"), *(a1 + 88)}];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000324C0();
    }

    v13 = *(a1 + 48);
    v14 = fs_errorForPOSIXError();
    (*(v13 + 16))(v13, v14, 0, 0, 0);
  }
}

void sub_10001C2F8(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v6 = [*(a1 + 32) fsInfo];
  v8 = v6;
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  [v6 setFirstFreeCluster:v7];
}

void sub_10001C660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C678(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a2;
  if (a5)
  {
    if ([*(a1 + 32) numberOfClusters])
    {
      v9 = [*(a1 + 40) getRWOffsetForClusterEntry:{objc_msgSend(*(a1 + 32), "lastCluster")}];
      v10 = [*(a1 + 40) syncMetaReadFromFAT:objc_msgSend(*(a1 + 48) startingAt:{"mutableBytes"), v9}];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 64) + 8) + 40) || (v13 = [*(a1 + 48) mutableBytes], v14 = (objc_msgSend(*(a1 + 40), "getOffsetForClusterEntry:", objc_msgSend(*(a1 + 32), "lastCluster")) + v13 - v9), objc_msgSend(*(a1 + 40), "fsOps"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(*(a1 + 32), "lastCluster"), objc_msgSend(*(a1 + 40), "fsInfo"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "setFatEntryForCluster:entry:withValue:", v16, v14, objc_msgSend(v17, "FATMask") & a3), v17, v15, objc_msgSend(*(a1 + 40), "metaWriteToFATs:startingAt:", objc_msgSend(*(a1 + 48), "mutableBytes"), v9), v18 = objc_claimAutoreleasedReturnValue(), v19 = *(*(a1 + 64) + 8), v20 = *(v19 + 40), *(v19 + 40) = v18, v20, *(*(*(a1 + 64) + 8) + 40)))
      {
        v21 = *(*(a1 + 56) + 16);
        goto LABEL_9;
      }
    }

    else
    {
      [*(a1 + 32) setFirstCluster:a3];
    }

    [*(a1 + 32) setLastCluster:a4];
    [*(a1 + 32) setFirstClusterIndexInLastAllocation:{objc_msgSend(*(a1 + 32), "numberOfClusters")}];
    [*(a1 + 32) setFirstClusterInLastAllocation:a3];
    [*(a1 + 32) setNumberOfClusters:{objc_msgSend(*(a1 + 32), "numberOfClusters") + a5}];
  }

  v21 = *(*(a1 + 56) + 16);
LABEL_9:
  v21();
}

void sub_10001C988(uint64_t a1)
{
  v2 = [[NSMutableData alloc] initWithLength:{objc_msgSend(*(a1 + 32), "rwSize")}];
  v3 = [*(a1 + 40) firstCluster];
  v4 = *(a1 + 56);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000325C8();
    }

    goto LABEL_13;
  }

  v5 = v3;
  v6 = v4 <= [*(a1 + 40) numberOfClusters] && v5 >= 2;
  if (!v6 || ([*(a1 + 32) fsInfo], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "maxValidCluster"), v7, v8 < v5))
  {
LABEL_13:
    v14 = *(a1 + 48);
LABEL_14:
    v15 = fs_errorForPOSIXError();
    (*(v14 + 16))(v14, v15);

    goto LABEL_15;
  }

  if (!v2)
  {
    v14 = *(a1 + 48);
    goto LABEL_14;
  }

  v9 = [*(a1 + 40) numberOfClusters];
  if (v9 == *(a1 + 56))
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v56 = 0;
    v13 = 0;
LABEL_26:
    if (v10 == [*(a1 + 40) numberOfClusters])
    {
      v5 = [*(a1 + 40) firstCluster];
      v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
      v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
      v24 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
      if (v24)
      {
        goto LABEL_32;
      }
    }

    if (v11 != [*(a1 + 32) getRWOffsetForClusterEntry:v5])
    {
      v27 = [*(a1 + 40) numberOfClusters];
      v26 = *(a1 + 56);
      if (v13 != v27 + ~v26)
      {
        goto LABEL_33;
      }

      v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
      v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
      v24 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
      if (v24)
      {
LABEL_32:
        v28 = v24;
        (*(*(a1 + 48) + 16))();

        goto LABEL_15;
      }
    }

    v26 = *(a1 + 56);
LABEL_33:
    v29 = 0;
    if (v26)
    {
      *&v25 = 136315906;
      v55 = v25;
      v57 = v2;
      do
      {
        v30 = [*(a1 + 32) fsInfo];
        v31 = [v30 maxValidCluster];

        if (v31 < v5)
        {
          break;
        }

        if (v12 >= v11)
        {
          v32 = v5;
          while (1)
          {
            v33 = v12 - v11;
            if (v12 - v11 >= [*(a1 + 32) rwSize])
            {
              break;
            }

            if (v29 >= *(a1 + 56))
            {
              break;
            }

            v34 = [*(a1 + 32) fsInfo];
            v35 = [v34 maxValidCluster];

            if (v35 < v32)
            {
              break;
            }

            v36 = [v2 mutableBytes];
            v37 = [*(a1 + 32) fsOps];
            v5 = [v37 getNextClusterFromEntryForCluster:v32 entry:&v36[v33]];

            if (!v5)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v44 = [*(a1 + 40) firstCluster];
                v45 = [*(a1 + 40) lastCluster];
                v46 = [*(a1 + 40) numberOfClusters];
                *buf = 136316162;
                v60 = "[FATManager freeClusters:ofItem:replyHandler:]_block_invoke";
                v61 = 1024;
                v62 = v32;
                v63 = 1024;
                v64 = v44;
                v65 = 1024;
                v66 = v45;
                v67 = 1024;
                v68 = v46;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: cluster %u is free where it should be in use. Item stats [%u, %u, %u]", buf, 0x24u);
              }

              goto LABEL_50;
            }

            v58 = [*(a1 + 32) isEOFCluster:v5];
            [*(a1 + 32) fsOps];
            v39 = v38 = v29;
            v40 = [*(a1 + 32) fsInfo];
            [v40 FATMask];
            v41 = &v36[v33];
            v42 = v32;
            [v39 setFatEntryForCluster:v32 entry:v41 withValue:0];

            v43 = [*(a1 + 32) fsInfo];
            [v43 setFreeClusters:{objc_msgSend(v43, "freeClusters") + 1}];

            v29 = v38 + 1;
            if (v58 && v29 != *(a1 + 56))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v49 = *(a1 + 56);
                *buf = v55;
                v60 = "[FATManager freeClusters:ofItem:replyHandler:]_block_invoke";
                v61 = 1024;
                v32 = v42;
                v62 = v42;
                v63 = 1024;
                v64 = v38 + 1;
                v65 = 1024;
                v66 = v49;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: %u freed clusters %u, should have freed %u, got EOF", buf, 0x1Eu);
                v2 = v57;
              }

              else
              {
                v2 = v57;
                v32 = v42;
              }

LABEL_50:
              fs_errorForPOSIXError();

              break;
            }

            v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
            v32 = v5;
            v2 = v57;
            if (v12 < v11)
            {
              goto LABEL_52;
            }
          }

          v5 = v32;
        }

LABEL_52:
        v47 = [*(a1 + 32) metaWriteToFATs:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
        if (v47)
        {
LABEL_70:
          v54 = v47;
          (*(*(a1 + 48) + 16))();

          goto LABEL_15;
        }

        v48 = *(a1 + 56);
        if (v29 < v48)
        {
          v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
          v47 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
          if (v47)
          {
            goto LABEL_70;
          }

          v48 = *(a1 + 56);
        }
      }

      while (v29 < v48);
    }

    v50 = [*(a1 + 32) fsInfo];
    if ([v50 maxValidCluster] >= v5)
    {
    }

    else
    {
      v51 = [*(a1 + 32) isEOFCluster:v5];

      if ((v51 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100032544();
      }
    }

    if (v56)
    {
      [*(a1 + 40) setLastCluster:?];
    }

    v53 = *(a1 + 56);
    if (v53 == [*(a1 + 40) numberOfClusters])
    {
      [*(a1 + 40) setLastCluster:0];
      [*(a1 + 40) setFirstCluster:0];
    }

    [*(a1 + 40) setFirstClusterInLastAllocation:0];
    [*(a1 + 40) setFirstClusterIndexInLastAllocation:0];
    [*(a1 + 40) setNumberOfClusters:{objc_msgSend(*(a1 + 40), "numberOfClusters") - v29}];
    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  v13 = 0;
  v56 = 0;
  while (1)
  {
    v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
    v16 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
    if (v16)
    {
      break;
    }

    v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
    v17 = v12 - v11;
    if (v12 - v11 < [*(a1 + 32) rwSize])
    {
      while (1)
      {
        v18 = [v2 mutableBytes];
        v19 = [*(a1 + 32) fsOps];
        v20 = [v19 getNextClusterFromEntryForCluster:v5 entry:&v18[v17]];

        if (v13 == [*(a1 + 40) numberOfClusters] + ~*(a1 + 56))
        {
          break;
        }

        ++v13;
        v12 = [*(a1 + 32) getOffsetForClusterEntry:v20];
        v17 = v12 - v11;
        v5 = v20;
        if (v12 - v11 >= [*(a1 + 32) rwSize])
        {
          goto LABEL_24;
        }
      }

      v21 = [*(a1 + 32) fsOps];
      v22 = [*(a1 + 32) fsInfo];
      [v21 setFatEntryForCluster:v5 entry:&v18[v17] withValue:{objc_msgSend(v22, "FATMask")}];

      ++v13;
      v12 = [*(a1 + 32) getOffsetForClusterEntry:v20];
      v56 = v5;
LABEL_24:
      v5 = v20;
    }

    v23 = [*(a1 + 40) numberOfClusters];
    v10 = *(a1 + 56);
    if (v13 >= v23 - v10)
    {
      goto LABEL_26;
    }
  }

  v52 = v16;
  (*(*(a1 + 48) + 16))();

LABEL_15:
}

void sub_10001D270(uint64_t a1)
{
  v22 = -[FATBlock initWithOffset:andLength:]([FATBlock alloc], "initWithOffset:andLength:", 0, [*(a1 + 32) rwSize]);
  v2 = *(a1 + 48);
  if ([*(a1 + 32) isEOFCluster:0])
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    v3 = 0;
    while (v3 < *(a1 + 52))
    {
      v5 = [*(a1 + 32) getRWOffsetForClusterEntry:v2];
      v6 = *(a1 + 32);
      v7 = [(FATBlock *)v22 data];
      v8 = [v6 syncMetaReadFromFAT:objc_msgSend(v7 startingAt:{"mutableBytes"), v5}];

      if (v8)
      {
        (*(*(a1 + 40) + 16))();

        goto LABEL_15;
      }

      for (i = ([*(a1 + 32) getOffsetForClusterEntry:v2] - v5); i < objc_msgSend(*(a1 + 32), "rwSize"); v2 = v4)
      {
        if ([*(a1 + 32) isEOFCluster:v4])
        {
          break;
        }

        if (v3 >= *(a1 + 52))
        {
          break;
        }

        v10 = [(FATBlock *)v22 data];
        v11 = [v10 mutableBytes];

        v12 = [*(a1 + 32) fsOps];
        v4 = [v12 getNextClusterFromEntryForCluster:v2 entry:&i[v11]];

        v13 = [*(a1 + 32) fsOps];
        v14 = [*(a1 + 32) fsInfo];
        [v14 FATMask];
        [v13 setFatEntryForCluster:v2 entry:&i[v11] withValue:0];

        ++v3;
        v15 = [*(a1 + 32) fsInfo];
        [v15 setFreeClusters:{objc_msgSend(v15, "freeClusters") + 1}];

        i = ([*(a1 + 32) getOffsetForClusterEntry:v4] - v5);
      }

      v16 = *(a1 + 32);
      v17 = [(FATBlock *)v22 data];
      v18 = [v16 metaWriteToFATs:objc_msgSend(v17 startingAt:{"mutableBytes"), v5}];

      if ([*(a1 + 32) isEOFCluster:v4])
      {
        break;
      }
    }
  }

  v19 = *(a1 + 52);
  v20 = *(a1 + 40);
  if (v3 == v19)
  {
    (*(v20 + 16))(v20, 0);
  }

  else
  {
    v21 = fs_errorForPOSIXError();
    (*(v20 + 16))(v20, v21);
  }

LABEL_15:
}

void sub_10001D8CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001D95C;
  v3[3] = &unk_100051208;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 fatIterator:v1 replyHandler:v3];
}

void sub_10001DAD0(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v2 = [(FATItem *)DirItem dynamicCast:*(a1 + 32)];
  v3 = v2;
  if (v2 && [v2 isFat1216RootDir])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([*(a1 + 32) firstCluster])
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) firstCluster];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10001DC94;
      v8[3] = &unk_100051258;
      v9 = *(a1 + 48);
      v10 = v14;
      v11 = v12;
      [v4 fatIterator:v5 replyHandler:v8];
      (*(*(a1 + 48) + 16))();
      v6 = v9;
    }

    else
    {
      v7 = *(a1 + 48);
      v6 = fs_errorForPOSIXError();
      (*(v7 + 16))(v7, v6, 0, 0);
    }
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
}

void sub_10001DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DC94(void *a1, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    (*(a1[4] + 16))();
    return 1;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) += a4;
    *(*(a1[6] + 8) + 24) = a3 + a4 - 1;
  }

  return result;
}

void sub_10001DDD8(uint64_t a1)
{
  v2 = [(FATItem *)DirItem dynamicCast:*(a1 + 32)];
  v3 = v2;
  if (v2 && [v2 isFat1216RootDir])
  {
    (*(*(a1 + 48) + 16))();
  }

  else if ([*(a1 + 32) firstCluster])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) firstCluster];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001DF0C;
    v8[3] = &unk_100051208;
    v9 = *(a1 + 48);
    [v4 fatIterator:v5 replyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = fs_errorForPOSIXError();
    (*(v6 + 16))(v6, v7, 0, 0);
  }
}

void sub_10001DFD0(uint64_t a1)
{
  v2 = [FATBlock alloc];
  v3 = *(a1 + 32);
  v4 = [v3 fsOps];
  v5 = -[FATBlock initWithOffset:andLength:](v2, "initWithOffset:andLength:", [v3 getRWOffsetForClusterEntry:{objc_msgSend(v4, "getDirtyBitCluster")}], objc_msgSend(*(a1 + 32), "rwSize"));

  v6 = *(a1 + 32);
  v7 = [(FATBlock *)v5 data];
  v8 = [v6 syncMetaReadFromFAT:objc_msgSend(v7 startingAt:{"mutableBytes"), -[FATBlock startOffset](v5, "startOffset")}];

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000326D0();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [(FATBlock *)v5 data];
    v10 = [v9 mutableBytes];
    v11 = *(a1 + 32);
    v12 = [v11 fsOps];
    v13 = [v11 getOffsetForCluster:objc_msgSend(v12 inFatBlock:{"getDirtyBitCluster"), v5}];

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) fsOps];
    (*(v14 + 16))(v14, 0, [v15 getDirtyBitValueForEntry:&v13[v10]]);
  }
}

void sub_10001E23C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) fsInfo];
  v4 = [v3 type];

  if (v4)
  {
    v5 = [*(a1 + 32) fsInfo];
    v6 = [v5 dirtyBitValue];
    v7 = *(a1 + 49);

    if (v6 == v7)
    {
      if (!v2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = *(a1 + 49);
      v9 = [*(a1 + 32) fsInfo];
      [v9 setDirtyBitValue:v8];
    }

    v10 = [FATBlock alloc];
    v11 = *(a1 + 32);
    v12 = [v11 fsOps];
    v13 = -[FATBlock initWithOffset:andLength:](v10, "initWithOffset:andLength:", [v11 getRWOffsetForClusterEntry:{objc_msgSend(v12, "getDirtyBitCluster")}], objc_msgSend(*(a1 + 32), "rwSize"));

    v14 = *(a1 + 32);
    v15 = [(FATBlock *)v13 data];
    v16 = [v14 syncMetaReadFromFAT:objc_msgSend(v15 startingAt:{"mutableBytes"), -[FATBlock startOffset](v13, "startOffset")}];

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032754();
      }

LABEL_12:
      (*(*(a1 + 40) + 16))();

      return;
    }

    v17 = [(FATBlock *)v13 data];
    v18 = [v17 mutableBytes];
    v19 = *(a1 + 32);
    v20 = [v19 fsOps];
    v21 = [v19 getOffsetForCluster:objc_msgSend(v20 inFatBlock:{"getDirtyBitCluster"), v13}];

    v22 = [*(a1 + 32) fsOps];
    [v22 applyDirtyBitValueToEntry:&v21[v18] newValue:*(a1 + 49)];

    v23 = *(a1 + 32);
    v24 = [(FATBlock *)v13 data];
    v16 = [v23 syncMetaWriteToFATs:objc_msgSend(v24 startingAt:{"mutableBytes"), -[FATBlock startOffset](v13, "startOffset")}];

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000327D8();
      }

      goto LABEL_12;
    }

    v25 = *(a1 + 49);
    v26 = [*(a1 + 32) fsInfo];
    [v26 setDirtyBitValueOnDisk:v25];
  }

LABEL_14:
  v27 = *(*(a1 + 40) + 16);

  v27();
}

void sub_10001E848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E87C(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *(*(*(result + 40) + 8) + 24) = a3;
  }

  return result;
}

uint64_t format(uint64_t *a1, int *a2, void *a3)
{
  v6 = a3 && *a3 && a3[1] && a3[2] != 0;
  v7 = *(a2 + 1);
  v8 = *(a2 + 6);
  v188 = 0;
  v9 = *a2;
  v10 = *(a2 + 34);
  v11 = *(a2 + 20);
  v187.tv_sec = 0;
  *&v187.tv_usec = 0;
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  *size = 0u;
  v183 = 0u;
  v181 = 0;
  tv_sec = 0;
  if (v6)
  {
    (a3[1])("Format device: Checking parameters", 10, 10, &v188, *a3);
  }

  v12 = v10 & 0xF000;
  if (v12 != 0x2000)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 6, "warning: %s is not a character device\n", v7);
  }

  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  *size = 0u;
  v183 = 0u;
  v13 = a1[3];
  if (v13)
  {
    v14 = getstdfmt(v13, size);
    if (v15)
    {
LABEL_38:
      v27 = 0;
      goto LABEL_39;
    }

    HIDWORD(v184) = DWORD1(v183);
    LODWORD(v185) = HIDWORD(v183);
    DWORD1(v183) = 0;
    HIDWORD(v183) = 0;
  }

  v16 = *(a1 + 15);
  if (v16)
  {
    DWORD1(v184) = *(a1 + 15);
  }

  v17 = *(a1 + 23);
  if (v17)
  {
    LODWORD(v184) = *(a1 + 23);
  }

  if (v6)
  {
    ++v188;
  }

  v18 = *(a1 + 10);
  if (v18)
  {
    LODWORD(size[0]) = *(a1 + 10);
  }

  v19 = *(a1 + 22);
  if (v19)
  {
    HIDWORD(v184) = *(a1 + 22);
  }

  v20 = *(a1 + 28);
  if (v20)
  {
    DWORD2(v184) = *(a1 + 20);
  }

  if (!a1[3] && (!v16 || !v17 || !v18 || !v19 || !v20))
  {
    v21 = *(a2 + 11);
    v199 = *(a2 + 10);
    v200 = v21;
    v201 = *(a2 + 12);
    v22 = *(a2 + 7);
    v195 = *(a2 + 6);
    v196 = v22;
    v23 = *(a2 + 9);
    v197 = *(a2 + 8);
    v198 = v23;
    v24 = *(a2 + 3);
    v191 = *(a2 + 2);
    v192 = v24;
    v25 = *(a2 + 5);
    v193 = *(a2 + 4);
    v194 = v25;
    v26 = *(a2 + 1);
    *__str = *a2;
    v190 = v26;
    if (getdiskinfo(__str, v20, size))
    {
      goto LABEL_38;
    }
  }

  if (v6)
  {
    ++v188;
  }

  if ((size[0] & (LODWORD(size[0]) - 1)) != 0)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "bytes/sector (%u) is not a power of 2");
    goto LABEL_38;
  }

  if (LODWORD(size[0]) <= 0x7F)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "bytes/sector (%u) is too small; minimum is %u");
    goto LABEL_38;
  }

  if (LODWORD(size[0]) > 0x1000)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "bytes/sector (%u) is too large; maximum is %u");
    goto LABEL_38;
  }

  v31 = *(a1 + 24);
  if ((v31 & (v31 - 1)) != 0)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "physical bytes/sector (%u) is not a power of 2");
    goto LABEL_38;
  }

  if (v6)
  {
    ++v188;
  }

  if (v31)
  {
    if (v31 < LODWORD(size[0]))
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "physical bytes/sector (%u) is less than logical bytes/sector (%u)");
      goto LABEL_38;
    }
  }

  else
  {
    v32 = a2[4];
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    if (v32 == -1)
    {
      newfs_print(__str, 6, "Physical block size wasn't initialized, because of ioctl(DKIOCGETPHYSICALBLOCKSIZE) not being supported\n");
      v32 = size[0];
    }

    else
    {
      newfs_print(__str, 6, "%u bytes per physical sector\n", v32);
    }

    *(a1 + 24) = v32;
  }

  if (v6)
  {
    ++v188;
  }

  v33 = *(a1 + 8);
  v181 = v33;
  if (v33 == 32)
  {
    if (*(a1 + 14))
    {
LABEL_67:
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "-%c is not a legal FAT%s option");
      goto LABEL_38;
    }

    goto LABEL_71;
  }

  if (!v33)
  {
    if (a1[3])
    {
      v181 = 12;
      goto LABEL_65;
    }

    if (!*(a1 + 14) && (*(a1 + 16) || *(a1 + 17)))
    {
      v181 = 32;
LABEL_71:
      if (a1[3])
      {
        LODWORD(v183) = 0;
      }

      goto LABEL_73;
    }
  }

LABEL_65:
  if (*(a1 + 16) || *(a1 + 17))
  {
    goto LABEL_67;
  }

LABEL_73:
  v34 = *(a1 + 12);
  if (v34)
  {
    if ((v34 & (v34 - 1)) != 0)
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "block size (%u) is not a power of 2");
      goto LABEL_38;
    }

    if (v34 < LODWORD(size[0]))
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "block size (%u) is too small; minimum is %u");
      goto LABEL_38;
    }

    if (v34 > LODWORD(size[0]) << 7)
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "block size (%u) is too large; maximum is %u");
      goto LABEL_38;
    }

    HIDWORD(size[0]) = v34 / LODWORD(size[0]);
  }

  v35 = *(a1 + 13);
  if (v35)
  {
    if ((v35 & (v35 - 1)) != 0)
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "sectors/cluster (%u) is not a power of 2");
      goto LABEL_38;
    }

    HIDWORD(size[0]) = *(a1 + 13);
  }

  if (*(a1 + 21))
  {
    LODWORD(size[1]) = *(a1 + 21);
  }

  if (v6)
  {
    ++v188;
  }

  v36 = *(a1 + 19);
  if (v36)
  {
    if (v36 >= 0x11)
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "number of FATs (%u) is too large; maximum is %u", v36, 16);
      v36 = *(a1 + 19);
    }

    HIDWORD(size[1]) = v36;
  }

  if (*(a1 + 14))
  {
    LODWORD(v183) = *(a1 + 14);
  }

  if (*(a1 + 27))
  {
    if (*(a1 + 18) <= 0xEFu)
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "illegal media descriptor (%#x)");
      goto LABEL_38;
    }

    DWORD2(v183) = *(a1 + 18);
  }

  if (*(a1 + 11))
  {
    LODWORD(v185) = *(a1 + 11);
  }

  if (*(a1 + 16))
  {
    DWORD2(v185) = *(a1 + 16);
  }

  if (*(a1 + 17))
  {
    HIDWORD(v185) = *(a1 + 17);
  }

  v37 = *a1;
  if (*a1)
  {
    if (v12 != 0x8000 || v11 % LODWORD(size[0]) || v11 < LODWORD(size[0]) || v11 > (0xFFFF * LODWORD(size[0])))
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "%s: inappropriate file type or format");
      goto LABEL_38;
    }

    v38 = v11 / LODWORD(size[0]);
  }

  else
  {
    v38 = 1;
    v37 = v8;
  }

  if (!HIDWORD(size[1]))
  {
    HIDWORD(size[1]) = 2;
  }

  if (v6)
  {
    ++v188;
    sd_card_set_defaults(v7, &v181, size);
    ++v188;
  }

  else
  {
    sd_card_set_defaults(v7, &v181, size);
  }

  v39 = HIDWORD(size[0]);
  if (!HIDWORD(size[0]))
  {
    v44 = HIDWORD(v184) * LODWORD(size[0]);
    v45 = v44 >> 10;
    v46 = __PAIR64__(v181, v181) >> 2;
    if (v46 > 3)
    {
      if (v46 == 4)
      {
        goto LABEL_171;
      }

      if (v46 != 8)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v46)
      {
        if (v46 == 3)
        {
          goto LABEL_133;
        }

LABEL_146:
        *__str = newfs_ctx;
        *&v190 = qword_100059E78;
        newfs_print(__str, 3, "Invalid FAT type: %d");
        goto LABEL_38;
      }

      if (LODWORD(size[0]) == 512 && HIDWORD(v184) <= 0x20D0)
      {
        v181 = 12;
LABEL_150:
        if (LODWORD(size[1]))
        {
          v51 = size[1];
        }

        else
        {
          v51 = v38;
        }

        v52 = v183;
        if (!v183)
        {
          v52 = 512;
        }

        if (v52 % (LODWORD(size[0]) >> 5))
        {
          v53 = v52 / (LODWORD(size[0]) >> 5) + 1;
        }

        else
        {
          v53 = v52 / (LODWORD(size[0]) >> 5);
        }

        v54 = HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (2 * LODWORD(size[0]))) + v53;
        v55 = size[0];
        do
        {
          v39 = v55 / LODWORD(size[0]);
          v40 = 12;
          if (v51 + 4085 * (v55 / LODWORD(size[0])) + v54 >= HIDWORD(v184))
          {
            break;
          }

          v56 = v55 > 0x4000;
          v55 *= 2;
        }

        while (!v56);
LABEL_179:
        HIDWORD(size[0]) = v39;
        if (v39)
        {
          goto LABEL_180;
        }

LABEL_198:
        *__str = newfs_ctx;
        *&v190 = qword_100059E78;
        newfs_print(__str, 3, "FAT%d is impossible with %u sectors");
        goto LABEL_38;
      }

      if (LODWORD(size[0]) != 512 && HIDWORD(v184) <= 0x1068)
      {
        v181 = 12;
LABEL_133:
        if (LODWORD(size[0]) > 0x8000)
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      }

      if (v44 <= 0x200003FF)
      {
        v181 = 16;
LABEL_171:
        v57 = 0;
        do
        {
          v58 = &fat16Sizes + 16 * v57++;
        }

        while (v45 > *v58);
        v49 = *(v58 + 2);
        if (v49)
        {
          v40 = 16;
          goto LABEL_175;
        }

        *__str = newfs_ctx;
        *&v190 = qword_100059E78;
        goto LABEL_281;
      }

      v181 = 32;
    }

    v47 = 0;
    do
    {
      v48 = &fat32Sizes + 16 * v47++;
    }

    while (v45 > *v48);
    v49 = *(v48 + 2);
    if (v49)
    {
      v40 = 32;
LABEL_175:
      if (v49 <= LODWORD(size[0]))
      {
        v59 = size[0];
      }

      else
      {
        v59 = v49;
      }

      v39 = v59 / LODWORD(size[0]);
      goto LABEL_179;
    }

    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
LABEL_281:
    newfs_print(__str, 3, "FAT%d is impossible for disk size of %lluKiB");
    goto LABEL_38;
  }

  v40 = v181;
  if (!v181)
  {
    v41 = size[1];
    if (!LODWORD(size[1]))
    {
      v41 = v38;
    }

    if (v183)
    {
      v42 = v183;
    }

    else
    {
      v42 = 512;
    }

    if (v42 % (LODWORD(size[0]) >> 5))
    {
      v43 = v42 / (LODWORD(size[0]) >> 5) + 1;
    }

    else
    {
      v43 = v42 / (LODWORD(size[0]) >> 5);
    }

    if (HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (4 * LODWORD(size[0]))) + v41 + (4085 * HIDWORD(size[0])) + v43 <= HIDWORD(v184))
    {
      if (0x1FFECu / LODWORD(size[0]) * LODWORD(size[0]) == 131052)
      {
        v50 = 0x1FFECu / LODWORD(size[0]);
      }

      else
      {
        v50 = 0x1FFECu / LODWORD(size[0]) + 1;
      }

      if (v41 + v50 * HIDWORD(size[1]) + (65525 * HIDWORD(size[0])) + v43 <= HIDWORD(v184))
      {
        v40 = 32;
      }

      else
      {
        v40 = 16;
      }
    }

    else
    {
      v40 = 12;
    }

    v181 = v40;
  }

LABEL_180:
  if (v6)
  {
    v188 += 3;
  }

  v60 = v38;
  if (v40 == 32)
  {
    v61 = DWORD2(v185);
    if (DWORD2(v185))
    {
      v62 = HIDWORD(v185);
    }

    else
    {
      if (v38 == 0xFFFF || (v62 = HIDWORD(v185), v38 == HIDWORD(v185)))
      {
        *__str = newfs_ctx;
        *&v190 = qword_100059E78;
        newfs_print(__str, 3, "no room for info sector", v160, v162);
        goto LABEL_38;
      }

      DWORD2(v185) = v38;
      v61 = v38;
    }

    if (v38 > v61 || v61 == 0xFFFF)
    {
      v64 = v38;
    }

    else
    {
      v64 = v61 + 1;
    }

    if (v62 != 0xFFFF)
    {
      if (v62)
      {
        if (v62 == v61)
        {
          *__str = newfs_ctx;
          *&v190 = qword_100059E78;
          newfs_print(__str, 3, "backup sector would overwrite info sector", v160, v162);
          goto LABEL_38;
        }
      }

      else
      {
        if (v64 == 0xFFFF)
        {
          *__str = newfs_ctx;
          *&v190 = qword_100059E78;
          newfs_print(__str, 3, "no room for backup sector", v160, v162);
          goto LABEL_38;
        }

        if (v64 <= 6)
        {
          v62 = 6;
        }

        else
        {
          v62 = v64;
        }

        HIDWORD(v185) = v62;
      }
    }

    if (v64 > v62 || v62 == 0xFFFF)
    {
      v60 = v64;
    }

    else
    {
      v60 = v62 + 1;
    }
  }

  v66 = size[1];
  if (LODWORD(size[1]))
  {
    if (LODWORD(size[1]) < v60)
    {
      *__str = newfs_ctx;
      *&v190 = qword_100059E78;
      newfs_print(__str, 3, "too few reserved sectors", v160, v162);
      goto LABEL_38;
    }
  }

  else
  {
    if (v60 <= 0x20)
    {
      v66 = 32;
    }

    else
    {
      v66 = v60;
    }

    if (v40 != 32)
    {
      v66 = v60;
    }

    LODWORD(size[1]) = v66;
  }

  v67 = v183;
  if (v40 != 32 && !v183)
  {
    v67 = 512;
    LODWORD(v183) = 512;
  }

  v68 = v185;
  if (v67 % (LODWORD(size[0]) >> 5))
  {
    v69 = v67 / (LODWORD(size[0]) >> 5) + 1;
  }

  else
  {
    v69 = v67 / (LODWORD(size[0]) >> 5);
  }

  if (v40 != 32 && v185 >= 0x10000)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "too many sectors/FAT for FAT12/16", v160, v162);
    goto LABEL_38;
  }

  v70 = (v66 + v69);
  if (v185 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v185;
  }

  if (v70 + HIDWORD(size[1]) * v71 > HIDWORD(v184))
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "meta data exceeds file system size", v160, v162);
    goto LABEL_38;
  }

  v171 = v69;
  v173 = v38;
  v174 = v70 + HIDWORD(size[1]) * v71;
  v72 = (HIDWORD(v184) - v174);
  v73 = 2 * LODWORD(size[0]);
  v74 = v40 >> 2;
  v75 = 2 * LODWORD(size[0]) * v72 / (HIDWORD(size[1]) * v74 + 2 * LODWORD(size[0]) * v39);
  if (v40 == 16)
  {
    v76 = 65524;
  }

  else
  {
    v76 = 268435445;
  }

  if (v40 == 12)
  {
    v77 = 4084;
  }

  else
  {
    v77 = v76;
  }

  v176 = v77;
  if (v77 <= v75)
  {
    v80 = v76 | 2;
    if (v40 == 12)
    {
      v80 = 4086;
    }

    v81 = v80 * v74 % v73;
    v78 = (v77 | 2) * v74;
    if (v81)
    {
      goto LABEL_243;
    }
  }

  else
  {
    v78 = (v75 + 2) * v74;
    if (v78 % v73)
    {
LABEL_243:
      v79 = v78 / v73 + 1;
      goto LABEL_248;
    }
  }

  v79 = v78 / v73;
LABEL_248:
  if (!v185)
  {
    LODWORD(v185) = v79;
    v82 = *(a1 + 24);
    v68 = v79;
    if (v82 > LODWORD(size[0]))
    {
      v68 = v79;
      if (v79 % (v82 / LODWORD(size[0])))
      {
        v68 = v82 / LODWORD(size[0]) + v79 - v79 % (v82 / LODWORD(size[0]));
        LODWORD(v185) = v68;
      }
    }

    v174 += (v68 - 1) * HIDWORD(size[1]);
    LODWORD(v72) = HIDWORD(v184) - v174;
  }

  v83 = 2 * LODWORD(size[0]) * v68 / v74 - 2;
  v84 = v72 / v39;
  if (v72 / v39 > v83)
  {
    HIDWORD(v184) = v70 + v68 * HIDWORD(size[1]) + v83 * v39;
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 6, "warning: sectors/FAT limits sectors to %u, clusters to %u\n", HIDWORD(v184), v83);
    v68 = v185;
    v84 = v83;
  }

  if (v68 < v79)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 6, "warning: sectors/FAT limits file system to %u clusters\n", v84);
  }

  if (v40 == 16)
  {
    v85 = 4085;
  }

  else
  {
    v85 = 65525;
  }

  if (v40 == 12)
  {
    v85 = 1;
  }

  if (v84 < v85)
  {
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, "%u clusters too few clusters for FAT%u, need %u");
    goto LABEL_38;
  }

  v86 = HIDWORD(size[0]);
  if (v84 > v176)
  {
    v84 = v176;
    HIDWORD(v184) = v174 + HIDWORD(size[0]) + HIDWORD(size[0]) * v176 - 1;
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 6, "warning: FAT type limits file system to %u sectors\n", HIDWORD(v184));
    v86 = HIDWORD(size[0]);
  }

  v87 = "s";
  if (v86 * v84 == 1)
  {
    v88 = "";
  }

  else
  {
    v88 = "s";
  }

  v168 = v84 - 1;
  if (v84 == 1)
  {
    v87 = "";
  }

  *__str = newfs_ctx;
  *&v190 = qword_100059E78;
  newfs_print(__str, 6, "%s: %u sector%s in %u FAT%u cluster%s (%u bytes/cluster)\n", v7, v86 * v84, v88, v84, v40, v87, LODWORD(size[0]) * v86);
  if (!DWORD2(v183))
  {
    if (DWORD2(v184))
    {
      v89 = 248;
    }

    else
    {
      v89 = 240;
    }

    DWORD2(v183) = v89;
  }

  if (v40 == 32)
  {
    DWORD1(v185) = 2;
    if (HIDWORD(v184) < 0x10000)
    {
      DWORD1(v183) = HIDWORD(v184);
    }

    HIDWORD(v183) = 0;
    v90 = (&v183 + 4);
  }

  else
  {
    v90 = &v185;
    if (!HIWORD(HIDWORD(v184)))
    {
      DWORD1(v183) = HIDWORD(v184);
      HIDWORD(v184) = 0;
    }

    HIDWORD(v183) = v185;
  }

  *v90 = 0;
  if (v6)
  {
    v188 = 10;
    (a3[2])("Format device: Checking parameters", *a3);
    print_bpb(size);
    if (*(a1 + 25))
    {
      v28 = 0;
      v29 = off_100051308;
      v27 = 1;
      goto LABEL_41;
    }

    v188 = 0;
    v27 = 1;
    (a3[1])("Format device: Wiping file system", 10, 1, &v188, *a3);
  }

  else
  {
    print_bpb(size);
    v27 = 0;
    v28 = 0;
    if (*(a1 + 25))
    {
      return v28;
    }
  }

  gettimeofday(&v187, 0);
  tv_sec = v187.tv_sec;
  v166 = localtime(&tv_sec);
  __src = malloc_type_malloc(0x20000uLL, 0x6E36B54BuLL);
  if (__src && (__dst = malloc_type_malloc(LODWORD(size[0]), 0xDDC8FA22uLL)) != 0)
  {
    v91 = v185;
    if (HIDWORD(v183))
    {
      v91 = HIDWORD(v183);
    }

    v92 = LODWORD(size[1]) + v91 * HIDWORD(size[1]);
    v93 = v171;
    if (v40 == 32)
    {
      v93 = HIDWORD(size[0]);
    }

    v164 = v92;
    v167 = v92 + v93;
    if (*(&newfs_ctx + 1))
    {
      *__str = v9;
      *&__str[4] = 0;
      *&__str[8] = LODWORD(size[0]);
      LODWORD(v190) = 0;
      DWORD1(v190) = v92 + v93;
      v94 = (*(&newfs_ctx + 1))(qword_100059E78, __str);
      if (v94)
      {
        v28 = v94;
        *__str = newfs_ctx;
        *&v190 = qword_100059E78;
        newfs_print(__str, 3, "Encountered errors trying to wipe resource");
        if (!v6)
        {
          return v28;
        }

        goto LABEL_40;
      }
    }

    if (v6)
    {
      v188 = 1;
      (a3[2])(off_100051308[v27], *a3);
      v188 = 0;
      (a3[1])(off_100051308[++v27], 80, (v167 + 2), &v188, *a3);
    }

    if (v167)
    {
      v175 = 0;
      v177 = 0;
      v172 = 0;
      v97 = __src;
      while (1)
      {
        v98 = v181;
        v99 = HIDWORD(v185);
        if (*a1)
        {
          v100 = HIDWORD(v185) == 0xFFFF;
        }

        else
        {
          v100 = 1;
        }

        v102 = v100 || v181 != 32;
        if (v173 > HIDWORD(v185) || v177 < HIDWORD(v185))
        {
          v102 = 1;
        }

        v104 = v102 == 0;
        if (v102)
        {
          v99 = 0;
        }

        v105 = v175;
        if (v104)
        {
          v105 = 0;
        }

        v175 = v105;
        if (*a1 && (v106 = (v177 - v99), v106 < v173))
        {
          v107 = (a3[4])(a3[3], v97, LODWORD(size[0]), v105);
          if (v107 == -1)
          {
            v158 = __error();
            v157 = strerror(*v158);
            v178 = newfs_ctx;
            v179 = qword_100059E78;
            v163 = v37;
            goto LABEL_433;
          }

          v108 = size[0];
          if (v107 != LODWORD(size[0]))
          {
            v178 = newfs_ctx;
            v179 = qword_100059E78;
            v161 = v37;
            v163 = v106;
            v159 = "%s: can't read sector %u";
            goto LABEL_434;
          }
        }

        else
        {
          v109 = size[0];
          bzero(v97, LODWORD(size[0]));
          v108 = v109;
        }

        if (!v177 || v98 == 32 && HIDWORD(v185) != 0xFFFF && v177 == HIDWORD(v185))
        {
          *(v97 + 11) = v108;
          v110 = size[1];
          *(v97 + 13) = BYTE4(size[0]);
          *(v97 + 14) = v110;
          v111 = v183;
          *(v97 + 16) = BYTE4(size[1]);
          *(v97 + 17) = v111;
          *(v97 + 19) = WORD2(v183);
          *(v97 + 21) = BYTE8(v183);
          *(v97 + 22) = WORD6(v183);
          *(v97 + 24) = v184;
          *(v97 + 26) = WORD2(v184);
          *(v97 + 28) = *(&v184 + 1);
          if (v98 == 32)
          {
            v112 = WORD1(v185);
            *(v97 + 36) = v185;
            *(v97 + 38) = v112;
            *(v97 + 40) = 0;
            *(v97 + 44) = DWORD1(v185);
            *(v97 + 48) = WORD4(v185);
            *(v97 + 50) = WORD6(v185);
            v113 = 64;
          }

          else
          {
            v113 = 36;
          }

          v169 = v113;
          v114 = v97 + v113;
          *v114 = v186;
          *(v114 + 2) = 41;
          if (*(a1 + 26))
          {
            v115 = *(a1 + 9);
          }

          else
          {
            v115 = (v166[2].i32[1] + (v166->i32[1] | (v166[1].i32[0] << 8)) + 1900) | ((((v187.tv_usec / 10) | (v166->i32[0] << 8)) + (((v166[2].i32[0] << 8) + 256) | v166[1].i32[1])) << 16);
          }

          *(v114 + 3) = v115;
          if (a1[1])
          {
            v118 = a1[1];
          }

          else
          {
            v118 = "NO NAME";
          }

          mklabel(v114 + 7, v118);
          v119 = __str;
          snprintf(__str, 0x400uLL, "FAT%u", v98);
          for (i = 0; i != 8; ++i)
          {
            v121 = *v119;
            if (*v119)
            {
              ++v119;
            }

            if (v121)
            {
              v122 = v121;
            }

            else
            {
              v122 = 32;
            }

            *(v114 + 18 + i) = v122;
          }

          v123 = *a1;
          if (!*a1)
          {
            __src[v172] = -21;
            *(v97 + 1) = v169 | 0x18;
            *(v97 + 2) = -112;
            v124 = a1[2];
            if (!v124)
            {
              v124 = "BSD  4.4";
            }

            do
            {
              v125 = *v124;
              if (*v124)
              {
                ++v124;
              }

              if (v125)
              {
                v126 = v125;
              }

              else
              {
                v126 = 32;
              }

              *(v97 + 3 + v123++) = v126;
            }

            while (v123 != 8);
            v127 = v97 + v169;
            v128 = xmmword_100059B00;
            *(v127 + 42) = unk_100059B10;
            *(v127 + 26) = v128;
            v129 = xmmword_100059B20;
            v130 = unk_100059B30;
            v131 = xmmword_100059B40;
            *(v127 + 106) = dword_100059B50;
            *(v127 + 90) = v131;
            *(v127 + 74) = v130;
            *(v127 + 58) = v129;
            *(v97 + 510) = -21931;
          }

LABEL_368:
          v132 = LODWORD(size[0]);
          if (!v177)
          {
            memcpy(__dst, __src, LODWORD(size[0]));
            __memset_chk();
          }

          goto LABEL_381;
        }

        if (v98 == 32 && DWORD2(v185) != 0xFFFF && (v177 == DWORD2(v185) || HIDWORD(v185) != 0xFFFF && v177 == DWORD2(v185) + HIDWORD(v185)))
        {
          break;
        }

        if (v177 < LODWORD(size[1]) || v177 >= v164)
        {
          goto LABEL_437;
        }

        v133 = HIDWORD(v183);
        if (!HIDWORD(v183))
        {
          v133 = v185;
        }

        if ((v177 - LODWORD(size[1])) % v133)
        {
LABEL_437:
          if (v177 != v164)
          {
            goto LABEL_380;
          }

          v134 = a1[1];
          if (!v134 || !*v134)
          {
            goto LABEL_380;
          }

          mklabel(v97, v134);
          *(v97 + 11) = 40;
          *(v97 + 22) = (32 * v166->i16[2]) | (v166[1].i16[0] << 11) | (v166->i32[0] >> 1);
          v135 = vadd_s32(vshl_u32(v166[2], 0x900000005), 0xFFFF600000000020);
          v136 = v166[1].i32[1] | v135.i32[0] | v135.i32[1];
          *(v97 + 24) = v136;
          v116 = v136 >> 8;
          v117 = 25;
          goto LABEL_379;
        }

        __src[v172] = BYTE8(v183);
        if (v98 == 32)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        v139 = v138 * v98;
        if (v139 > 0xF)
        {
          v140 = v139 >> 3;
          v141 = v140 + 14;
          v142 = vdupq_n_s64(v140 - 2);
          if (v98 == 32)
          {
            v143 = 15;
          }

          else
          {
            v143 = -1;
          }

          v144 = -(v141 & 0x3FFFFFF0);
          v145 = (v97 + 8);
          v146 = 16;
          do
          {
            v147 = vdupq_n_s64(v146 - 16);
            v148 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040790)));
            if (vuzp1_s8(vuzp1_s16(v148, *v142.i8), *v142.i8).u8[0])
            {
              *(v145 - 7) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v148, *&v142), *&v142).i8[1])
            {
              *(v145 - 6) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040780)))), *&v142).i8[2])
            {
              *(v145 - 5) = v143;
              *(v145 - 4) = -1;
            }

            v149 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040770)));
            if (vuzp1_s8(*&v142, vuzp1_s16(v149, *&v142)).i32[1])
            {
              *(v145 - 3) = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(v149, *&v142)).i8[5])
            {
              *(v145 - 2) = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040760))))).i8[6])
            {
              *(v145 - 1) = v143;
              *v145 = -1;
            }

            v150 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040750)));
            if (vuzp1_s8(vuzp1_s16(v150, *v142.i8), *v142.i8).u8[0])
            {
              v145[1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v150, *&v142), *&v142).i8[1])
            {
              v145[2] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040740)))), *&v142).i8[2])
            {
              v145[3] = v143;
              v145[4] = -1;
            }

            v151 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040730)));
            if (vuzp1_s8(*&v142, vuzp1_s16(v151, *&v142)).i32[1])
            {
              v145[5] = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(v151, *&v142)).i8[5])
            {
              v145[6] = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100040720))))).i8[6])
            {
              v145[7] = v143;
              v145[8] = -1;
            }

            v146 += 16;
            v145 += 16;
          }

          while (v144 + v146 != 16);
          goto LABEL_368;
        }

LABEL_380:
        v132 = LODWORD(size[0]);
LABEL_381:
        v172 += v132;
        if (v172 >= 0x20000)
        {
          v137 = (a3[5])(a3[3], __src, 0x20000, v175);
          if (v137 != 0x20000)
          {
            if (v137 != -1)
            {
              v178 = newfs_ctx;
              v179 = qword_100059E78;
              v161 = v7;
              v163 = v177;
              v159 = "%s: can't write sector %u";
              goto LABEL_434;
            }

            goto LABEL_430;
          }

          v172 = 0;
          v175 += 0x20000;
        }

        ++v188;
        v97 = &__src[v172];
        v177 = (v177 + 1);
        if (v177 == v167)
        {
          if (!v172)
          {
            goto LABEL_425;
          }

          v152 = (a3[5])(a3[3], __src, v172, v175);
          if (v152 != -1 && v152 == v172)
          {
            goto LABEL_425;
          }

LABEL_430:
          v156 = __error();
          v157 = strerror(*v156);
          v178 = newfs_ctx;
          v179 = qword_100059E78;
          v163 = v7;
LABEL_433:
          v161 = v157;
          v159 = "%s: %s";
          goto LABEL_434;
        }
      }

      *&__src[v172] = 1096897106;
      *(v97 + 484) = 1631679090;
      *(v97 + 488) = v168;
      v116 = DWORD1(v185) + 1;
      *(v97 + 492) = WORD2(v185) + 1;
      *(v97 + 494) = BYTE2(v116);
      *(v97 + 495) = HIBYTE(v116);
      *(v97 + 510) = 85;
      LOBYTE(v116) = -86;
      v117 = 511;
LABEL_379:
      *(v97 + v117) = v116;
      goto LABEL_380;
    }

LABEL_425:
    ++v188;
    v153 = (a3[5])(a3[3], __dst, LODWORD(size[0]), 0);
    if (v153 == -1)
    {
      v154 = __error();
      v155 = strerror(*v154);
      v178 = newfs_ctx;
      v179 = qword_100059E78;
      v161 = v155;
      v163 = v7;
      v159 = "%s: write: %s";
    }

    else
    {
      if (v153 == LODWORD(size[0]))
      {
        v28 = 0;
        ++v188;
        if (!v6)
        {
          return v28;
        }

        v29 = off_100051308;
        goto LABEL_41;
      }

      v178 = newfs_ctx;
      v179 = qword_100059E78;
      v161 = v7;
      v159 = "%s: can't write boot sector";
    }

LABEL_434:
    newfs_print(&v178, 3, v159, v161, v163);
  }

  else
  {
    v95 = __error();
    v96 = strerror(*v95);
    *__str = newfs_ctx;
    *&v190 = qword_100059E78;
    newfs_print(__str, 3, v96, 0, v163);
  }

LABEL_39:
  v28 = 1;
  if (v6)
  {
LABEL_40:
    v29 = off_1000512F0;
LABEL_41:
    (a3[2])(v29[v27], *a3, v14);
  }

  return v28;
}
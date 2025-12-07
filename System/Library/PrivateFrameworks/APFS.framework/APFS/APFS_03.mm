uint64_t nx_dev_init(int *a1, uint64_t a2, int a3, char a4, uint64_t a5, const char **a6, unsigned int **a7)
{
  v22 = 0;
  if (a3)
  {
    v22 = a1;
  }

  else
  {
    if (a4)
    {
      return 45;
    }

    v20 = dev_init(a1, a2, &v22);
    if (v20)
    {
      v18 = v20;
      log_err("%s:%d: device initialization failed: %d\n", "nx_dev_init", 679, v20);
      goto LABEL_36;
    }

    a1 = v22;
  }

  v9 = dev_block_size(a1);
  v10 = dev_block_count(v22);
  if (v9 <= 0x1000)
  {
    v11 = 4096;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 * v9;
  while (!(v11 % v9))
  {
    if (v11 > v9)
    {
      dev_set_block_size(v22);
    }

    v13 = _apfs_malloc_typed(v11, 0x92FC743FuLL);
    if (!v13)
    {
      log_err("%s:%d: %s couldn't allocate memory for superblock of size %d\n", "nx_dev_init", 713, v22 + 212, v11);
      v18 = 12;
      goto LABEL_36;
    }

    v14 = dev_read(v22);
    if (v14)
    {
      v18 = v14;
      log_err("%s:%d: %s couldn't read superblock of size %d\n");
LABEL_33:
      _apfs_free(v13, v11);
      goto LABEL_36;
    }

    v17 = nx_check_superblock(v13, v11, 0, v15, v16);
    if (v17)
    {
      goto LABEL_13;
    }

    v19 = v13[9];
    if (v19 % v9)
    {
      log_err("%s:%d: %s superblock block size %d not an even multiple of device block size %d\n", "nx_dev_init", 729, v22 + 212, v13[9], v9);
      v17 = nx_corruption_detected_int(0);
      if (v17)
      {
        goto LABEL_13;
      }

      v19 = v13[9];
    }

    if (*(v13 + 5) * v19 > v12)
    {
      log_err("%s:%d: %s superblock container size %lld greater than device size %lld\n", "nx_dev_init", 735, v22 + 212, *(v13 + 5) * v19, v12);
      v17 = nx_corruption_detected_int(0);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        if (v17 != 79)
        {
          log_err("%s:%d: %s superblock failed sanity checks: %d\n");
        }

        goto LABEL_33;
      }

      v19 = v13[9];
    }

    if (v19 == v11)
    {
      v18 = 0;
      *a7 = v13;
      *a6 = v22;
      return v18;
    }

    _apfs_free(v13, v11);
    dev_set_block_size(v22);
    v11 = v19;
    if (v19 < v9)
    {
      log_err("%s:%d: %s container block size too small for device block size (%d < %d)\n");
      goto LABEL_35;
    }
  }

  log_err("%s:%d: %s block size %d is not an even multiple of device block size %d\n");
LABEL_35:
  v18 = 22;
LABEL_36:
  if (v22)
  {
    dev_close(v22);
  }

  return v18;
}

uint64_t nx_mount(int *a1, int *a2, uint64_t **a3)
{
  v3 = a3;
  v121 = *MEMORY[0x277D85DE8];
  v119 = 0;
  v117 = 0;
  v118 = 0;
  memset(v120, 0, sizeof(v120));
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  *a3 = 0;
  if (a2)
  {
    v5 = *(a2 + 4);
    v6 = *a2;
    v7 = a2[1];
    if (((v5 & 0x100) != 0 || (v5 & 0x2000) != 0) && (v7 & 0x80000000) == 0)
    {
      log_err("%s:%d: conflicting mount options: probe %d temporary %d sbindex %d\n");
LABEL_9:
      LODWORD(v12) = 0;
      v13 = 0;
      v14 = 22;
      goto LABEL_10;
    }

    if ((v5 & 0xC00) == 0x800)
    {
      log_err("%s:%d: conflicting mount options: is_system_graft but not is_graft\n");
      goto LABEL_9;
    }

    v105 = (v5 >> 13) & 1;
    v107 = (v5 >> 8) & 1;
    __src = (v5 >> 9) & 1;
    v10 = (*(a2 + 4) >> 1) & 1;
    v8 = (v5 >> 10) & 1;
    v100 = (*(a2 + 4) >> 5) & 1;
    crc32c_init();
    if (v6)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    v3 = a3;
    v9 = (v5 >> 11) & 1;
    if ((v6 | ((v5 & 0x4000) >> 14)))
    {
      v18 = 16;
    }

    else
    {
      v18 = 32;
    }

    v11 = v18 | v17;
    v103 = (v5 >> 2) & 1;
    v101 = (v5 >> 12) & 1;
  }

  else
  {
    crc32c_init();
    LOBYTE(v6) = 0;
    LOBYTE(v5) = 0;
    v103 = 0;
    v100 = 0;
    v101 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v105 = 0;
    v107 = 0;
    __src = 0;
    v11 = 34;
    v7 = 0xFFFFFFFFLL;
  }

  v19 = nx_dev_init(a1, v11, v10, v8, 0, &v119, &v116);
  if (v19)
  {
    v14 = v19;
    if (v19 != 79)
    {
      log_err("%s:%d: device initialization failed: %d\n", "nx_mount", 1006, v19);
    }

    return v14;
  }

  v98 = v9;
  v94 = v5;
  v99 = v7;
  v93 = v3;
  v21 = v119;
  v97 = dev_is_writable(v119) == 0;
  is_external = dev_is_external(v21);
  v95 = dev_real_block_size(v21);
  v22 = v116;
  v23 = v116[9];
  if (__src)
  {
    v24 = 128;
  }

  else
  {
    v24 = 0x10000;
  }

  if (__src)
  {
    v25 = 128;
  }

  else
  {
    v25 = 0x8000;
  }

  if (__src)
  {
    v26 = 128;
  }

  else
  {
    v26 = 0x10000;
  }

  if (__src)
  {
    v27 = 128;
  }

  else
  {
    v27 = 0x8000;
  }

  log_debug("%s:%d: %s initializing cache w/hash_size %u and cache size %u\n", "nx_mount", 1195, v21 + 212, v27, v26);
  v28 = v25;
  v12 = v23;
  v29 = obj_cache_create(v28, v24, v23, &v118);
  if (v29)
  {
    v30 = v29;
    log_err("%s:%d: %s object cache initialization failed: %d\n", "nx_mount", 1199, v21 + 212, v29);
    v13 = 0;
    v14 = v30;
    goto LABEL_10;
  }

  __srca = v22;
  v31 = v118;
  if (v98)
  {
    *&v118[14].__opaque[48] = 1;
  }

  memset(&v120[3] + 8, 0, 24);
  *(&v120[2] + 8) = 0u;
  memset(v120 + 8, 0, 32);
  *&v120[0] = __PAIR64__(v23, v95);
  *(&v120[0] + 1) = *(v22 + 5);
  *(&v120[1] + 1) = v21;
  *&v120[2] = 1;
  DWORD2(v120[2]) = (v6 | v97) & 1;
  HIDWORD(v120[2]) = is_external != 0;
  *&v120[3] = __PAIR64__(v107, v103);
  *(&v120[3] + 1) = __PAIR64__(v105, v101);
  bootstrap = obj_create_bootstrap(v31, 0x80000000, 1uLL, &nx_desc, v120, v23, 1, &v117);
  if (bootstrap)
  {
    v14 = bootstrap;
    log_err("%s:%d: %s object cache bootstrap failed: %d\n");
LABEL_49:
    v13 = 0;
    goto LABEL_10;
  }

  v33 = v117;
  if (v100)
  {
    *(v117 + 640) = 1;
  }

  memcpy(v33[47], v22, v23);
  v34 = v118;
  v35 = v117[47];
  v36 = *(v35 + 88);
  *v118[6].__opaque = v117;
  v34[25].i64[0] = v36;
  __strlcpy_chk();
  obj_mem_mgr_register(v118, v8 & (v98 ^ 1));
  v118 = 0;
  v119 = 0;
  v37 = *(v35 + 104);
  if (v37 < 0 && (v40 = nx_metadata_fragmented_sanity_check(v117, *(v35 + 112), v37 & 0x7FFFFFFF), v40) || (v38 = *(v35 + 108), v38 < 0) && (v40 = nx_metadata_fragmented_sanity_check(v117, *(v35 + 120), v38 & 0x7FFFFFFF), v40))
  {
    v14 = v40;
    log_err("%s:%d: %s fragmented checkpoint area failed sanity check: %d\n");
    goto LABEL_49;
  }

  v13 = _apfs_malloc_typed(v23, 0x286E03C4uLL);
  if (!v13)
  {
    log_err("%s:%d: %s failed to allocate buffer for checkpoint superblock\n", "nx_mount", 1307, (v117[48] + 212));
    v14 = 12;
    goto LABEL_10;
  }

  if ((*(v35 + 1264) & 2) == 0)
  {
    goto LABEL_68;
  }

  v39 = v117;
  *(v117 + 626) = 1;
  if (*(v39 + 628) == 1)
  {
    log_err("%s:%d: %s storage is untrusted. Container cleanly-unmounted flag ignored\n");
LABEL_67:
    *(v35 + 1264) &= ~2uLL;
    *(v22 + 158) &= ~2uLL;
    goto LABEL_68;
  }

  if (!*(v35 + 140))
  {
    log_err("%s:%d: %s checkpoint descriptor length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

  if (!*(v35 + 148))
  {
    log_err("%s:%d: %s checkpoint data length is bad.  Container cleanly-unmounted flag ignored\n");
    goto LABEL_67;
  }

LABEL_68:
  v41 = v12;
  v42 = 0;
  v104 = 0;
  v106 = 0;
  v108 = 0;
  while (1)
  {
    v43 = v117;
    if ((*(v35 + 1264) & 2) != 0)
    {
      break;
    }

    v44 = *(v117 + 633);
    if (v42 & v44)
    {
      goto LABEL_74;
    }

    highest_xid = nx_checkpoint_find_highest_xid(v117, &v112, &v113);
    if (highest_xid)
    {
      v14 = highest_xid;
      log_err("%s:%d: %s failed to scan checkpoint descriptor area for largest xid: %d\n");
LABEL_144:
      LODWORD(v12) = v41;
      goto LABEL_10;
    }

LABEL_75:
    if ((v99 & 0x80000000) == 0)
    {
      v53 = v99;
      v54 = __srca;
      goto LABEL_85;
    }

    v49 = __srca;
    valid_checkpoint = nx_checkpoint_find_valid_checkpoint(v117, __srca, v112, v13, &v114);
    v14 = valid_checkpoint;
    if (valid_checkpoint == 35)
    {
      if ((*(v35 + 1264) & 2) == 0)
      {
        goto LABEL_121;
      }

      log_err("%s:%d: %s Couldn't load checkpoint from cleanly-unmounted state.  Falling back to descriptor scan.\n", "nx_mount", 1503, (v117[48] + 212));
      *(v35 + 1264) &= ~2uLL;
      *(__srca + 158) &= ~2uLL;
    }

    else
    {
      if (valid_checkpoint)
      {
LABEL_121:
        log_err("%s:%d: %s failed to find valid checkpoint: %d\n", "nx_mount", 1508, (v117[48] + 212), valid_checkpoint);
        goto LABEL_144;
      }

      v102 = v13[2];
      log_debug("%s:%d: %s checkpoint search: largest xid %lld, best xid %lld @ %d\n", "nx_mount", 1512, (v117[48] + 212), v113, v102, v114);
      v51 = *(__srca + 2);
      v52 = v117;
      if (v51 != v13[2])
      {
        log_err("%s:%d: %s reloading after unclean unmount, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1514, (v117[48] + 212), v13[2], v51);
        v52 = v117;
        if ((*(v117 + 633) & 1) == 0)
        {
          v104 = 1;
          *(v117 + 643) = 1;
        }
      }

LABEL_115:
      v72 = *(v52[47] + 56);
      if (v72)
      {
        log_debug("%s:%d: %s unsupported nx_readonly_compatible_features (0x%llx): mount r/o\n", "nx_mount", 1525, (v52[48] + 212), v72);
        v52 = v117;
        *(v117 + 627) = 1;
      }

      obj_checkpoint_check_for_unknown(v52[49]);
      v73 = v117;
      v74 = *(v117 + 633);
      if ((v42 & v74 & 1) == 0)
      {
        v106 = *(v13 + 36);
        v108 = *(v13 + 34);
        log_debug("%s:%d: %s stable checkpoint indices: desc %d data %d\n", "nx_mount", 1539, (v117[48] + 212), v108, v106);
        v73 = v117;
        v74 = *(v117 + 633);
      }

      if (v42 & 1 | ((v74 & 1) == 0))
      {
        if (*(v73 + 628) == 1 && ((*(v73 + 631) | v74) & 1) == 0 && (v73[79] & 1) == 0 && !*(v49 + 176))
        {
          *(v73 + 165) = (*(v13 + 34) + *(v13 + 35) - 1) % (v13[13] & 0x7FFFFFFFu);
        }

        *(v35 + 136) = 0;
        *(v35 + 144) = 0;
        *(v35 + 1264) &= ~2uLL;
        nx_metadata_range_optimize(v73);
        v76 = v117;
        if (*(v117 + 629) == 1)
        {
          v14 = spaceman_get(v117, &v115);
          if (v14)
          {
LABEL_133:
            log_err("%s:%d: %s failed to set up spaceman for demo mode: %d\n");
            goto LABEL_144;
          }

          obj_cache_lock_write(v117[49]);
          v77 = v117;
          v117[52] = 0;
          v14 = obj_clone(v115, 0, v77 + 52, 0);
          obj_cache_unlock_write(v117[49]);
          if (v14)
          {
            obj_release(v115);
            goto LABEL_133;
          }

          obj_ephemeral_set_persistent(v117[52], 0);
          obj_release(v115);
          v76 = v117;
        }

        v78 = v102 + 1;
        v14 = tx_mgr_init(v76, v102 + 1, v76 + 50);
        v79 = v117;
        if (v14)
        {
          log_err("%s:%d: %s tx manager initialization failed: %d\n");
          goto LABEL_144;
        }

        v80 = v117[50];
        *(v80 + 104) = v108;
        *(v80 + 108) = v106;
        if ((v94 & 1) == 0)
        {
          log_info("%s:%d: %s sanity checking all container state... please be patient.\n", "nx_mount", 1602, (v79[48] + 212));
          v14 = nx_check(v117, 0);
          v79 = v117;
          if (v14)
          {
            log_err("%s:%d: %s failed nx_check sanity: %d\n");
            goto LABEL_144;
          }
        }

        if ((*(v79 + 627) & 1) == 0)
        {
          if (*(v79 + 633) & 1) != 0 || *(v79 + 632) == 1 && (log_info("%s:%d: %s Enabling temporary checkpoints starting with xid %lld.\n", "nx_mount", 1614, (v79[48] + 212), v78), v79 = v117, *(v117[47] + 1408) = v78, (*(v79 + 633)))
          {
            if ((v79[79] & 1) == 0)
            {
              log_info("%s:%d: %s Making temporary checkpoint %lld permanent (start %lld).\n", "nx_mount", 1622, (v79[48] + 212), *(v79[47] + 16), *(v79[47] + 1408));
              v13[176] = 0;
              obj_checksum_set_phys(v117, v13, v12, v81, v82);
              if (!v111)
              {
                v14 = 22;
                goto LABEL_183;
              }

              v83 = dev_write(v117[48]);
              if (v83 || (v83 = tx_barrier(v117, 16), v83))
              {
                v14 = v83;
LABEL_183:
                log_err("%s:%d: %s failed to write superblock to block %lld: %d\n");
                goto LABEL_144;
              }

              v79 = v117;
              *(v117[47] + 1408) = 0;
              v104 = 1;
            }
          }

          v84 = spaceman_allocation_init(v79);
          if (v84)
          {
            log_err("%s:%d: %s failed to set up sm allocation metadata: %d\n", "nx_mount", 1648, (v117[48] + 212), v84);
          }

          if (v104)
          {
            obj_checksum_set(v117, v85, v86);
            v87 = dev_write(v117[48]);
            if (v87)
            {
              v14 = v87;
              log_err("%s:%d: %s failed to write superblock to block 0: %d\n");
              goto LABEL_144;
            }
          }

          v88 = v117;
          v89 = v117[47];
          v90 = *(v89 + 1384);
          v91 = apfs_source_version_val_full();
          if (v90 < v91)
          {
            *(v89 + 1384) = v91;
          }

          nx_mount_initiate_free_space_trims(v88);
          nx_reaper_check_for_work(v117);
        }

        _apfs_free(v13, v41);
        v92 = v117;
        if (*(v117[47] + 1248))
        {
          if ((*(v117 + 627) & 1) == 0)
          {
            v14 = nx_unblock_physical_range(v117);
            v92 = v117;
            if (v14)
            {
              log_err("%s:%d: %s nx_unblock_physical_range failed with error: %d\n", "nx_mount", 1706, (v117[48] + 212), v14);
              v13 = 0;
              goto LABEL_144;
            }
          }
        }

        *v93 = v92;
        if (v116)
        {
          _apfs_free(v116, v116[9]);
        }

        return 0;
      }

      obj_cache_reset(v73[49], 0);
      v73[51] = 0;
      v73[92] = 0;
      *(v73 + 53) = 0u;
      *(v73 + 55) = 0u;
      *(v73 + 57) = 0u;
      memcpy(v117[47], v49, v12);
      v42 = 1;
    }
  }

  log_info("%s:%d: %s container cleanly-unmounted flag set.\n", "nx_mount", 1341, (v117[48] + 212));
  v43 = v117;
  v44 = *(v117 + 633);
LABEL_74:
  v46 = *(v35 + 136) + *(v35 + 140) - 1;
  v47 = *(v35 + 104) & 0x7FFFFFFF;
  v48 = v46 % v47;
  v112 = v46 % v47;
  v113 = *(v35 + 16);
  if ((v42 & v44 & 1) == 0)
  {
    goto LABEL_75;
  }

  log_info("%s:%d: %s Attempting to load from temporary checkpoint (start xid %lld).\n", "nx_mount", 1346, (v43[48] + 212), *(v35 + 1408));
  v53 = v48;
  v54 = __srca;
  if (!*(v35 + 1408))
  {
    log_err("%s:%d: %s No temporary checkpoint start xid!  Aborting!\n", "nx_mount", 1348, (v117[48] + 212));
    v14 = 100;
    goto LABEL_144;
  }

LABEL_85:
  v55 = *(v35 + 104) & 0x7FFFFFFF;
  if (v53 >= v55)
  {
    log_err("%s:%d: %s checkpoint descriptor index %d out of range [0...%d]\n", "nx_mount", 1366, (v117[48] + 212), v53, v55 - 1);
    v75 = v117;
LABEL_143:
    v14 = nx_corruption_detected_int(v75);
    goto LABEL_144;
  }

  v99 = v53;
  v56 = nx_checkpoint_desc_block_address(v117, v53, &v111);
  if (v56)
  {
    v14 = v56;
LABEL_136:
    log_err("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
    goto LABEL_10;
  }

  v57 = dev_read(v117[48]);
  v14 = v57;
  if (*(v117 + 633) == 1)
  {
    if (!v57 && v12)
    {
      v60 = 0;
      while (!*(v13 + v60))
      {
        if (v12 == ++v60)
        {
          v14 = 0;
          goto LABEL_95;
        }
      }

      log_err("%s:%d: %s Attempt to load temporary checkpoint found unexpected data (0x%02x @ %d), checkpoint descriptor block %d @ %lld\n", "nx_mount", 1382, (v117[48] + 212), *(v13 + v60), v60, v99, v111);
      v14 = 22;
    }

LABEL_95:
    memcpy(v13, v54, v12);
    obj_checksum_set_phys(v117, v13, v12, v61, v62);
  }

  if (v14)
  {
    goto LABEL_136;
  }

  if (*(v13 + 7) || *(v13 + 6) != -2147483647)
  {
    log_err("%s:%d: %s checkpoint descriptor block %d is not a valid superblock\n", "nx_mount", 1399, (v117[48] + 212), v99);
    v75 = v117;
    goto LABEL_143;
  }

  v63 = nx_check_superblock(v13, *(v35 + 36), 1, v58, v59);
  if (v63)
  {
    v14 = v63;
    log_err("%s:%d: %s checkpoint descriptor block %d superblock failed sanity checks: %d\n");
    goto LABEL_144;
  }

  v64 = *(v35 + 64);
  if ((v64 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    log_err("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_mount", 1409, (v117[48] + 212), v64 & 0xFFFFFFFFFFFFFFFDLL);
    if ((v64 & 0x100) != 0)
    {
      log_err("%s:%d: %s Fusion is not supported anymore\n", "nx_mount", 1411, (v117[48] + 212));
    }

    v14 = 75;
    goto LABEL_10;
  }

  v49 = __srca;
  if (!nx_superblock_agrees_with_main_superblock(__srca, v13, "checkpoint"))
  {
    log_err("%s:%d: %s checkpoint descriptor block %d doesn't agree with main superblock\n", "nx_mount", 1418, (v117[48] + 212), v99);
    v14 = 22;
    goto LABEL_144;
  }

  v65 = (*(v13 + 34) + *(v13 + 35) - 1) % (*(v35 + 104) & 0x7FFFFFFFu);
  if (v99 != v65)
  {
    log_err("%s:%d: %s checkpoint superblock index %d doesn't match index block was found at: %d\n", "nx_mount", 1425, (v117[48] + 212), v65, v99);
    v75 = v117;
    goto LABEL_143;
  }

  v66 = nx_metadata_range_add(v117, 0, 1, 0, 1);
  if (v66 || (v66 = nx_metadata_range_add(v117, v13[14], v13[13] & 0x7FFFFFFF, *(v13 + 26) < 0, 0), v66) || (v66 = nx_metadata_range_add(v117, v13[15], *(v13 + 27) & 0x7FFFFFFF, *(v13 + 27) < 0, 0), v66))
  {
    v14 = v66;
    log_err("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n", "nx_mount", 1442, (v117[48] + 212), v13[2], *(v13 + 34), v66);
    goto LABEL_10;
  }

  v67 = nx_checkpoint_validate_checkpoint_map_blocks(v117, v13);
  if (v67)
  {
    v14 = v67;
    log_err("%s:%d: %s validation failed for checkpoint at index %d: %d\n");
    goto LABEL_144;
  }

  v114 = v99;
  v102 = v13[2];
  log_debug("%s:%d: %s checkpoint: largest xid %lld, given checkpoint xid %lld @ %d\n", "nx_mount", 1453, (v117[48] + 212), v113, v102, v99);
  v68 = v117;
  if (*(__srca + 2) != v13[2])
  {
    log_err("%s:%d: %s loading older checkpoint, checkpoint xid %lld, superblock xid %lld\n", "nx_mount", 1455, (v117[48] + 212), v13[2], *(v35 + 16));
    v68 = v117;
    v104 = 1;
    *(v117 + 643) = 1;
  }

  data = nx_checkpoint_load_data(v68, v13, 0, 0);
  if (data)
  {
    v14 = data;
    log_err("%s:%d: %s data for checkpoint at index %d couldn't be loaded: %d\n");
    goto LABEL_144;
  }

  memcpy(v117[47], v13, v12);
  v70 = v117;
  *(v117[49] + 400) = *(v117[47] + 88);
  v14 = nx_checkpoint_traverse(v70, 0, 2);
  if (v14)
  {
    log_err("%s:%d: %s failed to fix up checkpoint data: %d\n");
    goto LABEL_144;
  }

  v14 = spaceman_get(v117, &v115);
  if (v14)
  {
    log_err("%s:%d: %s checkpoint xid %lld failed to get spaceman: %d\n");
    goto LABEL_144;
  }

  v71 = nx_metadata_range_add(v117, *(v115[47] + 168), *(v115[47] + 164) & 0x7FFFFFFF, *(v115[47] + 164) < 0, 0);
  if (!v71)
  {
    v14 = nx_metadata_range_add(v117, *(v115[47] + 176), *(v115[47] + 152), *(v115[47] + 152) < 0, 0);
    obj_release(v115);
    if (v14)
    {
      goto LABEL_150;
    }

    v52 = v117;
    goto LABEL_115;
  }

  v14 = v71;
  obj_release(v115);
LABEL_150:
  log_err("%s:%d: %s checkpoint xid %lld failed to load spaceman metadata ranges (overlap?): %d\n");
LABEL_10:
  if (v116)
  {
    _apfs_free(v116, v116[9]);
  }

  if (v13)
  {
    _apfs_free(v13, v12);
  }

  v15 = v117;
  if (v117)
  {
    *(v117 + 627) = 1;
    nx_unmount_internal(v15, 0);
  }

  if (v118)
  {
    obj_cache_destroy(v118);
  }

  if (v119)
  {
    dev_close(v119);
  }

  return v14;
}

void nx_mount_initiate_free_space_trims(void *a1)
{
  v2 = spaceman_scan_free_blocks(a1, 0, 1u, 1);
  if (v2)
  {
    log_err("%s:%d: %s *** trim'ing free blocks returned: %d\n", "nx_mount_initiate_free_space_trims", 856, (a1[48] + 212), v2);
  }

  spaceman_free_extent_cache_print_stats(a1);
}

void nx_unmount_internal(uint64_t a1, _DWORD *a2)
{
  nx_reaper_shut_down(a1);
  v4 = *(a1 + 400);
  if (v4)
  {
    if ((*(a1 + 627) & 1) == 0)
    {
      tx_unmount(a1);
      v4 = *(a1 + 400);
    }

    tx_mgr_destroy(a1, v4, *(*(a1 + 376) + 36));
  }

  if (a2)
  {
    *a2 = *(a1 + 660);
  }

  v5 = *(a1 + 408);
  if (v5)
  {
    obj_release(v5);
    *(a1 + 408) = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v7 = *(a1 + 432 + i);
    if (v7)
    {
      obj_release(v7);
    }
  }

  v8 = *(a1 + 464);
  if (v8)
  {
    btree_delete(v8, 0, 0);
    obj_release(*(a1 + 464));
  }

  v9 = *(a1 + 1088);
  if (v9)
  {
    btree_delete(v9, 0, 0);
    obj_release(*(a1 + 1088));
    *(a1 + 1088) = 0;
  }

  v10 = *(a1 + 384);
  if (v10)
  {
    dev_close(v10);
    *(a1 + 384) = 0;
  }

  v11 = *(a1 + 392);
  if (v11)
  {

    obj_cache_destroy(v11);
  }
}

uint64_t media_dev_set_block_size(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t media_dev_read(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 6;
  }

  if (!*v3)
  {
    return 6;
  }

  v4 = v3[1];
  if (!v4)
  {
    return 6;
  }

  v5 = *(a1 + 112);
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6 || v7 < a3)
  {
    return 6;
  }

  if (v4())
  {
    return 5;
  }

  return 0;
}

uint64_t media_dev_close(void **a1, uint64_t a2, uint64_t a3)
{
  _apfs_free(a1[2], 16);
  a1[2] = 0;
  _apfs_free(a1, 216);
  return 0;
}

__CFDictionary *APFSContainerGetFreespaceInfo(const __CFString *a1, unsigned int (*a2)(const __CFString *, uint64_t, void **))
{
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  parse_nx_mount_options(0, &v25);
  LODWORD(v25) = v25 | 1;
  LOWORD(v26) = v26 | 1;
  apfs_log_level = 3;
  if (a2)
  {
    if (!a1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_5();
      }

      goto LABEL_12;
    }

    *value = 0u;
    v33 = 0u;
    if (a2(a1, 2, value))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_1();
      }

LABEL_12:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_6();
      }

      goto LABEL_14;
    }

    v14 = _apfs_calloc_typed(1uLL, 0x10uLL, 0x80040803F642BuLL);
    if (!v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_4();
      }

      goto LABEL_12;
    }

    v15 = v14;
    v16 = _apfs_calloc_typed(1uLL, 0xD8uLL, 0x10E004000813811uLL);
    if (!v16)
    {
      _apfs_free(v15, 16);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_3();
      }

      goto LABEL_12;
    }

    *v16 = -1;
    v16[25] = 0;
    *v15 = a1;
    v15[1] = a2;
    *(v16 + 2) = v15;
    *(v16 + 9) = apfs_userio_media;
    v17 = value[0];
    v16[20] = value[0];
    v16[21] = v17;
    *(v16 + 14) = value[1];
    *(v16 + 11) = v33;
    v16[24] = DWORD2(v33) == 0;
    LOWORD(v26) = v26 | 2;
    if (nx_mount(v16, &v25, &v28))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_2();
      }

      goto LABEL_14;
    }
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (!CStringPtr)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_10();
      }

      goto LABEL_14;
    }

    if (nx_mount(CStringPtr, &v25, &v28))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_7();
      }

      goto LABEL_14;
    }
  }

  if (spaceman_info(v28, &v31, &v30, 0, 0, 0, 0))
  {
LABEL_14:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    Mutable = 0;
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v18 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_62:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  if (spaceman_iterate_free_extents(v28, freeExtentInfoCallback, Mutable))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      APFSContainerGetFreespaceInfo_cold_8();
    }

    goto LABEL_62;
  }

  v37.length = CFArrayGetCount(Mutable);
  v37.location = 0;
  CFArraySortValues(Mutable, v37, freeExtentInfoComparator, 0);
  v19 = v30;
  Count = CFArrayGetCount(Mutable);
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, Count - 1);
    if (!ValueAtIndex || (v22 = ValueAtIndex, value[0] = 0, valuePtr = 0, v36 = 0, v34 = 0, !CFDictionaryGetValueIfPresent(ValueAtIndex, @"com.apple.apfs.container.extaddr", value)) || !CFDictionaryGetValueIfPresent(v22, @"com.apple.apfs.container.extlen", &v36) || !CFNumberGetValue(value[0], kCFNumberLongLongType, &valuePtr) || !CFNumberGetValue(v36, kCFNumberLongLongType, &v34))
    {
      v29 = -1;
LABEL_60:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerGetFreespaceInfo_cold_9();
      }

      goto LABEL_62;
    }

    if ((v19 <= valuePtr || v34 >= v19 - valuePtr) && valuePtr < v19)
    {
      v19 = valuePtr;
    }
  }

  v29 = v19;
  if (v19 < 0)
  {
    goto LABEL_60;
  }

  v9 = CFNumberCreate(v18, kCFNumberIntType, &v31);
  v10 = CFNumberCreate(v18, kCFNumberLongLongType, &v30);
  v23 = CFNumberCreate(v18, kCFNumberLongLongType, &v29);
  v8 = v23;
  v12 = 0;
  if (v9)
  {
    if (v10)
    {
      if (v23)
      {
        v24 = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v12 = v24;
        if (v24)
        {
          CFDictionaryAddValue(v24, @"com.apple.apfs.container.fstype", @"APFS");
          CFDictionaryAddValue(v12, @"com.apple.apfs.container.blksize", v9);
          CFDictionaryAddValue(v12, @"com.apple.apfs.container.size", v10);
          CFDictionaryAddValue(v12, @"com.apple.apfs.container.tidemark", v8);
          CFDictionaryAddValue(v12, @"com.apple.apfs.container.extlist", Mutable);
        }
      }
    }
  }

LABEL_16:
  if (v28)
  {
    nx_unmount(v28, v5, v6, v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  apfs_log_level = 5;
  return v12;
}

uint64_t freeExtentInfoCallback(__CFArray *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  valuePtr = a2;
  if (!a1)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v6 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
  v7 = CFNumberCreate(v4, kCFNumberLongLongType, &v12);
  v8 = v7;
  if (Mutable)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    CFDictionaryAddValue(Mutable, @"com.apple.apfs.container.extaddr", v6);
    CFDictionaryAddValue(Mutable, @"com.apple.apfs.container.extlen", v8);
    CFArrayAppendValue(a1, Mutable);
  }

  CFRelease(v6);
  if (v8)
  {
LABEL_12:
    CFRelease(v8);
  }

LABEL_13:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t freeExtentInfoComparator(const __CFDictionary *a1, const __CFDictionary *a2)
{
  number = 0;
  value = 0;
  v4 = 0;
  valuePtr = 0;
  if (!CFDictionaryGetValueIfPresent(a1, @"com.apple.apfs.container.extaddr", &value) || !CFDictionaryGetValueIfPresent(a2, @"com.apple.apfs.container.extaddr", &number) || !CFNumberGetValue(value, kCFNumberLongLongType, &valuePtr) || !CFNumberGetValue(number, kCFNumberLongLongType, &v4))
  {
    return 0;
  }

  if (valuePtr >= v4)
  {
    return valuePtr != v4;
  }

  return -1;
}

uint64_t APFSContainerGetMinimalSize(char *a1, void *a2)
{
  v9 = 0;
  bzero(outputStruct, 0x978uLL);
  outputStructCnt = 8;
  v4 = apfs_container_iouc(a1, 0, &v9, 0, 1);
  if (!v4)
  {
    v5 = IOConnectCallStructMethod(v9, 0x22u, 0, 0, outputStruct, &outputStructCnt);
    v4 = v5;
    if (a2 && !v5)
    {
      *a2 = outputStruct[0];
    }

    IOServiceClose(v9);
  }

  return v4;
}

uint64_t APFSContainerResizeEx(char *a1, uint64_t a2, void *a3)
{
  v12 = 0;
  bzero(v11, 0x970uLL);
  outputStructCnt = 16;
  v6 = apfs_container_iouc(a1, 0, &v12, 0, 1);
  if (!v6)
  {
    outputStruct = a2;
    v7 = IOConnectCallStructMethod(v12, 2u, &outputStruct, 8uLL, &outputStruct, &outputStructCnt);
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = outputStruct;
    }

    if (a3)
    {
      *a3 = v11[0];
    }

    IOServiceClose(v12);
  }

  return v6;
}

uint64_t APFSContainerResizePrepare(char *a1, uint64_t a2)
{
  v8 = 0;
  bzero(&v7, 0x970uLL);
  v4 = apfs_container_iouc(a1, 0, &v8, 0, 1);
  if (!v4)
  {
    v6 = a2;
    v4 = IOConnectCallStructMethod(v8, 0x4Fu, &v6, 8uLL, 0, 0);
    IOServiceClose(v8);
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerResizePrepare_cold_1();
      }
    }
  }

  return v4;
}

uint64_t APFSContainerDefrag(char *a1)
{
  connection = 0;
  v3 = 0;
  v1 = apfs_container_iouc(a1, 0, &connection, 0, 1);
  if (!v1)
  {
    v1 = IOConnectCallStructMethod(connection, 3u, 0, 0, 0, &v3);
    IOServiceClose(connection);
  }

  return v1;
}

uint64_t APFSContainerGetResizeProgress(char *a1, _DWORD *a2)
{
  v9 = 0;
  bzero(outputStruct, 0x978uLL);
  outputStructCnt = 4;
  v4 = apfs_container_iouc(a1, 0, &v9, 0, 1);
  if (!v4)
  {
    v5 = IOConnectCallStructMethod(v9, 4u, 0, 0, outputStruct, &outputStructCnt);
    v4 = v5;
    if (a2 && !v5)
    {
      *a2 = outputStruct[0];
    }

    IOServiceClose(v9);
  }

  return v4;
}

uint64_t APFSCancelContainerResize(char *a1)
{
  connection = 0;
  v3 = 0;
  v1 = apfs_container_iouc(a1, 0, &connection, 0, 1);
  if (!v1)
  {
    v1 = IOConnectCallStructMethod(connection, 0x21u, 0, 0, 0, &v3);
    IOServiceClose(connection);
  }

  return v1;
}

uint64_t APFSContainerWipeVolumeKeys(char *a1)
{
  connection = 0;
  v3 = 0;
  v1 = apfs_container_iouc(a1, 0, &connection, 0, 0);
  if (!v1)
  {
    v1 = IOConnectCallStructMethod(connection, 5u, 0, 0, 0, &v3);
    IOServiceClose(connection);
  }

  return v1;
}

uint64_t APFSContainerGetSpaceInfo(char *a1, void *a2, void *a3)
{
  v17 = 0;
  bzero(outputStruct, 0x978uLL);
  outputStructCnt = 2424;
  v6 = apfs_container_iouc(a1, 0, &v17, 0, 0);
  if (!v6)
  {
    v6 = IOConnectCallStructMethod(v17, 6u, 0, 0, outputStruct, &outputStructCnt);
    if (!v6)
    {
      v7 = v11;
      if (a2)
      {
        *a2 = (v13 + v15) * v11;
      }

      if (a3)
      {
        *a3 = (v14 + v12 + v16) * v7;
      }
    }

    IOServiceClose(v17);
  }

  return v6;
}

uint64_t APFSContainerGetMaxVolumeCount(char *a1, void *a2)
{
  if (!a2)
  {
    return 49174;
  }

  theDict = 0;
  v4 = APFSExtendedSpaceInfo(a1, &theDict);
  if (!v4)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = device_basename(a1);
    v7 = CFStringCreateWithCString(v5, v6, 0x8000100u);
    v8 = theDict;
    if (v7)
    {
      v9 = v7;
      Value = CFDictionaryGetValue(theDict, v7);
      if (Value && (v11 = CFDictionaryGetValue(Value, @"Max volume count")) != 0)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        v4 = 49154;
        if (v13 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(v12, kCFNumberSInt32Type, a2))
          {
            v4 = 0;
          }

          else
          {
            v4 = 49154;
          }
        }
      }

      else
      {
        v4 = 49154;
      }

      CFRelease(v9);
    }

    else
    {
      v4 = 49154;
    }

    CFRelease(v8);
  }

  return v4;
}

uint64_t APFSExtendedSpaceInfo(char *a1, void *a2)
{
  v15 = 0;
  outputStructCnt = -3;
  outputStruct = 0;
  if (device_is_volume(a1))
  {
    bzero(v12, 0x978uLL);
    v4 = apfs_container_iouc(a1, v12, &v15, 0, 0);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = v15;
    v6 = v12;
    v7 = 65;
    v8 = 4;
  }

  else
  {
    v4 = apfs_container_iouc(a1, 0, &v15, 0, 0);
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = v15;
    v7 = 8;
    v6 = 0;
    v8 = 0;
  }

  v4 = IOConnectCallStructMethod(v5, v7, v6, v8, &outputStruct, &outputStructCnt);
LABEL_7:
  v9 = v15;
  if (v15)
  {
    if (!v4)
    {
      v10 = IOCFUnserialize(outputStruct, *MEMORY[0x277CBECE8], 0, 0);
      *a2 = v10;
      if (v10)
      {
        v4 = 0;
      }

      else
      {
        v4 = 3758097097;
      }

      MEMORY[0x23EEDBE10](*MEMORY[0x277D85F48], outputStruct, outputStructCnt);
      v9 = v15;
    }

    IOServiceClose(v9);
  }

  return v4;
}

uint64_t APFSVolumeCreate(char *a1, const __CFDictionary *a2)
{
  outputStruct = 0;
  bzero(&inputStruct, 0x978uLL);
  parse_apfs_format_options(0, &inputStruct);
  Value = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.reserve_size");
  v4 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.quota_size");
  v5 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.name");
  v6 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.role");
  v7 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.case_sensitive");
  v8 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.encrypted");
  v9 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.encrypted.acm");
  v10 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.cprotect");
  v11 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.create_synchronous");
  cf = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.volume_uuid");
  valuePtr[0] = 0;
  v46 = 0;
  v44 = 0;
  if (Value && CFNumberGetValue(Value, kCFNumberSInt64Type, valuePtr))
  {
    v37 = valuePtr[0];
  }

  if (v4 && CFNumberGetValue(v4, kCFNumberSInt64Type, valuePtr))
  {
    v38 = valuePtr[0];
  }

  if (v5 && !CFStringGetCString(v5, v42, 256, 0x8000100u))
  {
    return 49244;
  }

  if (v6 && CFNumberGetValue(v6, kCFNumberIntType, &v46))
  {
    v41 = v46;
  }

  v12 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.fs_index");
  if (v12 && CFNumberGetValue(v12, kCFNumberSInt32Type, &v46))
  {
    if (v46 < 0)
    {
      return 49186;
    }

    v39 = v46;
  }

  if (v7)
  {
    if (CFBooleanGetValue(v7))
    {
      v13 = 8;
    }

    else
    {
      v13 = 4;
    }

    v40 = v40 & 0xFFF3 | v13;
  }

  if (v8 && v9)
  {
    return 49174;
  }

  if (v10)
  {
    if (!(v8 | v9))
    {
      return 49174;
    }

    v40 |= 0x200u;
  }

  if (v9)
  {
    return 49174;
  }

  if (v8)
  {
    v15 = CFGetTypeID(v8);
    if (v15 != CFBooleanGetTypeID())
    {
      return 49231;
    }

    v16 = CFBooleanGetValue(v8);
    v40 = v40 & 0xFFFE | v16 & 1;
  }

  if (v11)
  {
    v17 = CFGetTypeID(v11);
    if (v17 != CFBooleanGetTypeID())
    {
      return 49174;
    }

    if (CFBooleanGetValue(v11))
    {
      v44 |= 0x10u;
    }
  }

  if (cf)
  {
    v18 = CFGetTypeID(cf);
    if (v18 == CFUUIDGetTypeID())
    {
      inputStruct = CFUUIDGetUUIDBytes(cf);
      goto LABEL_38;
    }

    return 49244;
  }

LABEL_38:
  v19 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.skip_eapfs");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 != CFBooleanGetTypeID())
    {
      return 49174;
    }

    if (CFBooleanGetValue(v20))
    {
      v44 |= 0x200u;
    }
  }

  v22 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.group_sibling_fsindex");
  if (v22 && CFNumberGetValue(v22, kCFNumberSInt32Type, &v46))
  {
    if (v46 >= 1)
    {
      v43 = v46;
      goto LABEL_46;
    }

    return 49186;
  }

LABEL_46:
  v23 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.allow_unwritten");
  if (v23)
  {
    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 != CFBooleanGetTypeID())
    {
      return 49174;
    }

    v26 = CFBooleanGetValue(v24);
    v40 = v40 & 0xFBFF | ((v26 & 1) << 10);
  }

  v27 = CFDictionaryGetValue(a2, @"com.apple.apfs.volume.noautomount_at_create");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 != CFBooleanGetTypeID())
    {
      return 49174;
    }

    if (CFBooleanGetValue(v28))
    {
      v44 |= 8u;
    }
  }

  v14 = apfs_container_iouc(a1, 0, &outputStruct + 1, 0, 0);
  if (v14)
  {
    return v14;
  }

  if (v41 <= 0xFFu)
  {
    if ((v41 > 0x20u || ((1 << v41) & 0x100010110) == 0) && v41 != 192)
    {
      goto LABEL_77;
    }

LABEL_57:
    if (v40)
    {
      return 49174;
    }

    v30 = 1;
    goto LABEL_59;
  }

  if (v41 <= 0x27Fu)
  {
    if (v41 != 256 && v41 != 320)
    {
      goto LABEL_77;
    }

    goto LABEL_57;
  }

  switch(v41)
  {
    case 0x280u:
      goto LABEL_57;
    case 0x300u:
      v30 = 1024;
LABEL_59:
      v44 = v30;
      goto LABEL_60;
    case 0x2C0u:
      goto LABEL_57;
  }

LABEL_77:
  if (v43 >= 1)
  {
    if (v41 != 64 && v41 != 1)
    {
      return 49174;
    }

    v30 = v44 | 2;
    goto LABEL_59;
  }

LABEL_60:
  valuePtr[0] = 4;
  v14 = IOConnectCallStructMethod(HIDWORD(outputStruct), 0, &inputStruct, 0x1F8uLL, &outputStruct, valuePtr);
  if (!v14)
  {
    v31 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &outputStruct);
    if (v31)
    {
      v32 = v31;
      CFDictionarySetValue(a2, @"com.apple.apfs.volume.fs_index", v31);
      CFRelease(v32);
    }
  }

  IOServiceClose(HIDWORD(outputStruct));
  return v14;
}

uint64_t _APFSVolumeOperation(char *a1, uint32_t a2, int a3, mach_timespec_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  outputStructCnt = 0;
  service = 0;
  if (!a1 || (a2 - 27 > 0x28 || ((1 << (a2 - 27)) & 0x18A00000001) == 0) && a2 != 1)
  {
    return 49174;
  }

  v14 = 0;
  bzero(inputStruct, 0x978uLL);
  if (a3)
  {
    p_service = &service;
  }

  else
  {
    p_service = 0;
  }

  v9 = apfs_container_iouc(a1, inputStruct, &v14, p_service, 0);
  if (!v9)
  {
    v9 = IOConnectCallStructMethod(v14, a2, inputStruct, 4uLL, 0, &outputStructCnt);
    if (service)
    {
      if (v9 && IOServiceWaitQuiet(service, a4) == -536870186 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = "_APFSVolumeOperation";
        v17 = 1024;
        v18 = 1032;
        v19 = 1024;
        v20 = a2;
        v21 = 2080;
        v22 = a1;
        _os_log_impl(&dword_23D23F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d: timed out waiting for container quiet after op %d on volume %s\n", buf, 0x22u);
      }

      IOObjectRelease(service);
    }

    IOServiceClose(v14);
  }

  return v9;
}

uint64_t APFSVolumeUpdateBounds(char *a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  bzero(&inputStruct, 0x978uLL);
  outputStructCnt = 0;
  v6 = apfs_container_iouc(a1, &inputStruct, &v12, 0, 0);
  if (!v6)
  {
    v10 = a2;
    v11 = a3;
    v6 = IOConnectCallStructMethod(v12, 0x36u, &inputStruct, 0x18uLL, 0, &outputStructCnt);
    IOServiceClose(v12);
  }

  return v6;
}

uint64_t APFSVolumeGetSpaceInfo(char *a1, void *a2, void *a3)
{
  v10 = 0;
  bzero(outputStruct, 0x978uLL);
  outputStructCnt = 16;
  v6 = apfs_container_iouc(a1, outputStruct, &v10, 0, 0);
  if (!v6)
  {
    v6 = IOConnectCallStructMethod(v10, 7u, outputStruct, 4uLL, outputStruct, &outputStructCnt);
    if (!v6)
    {
      if (a2)
      {
        *a2 = outputStruct[0];
      }

      if (a3)
      {
        *a3 = outputStruct[1];
      }
    }

    IOServiceClose(v10);
  }

  return v6;
}

uint64_t APFSVolumeRoleFind(char *a1, int a2, __CFArray **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v18 = 0;
  memset(location, 0, sizeof(location));
  bzero(outputStruct, 0x978uLL);
  v16 = 2;
  *a3 = 0;
  if (!apfs_container_iouc(a1, 0, &v19 + 1, &v18, 0) || (v6 = apfs_container_iouc(a1, outputStruct, &v19 + 1, &v18, 0), !v6))
  {
    v6 = MEMORY[0x23EEDB610](v18, "IOService", &v19);
    if (!v6)
    {
      v7 = IOIteratorNext(v19);
      if (v7)
      {
        v8 = v7;
        v9 = *MEMORY[0x277CBECE8];
        do
        {
          if (IOObjectConformsTo(v8, "AppleAPFSVolume"))
          {
            if (!IORegistryEntryGetLocationInPlane(v8, "IOService", location))
            {
              outputStruct[0] = strtol(location, 0, 0) - 1;
              outputStruct[1] = 0;
              if (!IOConnectCallStructMethod(HIDWORD(v19), 9u, outputStruct, 8uLL, outputStruct, &v16) && LOWORD(outputStruct[0]) == a2)
              {
                CFProperty = IORegistryEntryCreateCFProperty(v8, @"BSD Name", v9, 0);
                if (CFProperty)
                {
                  v11 = CFProperty;
                  MutableCopy = CFStringCreateMutableCopy(v9, 0, CFProperty);
                  if (MutableCopy)
                  {
                    v13 = MutableCopy;
                    CFStringInsert(MutableCopy, 0, @"/dev/");
                    Mutable = *a3;
                    if (*a3 || (Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]), (*a3 = Mutable) != 0))
                    {
                      CFArrayAppendValue(Mutable, v13);
                    }

                    CFRelease(v13);
                  }

                  CFRelease(v11);
                }
              }
            }
          }

          IOObjectRelease(v8);
          v8 = IOIteratorNext(v19);
        }

        while (v8);
      }

      IOObjectRelease(v19);
      if (*a3)
      {
        v6 = 0;
      }

      else
      {
        v6 = 49245;
      }
    }

    IOObjectRelease(v18);
    IOServiceClose(HIDWORD(v19));
  }

  return v6;
}

uint64_t APFSVolumePayloadGet(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v18 = *MEMORY[0x277D85DE8];
  v13 = 2052;
  if (!v4)
  {
    return 49174;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  connection = 0;
  bzero(&outputStruct, 0x1178uLL);
  v9 = apfs_container_iouc(v8, &outputStruct, &connection, 0, 0);
  if (!v9)
  {
    v16[0] = v7;
    v16[1] = 1;
    v17 = 2048;
    v9 = IOConnectCallStructMethod(connection, 0xAu, &outputStruct, 0xCuLL, &outputStruct, &v13);
    if (!v9)
    {
      v10 = outputStruct;
      if (v6)
      {
        if (*v5 >= outputStruct)
        {
          v11 = outputStruct;
        }

        else
        {
          v11 = *v5;
        }

        memcpy(v6, v16, v11);
      }

      *v5 = v10;
    }

    IOServiceClose(connection);
  }

  return v9;
}

uint64_t APFSVolumePayloadSet(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v16 = *MEMORY[0x277D85DE8];
  v10 = 4;
  if (v7)
  {
    if (v2 <= 0x800)
    {
      goto LABEL_3;
    }

    return 49174;
  }

  if (v2)
  {
    return 49174;
  }

LABEL_3:
  connection = 0;
  bzero(&outputStruct, 0x1178uLL);
  v8 = apfs_container_iouc(v6, &outputStruct, &connection, 0, 0);
  if (!v8)
  {
    v13 = v5;
    v14 = 2;
    v15 = v3;
    __memcpy_chk();
    v8 = IOConnectCallStructMethod(connection, 0xAu, &outputStruct, v3 + 12, &outputStruct, &v10);
    IOServiceClose(connection);
  }

  return v8;
}

uint64_t APFSVolumeGetVEKState(char *a1, _BYTE *a2, _BYTE *a3)
{
  result = 22;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    bzero(outputStruct, 0x978uLL);
    outputStructCnt = 2;
    v7 = apfs_container_iouc(a1, outputStruct, &v10, 0, 0);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = IOConnectCallStructMethod(v10, 0x13u, outputStruct, 4uLL, outputStruct, &outputStructCnt);
      IOServiceClose(v10);
      if (!v8)
      {
        *a2 = outputStruct[0];
        *a3 = BYTE1(outputStruct[0]);
      }
    }

    return rc_to_errno(v8);
  }

  return result;
}

uint64_t APFSVolumeGetSiDPState(char *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  result = 22;
  if (a1 && a2 && a3 && a4)
  {
    v12 = 0;
    bzero(outputStruct, 0x978uLL);
    outputStructCnt = 3;
    v9 = apfs_container_iouc(a1, outputStruct, &v12, 0, 0);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = IOConnectCallStructMethod(v12, 0x38u, outputStruct, 4uLL, outputStruct, &outputStructCnt);
      IOServiceClose(v12);
      if (!v10)
      {
        *a2 = outputStruct[0];
        *a3 = BYTE1(outputStruct[0]);
        *a4 = BYTE2(outputStruct[0]);
      }
    }

    return rc_to_errno(v10);
  }

  return result;
}

uint64_t APFSVolumeGetWVEK(char *a1, CFDataRef *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 520;
  result = 22;
  if (a1 && a2)
  {
    connection = 0;
    bzero(&outputStruct, 0xB78uLL);
    v5 = apfs_container_iouc(a1, &outputStruct, &connection, 0, 0);
    if (v5)
    {
      LOWORD(v6) = v5;
    }

    else
    {
      v6 = IOConnectCallStructMethod(connection, 0x39u, &outputStruct, 4uLL, &outputStruct, &v7);
      IOServiceClose(connection);
      if (!v6)
      {
        *a2 = CFDataCreate(*MEMORY[0x277CBECE8], v10, outputStruct);
      }
    }

    return v6 & 0x3FFF;
  }

  return result;
}

uint64_t APFSVolumeEnableUserProtectionWithOptions(char *a1, unsigned __int8 *uu, const __CFData *a3, uint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if (a3 && !is_null)
  {
    v16 = 0;
    bzero(&inputStruct, 0x978uLL);
    outputStructCnt = 0;
    v10 = apfs_container_iouc(a1, &inputStruct, &v16, 0, 0);
    if (!v10)
    {
      uuid_copy(v12, uu);
      BytePtr = CFDataGetBytePtr(a3);
      Length = CFDataGetLength(a3);
      v15 = a4;
      v10 = IOConnectCallStructMethod(v16, 0x14u, &inputStruct, 0x30uLL, 0, &outputStructCnt);
      IOServiceClose(v16);
    }

    return rc_to_errno(v10);
  }

  return result;
}

uint64_t _APFSVolumeGetUnlockRecordOrHint(char *a1, unsigned __int8 *uu, int a3, CFDataRef *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 520;
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if ((a3 - 5) >= 0xFFFFFFFE && !is_null)
  {
    connection = 0;
    bzero(&outputStruct, 0xB78uLL);
    v10 = apfs_container_iouc(a1, &outputStruct, &connection, 0, 0);
    if (!v10)
    {
      uuid_copy(&outputStruct + 4, uu);
      v16 = a3;
      v11 = IOConnectCallStructMethod(connection, 0xDu, &outputStruct, 0x18uLL, &outputStruct, &v12);
      v10 = v11;
      if (a4)
      {
        if (!v11)
        {
          *a4 = CFDataCreate(*MEMORY[0x277CBECE8], v15, outputStruct);
        }
      }

      IOServiceClose(connection);
    }

    return rc_to_errno(v10);
  }

  return result;
}

uint64_t APFSVolumeListUUIDsOfUnlockRecords(char *a1, __CFArray **a2)
{
  TypeID = CFStringGetTypeID();

  return _APFSVolumeGetUUIDsOfUnlockRecords(a1, a2, TypeID);
}

uint64_t _APFSVolumeGetUUIDsOfUnlockRecords(char *a1, __CFArray **a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  result = 22;
  if (a1 && a2)
  {
    if (CFStringGetTypeID() == a3 || CFUUIDGetTypeID() == a3)
    {
      v20 = 0;
      bzero(outputStruct, 0x978uLL);
      v18 = 0;
      *a2 = 0;
      v7 = apfs_container_iouc(a1, &v18, &v20, 0, 0);
      if (v7)
      {
        return rc_to_errno(v7);
      }

      LODWORD(outputStruct[0]) = v18;
      v17 = 8;
      v7 = IOConnectCallStructMethod(v20, 0x37u, outputStruct, 4uLL, outputStruct, &v17);
      if (v7)
      {
LABEL_7:
        IOServiceClose(v20);
        return rc_to_errno(v7);
      }

      if (outputStruct[0])
      {
        v8 = (16 * outputStruct[0]) | 8;
        v9 = _apfs_malloc_typed(v8, 0x3CE2C6F3uLL);
        if (!v9)
        {
          v7 = 12;
          goto LABEL_7;
        }

        v10 = v9;
        *v9 = v18;
        *(v9 + 1) = outputStruct[0];
        v17 = (16 * outputStruct[0]) | 8;
        v7 = IOConnectCallStructMethod(v20, 0xEu, v10, 8uLL, v10, &v17);
        if (!v7)
        {
          v7 = *v10;
          v11 = *MEMORY[0x277CBECE8];
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *v10, MEMORY[0x277CBF128]);
          *a2 = Mutable;
          if (!Mutable)
          {
LABEL_28:
            v7 = 12;
            goto LABEL_29;
          }

          if (v7)
          {
            v13 = (v10 + 1);
            while (1)
            {
              memset(out, 0, 37);
              if (CFStringGetTypeID() == a3)
              {
                uuid_unparse(&v13->byte0, out);
                v14 = CFStringCreateWithCString(v11, out, 0x8000100u);
              }

              else
              {
                v14 = CFUUIDCreateFromUUIDBytes(v11, *v13);
              }

              v15 = v14;
              v16 = *a2;
              if (!v15)
              {
                break;
              }

              CFArrayAppendValue(v16, v15);
              CFRelease(v15);
              ++v13;
              if (!--v7)
              {
                goto LABEL_29;
              }
            }

            CFRelease(v16);
            *a2 = 0;
            goto LABEL_28;
          }
        }

LABEL_29:
        _apfs_free(v10, v8);
        goto LABEL_7;
      }

      *a2 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      IOServiceClose(v20);
      if (*a2)
      {
        return 0;
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t APFSVolumeListCFUUIDsOfUnlockRecords(char *a1, __CFArray **a2)
{
  v4 = CFUUIDGetTypeID();

  return _APFSVolumeGetUUIDsOfUnlockRecords(a1, a2, v4);
}

uint64_t _APFSVolumeUnlockVerifyUnlockRecord(char *a1, unsigned __int8 *uu, const void *a3, unsigned __int8 *a4, uint64_t a5, char a6)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  v12 = a4 == 0;
  is_null = uuid_is_null(uu);
  result = 22;
  if (!a3 || is_null == v12)
  {
    return result;
  }

  v15 = CFGetTypeID(a3);
  if (v15 != CFDataGetTypeID())
  {
    return 22;
  }

  if (a4)
  {
    outputStructCnt = 16;
    p_inputStruct = &inputStruct;
  }

  else
  {
    p_inputStruct = 0;
  }

  v26 = 0;
  bzero(&inputStruct, 0x978uLL);
  v17 = apfs_container_iouc(a1, &inputStruct, &v26, 0, 0);
  if (!v17)
  {
    uuid_copy(v22, uu);
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    v21 = a6;
    v24 = Length;
    v25 = a5;
    v17 = IOConnectCallStructMethod(v26, 0xFu, &inputStruct, 0x30uLL, p_inputStruct, &outputStructCnt);
    IOServiceClose(v26);
    if (a4)
    {
      if (!v17)
      {
        uuid_copy(a4, &inputStruct);
      }
    }
  }

  return rc_to_errno(v17);
}

uint64_t APFSVolumeUnlockAnyUnlockRecord(char *a1, const void *a2, unsigned __int8 *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  return _APFSVolumeUnlockVerifyUnlockRecord(a1, uu, a2, a3, 0, 0);
}

uint64_t APFSVolumeUnlockAnyUnlockRecordWithOptions(char *a1, const void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  return _APFSVolumeUnlockVerifyUnlockRecord(a1, uu, a2, a3, a4, 0);
}

uint64_t APFSVolumeUnlockGetUnlockRecordState(char *a1, unsigned __int8 *uu, __CFDictionary **a3)
{
  outputStructCnt = 8;
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if (a3 && !is_null)
  {
    v21 = 0;
    bzero(&outputStruct, 0x978uLL);
    v8 = apfs_container_iouc(a1, &outputStruct, &v21, 0, 0);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      uuid_copy(v20, uu);
      v9 = IOConnectCallStructMethod(v21, 0x20u, &outputStruct, 0x14uLL, &outputStruct, &outputStructCnt);
      IOServiceClose(v21);
      if (!v9)
      {
        v17 = outputStruct;
        v10 = *MEMORY[0x277CBECE8];
        v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &v17);
        if (v11)
        {
          v12 = v11;
          v13 = v20[0];
          Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v15 = Mutable;
            if (v13)
            {
              v16 = *MEMORY[0x277CBED28];
            }

            else
            {
              v16 = *MEMORY[0x277CBED10];
            }

            CFDictionaryAddValue(Mutable, @"Backoff", v12);
            CFDictionaryAddValue(v15, @"LockedOut", v16);
            v9 = 0;
            *a3 = v15;
          }

          else
          {
            v9 = 12;
          }

          CFRelease(v12);
        }

        else
        {
          v9 = 12;
        }
      }
    }

    return rc_to_errno(v9);
  }

  return result;
}

uint64_t _APFSVolumeAddUnlockRecordsOrHints(char *a1, unsigned __int8 *uu, const void *a3, const void *a4, int a5, uint64_t a6)
{
  v58 = *MEMORY[0x277D85DE8];
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  if (uuid_is_null(uu))
  {
    return 22;
  }

  if (a4)
  {
    v13 = CFGetTypeID(a4);
    if (v13 != CFDictionaryGetTypeID())
    {
      return 22;
    }
  }

  v14 = CFGetTypeID(a3);
  if (v14 != CFDataGetTypeID())
  {
    return 22;
  }

  if (a5 != 5 || (result = _APFSVolumeUnlockVerifyUnlockRecord(a1, uu, a3, 0, a6, 1), !result))
  {
    connection = 0;
    bzero(context, 0x978uLL);
    memset(out, 0, 37);
    memset(v56, 0, 37);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v31 = apfs_container_iouc(a1, context, &connection, 0, 0);
    if (!v31)
    {
      context[1] = a5;
      uuid_copy(v34, uu);
      BytePtr = CFDataGetBytePtr(a3);
      Length = CFDataGetLength(a3);
      v40 = a6;
      if (a4)
      {
        Count = CFDictionaryGetCount(a4);
        v38 = _apfs_malloc_typed(16 * Count, 0x1000040451B5BE8uLL);
        if (!v38 || (v16 = CFDictionaryGetCount(a4), (v39 = _apfs_calloc_typed(v16, 8uLL, 0x2004093837F09uLL)) == 0))
        {
LABEL_20:
          v20 = 12;
LABEL_21:
          v31 = v20;
          goto LABEL_22;
        }

        if (CFDictionaryGetCount(a4) >= 1)
        {
          v17 = 0;
          do
          {
            v18 = _apfs_malloc_typed(0x10uLL, 0x1080040FC6463CFuLL);
            v39[v17] = v18;
            if (!v39[v17])
            {
              goto LABEL_20;
            }
          }

          while (CFDictionaryGetCount(a4) > ++v17);
        }

        CFDictionaryApplyFunction(a4, records_callback, context);
        v19 = v37;
        if (CFDictionaryGetCount(a4) != v19)
        {
          v20 = 22;
          goto LABEL_21;
        }
      }

      v31 = IOConnectCallStructMethod(connection, 0x10u, context, 0x48uLL, 0, &outputStructCnt);
      IOServiceClose(connection);
    }

LABEL_22:
    uuid_unparse(uu, out);
    if (v37)
    {
      v21 = 0;
      v22 = 0;
      v23 = MEMORY[0x277D86220];
      do
      {
        uuid_unparse(&v38[v21], v56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = rc_to_errno(v31);
          *buf = 136316674;
          v43 = "_APFSVolumeAddUnlockRecordsOrHints";
          v44 = 1024;
          v45 = 1788;
          v46 = 1024;
          v47 = a5;
          v48 = 2080;
          v49 = out;
          v50 = 2080;
          v51 = v56;
          v52 = 2080;
          v53 = a1;
          v54 = 1024;
          v55 = v24;
          _os_log_impl(&dword_23D23F000, v23, OS_LOG_TYPE_DEFAULT, "%s:%d: UR_ADD_UPDATE_SET [ OP = %u, SRC UUID = %s, DST UUID = %s, VOLUME = %s, ret = %d ]\n", buf, 0x3Cu);
        }

        ++v22;
        v21 += 16;
      }

      while (v22 < v37);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v25 = rc_to_errno(v31);
      *buf = 136316418;
      v43 = "_APFSVolumeAddUnlockRecordsOrHints";
      v44 = 1024;
      v45 = 1784;
      v46 = 1024;
      v47 = a5;
      v48 = 2080;
      v49 = out;
      v50 = 2080;
      v51 = a1;
      v52 = 1024;
      LODWORD(v53) = v25;
      _os_log_impl(&dword_23D23F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d: UR_ADD_UPDATE_SET [ OP = %u, UUID = %s, VOLUME = %s, ret = %d ]\n", buf, 0x32u);
    }

    if (v38)
    {
      _apfs_free(v38, 16 * v37);
    }

    v26 = v39;
    if (v39)
    {
      v27 = v37;
      if (v37)
      {
        v28 = 0;
        do
        {
          v29 = v39[v28];
          if (v29)
          {
            _apfs_free(v29, 16);
            v27 = v37;
          }

          ++v28;
        }

        while (v28 < v27);
        v26 = v39;
        v30 = 8 * v27;
      }

      else
      {
        v30 = 0;
      }

      _apfs_free(v26, v30);
    }

    return rc_to_errno(v31);
  }

  return result;
}

uint64_t APFSVolumeSetHint(char *a1, unsigned __int8 *uu, const __CFData *a3)
{
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  if (!a3 || is_null || !CFDataGetLength(a3))
  {
    return 22;
  }

  return _APFSVolumeAddUnlockRecordsOrHints(a1, uu, a3, 0, 4, 0);
}

uint64_t APFSVolumeSetUnlockRecord(char *a1, unsigned __int8 *uu, const __CFData *a3)
{
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  if (!a3 || is_null || !CFDataGetLength(a3))
  {
    return 22;
  }

  return _APFSVolumeAddUnlockRecordsOrHints(a1, uu, a3, 0, 1, 0);
}

uint64_t APFSVolumeResetUnlockRecordWithOptions(char *a1, unsigned __int8 *uu, const __CFData *a3, const unsigned __int8 *a4, const __CFData *a5, uint64_t a6)
{
  v46 = *MEMORY[0x277D85DE8];
  outputStructCnt = 0;
  if (!a1 || uuid_is_null(uu))
  {
    return 22;
  }

  is_null = uuid_is_null(a4);
  result = 22;
  if (a5 && a3 && !is_null)
  {
    if (!CFDataGetLength(a3))
    {
      return 22;
    }

    if (!CFDataGetLength(a5))
    {
      return 22;
    }

    v14 = CFGetTypeID(a3);
    if (v14 != CFDataGetTypeID())
    {
      return 22;
    }

    v15 = CFGetTypeID(a5);
    if (v15 != CFDataGetTypeID())
    {
      return 22;
    }

    v29 = 0;
    bzero(inputStruct, 0x978uLL);
    v18 = 0;
    v19 = 0;
    memset(out, 0, 37);
    memset(v44, 0, 37);
    v16 = apfs_container_iouc(a1, inputStruct, &v29, 0, 0);
    if (!v16)
    {
      inputStruct[1] = 3;
      uuid_copy(v22, uu);
      BytePtr = CFDataGetBytePtr(a3);
      Length = CFDataGetLength(a3);
      v25 = 1;
      v26 = _apfs_malloc_typed(0x10uLL, 0x1000040451B5BE8uLL);
      uuid_copy(v26, a4);
      v18 = CFDataGetBytePtr(a5);
      v19 = CFDataGetLength(a5);
      v27 = _apfs_malloc_typed(8uLL, 0x2004093837F09uLL);
      *v27 = &v18;
      v28 = a6;
      v16 = IOConnectCallStructMethod(v29, 0x10u, inputStruct, 0x48uLL, 0, &outputStructCnt);
      _apfs_free(v27, 8);
      _apfs_free(v26, 16);
      IOServiceClose(v29);
    }

    uuid_unparse(uu, out);
    uuid_unparse(a4, v44);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = rc_to_errno(v16);
      *buf = 136316674;
      v31 = "APFSVolumeResetUnlockRecordWithOptions";
      v32 = 1024;
      v33 = 1891;
      v34 = 1024;
      v35 = 3;
      v36 = 2080;
      v37 = out;
      v38 = 2080;
      v39 = v44;
      v40 = 2080;
      v41 = a1;
      v42 = 1024;
      v43 = v17;
      _os_log_impl(&dword_23D23F000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d: UR_RESET_UPDATE [ OP = %u, SRC UUID = %s, DST UUID = %s, VOLUME = %s, ret = %d ]\n", buf, 0x3Cu);
    }

    return rc_to_errno(v16);
  }

  return result;
}

uint64_t APFSVolumeRemoveHint(char *a1, unsigned __int8 *uu)
{
  if (!a1 || uuid_is_null(uu))
  {
    return 22;
  }

  return _APFSVolumeRemoveUnlockRecordsOrHint(a1, uu, 4);
}

uint64_t _APFSVolumeRemoveUnlockRecordsOrHint(char *a1, const unsigned __int8 *a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = 0;
  bzero(&inputStruct, 0x978uLL);
  outputStructCnt = 0;
  v16 = a3;
  v6 = apfs_container_iouc(a1, &inputStruct, &v17, 0, 0);
  if (!v6)
  {
    if (uuid_is_null(a2))
    {
      uuid_clear(v15);
    }

    else
    {
      uuid_copy(v15, a2);
    }

    v6 = IOConnectCallStructMethod(v17, 0x11u, &inputStruct, 0x18uLL, 0, &outputStructCnt);
    IOServiceClose(v17);
  }

  if (uuid_is_null(a2))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = rc_to_errno(v6);
      *buf = 136315906;
      v19 = "_APFSVolumeRemoveUnlockRecordsOrHint";
      v20 = 1024;
      v21 = 1930;
      v22 = 2080;
      v23 = a1;
      v24 = 1024;
      v25 = v7;
      v8 = MEMORY[0x277D86220];
      v9 = "%s:%d: UR_WIPE [ VOLUME = %s, ret = %d ]\n";
      v10 = 34;
LABEL_11:
      _os_log_impl(&dword_23D23F000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    }
  }

  else
  {
    memset(out, 0, 37);
    uuid_unparse(a2, out);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = rc_to_errno(v6);
      *buf = 136316418;
      v19 = "_APFSVolumeRemoveUnlockRecordsOrHint";
      v20 = 1024;
      v21 = 1934;
      v22 = 2080;
      v23 = out;
      v24 = 1024;
      v25 = a3;
      v26 = 2080;
      v27 = a1;
      v28 = 1024;
      v29 = v11;
      v8 = MEMORY[0x277D86220];
      v9 = "%s:%d: UR_REMOVE [ UUID = %s, tag = %d, VOLUME = %s, ret = %d ]\n";
      v10 = 50;
      goto LABEL_11;
    }
  }

  return rc_to_errno(v6);
}

uint64_t APFSVolumeRemoveUnlockRecord(char *a1, unsigned __int8 *uu)
{
  if (!a1 || uuid_is_null(uu))
  {
    return 22;
  }

  result = _APFSVolumeRemoveUnlockRecordsOrHint(a1, uu, 3);
  if (!result)
  {
    result = _APFSVolumeGetUnlockRecordOrHint(a1, uu, 4, 0);
    if (result == 2)
    {
      return 0;
    }

    else if (!result)
    {

      return _APFSVolumeRemoveUnlockRecordsOrHint(a1, uu, 4);
    }
  }

  return result;
}

uint64_t _APFSVolumeCacheVerifyKey(char *a1, unsigned __int8 *uu, const __CFData *a3, const __CFData *a4, const __CFData *a5, uint64_t a6, char a7)
{
  result = 22;
  if (a1)
  {
    if (uu)
    {
      is_null = uuid_is_null(uu);
      result = 22;
      if (a5)
      {
        if (a4 && a3 && !is_null)
        {
          v26 = 0;
          bzero(dst, 0x978uLL);
          outputStructCnt = 0;
          v16 = apfs_container_iouc(a1, 0, &v26, 0, 0);
          if (!v16)
          {
            uuid_copy(dst, uu);
            BytePtr = CFDataGetBytePtr(a5);
            Length = CFDataGetLength(a5);
            v20 = CFDataGetBytePtr(a3);
            v21 = CFDataGetLength(a3);
            v22 = CFDataGetBytePtr(a4);
            v23 = CFDataGetLength(a4);
            v24 = a6;
            v25 = a7;
            v16 = IOConnectCallStructMethod(v26, 0x4Du, dst, 0x50uLL, 0, &outputStructCnt);
            IOServiceClose(v26);
          }

          return rc_to_errno(v16);
        }
      }
    }
  }

  return result;
}

uint64_t APFSVolumeEnableFilevaultWithOptions(char *a1)
{
  if (mounted_device(a1, 0))
  {
    return 45;
  }

  else
  {
    return 22;
  }
}

uint64_t APFSVolumeEnableFilevault(char *a1)
{
  if (mounted_device(a1, 0))
  {
    return 45;
  }

  else
  {
    return 22;
  }
}

uint64_t APFSVolumeDisableFileVaultWithOptions(char *a1)
{
  if (!mounted_device(a1, 0))
  {
    return 22;
  }

  v5 = 0;
  v2 = APFSVolumeRole(a1, &v5, 0);
  if (v2)
  {
    return rc_to_errno(v2);
  }

  if (v5 == 576 || v5 == 768)
  {
    return 1;
  }

  else
  {
    return 45;
  }
}

uint64_t APFSVolumeBindNewKEKToVEKWithOptions(char *a1, unsigned __int8 *uu, const __CFData *a3, const __CFData *a4, uint64_t a5)
{
  result = 22;
  if (a1 && a3 && a4)
  {
    if (uuid_is_null(uu))
    {
      return 22;
    }

    else
    {
      v20 = 0;
      bzero(&inputStruct, 0x978uLL);
      v11 = apfs_container_iouc(a1, &inputStruct, &v20, 0, 0);
      if (!v11)
      {
        outputStructCnt = 0;
        uuid_copy(v14, uu);
        BytePtr = CFDataGetBytePtr(a3);
        Length = CFDataGetLength(a3);
        v17 = CFDataGetBytePtr(a4);
        v18 = CFDataGetLength(a4);
        v19 = a5;
        v11 = IOConnectCallStructMethod(v20, 0x16u, &inputStruct, 0x40uLL, 0, &outputStructCnt);
        IOServiceClose(v20);
      }

      return rc_to_errno(v11);
    }
  }

  return result;
}

uint64_t APFSContainerGetBootDevice(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 49174;
  }

  existing = 0;
  v2 = IOServiceMatching("AppleAPFSVolume");
  if (v2)
  {
    MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v2, &existing);
    if (!MatchingServices)
    {
      v5 = IOIteratorNext(existing);
      if (v5)
      {
        v6 = v5;
        v4 = 0;
        v7 = 0;
        v8 = *MEMORY[0x277CBECE8];
        v9 = MEMORY[0x277D86220];
        do
        {
          entry = 0;
          parent = 0;
          v17 = 0;
          entryID = 0;
          IORegistryEntryGetRegistryEntryID(v6, &entryID);
          CFProperty = IORegistryEntryCreateCFProperty(v6, @"Role", v8, 0);
          if (CFProperty)
          {
            v11 = CFProperty;
            v12 = CFGetTypeID(CFProperty);
            if (v12 == CFArrayGetTypeID())
            {
              context = 0;
              v29.length = CFArrayGetCount(v11);
              v29.location = 0;
              CFArrayApplyFunction(v11, v29, is_system_role, &context);
              if (context == 1)
              {
                ParentEntry = IORegistryEntryGetParentEntry(v6, "IOService", &parent);
                if (ParentEntry)
                {
                  v4 = ParentEntry;
                  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    v23 = "APFSContainerGetBootDevice";
                    v24 = 1024;
                    v25 = 2866;
                    v26 = 2048;
                    v27 = entryID;
                    _os_log_error_impl(&dword_23D23F000, v9, OS_LOG_TYPE_ERROR, "%s:%d: failed to get parent for volume 0x%llx\n", buf, 0x1Cu);
                  }
                }

                else
                {
                  IORegistryEntryGetRegistryEntryID(parent, &v17);
                  v4 = IORegistryEntryGetParentEntry(parent, "IOService", &entry);
                  if (v4)
                  {
                    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v23 = "APFSContainerGetBootDevice";
                      v24 = 1024;
                      v25 = 2873;
                      v26 = 2048;
                      v27 = v17;
                      _os_log_error_impl(&dword_23D23F000, v9, OS_LOG_TYPE_ERROR, "%s:%d: failed to get parent for container 0x%llx\n", buf, 0x1Cu);
                    }

                    v14 = parent;
                  }

                  else
                  {
                    v7 = IORegistryEntryCreateCFProperty(entry, @"BSD Name", v8, 0);
                    if (!v7)
                    {
                      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        v23 = "APFSContainerGetBootDevice";
                        v24 = 1024;
                        v25 = 2880;
                        v26 = 2048;
                        v27 = v17;
                        _os_log_error_impl(&dword_23D23F000, v9, OS_LOG_TYPE_ERROR, "%s:%d: failed to create bsd name for container: %llx\n", buf, 0x1Cu);
                      }

                      v4 = 49164;
                    }

                    IOObjectRelease(parent);
                    v14 = entry;
                  }

                  IOObjectRelease(v14);
                }
              }
            }

            else
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v23 = "APFSContainerGetBootDevice";
                v24 = 1024;
                v25 = 2850;
                _os_log_error_impl(&dword_23D23F000, v9, OS_LOG_TYPE_ERROR, "%s:%d: volume roles property isnt of correct type. Expected CFArray\n", buf, 0x12u);
              }

              v4 = 49174;
            }

            CFRelease(v11);
          }

          IOObjectRelease(v6);
          v6 = IOIteratorNext(existing);
        }

        while (v6);
        IOObjectRelease(existing);
        if (v7)
        {
          *a1 = v7;
          return v4;
        }

        if (v4)
        {
          return v4;
        }
      }

      else
      {
        IOObjectRelease(existing);
      }

      return 49154;
    }

    v4 = MatchingServices;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      APFSContainerGetBootDevice_cold_1(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      APFSContainerGetBootDevice_cold_2();
    }

    return 49164;
  }

  return v4;
}

CFTypeID is_system_role(const __CFString *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    result = CFStringCompare(a1, @"System", 0);
    if (!result)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t APFSSetupMetadataRollingMediaKey(char *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  theArray = 0;
  if (!a1)
  {
    return 22;
  }

  v2 = 0;
  if (keygen_nvram_prop(0))
  {
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *buffer = 0u;
    v11 = 0u;
    v3 = APFSVolumeRoleFind(a1, 64, &theArray);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSSetupMetadataRollingMediaKey_cold_1(v4);
      }

      return rc_to_errno(v4);
    }

    v6 = theArray;
    if (CFArrayGetCount(theArray) >= 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSSetupMetadataRollingMediaKey_cold_3();
        if (!v6)
        {
          return 45;
        }
      }

      else if (!v6)
      {
        return 45;
      }

      CFRelease(v6);
      return 45;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    CFStringGetCString(ValueAtIndex, buffer, 32, 0x8000100u);
    if (v6)
    {
      CFRelease(v6);
    }

    v8 = _APFSVolumeOperation(buffer, 0x3Cu, 0, 0);
    v2 = rc_to_errno(v8);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSSetupMetadataRollingMediaKey_cold_2();
      }
    }

    else
    {
      keygen_nvram_prop(1);
    }
  }

  return v2;
}

uint64_t APFSContainerMigrateMediaKeys(char *a1)
{
  connection = 0;
  v4 = 0;
  v2 = apfs_container_iouc(a1, 0, &connection, 0, 0);
  if (!v2)
  {
    v2 = IOConnectCallStructMethod(connection, 0x30u, 0, 0, 0, &v4);
    IOServiceClose(connection);
  }

  APFSSetupMetadataRollingMediaKey(a1);
  return v2;
}

uint64_t APFSMakeCompatibleName(const char *a1, void *a2)
{
  v3 = strlen(a1);
  if (!a2)
  {
    return 22;
  }

  v4 = v3;
  if (v3 > 0x2FD)
  {
    return 63;
  }

  if (!v3)
  {
    return 22;
  }

  v6 = malloc_type_malloc(0x2FEuLL, 0x1F869340uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  __memcpy_chk();
  if (!utf8_normalizeOptCaseFoldAndHash(v7, v4, 0, nop_hash_func, 0))
  {
LABEL_17:
    v7[v4] = 0;
    v12 = malloc_type_realloc(v7, v4 + 1, 0xA339013FuLL);
    if (v12)
    {
      v13 = v12;
      result = 0;
      *a2 = v13;
      return result;
    }

    free(v7);
    return 12;
  }

  v8 = 0;
  while (1)
  {
    v9 = v7[v8];
    if ((v9 & 0x80000000) == 0)
    {
      v10 = 1;
      goto LABEL_13;
    }

    v10 = 0;
    do
    {
      LOBYTE(v9) = 2 * v9;
      ++v10;
    }

    while ((v9 & 0x80) != 0);
    if (v10 >= 5)
    {
      break;
    }

LABEL_13:
    v11 = v10 + v8;
    if (utf8_normalizeOptCaseFoldAndHash(v7, v10 + v8, 0, nop_hash_func, 0))
    {
      v7[v8++] = 63;
      memmove(&v7[v8], &v7[v11], v4 - v11);
      v4 = v4 - v10 + 1;
    }

    else
    {
      v8 += v10;
    }

    if (v8 >= v4)
    {
      goto LABEL_17;
    }
  }

  free(v7);
  return 92;
}

uint64_t APFSUniquifyName(char *a1, char **a2, unint64_t a3)
{
  if (!a2)
  {
    return 22;
  }

  v6 = strlen(a1);
  if (v6 > 0x2FD)
  {
    return 63;
  }

  v8 = v6;
  if (!v6)
  {
    return 22;
  }

  if (utf8_normalizeOptCaseFoldAndHash(a1, v6, 0, nop_hash_func, 0))
  {
    return 92;
  }

  v9 = strrchr(a1, 46);
  if (!v9 || (v10 = v9, v11 = v9 - a1, v9 == a1) || (v12 = v8 - v11, v8 - v11 - 746 <= 0xFFFFFFFFFFFFFD01))
  {
    v12 = 0;
    v10 = "";
  }

  else
  {
    v8 = v9 - a1;
  }

  v13 = 0;
  if (a3)
  {
    v14 = a3;
    do
    {
      ++v13;
      v15 = v14 > 9;
      v14 /= 0xAuLL;
    }

    while (v15);
  }

  if (v13 <= 1)
  {
    v13 = 1;
  }

  v16 = v13 + v12;
  v17 = v16 + v8;
  if (v16 + v8 >= 0x2FE)
  {
    result = 92;
    while (v8)
    {
      if (a1[--v8] < 0)
      {
        while ((a1[v8] & 0xC0) == 0x80)
        {
          if (--v8 >= 0xFFFFFFFFFFFFFFFELL)
          {
            return result;
          }
        }
      }

      v17 = v16 + v8;
      if (v16 + v8 <= 0x2FD)
      {
        goto LABEL_28;
      }
    }

    return 92;
  }

LABEL_28:
  v18 = v17 + 1;
  v19 = malloc_type_malloc(v17 + 1, 0x2FB867B5uLL);
  if (!v19)
  {
    return 12;
  }

  v20 = v19;
  memcpy(v19, a1, v8);
  snprintf(&v20[v8], v18 - v8, "%llu%s", a3, v10);
  result = 0;
  *a2 = v20;
  return result;
}

uint64_t APFSContainerGetFreeExtentHistogram(io_service_t a1, __CFDictionary *a2)
{
  free_extent_hist = 49174;
  if (a1)
  {
    if (a2)
    {
      if (IOObjectConformsTo(a1, "AppleAPFSContainer"))
      {
        connect = 0;
        free_extent_hist = IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, &connect);
        if (!free_extent_hist)
        {
          free_extent_hist = get_free_extent_hist(connect, a2);
          IOServiceClose(connect);
        }
      }
    }
  }

  return free_extent_hist;
}

uint64_t get_free_extent_hist(mach_port_t a1, __CFDictionary *a2)
{
  bzero(outputStruct, 0x978uLL);
  v10 = 280;
  outputStruct[0] = 1;
  result = IOConnectCallStructMethod(a1, 0x1Fu, outputStruct, 1uLL, outputStruct, &v10);
  if (!result)
  {
    Mutable = CFArrayCreateMutable(0, 32, 0);
    if (Mutable)
    {
      v6 = Mutable;
      for (i = 0; i != 32; ++i)
      {
        CFArraySetValueAtIndex(v6, i, *&outputStruct[8 * i + 16]);
      }

      CFDictionaryAddValue(a2, @"Histogram for free extents sizes, number of buckets is", v6);
      CFRelease(v6);
      v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &v12);
      if (v8)
      {
        v9 = v8;
        CFDictionaryAddValue(a2, @"Small free extents count", v8);
        CFRelease(v9);
        return 0;
      }

      CFDictionaryRemoveValue(a2, @"Histogram for free extents sizes, number of buckets is");
    }

    return 49164;
  }

  return result;
}

uint64_t APFSStatisticsProcessContainer(uint64_t a1, int a2, __CFDictionary *a3, CFTypeRef *a4)
{
  v70[2] = *MEMORY[0x277D85DE8];
  free_extent_hist = 49174;
  if (!a1 || !a3 || !IOObjectConformsTo(a1, "AppleAPFSContainer"))
  {
    return free_extent_hist;
  }

  *parent = 0;
  if (a4 && !IORegistryEntryGetParentEntry(a1, "IOService", &parent[1]))
  {
    *a4 = IORegistryEntryCreateCFProperty(parent[1], @"BSD Name", *MEMORY[0x277CBECE8], 0);
    IOObjectRelease(parent[1]);
  }

  free_extent_hist = IOServiceOpen(a1, *MEMORY[0x277D85F48], 0, parent);
  if (free_extent_hist)
  {
    return free_extent_hist;
  }

  if (a2)
  {
    free_extent_hist = get_free_extent_hist(parent[0], a3);
    if (free_extent_hist)
    {
      goto LABEL_63;
    }
  }

  v9 = parent[0];
  *iterator = 0;
  if (MEMORY[0x23EEDB610](a1, "IOService", &iterator[1]))
  {
    goto LABEL_62;
  }

  v10 = IOIteratorNext(iterator[1]);
  if (!v10)
  {
    goto LABEL_61;
  }

  v11 = v10;
  v12 = 0;
  v13 = *MEMORY[0x277CBECE8];
  v14 = 6;
  if (a2)
  {
    v14 = 8;
  }

  capacity = v14;
  do
  {
    CFProperty = IORegistryEntryCreateCFProperty(v11, @"BSD Name", v13, 0);
    if (!CFProperty)
    {
      goto LABEL_59;
    }

    v16 = CFProperty;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    *buffer = 0u;
    v63 = 0u;
    bzero(&outputStruct, 0x978uLL);
    outputStructCnt = 64;
    SystemEncoding = CFStringGetSystemEncoding();
    if (!CFStringGetCString(v16, buffer, 128, SystemEncoding))
    {
      goto LABEL_23;
    }

    outputStruct = fsindex_parse(buffer, 0);
    if (outputStruct == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "process_volumes";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 3401;
        WORD1(buf[2]) = 2080;
        *(&buf[2] + 4) = buffer;
        _os_log_error_impl(&dword_23D23F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d: Cannot get index of volume '%s'\n", buf, 0x1Cu);
      }

LABEL_23:
      IOObjectRelease(v11);
      CFRelease(v16);
      goto LABEL_60;
    }

    iterator[0] = ++v12;
    v18 = IOConnectCallStructMethod(v9, 0x1Eu, &outputStruct, 4uLL, &outputStruct, &outputStructCnt);
    if (v18)
    {
      v19 = v18;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v20 = mach_error_string(v19);
        LODWORD(buf[0]) = 136315906;
        *(buf + 4) = "process_volumes";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 3411;
        WORD1(buf[2]) = 2080;
        *(&buf[2] + 4) = buffer;
        WORD2(buf[3]) = 2080;
        *(&buf[3] + 6) = v20;
        _os_log_error_impl(&dword_23D23F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s:%d: Cannot fetch information about volume '%s' - %s\n", buf, 0x26u);
      }

      goto LABEL_58;
    }

    Mutable = CFDictionaryCreateMutable(v13, capacity, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_58;
    }

    v22 = Mutable;
    add_number(Mutable, @"Number of files", kCFNumberSInt64Type, &v47);
    add_number(v22, @"Number of directories", kCFNumberSInt64Type, &v48);
    add_number(v22, @"Number of snapshots", kCFNumberSInt64Type, &v49);
    add_number(v22, @"Object mapping tree node count", kCFNumberSInt64Type, &v50);
    add_number(v22, @"Root tree node count", kCFNumberSInt64Type, &v52);
    add_number(v22, @"Extentref tree node count", kCFNumberSInt64Type, &v51);
    add_number(v22, @"Number of extents", kCFNumberSInt64Type, &v53);
    if (!a2)
    {
      goto LABEL_57;
    }

    v23 = mounted_device(buffer, 0);
    if (!v23)
    {
      goto LABEL_57;
    }

    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    memset(buf, 0, sizeof(buf));
    memset(v55, 0, sizeof(v55));
    v70[1] = 0;
    v70[0] = strndup(v23, 0x400uLL);
    v24 = fts_open(v70, 80, 0);
    v42 = v9;
    if (!v24)
    {
      free(v70[0]);
LABEL_47:
      __error();
      goto LABEL_48;
    }

    v25 = v24;
    while (1)
    {
      v26 = fts_read(v25);
      if (!v26)
      {
        break;
      }

      fts_info = v26->fts_info;
      if (fts_info)
      {
        v30 = fts_children(v25, 0);
        for (i = 0; v30; v30 = v30->fts_link)
        {
          i += (v30->fts_info >> 3) & 1;
        }

        v29 = ilog10(i);
        v32 = v55;
LABEL_40:
        if (v29 >= 0xF)
        {
          v33 = 15;
        }

        else
        {
          v33 = v29;
        }

        ++v32[v33];
      }

      else if ((fts_info & 8) != 0)
      {
        st_blocks = v26->fts_statp->st_blocks;
        if (st_blocks)
        {
          if (st_blocks >= 3)
          {
            v29 = (63 - __clz((st_blocks - 1) / 2)) >> 1;
          }

          else
          {
            v29 = 0;
          }

          v32 = buf;
          goto LABEL_40;
        }
      }
    }

    v34 = *__error();
    free(v70[0]);
    fts_close(v25);
    if (v34)
    {
      goto LABEL_47;
    }

LABEL_48:
    v35 = CFArrayCreateMutable(0, 16, 0);
    if (v35)
    {
      v36 = v35;
      for (j = 0; j != 16; ++j)
      {
        CFArraySetValueAtIndex(v36, j, buf[j]);
      }

      CFDictionaryAddValue(v22, @"Histogram for number of files of sizes in a specific range, number of buckets is", v36);
      CFRelease(v36);
    }

    v38 = CFArrayCreateMutable(0, 16, 0);
    if (v38)
    {
      v39 = v38;
      for (k = 0; k != 16; ++k)
      {
        CFArraySetValueAtIndex(v39, k, *(v55 + k));
      }

      CFDictionaryAddValue(v22, @"Histogram for number of files per directory, number of buckets is", v39);
      CFRelease(v39);
    }

    v9 = v42;
LABEL_57:
    CFDictionaryAddValue(a3, v16, v22);
    CFRelease(v22);
LABEL_58:
    CFRelease(v16);
LABEL_59:
    IOObjectRelease(v11);
LABEL_60:
    v11 = IOIteratorNext(iterator[1]);
  }

  while (v11);
LABEL_61:
  IOObjectRelease(iterator[1]);
  add_number(a3, @"Number of volumes", kCFNumberIntType, iterator);
LABEL_62:
  free_extent_hist = 0;
LABEL_63:
  IOServiceClose(parent[0]);
  return free_extent_hist;
}

uint64_t APFSStatistics(int a1, __CFDictionary *a2)
{
  if (!a2)
  {
    return 49174;
  }

  existing = 0;
  v4 = *MEMORY[0x277CD28A0];
  v5 = IOServiceMatching("AppleAPFSContainer");
  MatchingServices = IOServiceGetMatchingServices(v4, v5, &existing);
  if (!MatchingServices)
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = MEMORY[0x277CBF138];
    v9 = MEMORY[0x277CBF150];
    while (1)
    {
      v10 = IOIteratorNext(existing);
      if (!v10)
      {
        IOObjectRelease(existing);
        return 0;
      }

      v11 = v10;
      key = 0;
      Mutable = CFDictionaryCreateMutable(v7, 0, v8, v9);
      if (!Mutable)
      {
        break;
      }

      v13 = Mutable;
      MatchingServices = APFSStatisticsProcessContainer(v11, a1, Mutable, &key);
      if (!MatchingServices)
      {
        CFDictionaryAddValue(a2, key, v13);
      }

      if (key)
      {
        CFRelease(key);
      }

      IOObjectRelease(v11);
      CFRelease(v13);
      if (MatchingServices)
      {
        return MatchingServices;
      }
    }

    IOObjectRelease(v11);
    IOObjectRelease(existing);
    return 49164;
  }

  return MatchingServices;
}

uint64_t APFSStreamCreatePrepare(char *a1, const unsigned __int8 *a2, const unsigned __int8 *a3, const __CFDictionary *a4, pthread_mutex_t **a5)
{
  v5 = 3758097090;
  outputStructCnt = 16;
  if (!a1 || !a5)
  {
    return v5;
  }

  v11 = malloc_type_calloc(1uLL, 0xD0uLL, 0x1080040B25F983CuLL);
  if (!v11)
  {
    return 49164;
  }

  v12 = v11;
  v13 = new_lock(v11);
  if (v13)
  {
    v14 = v13;
    free(v12);
    return v14 | 0xC000u;
  }

  bzero(&outputStruct, 0x978uLL);
  *v12[1].__opaque = 2097194;
  v15 = malloc_type_valloc(0x20002AuLL, 0x399C69C1uLL);
  v12[1].__sig = v15;
  if (v15)
  {
    crc32c_init();
    *&v12[1].__opaque[24] = 0x1FFFFFFFFLL;
    v12[1].__opaque[11] = 1;
    uuid_copy(&v12[1].__opaque[32], a2);
    uuid_copy(&v12[1].__opaque[48], a3);
    if (a4)
    {
      valuePtr = 0;
      Value = CFDictionaryGetValue(a4, @"com.apple.apfs.stream.create.read.alignment");
      if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
      {
        if ((valuePtr - 16777217) >> 24 != 255)
        {
LABEL_18:
          sig = v12[1].__sig;
          if (sig)
          {
            free(sig);
          }

          goto LABEL_20;
        }

        *&v12[1].__opaque[28] = valuePtr;
      }

      v12[1].__opaque[11] = CFDictionaryGetValue(a4, @"com.apple.apfs.stream.create.embed.crc") != *MEMORY[0x277CBED10];
    }

    v17 = apfs_container_iouc(a1, &v25, &v12[1].__opaque[12], 0, 0);
    if (v17)
    {
      v5 = v17;
    }

    else
    {
      uuid_copy(v26, &v12[1].__opaque[32]);
      uuid_copy(v27, &v12[1].__opaque[48]);
      outputStruct = v12[1].__sig;
      v24 = *v12[1].__opaque;
      v5 = IOConnectCallStructMethod(*&v12[1].__opaque[12], 0x24u, &outputStruct, 0x30uLL, &outputStruct, &outputStructCnt);
      if (!v5)
      {
        v12[1].__opaque[10] = 1;
        *a5 = v12;
        return v5;
      }
    }

    goto LABEL_18;
  }

  v5 = 49164;
LABEL_20:
  v19 = *&v12[1].__opaque[12];
  if (v19)
  {
    IOServiceClose(v19);
  }

  free_lock(v12);
  free(v12);
  return v5;
}

uint64_t APFSStreamCreateRead(uint64_t a1, char *a2, unint64_t a3, size_t *a4)
{
  v4 = 3758097090;
  if (a1 && a2 && a4)
  {
    pthread_mutex_lock(a1);
    if (*(a1 + 82) != 1)
    {
      v4 = 4294895648;
LABEL_10:
      *(a1 + 82) = 0;
      goto LABEL_11;
    }

    v9 = *(a1 + 100);
    v10 = a3 / v9 * v9;
    if (v10 < v9 || v10 < 0x20000)
    {
      goto LABEL_10;
    }

    Flush = _APFSStreamCreateReadFlush(a1, a2, v10);
    *a4 = Flush;
    v12 = *(a1 + 76);
    if (v12 > *(a1 + 72) >> 1)
    {
      v4 = 0;
LABEL_11:
      pthread_mutex_unlock(a1);
      return v4;
    }

    v14 = Flush;
    if (*(a1 + 80))
    {
      goto LABEL_14;
    }

    outputStructCnt = 72;
    bzero(v25, 0x978uLL);
    LODWORD(v25[0]) = v12;
    v17 = IOConnectCallStructMethod(*(a1 + 84), 0x25u, v25, 4uLL, v25, &outputStructCnt);
    if (v17)
    {
      v4 = v17;
      goto LABEL_10;
    }

    v18 = *(a1 + 88);
    if (v18)
    {
      if ((*(a1 + 83) & 1) == 0)
      {
LABEL_32:
        v22 = v25[1];
        *(a1 + 136) = v25[0];
        *(a1 + 152) = vextq_s8(v28, v28, 8uLL);
        v23 = v26;
        v12 = *(a1 + 76) + v26;
        *(a1 + 76) = v12;
        *(a1 + 88) = v18 + v23;
        v24 = v27;
        *(a1 + 80) = v27 != 0;
        *(a1 + 168) = v22;
        *(a1 + 184) = v25[2];
        if (!v24)
        {
          if ((*(a1 + 81) & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

LABEL_14:
        if ((*(a1 + 81) & 1) == 0)
        {
          if (*(a1 + 72) - v12 >= 0x8D)
          {
            v15 = *(a1 + 64) + v12;
            *(v15 + 125) = 0u;
            *(v15 + 96) = 0u;
            *(v15 + 112) = 0u;
            *(v15 + 64) = 0u;
            *(v15 + 80) = 0u;
            *(v15 + 32) = 0u;
            *(v15 + 48) = 0u;
            *v15 = 0u;
            *(v15 + 16) = 0u;
            *v15 = 6;
            *(v15 + 129) = *(a1 + 88) + 141;
            if (*(a1 + 83) == 1)
            {
              v16 = ~crc32c(*(a1 + 96), v15, 137);
            }

            else
            {
              v16 = 0;
            }

            *(v15 + 137) = v16;
            v12 = *(a1 + 76) + 141;
            *(a1 + 76) = v12;
            *(a1 + 81) = 1;
            goto LABEL_25;
          }

LABEL_28:
          v4 = 0;
          *a4 += _APFSStreamCreateReadFlush(a1, &a2[v14], v10 - v14);
          goto LABEL_11;
        }

LABEL_25:
        v19 = *(a1 + 100);
        if (v12 % v19)
        {
          v20 = v19 - v12 % v19;
          if (v20 + v12 <= *(a1 + 72))
          {
            bzero((*(a1 + 64) + v12), v20);
            *(a1 + 76) += v20;
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      v21 = *(a1 + 83);
      *(*(a1 + 64) + 13) |= v21 ^ 1;
      if (v21 != 1)
      {
        v18 = 0;
        goto LABEL_32;
      }
    }

    *(a1 + 96) = crc32c(*(a1 + 96), *(a1 + 64) + *(a1 + 76), v26);
    v18 = *(a1 + 88);
    goto LABEL_32;
  }

  return v4;
}

size_t _APFSStreamCreateReadFlush(uint64_t a1, void *__dst, unint64_t a3)
{
  v3 = *(a1 + 100);
  v4 = a3 / v3 * v3;
  if (v4 < v3)
  {
    return 0;
  }

  v6 = *(a1 + 76);
  if (v6 < v3)
  {
    return 0;
  }

  if (v4 >= v6)
  {
    v4 = *(a1 + 76);
  }

  v7 = v4 - v4 % v3;
  memcpy(__dst, *(a1 + 64), v7);
  memmove(*(a1 + 64), (*(a1 + 64) + v7), *(a1 + 76) - v7);
  *(a1 + 76) -= v7;
  return v7;
}

uint64_t APFSStreamCreateEstimateProgress(uint64_t a1, double *a2)
{
  v2 = 49174;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (*(a1 + 82) != 1)
  {
    return 4294895648;
  }

  v3 = *(a1 + 144);
  if (!v3)
  {
    v5 = *(a1 + 192);
    v6 = *(a1 + 176);
    if (v5)
    {
      v7 = 100.0;
      if (v6)
      {
        v7 = 10.0;
      }

      v4 = v7 * *(a1 + 184) / v5;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 0.0;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v8 = 90.0;
    if (!v5)
    {
      v8 = 100.0;
    }

    v4 = v4 + v8 * *(a1 + 168) / v6;
    goto LABEL_14;
  }

  v4 = (*(a1 + 160) + *(a1 + 136)) * 100.0 / (*(a1 + 152) + v3);
LABEL_14:
  v2 = 0;
  if (*(a1 + 200) > v4)
  {
    v4 = *(a1 + 200);
  }

  v9 = fmin(v4, 100.0);
  *(a1 + 200) = v9;
  *a2 = v9;
  return v2;
}

void APFSStreamCreateFinish(uint64_t a1)
{
  if (a1)
  {
    IOConnectCallStructMethod(*(a1 + 84), 0x31u, 0, 0, 0, 0);
    IOServiceClose(*(a1 + 84));
    free_lock(a1);
    free(*(a1 + 64));
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;

    free(a1);
  }
}

uint64_t APFSStreamRestorePrepare(char *a1, _BYTE *a2, unint64_t a3, _BOOL8 a4, pthread_mutex_t **a5)
{
  v5 = 3758097090;
  outputStructCnt = 4;
  if (a1 && a2 && a5)
  {
    v11 = malloc_type_calloc(1uLL, 0x478uLL, 0x1010040C1F840FBuLL);
    if (v11)
    {
      v12 = v11;
      v13 = new_lock(v11);
      if (v13)
      {
        v14 = v13;
        free(v12);
        return v14 | 0xC000u;
      }

      else
      {
        if (a4)
        {
          Value = CFDictionaryGetValue(a4, @"com.apple.apfs.stream.restore.skip.snapshot");
          if (Value)
          {
            a4 = CFBooleanGetValue(Value) != 0;
          }

          else
          {
            a4 = 0;
          }
        }

        bzero(&outputStruct, 0x978uLL);
        v22 = 0;
        *&v12[1].__opaque[24] = 2097194;
        v16 = malloc_type_valloc(0x20002AuLL, 0x8D704AFBuLL);
        *&v12[1].__opaque[16] = v16;
        if (v16)
        {
          if (!delta_validate_op(a2, a3, &v22 + 1))
          {
            if (*a2 == 5)
            {
              v17 = apfs_container_iouc(a1, &v22, &v12[1].__sig + 1, 0, 0);
              if (v17)
              {
                v5 = v17;
              }

              else
              {
                crc32c_init();
                *&v12[1].__opaque[8] = -1;
                BYTE2(v12[1].__sig) = (a2[13] & 1) == 0;
                memcpy(&v12[1].__opaque[44], a2, 0x400uLL);
                memcpy(*&v12[1].__opaque[16], a2, 0x400uLL);
                outputStruct = *&v12[1].__opaque[16];
                v24 = *&v12[1].__opaque[24];
                v25 = 1024;
                v26 = v22;
                v27 = a4;
                v5 = IOConnectCallStructMethod(HIDWORD(v12[1].__sig), 0x26u, &outputStruct, 0x20uLL, &outputStruct, &outputStructCnt);
                if (!v5)
                {
                  *&v12[1].__opaque[36] = outputStruct;
                  BYTE1(v12[1].__sig) = 1;
                  *a5 = v12;
                  return v5;
                }
              }
            }

            else
            {
              v5 = 4294895649;
            }
          }
        }

        else
        {
          v5 = 49164;
        }

        sig_high = HIDWORD(v12[1].__sig);
        if (sig_high)
        {
          IOServiceClose(sig_high);
        }

        v19 = *&v12[1].__opaque[16];
        if (v19)
        {
          free(v19);
        }

        free_lock(v12);
        free(v12);
      }
    }

    else
    {
      return 49164;
    }
  }

  return v5;
}

uint64_t APFSStreamRestoreWrite(uint64_t a1, char *a2, size_t a3, _BYTE *a4)
{
  v4 = 3758097090;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (a4)
      {
        v4 = 4294895651;
        pthread_mutex_lock(a1);
        if (*(a1 + 65) == 1)
        {
          v9 = *(a1 + 64);
          if (a3 && (*(a1 + 64) & 1) == 0)
          {
            v10 = *(a1 + 100);
            while (2)
            {
              if (a3 >= *(a1 + 96) - v10)
              {
                v11 = *(a1 + 96) - v10;
              }

              else
              {
                v11 = a3;
              }

              memcpy((*(a1 + 88) + v10), v5, v11);
              *(a1 + 100) += v11;
              while ((*(a1 + 64) & 1) == 0)
              {
                outputStruct[0] = 0;
                v12 = delta_validate_op((*(a1 + 88) + *(a1 + 104)), (*(a1 + 100) - *(a1 + 104)), outputStruct);
                if (v12)
                {
                  if (v12 == 92)
                  {
LABEL_39:
                    v4 = 4294895649;
                    goto LABEL_40;
                  }

                  break;
                }

                v13 = *(a1 + 104);
                v14 = (*(a1 + 88) + v13);
                v15 = *(a1 + 72);
                v16 = *v14;
                if ((v15 == 0) != (v16 == 5))
                {
                  goto LABEL_39;
                }

                if (v16 == 9)
                {
                  *(a1 + 112) += *(v14 + 17) / *(a1 + 108);
                }

                v17 = outputStruct[0];
                *(a1 + 104) = outputStruct[0] + v13;
                v18 = v15 + v17;
                *(a1 + 72) = v15 + v17;
                if (*(a1 + 66) == 1)
                {
                  if (*v14 == 6)
                  {
                    goto LABEL_22;
                  }

                  *(a1 + 80) = crc32c(*(a1 + 80), v14, v17);
                }

                if (*v14 == 6)
                {
                  v18 = *(a1 + 72);
LABEL_22:
                  if (v18 != *(v14 + 129))
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      APFSStreamRestoreWrite_cold_1();
                    }

                    goto LABEL_40;
                  }

                  if (*(a1 + 66) == 1)
                  {
                    v19 = ~crc32c(*(a1 + 80), v14, 137);
                  }

                  else
                  {
                    v19 = 0;
                  }

                  if (v19 != *(v14 + 137))
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      APFSStreamRestoreWrite_cold_2();
                    }

                    goto LABEL_40;
                  }

                  *(a1 + 64) = 1;
                  break;
                }
              }

              v10 = *(a1 + 100);
              if (v10 >= *(a1 + 96) || *(a1 + 64) == 1)
              {
                outputStructCnt = 4;
                v20 = *(a1 + 104);
                if (v20)
                {
                  bzero(&v26, 0x970uLL);
                  v21 = *(a1 + 112);
                  outputStruct[0] = v20;
                  outputStruct[1] = v21;
                  v22 = IOConnectCallStructMethod(*(a1 + 68), 0x27u, outputStruct, 8uLL, outputStruct, &outputStructCnt);
                  if (v22)
                  {
                    v4 = v22;
                    goto LABEL_40;
                  }

                  memmove(*(a1 + 88), (*(a1 + 88) + *(a1 + 104)), (*(a1 + 100) - *(a1 + 104)));
                  v10 = *(a1 + 100) - *(a1 + 104);
                  *(a1 + 100) = v10;
                  *(a1 + 112) = 0;
                }
              }

              v5 += v11;
              a3 -= v11;
              if (a3)
              {
                continue;
              }

              break;
            }

            v9 = *(a1 + 64);
          }

          v4 = 0;
          *a4 = v9;
        }

        else
        {
          v4 = 4294895648;
LABEL_40:
          *(a1 + 65) = 0;
        }

        pthread_mutex_unlock(a1);
      }
    }
  }

  return v4;
}

uint64_t APFSStreamRestoreFinish(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  v3 = 0;
  if (*(a1 + 65) == 1 && (a2 & 1) == 0)
  {
    bzero(outputStruct, 0x978uLL);
    v5 = 8;
    if (*(a1 + 64) == 1)
    {
      v3 = IOConnectCallStructMethod(*(a1 + 68), 0x28u, outputStruct, 4uLL, outputStruct, &v5);
    }

    else
    {
      v3 = 4294895650;
    }
  }

  free(*(a1 + 88));
  free_lock(a1);
  IOServiceClose(*(a1 + 68));
  bzero(a1, 0x478uLL);
  free(a1);
  return v3;
}

uint64_t APFSStreamFingerprintPrepare(uint64_t a1, pthread_mutex_t **a2)
{
  v3 = malloc_type_calloc(1uLL, 0x200600uLL, 0x1000040840781ABuLL);
  if (!v3)
  {
    return 49164;
  }

  v4 = v3;
  v5 = new_lock(v3);
  if (v5)
  {
    v6 = v5;
    free(v4);
    return v6 | 0xC000u;
  }

  else
  {
    CC_SHA512_Init(&v4[32788].__opaque[40]);
    crc32c_init();
    result = 0;
    *&v4[1].__opaque[16] = -1;
    *(&v4[1].__sig + 1) = 257;
    *a2 = v4;
  }

  return result;
}

uint64_t APFSStreamFingerprintWrite(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = 3758097090;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      if (a4)
      {
        v4 = 4294895651;
        pthread_mutex_lock(a1);
        if (*(a1 + 65) == 1)
        {
          v9 = *(a1 + 64);
          if (!a3 || (*(a1 + 64) & 1) != 0)
          {
LABEL_21:
            v4 = 0;
            *a4 = v9;
LABEL_24:
            pthread_mutex_unlock(a1);
            return v4;
          }

          v10 = *(a1 + 96);
          while (1)
          {
            v20 = 0;
            if (v10)
            {
              if (1048597 - v10 >= a3)
              {
                v11 = a3;
              }

              else
              {
                v11 = 1048597 - v10;
              }

              memcpy((a1 + 104 + v10), v5, v11);
              v12 = *(a1 + 96) + v11;
              *(a1 + 96) = v12;
              v5 += v11;
              a3 -= v11;
              v13 = (a1 + 104);
            }

            else
            {
              v12 = a3;
              v13 = v5;
              a3 = 0;
            }

            v20 = v12;
            v14 = delta_canonicalize((a1 + 1048704), v13, &v20, _APFSStreamFingerprintCallback, a1);
            if (*(a1 + 92))
            {
              v4 = *(a1 + 92);
              goto LABEL_23;
            }

            if (v14 == 89)
            {
              break;
            }

            if (v14 == 92)
            {
              v4 = 4294895649;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                APFSStreamFingerprintWrite_cold_3();
              }

              goto LABEL_23;
            }

            v15 = v20;
            *(a1 + 72) += v20;
            if (*(a1 + 66) == 1)
            {
              *(a1 + 88) = crc32c(*(a1 + 88), v13, v15);
              v15 = v20;
            }

            memmove((a1 + 104), &v13[v15], v12 - v15);
            v10 = v12 - v20;
            *(a1 + 96) = v12 - v20;
            if (!a3)
            {
              v9 = *(a1 + 64);
              goto LABEL_21;
            }
          }

          v17 = v20;
          v18 = *(a1 + 72) + v20;
          *(a1 + 72) = v18;
          if (*(a1 + 2098465) == v18)
          {
            if (*(a1 + 66) == 1)
            {
              v19 = ~crc32c(*(a1 + 88), v13, v17 - 4);
            }

            else
            {
              v19 = 0;
            }

            *(a1 + 88) = v19;
            if (*(a1 + 2098473) == v19)
            {
              v9 = 1;
              *(a1 + 64) = 1;
              goto LABEL_21;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              APFSStreamFingerprintWrite_cold_2();
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            APFSStreamFingerprintWrite_cold_1();
          }
        }

        else
        {
          v4 = 4294895648;
        }

LABEL_23:
        *(a1 + 65) = 0;
        goto LABEL_24;
      }
    }
  }

  return v4;
}

uint64_t _APFSStreamFingerprintCallback(uint64_t __src, CC_LONG len, uint64_t a3)
{
  v4 = *(a3 + 80);
  v5 = *__src;
  if ((v4 == 0) == (v5 == 5))
  {
    if (!*(a3 + 92))
    {
      v7 = __src;
      if ((v5 - 7) >= 6)
      {
        if (v5 == 5)
        {
          __src = memcpy((a3 + 2097312), __src, 0x400uLL);
          *(a3 + 66) = (*(v7 + 13) & 1) == 0;
          if ((*(v7 + 13) & 2) == 0)
          {
            *(a3 + 92) = -71644;
          }
        }

        else if (v5 == 6)
        {
          *(a3 + 2098336) = *__src;
          v8 = *(__src + 16);
          v9 = *(__src + 32);
          v10 = *(__src + 64);
          *(a3 + 2098384) = *(__src + 48);
          *(a3 + 2098400) = v10;
          *(a3 + 2098352) = v8;
          *(a3 + 2098368) = v9;
          v11 = *(__src + 80);
          v12 = *(__src + 96);
          v13 = *(__src + 112);
          *(a3 + 2098461) = *(__src + 125);
          *(a3 + 2098432) = v12;
          *(a3 + 2098448) = v13;
          *(a3 + 2098416) = v11;
        }
      }

      else
      {
        __src = CC_SHA512_Update((a3 + 2098480), __src, len);
        v4 = *(a3 + 80);
      }

      *(a3 + 80) = v4 + len;
    }
  }

  else
  {
    *(a3 + 92) = -71647;
  }

  return __src;
}

uint64_t APFSStreamFingerprintFinish(pthread_mutex_t *a1, char **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  *dst = 0u;
  v14 = 0u;
  v15 = 0u;
  *md = 0u;
  if (a1 && a2)
  {
    v4 = 4294895648;
    if (BYTE1(a1[1].__sig) == 1)
    {
      if (LOBYTE(a1[1].__sig) == 1)
      {
        v24 = 0;
        v22 = 0uLL;
        v23 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        *dst = 0uLL;
        uuid_copy(dst, &a1[32771].__opaque[1]);
        v5 = *&a1[32780].__opaque[12];
        v18 = *(&a1[32780].__sig + 4);
        v19 = v5;
        *&v20 = *&a1[32779].__opaque[44] & 9;
        CC_SHA512_Update(&a1[32788].__opaque[40], dst, 0x78u);
        CC_SHA512_Final(md, &a1[32788].__opaque[40]);
        v6 = malloc_type_malloc(0x81uLL, 0x6098F9FDuLL);
        if (v6)
        {
          v7 = v6;
          v8 = 0;
          v9 = md;
          do
          {
            v10 = *v9++;
            v11 = &v6[v8];
            *v11 = a0123456789abcd[v10 >> 4];
            v11[1] = a0123456789abcd[v10 & 0xF];
            v8 += 2;
          }

          while (v8 != 128);
          v6[128] = 0;
          asprintf(a2, "%s:%s", "v0,sha512", v6);
          if (*a2)
          {
            v4 = 0;
          }

          else
          {
            v4 = 49164;
          }

          free(v7);
        }

        else
        {
          v4 = 49164;
        }
      }

      else
      {
        v4 = 4294895650;
      }
    }
  }

  else
  {
    v4 = 3758097090;
    if (!a1)
    {
      return v4;
    }
  }

  free_lock(a1);
  bzero(a1, 0x200600uLL);
  free(a1);
  return v4;
}

uint64_t APFSGetFragmentationHistogram(char *a1, __CFArray **a2)
{
  outputStructCnt = 408;
  result = 49174;
  if (a1 && a2)
  {
    v17 = 0;
    bzero(&outputStruct, 0x978uLL);
    if (apfs_container_iouc(a1, 0, &v17, 0, 0))
    {
      result = apfs_container_iouc(a1, &outputStruct, &v17, 0, 0);
      if (result)
      {
        return result;
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v16 = v5;
    v6 = IOConnectCallStructMethod(v17, 0x2Eu, &outputStruct, 8uLL, &outputStruct, &outputStructCnt);
    IOServiceClose(v17);
    if (v6)
    {
      if (rc_to_errno(v6) == 4)
      {
        return 49187;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v7 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 51, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = 0;
        for (i = &outputStruct; ; i += 2)
        {
          v12 = CFNumberCreate(v7, kCFNumberIntType, i);
          if (!v12)
          {
            break;
          }

          v13 = v12;
          CFArraySetValueAtIndex(v9, v10, v12);
          CFRelease(v13);
          if (++v10 == 51)
          {
            result = 0;
            *a2 = v9;
            return result;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          APFSGetFragmentationHistogram_cold_1();
        }

        CFRelease(v9);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSGetFragmentationHistogram_cold_2();
      }

      return 49164;
    }
  }

  return result;
}

uint64_t APFSContainerWriteBurstStats(char *a1, CFMutableDictionaryRef *a2)
{
  valuePtr = 0;
  v19 = 0;
  v16 = 0.0;
  v17 = 45000000;
  v2 = 49174;
  v15 = 0.0;
  if (!a1 || !a2)
  {
    return v2;
  }

  *a2 = 0;
  container_io_object = get_container_io_object(a1);
  if (!container_io_object)
  {
    return 49154;
  }

  v5 = container_io_object;
  v6 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(container_io_object, @"Statistics", *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    IOObjectRelease(v5);
    return 49154;
  }

  v8 = CFProperty;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  number = get_number(CFProperty, @"Write burst: Burst count", &v24);
  if (number || (number = get_number(v8, @"Write burst: Total time", &v23), number) || (number = get_number(v8, @"Write burst: Total number of bytes written", &v22), number) || (number = get_number(v8, @"Write burst: Total number of I/Os", &v21), number) || (number = get_number(v8, @"Write burst: Total time between bursts", &v20), number))
  {
    v2 = number;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(v6, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = Mutable;
  if (Mutable)
  {
    v17 = 45;
    v13 = v23 / 0xF4240;
    v23 /= 0xF4240uLL;
    v14 = v20 / 0xF4240;
    v20 /= 0xF4240uLL;
    if (v24)
    {
      v16 = v13 / v24;
      valuePtr = v21 / v24;
      v19 = v22 / v24;
      if (v24 != 1)
      {
        v15 = v14 / (v24 - 1);
      }
    }

    if (add_number(Mutable, @"wb_average_io_count", kCFNumberSInt64Type, &valuePtr) && add_number(v10, @"wb_average_time", kCFNumberDoubleType, &v16) && add_number(v10, @"wb_average_capacity", kCFNumberSInt64Type, &v19) && add_number(v10, @"wb_average_time_between", kCFNumberDoubleType, &v15) && add_number(v10, @"wb_period_threshold", kCFNumberSInt64Type, &v17))
    {
      v2 = 0;
      *a2 = v10;
      goto LABEL_11;
    }
  }

  v2 = 49164;
LABEL_12:
  IOObjectRelease(v5);
  CFRelease(v8);
  if (v10)
  {
    CFRelease(v10);
  }

  return v2;
}

uint64_t get_number(const __CFDictionary *a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 49154;
  }

  if (CFNumberGetValue(Value, kCFNumberSInt64Type, a3))
  {
    return 0;
  }

  return 49174;
}

BOOL add_number(__CFDictionary *a1, const void *a2, CFNumberType theType, void *valuePtr)
{
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], theType, valuePtr);
  if (v6)
  {
    CFDictionaryAddValue(a1, a2, v6);
    CFRelease(v6);
  }

  return v6 != 0;
}

uint64_t APFSVolumeSetOtiLockerData(char *a1, unsigned __int8 *uu, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 22;
  }

  if (!a5)
  {
    return 22;
  }

  v7 = a3;
  if (uuid_is_null(uu))
  {
    return 22;
  }

  return _APFSVolumeOtiRequestHelper(a1, uu, v7, a4, a5, 2, 0);
}

uint64_t _APFSVolumeOtiRequestHelper(char *a1, const unsigned __int8 *a2, __int16 a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  outputStructCnt = 16;
  if (!a1)
  {
    return 22;
  }

  v23 = 0;
  bzero(&outputStruct, 0x978uLL);
  v14 = apfs_container_iouc(a1, &outputStruct, &v23, 0, 0);
  if (!v14)
  {
    HIDWORD(outputStruct) = a6;
    v19 = a3;
    if (a2)
    {
      uuid_copy(v20, a2);
    }

    v21 = a5;
    v22 = a4;
    v15 = IOConnectCallStructMethod(v23, 0x4Cu, &outputStruct, 0x30uLL, &outputStruct, &outputStructCnt);
    v14 = v15;
    if (a6 == 4 || a6 == 1)
    {
      *a7 = outputStruct;
      if (!v15)
      {
        if (v19)
        {
          v14 = 49207;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    IOServiceClose(v23);
  }

  return rc_to_errno(v14);
}

uint64_t APFSVolumeGetOtiLockerData(char *a1, unsigned __int8 *uu, __int16 a3, uint64_t a4, uint64_t a5, void *a6)
{
  is_null = uuid_is_null(uu);
  if (!a6 || is_null)
  {
    return 22;
  }

  return _APFSVolumeOtiRequestHelper(a1, uu, a3, a4, a5, 1, a6);
}

uint64_t APFSVolumeListOtiLockerData(char *a1, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    return _APFSVolumeOtiRequestHelper(a1, 0, a2, a3, a4, 4, a5);
  }

  else
  {
    return 22;
  }
}

uint64_t APFSVolumeDeleteOtiLockerData(char *a1, unsigned __int8 *uu, __int16 a3)
{
  if (uuid_is_null(uu))
  {
    return 22;
  }

  return _APFSVolumeOtiRequestHelper(a1, uu, a3, 0, 0, 3, 0);
}

uint64_t APFSVolumeTranscribePFK(char *a1)
{
  v1 = _APFSVolumeOperation(a1, 0x42u, 0, 0);

  return rc_to_errno(v1);
}

uint64_t APFSVolumeMigrateMediaKey(char *a1)
{
  v1 = _APFSVolumeOperation(a1, 0x43u, 0, 0);

  return rc_to_errno(v1);
}

uint64_t volumeNeedsCryptoMigrationHelper(char *a1, char a2, _BYTE *a3)
{
  outputStructCnt = 1;
  result = 22;
  if (a1 && a3)
  {
    v13 = 0;
    bzero(&outputStruct, 0x978uLL);
    v7 = apfs_container_iouc(a1, &outputStruct, &v13, 0, 0);
    v8 = v7;
    if (!v7)
    {
      v12 = a2;
      v9 = IOConnectCallStructMethod(v13, 0x44u, &outputStruct, 8uLL, &outputStruct, &outputStructCnt);
      v8 = v9;
      if (!v9)
      {
        *a3 = outputStruct;
      }

      IOServiceClose(v13);
    }

    return v8 & 0x3FFF;
  }

  return result;
}

uint64_t APFSVolumeGetPurgeableSpace(char *a1, char a2, unint64_t a3, unint64_t a4)
{
  outputStructCnt = 16;
  if (!a1 || !(a3 | a4))
  {
    return 22;
  }

  v13 = 0;
  bzero(&outputStruct, 0x978uLL);
  v8 = apfs_container_iouc(a1, &outputStruct, &v13, 0, 0);
  if (!v8)
  {
    v12 = a2 & 0x1F;
    v8 = IOConnectCallStructMethod(v13, 0x47u, &outputStruct, 0x10uLL, &outputStruct, &outputStructCnt);
    if (!v8)
    {
      if (a3)
      {
        *a3 = outputStruct;
      }

      if (a4)
      {
        *a4 = v12;
      }
    }

    IOServiceClose(v13);
  }

  return rc_to_errno(v8);
}

uint64_t APFSVolumePerformOfflinePurge(char *a1, __int128 *a2, uint64_t a3)
{
  outputStructCnt = 24;
  result = 22;
  if (a1 && a2 && a3)
  {
    v22 = 0;
    bzero(outputStruct, 0x978uLL);
    v7 = a2[4];
    v18 = a2[5];
    v8 = a2[7];
    v19 = a2[6];
    v20 = v8;
    v21 = a2[8];
    v9 = *a2;
    v14 = a2[1];
    v10 = a2[3];
    v15 = a2[2];
    v16 = v10;
    v17 = v7;
    *&outputStruct[8] = v9;
    v11 = apfs_container_iouc(a1, outputStruct, &v22, 0, 0);
    if (!v11)
    {
      v11 = IOConnectCallStructMethod(v22, 0x49u, outputStruct, 0x98uLL, outputStruct, &outputStructCnt);
      if (!v11)
      {
        *a3 = *outputStruct;
        *(a3 + 16) = *&outputStruct[16];
      }

      IOServiceClose(v22);
    }

    return rc_to_errno(v11);
  }

  return result;
}

uint64_t APFSVolumeCancelOfflinePurge(char *a1)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  v6 = 0;
  bzero(inputStruct, 0x978uLL);
  v2 = apfs_container_iouc(a1, inputStruct, &v6, 0, 0);
  if (!v2)
  {
    v2 = IOConnectCallStructMethod(v6, 0x4Au, inputStruct, 0x10uLL, 0, &outputStructCnt);
    IOServiceClose(v6);
  }

  return rc_to_errno(v2);
}

uint64_t APFSCaptureCreatePreallocFile(const char *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  memset(&v10, 0, sizeof(v10));
  *__error() = 0;
  if (lstat(a1, &v10) < 0 && *__error() != 2)
  {
    return *__error() | 0xC000u;
  }

  if (*__error())
  {
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  if ((v10.st_mode & 0xF000) != 0xA000)
  {
    if ((unlink(a1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    return *__error() | 0xC000u;
  }

  v8 = realpath_DARWIN_EXTSN(a1, 0);
  if (!v8)
  {
    if (*__error() == 2)
    {
      goto LABEL_4;
    }

    return *__error() | 0xC000u;
  }

  v4 = v8;
  if (unlink(v8) < 0)
  {
    v7 = *__error() | 0xC000u;
    goto LABEL_16;
  }

LABEL_5:
  v5 = open(a1, 514, 384);
  if (v5 < 0)
  {
    v7 = *__error() | 0xC000u;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_16;
  }

  v6 = v5;
  v11 = 0x30000000CuLL;
  *&v12 = a2;
  if (fcntl(v5, 42, &v11) < 0)
  {
    v7 = *__error() | 0xC000u;
  }

  else
  {
    v7 = 0;
  }

  close(v6);
  if (v4)
  {
LABEL_16:
    free(v4);
  }

  return v7;
}

uint64_t APFSCaptureFinishCaptureForFile(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2)
{
  v3 = a1;
  memset(&v20, 0, sizeof(v20));
  if (lstat(a1, &v20) < 0)
  {
    return *__error() | 0xC000u;
  }

  st_mode = v20.st_mode;
  if ((v20.st_mode & 0xF000) != 0xA000)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = realpath_DARWIN_EXTSN(v3, 0);
  if (!v6)
  {
    return *__error() | 0xC000u;
  }

  v7 = v6;
  if (stat(v6, &v20) < 0)
  {
    v9 = 0;
    v14 = 0;
    v8 = *__error() | 0xC000u;
    v11 = -1;
    v13 = -1;
LABEL_34:
    free(v7);
    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  st_mode = v20.st_mode;
  v3 = v7;
LABEL_8:
  if ((st_mode & 0xF000) != 0x8000)
  {
    v14 = 0;
    v9 = 0;
    goto LABEL_19;
  }

  *__error() = 0;
  if (lstat(a2, &v20) < 0 && *__error() != 2)
  {
    goto LABEL_51;
  }

  if (*__error())
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
  v17 = v20.st_mode & 0xF000;
  if (v17 != 0x8000)
  {
    if (v17 == 40960)
    {
      v18 = realpath_DARWIN_EXTSN(a2, 0);
      if (v18)
      {
        v9 = v18;
        if ((stat(v18, &v20) & 0x80000000) == 0)
        {
          a2 = v9;
          goto LABEL_13;
        }

        v19 = __error();
        v14 = 0;
        goto LABEL_52;
      }

      if (*__error() == 2)
      {
        goto LABEL_12;
      }

LABEL_51:
      v19 = __error();
      v14 = 0;
      v9 = 0;
LABEL_52:
      v8 = *v19 | 0xC000u;
      goto LABEL_20;
    }

    v14 = 0;
LABEL_19:
    v8 = 49231;
LABEL_20:
    v13 = -1;
    v11 = -1;
    goto LABEL_21;
  }

LABEL_13:
  rename(v3, a2, v4);
  if (v10 < 0)
  {
    v8 = *__error() | 0xC000u;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      APFSCaptureFinishCaptureForFile_cold_2();
    }

    v14 = 0;
    goto LABEL_20;
  }

  v11 = open(a2, 2);
  if (v11 < 0)
  {
    v8 = *__error() | 0xC000u;
    v14 = 1;
    v13 = -1;
  }

  else
  {
    v12 = open(v3, 1538, 384);
    v13 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v8 = *__error() | 0xC000u;
    }

    else if (fcntl(v11, 110, v12) < 0)
    {
      v8 = *__error() | 0xC000u;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSCaptureFinishCaptureForFile_cold_1();
      }
    }

    else
    {
      v8 = 0;
    }

    v14 = 1;
  }

LABEL_21:
  if (v7)
  {
    goto LABEL_34;
  }

  if (v9)
  {
LABEL_23:
    free(v9);
  }

LABEL_24:
  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  if ((v13 & 0x80000000) == 0)
  {
    close(v13);
  }

  v15 = v14 ^ 1;
  if (!v8)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    rename(a2, v3, v4);
  }

  return v8;
}

uint64_t APFSCaptureExtendPreallocSizeForFile(const char *a1, uint64_t a2)
{
  v7[3] = 0;
  v3 = open(a1, 2);
  if (v3 < 0)
  {
    return *__error() | 0xC000u;
  }

  v4 = v3;
  v7[0] = 0x300000004;
  v7[1] = 0;
  v7[2] = a2;
  if (fcntl(v3, 42, v7) < 0)
  {
    v5 = *__error() | 0xC000u;
  }

  else
  {
    v5 = 0;
  }

  close(v4);
  return v5;
}

uint64_t APFSCaptureDeletePreallocFile(const char *a1)
{
  if (unlink(a1) < 0)
  {
    return *__error() | 0xC000u;
  }

  else
  {
    return 0;
  }
}

uint64_t APFSContainerCommitTemporaryCheckpoint(int *a1)
{
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  parse_nx_mount_options(0, &v10);
  LOWORD(v11) = v11 & 0xEFFE | 1;
  if (enhanced_apfs_enabled())
  {
    LOWORD(v11) = v11 | 0x2000;
  }

  v2 = nx_mount(a1, &v10, &v13);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      APFSContainerCommitTemporaryCheckpoint_cold_1();
    }
  }

  else
  {
    v9 = 0;
    v4 = tx_enter(v13, &v9);
    if (v4)
    {
      v3 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerCommitTemporaryCheckpoint_cold_2();
      }
    }

    else
    {
      v3 = tx_leave(v13, v9, 5);
      if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSContainerCommitTemporaryCheckpoint_cold_3();
      }
    }

    nx_unmount(v13, v5, v6, v7);
  }

  return v3;
}

uint64_t APFSVolumeConvertToUserCrypto(char *a1, uint64_t a2)
{
  outputStructCnt = 144;
  if (!a1)
  {
    return 22;
  }

  v25 = 0;
  bzero(outputStruct, 0x978uLL);
  memset(v22, 0, sizeof(v22));
  v4 = time(0);
  v5 = apfs_container_iouc(a1, outputStruct, &v25, 0, 0);
  if (v5)
  {
    v6 = v5 & 0x3FFF;
    record_failure(v22, 1126051, v6);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      APFSVolumeConvertToUserCrypto_cold_1(a1, v6);
      if (!a2)
      {
        return v6;
      }

      goto LABEL_10;
    }

LABEL_9:
    if (!a2)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v6 = IOConnectCallStructMethod(v25, 0x45u, outputStruct, 4uLL, outputStruct, &outputStructCnt);
  v22[6] = outputStruct[6];
  v22[7] = outputStruct[7];
  v22[8] = outputStruct[8];
  v22[2] = outputStruct[2];
  v22[3] = outputStruct[3];
  v22[4] = outputStruct[4];
  v22[5] = outputStruct[5];
  v22[0] = outputStruct[0];
  v22[1] = outputStruct[1];
  IOServiceClose(v25);
  if (!v6)
  {
    goto LABEL_9;
  }

  v6 &= 0x3FFFu;
  record_failure(v22, 1126052, v6);
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_9;
  }

  APFSVolumeConvertToUserCrypto_cold_2(a1, v6);
  if (!a2)
  {
    return v6;
  }

LABEL_10:
  bzero(v9, 0x2F0uLL);
  v9[2] = *&v22[0];
  v10 = DWORD2(v22[0]);
  v13 = *(&v22[2] + 12);
  v11 = *(v22 + 12);
  v12 = *(&v22[1] + 12);
  v14 = DWORD1(v22[3]);
  v16 = *(&v22[4] + 8);
  v17 = *(&v22[5] + 8);
  v18 = *(&v22[6] + 8);
  v19 = *(&v22[7] + 8);
  v15 = *(&v22[3] + 8);
  v21 = HIDWORD(v22[8]);
  v20 = DWORD2(v22[8]);
  set_metric_path(v9, a1);
  set_metric_start_time(v9, v4);
  if (*a2 == 45 && !*(a2 + 1))
  {
    v7 = *MEMORY[0x277D85E08];
    if (*MEMORY[0x277D85E08])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = fopen(a2, "w");
    if (v7)
    {
LABEL_13:
      set_metrics_file(v9, v7);
      print_metrics_to_file(v9, 2);
      return v6;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    APFSVolumeConvertToUserCrypto_cold_3();
  }

  return v6;
}

uint64_t APFSDecodeMetricsString(char *a1)
{
  bzero(&v4, 0x2F0uLL);
  set_metric_default_values(&v4);
  if (MetricsCompactor_Import(a1, &v4))
  {
    print_metrics(&v4, 1);
    v2 = v5;
    v5 = 0;
  }

  else
  {
    v2 = 0;
  }

  cleanup_metrics(&v4);
  return v2;
}

uint64_t APFSShouldSealSystemVolume(_BYTE *a1)
{
  if (!a1)
  {
    return 49174;
  }

  v2 = arv_enabled();
  result = 0;
  *a1 = v2;
  return result;
}

uint64_t APFSGetExclavePath(int a1, char *a2)
{
  v4 = 0;
  v5 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v6 = 3;
  v7 = MEMORY[0x277D86220];
  while (1)
  {
    v15 = 0;
    if (fsctl("/", 0xC010411BuLL, &v14, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSGetExclavePath_cold_1();
      }

      return *__error() | 0xC000u;
    }

    v8 = v14;
    if (!v14)
    {
      return 49154;
    }

    if (v14 > v5)
    {
      break;
    }

LABEL_7:
    v15 = v4;
    if (!fsctl("/", 0xC010411BuLL, &v14, 0))
    {
      v10 = v14;
      if (!v14)
      {
LABEL_19:
        free(v4);
        return 49154;
      }

      v11 = v4 + 2;
      while (*(v11 - 4) != a1)
      {
        v11 += 4;
        if (!--v10)
        {
          goto LABEL_19;
        }
      }

      if ((fsgetpath(a2, 0x400uLL, (v11 - 12), *v11) & 0x8000000000000000) == 0)
      {
        free(v4);
        return 0;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSGetExclavePath_cold_4();
      }

LABEL_23:
      free(v4);
      return *__error() | 0xC000u;
    }

    if (*__error() != 28)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSGetExclavePath_cold_2();
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "APFSGetExclavePath";
      v18 = 1024;
      v19 = 6424;
      _os_log_error_impl(&dword_23D23F000, v7, OS_LOG_TYPE_ERROR, "%s:%d: fsctl failed with ENOSPC, retrying...", buf, 0x12u);
    }

    if (!--v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        APFSGetExclavePath_cold_3();
      }

      free(v4);
      return 49180;
    }
  }

  free(v4);
  v9 = malloc_type_calloc(v8, 0x20uLL, 0x100004017768742uLL);
  if (v9)
  {
    v4 = v9;
    v5 = v8;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    APFSGetExclavePath_cold_5();
  }

  return 49164;
}

uint64_t APFSContainerWaitForReaper(char *a1)
{
  connection = 0;
  v3 = 0;
  v1 = apfs_container_iouc(a1, 0, &connection, 0, 0);
  if (!v1)
  {
    v1 = IOConnectCallStructMethod(connection, 0x50u, 0, 0, 0, &v3);
    IOServiceClose(connection);
  }

  return rc_to_errno(v1);
}

CFTypeID records_callback(const __CFString *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  v7 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v7 == result)
  {
    v9 = CFGetTypeID(a2);
    result = CFDataGetTypeID();
    if (v9 == result)
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
      uuid_parse(CStringPtr, (*(a3 + 48) + 16 * v6));
      **(*(a3 + 56) + 8 * v6) = CFDataGetBytePtr(a2);
      result = CFDataGetLength(a2);
      *(*(*(a3 + 56) + 8 * v6) + 8) = result;
      ++*(a3 + 40);
    }
  }

  return result;
}

uint64_t keygen_nvram_prop(int a1)
{
  v2 = CFStringCreateWithCString(0, "apfs_roll_keygen", 0x8000100u);
  if (v2)
  {
    v3 = v2;
    v4 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IODeviceTree:/options");
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = IORegistryEntrySetCFProperty(v4, @"IONVRAM-DELETE-PROPERTY", v3);
        if (!v6)
        {
          v8 = 1;
LABEL_19:
          CFRelease(v3);
          goto LABEL_20;
        }

        v7 = v6;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          keygen_nvram_prop_cold_2(v7);
        }
      }

      else
      {
        CFProperty = IORegistryEntryCreateCFProperty(v4, v3, 0, 0);
        if (CFProperty)
        {
          v10 = CFProperty;
          CFRelease(v3);
          CFRelease(v10);
          v8 = 1;
LABEL_20:
          IOObjectRelease(v5);
          return v8;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          keygen_nvram_prop_cold_1();
        }
      }

      v8 = 0;
      goto LABEL_19;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      keygen_nvram_prop_cold_3();
    }

    CFRelease(v3);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    keygen_nvram_prop_cold_4();
  }

  return 0;
}

uint64_t (*tree_key_compare_function_for_type(unsigned __int16 a1))()
{
  v1 = spaceman_free_queue_key_cmp;
  if (a1 <= 0x1Eu)
  {
    if (a1 <= 0xDu)
    {
      switch(a1)
      {
        case 9u:
          return v1;
        case 0xAu:
          return extent_list_key_cmp;
        case 0xBu:
          return omap_key_cmp;
      }

      return 0;
    }

    if (a1 - 14 >= 3)
    {
      if (a1 == 19)
      {
        return omap_snapshot_key_cmp;
      }

      return 0;
    }

    return apfs_key_compare;
  }

  if (a1 <= 0x21u)
  {
    switch(a1)
    {
      case 0x1Fu:
        return fext_tree_key_cmp;
      case 0x20u:
        return pfkur_tree_key_cmp;
      case 0x21u:
        return evict_mapping_key_compare;
    }

    return 0;
  }

  if (a1 > 0x23u)
  {
    if (a1 != 36)
    {
      if (a1 == 255)
      {
        return test_key_compare_function;
      }

      return 0;
    }

    return apfs_key_compare;
  }

  if (a1 == 34)
  {
    return doc_id_tree_key_cmp;
  }

  else
  {
    return graft_blockmap_lut_tree_key_compare;
  }
}

uint64_t parse_str_to_role(const char *a1)
{
  if (strnlen(a1, 2uLL) > 1)
  {
    return -1;
  }

  v3 = *a1;
  switch(*a1)
  {
    case 'S':
      return 448;
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'f':
    case 'g':
    case 'j':
    case 'l':
    case 'm':
    case 'q':
    case 't':
    case 'w':
      return -1;
    case 'a':
      return 128;
    case 'b':
      return 16;
    case 'c':
      return 768;
    case 'd':
      return 64;
    case 'e':
      return 576;
    case 'h':
      return 320;
    case 'i':
      return 32;
    case 'k':
      return 384;
    case 'n':
      return 512;
    case 'o':
      return 704;
    case 'p':
      return 192;
    case 'r':
      return 4;
    case 's':
      return 1;
    case 'u':
      return 2;
    case 'v':
      return 8;
    case 'x':
      return 256;
    default:
      if (v3 == 48)
      {
        result = 0;
      }

      else
      {
        if (v3 != 68)
        {
          return -1;
        }

        result = 640;
      }

      break;
  }

  return result;
}

unint64_t calc_overlap_range(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2 + a1;
  v6 = a4 + a3;
  if (a2 + a1 > a3)
  {
    v7 = v6 >= a1;
    v8 = v6 == a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = !v8 && v7 && v5 >= a1;
  if (!v9 || v6 < a3)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1;
  }

  if (v5 >= v6)
  {
    v5 = a4 + a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v5 - v11;
}

uint64_t ilog10(unint64_t a1)
{
  if (a1 > 0x8AC7230489E7FFFFLL)
  {
    return 19;
  }

  if (a1 > 0xDE0B6B3A763FFFFLL)
  {
    return 18;
  }

  if (a1 > 0x16345785D89FFFFLL)
  {
    return 17;
  }

  if (a1 > 0x2386F26FC0FFFFLL)
  {
    return 16;
  }

  if (a1 > 0x38D7EA4C67FFFLL)
  {
    return 15;
  }

  if (a1 > 0x5AF3107A3FFFLL)
  {
    return 14;
  }

  if (a1 > 0x9184E729FFFLL)
  {
    return 13;
  }

  if (a1 > 0xE8D4A50FFFLL)
  {
    return 12;
  }

  if (a1 > 0x174876E7FFLL)
  {
    return 11;
  }

  if (a1 > 0x2540BE3FFLL)
  {
    return 10;
  }

  if (a1 > 0x3B9AC9FF)
  {
    return 9;
  }

  if (a1 > 0x5F5E0FF)
  {
    return 8;
  }

  if (a1 > 0x98967F)
  {
    return 7;
  }

  if (a1 > 0xF423F)
  {
    return 6;
  }

  if (a1 >> 5 > 0xC34)
  {
    return 5;
  }

  if (a1 >> 4 > 0x270)
  {
    return 4;
  }

  if (a1 > 0x3E7)
  {
    return 3;
  }

  if (a1 <= 0x63)
  {
    return a1 > 9;
  }

  return 2;
}

uint64_t rc_to_errno(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((result & 0x3FFF | 0xC000) == result)
  {
    return result & 0x3FFF;
  }

  if (result < 0x6C)
  {
    return result;
  }

  result = 6;
  if (v1 > -536870194)
  {
    if (v1 > -536870182)
    {
      if (v1 <= -536870173)
      {
        if (v1 != -536870181)
        {
          if (v1 == -536870174)
          {
            return 1;
          }

          return 94;
        }

        return 28;
      }

      if (v1 == -536870172)
      {
        return result;
      }

      v3 = 745;
    }

    else
    {
      if (v1 <= -536870188)
      {
        if (v1 != -536870193)
        {
          if (v1 != -536870190)
          {
            return 94;
          }

          return 16;
        }

        return 30;
      }

      if (v1 == -536870187)
      {
        return 16;
      }

      v3 = 729;
    }

    if (v1 != (v3 | 0xE0000000))
    {
      return 94;
    }

    return result;
  }

  if (v1 > -536870207)
  {
    if (v1 <= -536870199)
    {
      if (v1 != -536870206)
      {
        if (v1 == -536870201)
        {
          return 45;
        }

        return 94;
      }

      return 22;
    }

    if (v1 == -536870198)
    {
      return 5;
    }

    v2 = 717;
LABEL_25:
    if (v1 == (v2 | 0xE0000000))
    {
      return 13;
    }

    return 94;
  }

  if (v1 == -536870211)
  {
    return 12;
  }

  if (v1 != -536870208)
  {
    v2 = 705;
    goto LABEL_25;
  }

  return result;
}

uint64_t doc_id_tree_key_cmp(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t gbitmap_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t gbitmap_block_init(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t gbitmap_init_phys(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  v5 = *a3;
  a1[4] = a3[2];
  a1[5] = v5;
  a1[6] = 0;
  return result;
}

uint64_t gbitmap_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *(a1 + 56);
  *(a1 + 408) = 8 * *(a1 + 48) - 256;
  if (a2)
  {
    *(a1 + 384) = *(a2 + 24);
  }

  return 0;
}

uint64_t gbitmap_reap(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[1];
  v9 = *(*a1 + 392);
  if (v8)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = *(*a1 + 392);
  }

  v36 = a1[2];
  v41 = 0;
  if (v8)
  {
    v11 = obj_modify(v8, 0, a5);
    if (v11)
    {
      v12 = v11;
      if (obj_type(v8) == 13)
      {
        v13 = (v8 + 505);
      }

      else
      {
        v13 = (v8[48] + 212);
      }

      v14 = obj_oid(v8);
      log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "gbitmap_reap", 160, v13, v14, v12);
    }
  }

  tree = gbitmap_get_tree(a1, 0, 0, &v41);
  if (tree)
  {
    v16 = tree;
    if (obj_type(v10) == 13)
    {
      v17 = (v10 + 4040);
    }

    else
    {
      v17 = (*(v10 + 384) + 212);
    }

    log_err("%s:%d: %s Can't get tree: %d\n", "gbitmap_reap", 166, v17, v16);
  }

  if (v41)
  {
    v18 = *a3;
    v39 = 0;
    v40 = v18;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    bt_iterator_init(v37, v41, 0, 0, &v40, 8, 8, &v39, 8u);
    v20 = v19;
    v35 = (v10 + 4040);
    v21 = 1023;
    if (v19)
    {
LABEL_31:
      if (v20 != 2)
      {
        if (obj_type(v10) == 13)
        {
          log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, v35, v20, v40);
        }

        else
        {
          log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, (*(v10 + 384) + 212), v20, v40);
        }
      }
    }

    else
    {
      while (!bt_iterator_ended(v37))
      {
        if ((v36 & 0x40000000) != 0 && (v22 = v39, (v39 & 0x8000000000000000) != 0))
        {
          v39 &= ~0x8000000000000000;
          spaceman_free(v10, 64, v22 & 0x7FFFFFFFFFFFFFFFLL, 1, a5);
        }

        else
        {
          v23 = *(a1 + 4);
          if (v8)
          {
            v24 = obj_oid(v8);
          }

          else
          {
            v24 = 0;
          }

          v25 = *(v9 + 392);
          v26 = v23 & 0xD8000000 | 0x1B;
          v27 = obj_size_phys(a1);
          v28 = obj_delete_and_free_by_oid(v25, v26, v27, v24, v39, a5);
          if (v28)
          {
            v29 = v28;
            if (obj_type(v10) == 13)
            {
              log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, v35, v29, v40, v39, v26);
            }

            else
            {
              log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, (*(v10 + 384) + 212), v29, v40, v39, v26);
            }
          }
        }

        *a3 = v40 + 1;
        if (!v21)
        {
          v30 = 36;
          goto LABEL_41;
        }

        v20 = bt_iterator_next(v37);
        --v21;
        if (v20)
        {
          goto LABEL_31;
        }
      }
    }

    v31 = btree_delete(v41, a5, 0);
    if (v31)
    {
      v32 = v31;
      if (obj_type(v10) != 13)
      {
        v35 = (*(v10 + 384) + 212);
      }

      v33 = obj_oid(v41);
      log_err("%s:%d: %s Tree delete oid %llu threw %d\n", "gbitmap_reap", 208, v35, v33, v32);
    }
  }

  obj_delete_and_free(a1, a5);
  v30 = 0;
LABEL_41:
  if (v41)
  {
    obj_release(v41);
  }

  return v30;
}

uint64_t gbitmap_get_tree(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  *a4 = 0;
  v9 = obj_flags(a1);
  return btree_get(v8, v9 & 0xFFFFFC00, *(a1[47] + 32), a2, 3, a3 != 0, 26, gbitmap_key_compare, a3, a4);
}

const char *log_debug(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 5)
  {
    return vfprintf(*MEMORY[0x277D85DF8], result, va);
  }

  return result;
}

const char *log_info(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 4)
  {
    return vfprintf(*MEMORY[0x277D85DF8], result, va);
  }

  return result;
}

const char *log_warn(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 3)
  {
    return vfprintf(*MEMORY[0x277D85DF8], result, va);
  }

  return result;
}

const char *log_err(const char *result, ...)
{
  va_start(va, result);
  if (apfs_log_level >= 2)
  {
    return vfprintf(*MEMORY[0x277D85DF8], result, va);
  }

  return result;
}

uint64_t log_corrupt(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  if (apfs_log_level >= 1)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a2, va);
  }

  return result;
}

void jobj_release(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a2)
  {
    switch(*a2)
    {
      case 1u:
        _apfs_free(*(a2 + 9), *(a2 + 32));
        goto LABEL_21;
      case 2u:
        v5 = a2;
        v4 = 40;
        goto LABEL_27;
      case 3u:
        if ((*(a2 + 48) & 0xF000) == 0xA000)
        {
          v6 = *(a2 + 44);
          if (v6)
          {
            _apfs_free(v6, *(a2 + 90));
            *(a2 + 44) = 0;
          }
        }

        xf_release((a2 + 408), a2, a3);
        if ((a2[117] & 0x10) != 0)
        {
          free_rwlock((a2 + 448));
          free_rwlock((a2 + 120));
          *(a2 + 14) &= ~0x100000000000uLL;
        }

        _apfs_zfree(a2, 2u);
        return;
      case 4u:
      case 5u:
      case 7u:
      case 0xBu:
        goto LABEL_3;
      case 6u:
      case 0xCu:
        v5 = a2;
        v4 = 24;
        goto LABEL_27;
      case 8u:
        v5 = a2;
        v4 = 56;
        goto LABEL_27;
      case 9u:
        xf_release((a2 + 32), a2, a3);
        _apfs_free(*(a2 + 8), *(a2 + 31));
        goto LABEL_26;
      case 0xAu:
      case 0x12u:
        xf_release((a2 + 64), a2, a3);
        v5 = a2;
        v4 = 96;
        goto LABEL_27;
      case 0xDu:
        v7 = a2[16];
        if (v7 == 2)
        {
          goto LABEL_20;
        }

        if (v7 != 1)
        {
          return;
        }

LABEL_3:
        v4 = *(a2 + 1);
        v5 = a2;
LABEL_27:

        _apfs_free(v5, v4);
        break;
      case 0x10u:
LABEL_20:
        xf_release((a2 + 56), a2, a3);
LABEL_21:
        v5 = a2;
        v4 = 80;
        goto LABEL_27;
      case 0x11u:
        v5 = a2;
        v4 = 32;
        goto LABEL_27;
      case 0x13u:
        xf_release((a2 + 48), a2, a3);
LABEL_26:
        v5 = a2;
        v4 = 72;
        goto LABEL_27;
      default:
        log_err("%s:%d: *** Can't release unknown obj type %d\n", "jobj_release", 2834, *a2);
        return;
    }
  }
}

uint64_t make_jkey_from_jobj(uint64_t result, unsigned __int8 *a2, uint64_t a3, int *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a2;
  v10 = v8 << 60;
  v11 = (v8 & 0xF0) == 0;
  v12 = 0xE000000000000000;
  if (v11)
  {
    v12 = v10;
  }

  *a3 = v12 & 0xF000000000000000 | *(a2 + 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v9 >= 0x10)
  {
    if ((*(*(result + 376) + 57) & 2) == 0)
    {
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(result + 392));
      result = log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s ***: expanded obj type %d (obj_id %llu) found on unsupported volume\n", "make_jkey_from_jobj", 1209, (v7 + 4040), *a2, *(a2 + 1));
      *a4 = 0;
      return result;
    }

    if ((v9 & 0xFC) == 0x10)
    {
      *(a3 + 8) = v9;
    }

    else
    {
      v14 = nx_is_panic_on_corruption_enabled(*(result + 392));
      result = log_corrupt(v14, "%s:%d: %s Cannot make large jkey from unknown type %d (obj_id %llu)\n", "make_large_jkey_header_from_jobj", 1186, (v7 + 4040), *a2, *(a2 + 1));
      v9 = *a2;
    }
  }

  switch(v9)
  {
    case 4u:
      v20 = *(a2 + 10);
      *(a3 + 8) = v20;
      result = memcpy((a3 + 10), a2 + 24, v20);
      v21 = *(a2 + 10);
      goto LABEL_23;
    case 5u:
    case 8u:
      *(a3 + 8) = *(a2 + 2);
      v15 = 16;
      goto LABEL_26;
    case 9u:
      v17 = *(a2 + 31);
      if ((*(*(v7 + 376) + 56) & 9) != 0)
      {
        *(a3 + 8) = *(a2 + 31) & 0x3FF | (*(a2 + 14) << 10);
        v18 = 12;
        v19 = 12;
      }

      else
      {
        *(a3 + 8) = v17;
        v18 = 10;
        v19 = 10;
      }

      result = memcpy((a3 + v18), *(a2 + 8), v17);
      v15 = v19 + *(a2 + 31);
      goto LABEL_26;
    case 0xAu:
      v15 = 96;
      goto LABEL_26;
    case 0xBu:
      v22 = *(a2 + 12);
      *(a3 + 8) = v22;
      result = memcpy((a3 + 10), a2 + 26, v22);
      v21 = *(a2 + 12);
LABEL_23:
      v15 = v21 + 10;
      goto LABEL_26;
    case 0xDu:
      *a4 = 16;
      *(a3 + 8) = __ROR8__(*(a2 + 2), 8);
      return result;
    case 0xEu:
      *a4 = 0;
      v16 = nx_is_panic_on_corruption_enabled(*(v7 + 392));
      return log_corrupt(v16, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", "make_jkey_from_jobj", 1324, (v7 + 4040));
    case 0x10u:
    case 0x13u:
      *(a3 + 12) = *(a2 + 1);
      v15 = 28;
      goto LABEL_26;
    case 0x11u:
      *(a3 + 12) = *(a2 + 2);
      v15 = 20;
      goto LABEL_26;
    case 0x12u:
      v15 = 12;
      goto LABEL_26;
    default:
      v15 = 8;
LABEL_26:
      *a4 = v15;
      break;
  }

  return result;
}

uint64_t jobj_validate_key_val(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  result = 22;
  if (a2 && a3 >= 8)
  {
    switch(*a2 >> 60)
    {
      case 1:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 50;
        if (a5 >= 0x32)
        {
          v9 = a4[24];
          goto LABEL_53;
        }

        break;
      case 2:
        if (!a4 || a5 >= 0x14)
        {
          goto LABEL_4;
        }

        break;
      case 3:
        if (!a4 || a5 >= 0x5C)
        {
          goto LABEL_4;
        }

        break;
      case 4:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 4;
          if (a5 >= 4)
          {
            v9 = a4[1];
            goto LABEL_53;
          }
        }

        break;
      case 5:
        if (a3 >= 0x10)
        {
          if (!a4)
          {
            goto LABEL_4;
          }

          v8 = a5 - 10;
          if (a5 >= 0xA)
          {
            v9 = a4[4];
            goto LABEL_53;
          }
        }

        break;
      case 6:
        if (!a4 || a5 >= 4)
        {
          goto LABEL_4;
        }

        break;
      case 7:
        if (!a4)
        {
          goto LABEL_4;
        }

        v8 = a5 - 24;
        if (a5 >= 0x18)
        {
          v9 = a4[2] == 6 ? HIBYTE(a4[11]) + a4[11] : a4[11];
LABEL_53:
          if (v8 >= v9)
          {
            goto LABEL_4;
          }
        }

        break;
      case 8:
        if (a3 >= 0x10 && (!a4 || a5 >= 0x18))
        {
          goto LABEL_4;
        }

        break;
      case 9:
        if ((*(*(a1 + 376) + 56) & 9) != 0)
        {
          v10 = a3 - 12;
          if (a3 < 0xC)
          {
            return result;
          }

          v11 = *(a2 + 8) & 0x3FF;
        }

        else
        {
          v10 = a3 - 10;
          if (a3 < 0xA)
          {
            return result;
          }

          v11 = *(a2 + 8);
        }

        if (v10 >= v11 && (!a4 || a5 >= 0x12))
        {
          goto LABEL_4;
        }

        break;
      case 0xALL:
        if (!a4 || a5 >= 0x20)
        {
          goto LABEL_4;
        }

        break;
      case 0xBLL:
        if (a3 >= 0xA && a3 - 10 >= *(a2 + 8))
        {
          goto LABEL_38;
        }

        break;
      case 0xCLL:
LABEL_38:
        if (!a4 || a5 >= 8)
        {
          goto LABEL_4;
        }

        break;
      case 0xDLL:
        if (a3 >= 0x10)
        {
          if (*(a2 + 15) == 1)
          {
            if (!a4 || *(a4 + 2) + 3 <= a5)
            {
              goto LABEL_4;
            }
          }

          else if (!a4 || a5 >= 0x1A)
          {
            goto LABEL_4;
          }
        }

        break;
      case 0xELL:
        if (a3 > 0xB)
        {

          result = jobj_validate_large_key_val(a1, a2, a3, a4, a5);
        }

        else
        {
          log_err("%s:%d: %s key size (%zu) on expanded record (%llu) is too small\n", "jobj_validate_key_val", 2403, (a1 + 4040), a3, *a2 & 0xFFFFFFFFFFFFFFFLL);
          result = 22;
        }

        break;
      default:
LABEL_4:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t jobj_validate_large_key_val(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((*(*(a1 + 376) + 57) & 2) == 0)
  {
    log_err("%s:%d: %s ***: expanded obj type found on unsupported volume\n", a2, a3, a4, a5);
    return 22;
  }

  v7 = *(a2 + 8);
  if (v7 > 0x11)
  {
    if (v7 == 18)
    {
      v5 = 0;
      if (a4 && a5 <= 0x33)
      {
        log_err("%s:%d: %s value size (%zu) on dir stats (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      return v5;
    }

    if (v7 == 19)
    {
      if (a3 <= 0x1B)
      {
        log_err("%s:%d: %s key size (%zu) on clone mapping (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      v5 = 0;
      if (a4 && a5 <= 7)
      {
        log_err("%s:%d: %s value size (%zu) on clone mapping (%llu) is too small\n", a2, a3, a4, a5);
        return 22;
      }

      return v5;
    }

LABEL_14:
    v5 = 0;
    if (a4 && a5 <= 3)
    {
      log_err("%s:%d: %s value size (%zu) on unknown record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    return v5;
  }

  if (v7 == 16)
  {
    if (a3 <= 0x1B)
    {
      log_err("%s:%d: %s key size (%zu) on purgeable record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    v5 = 0;
    if (a4 && a5 <= 0x17)
    {
      log_err("%s:%d: %s value size (%zu) on purgeable record (%llu) is too small\n", a2, a3, a4, a5);
      return 22;
    }

    return v5;
  }

  if (v7 != 17)
  {
    goto LABEL_14;
  }

  if (a3 <= 0x13)
  {
    log_err("%s:%d: %s key size (%zu) on purgeable tombstone (%llu) is too small\n", a2, a3, a4, a5);
    return 22;
  }

  v5 = 0;
  if (a4 && a5 <= 7)
  {
    log_err("%s:%d: %s value size (%zu) on purgeable tombstone (%llu) is too small\n", a2, a3, a4, a5);
    return 22;
  }

  return v5;
}

uint64_t apfs_key_compare(uint64_t a1, void *a2, unsigned int a3, void *a4, unsigned int a5, int *a6)
{
  v6 = 22;
  if (a3 >= 8 && a5 >= 8)
  {
    v11 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v12 = *a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v11 < v12)
    {
LABEL_4:
      v13 = -1;
LABEL_12:
      v6 = 0;
      *a6 = v13;
      return v6;
    }

    if (v11 > v12)
    {
LABEL_6:
      v13 = 1;
      goto LABEL_12;
    }

    v14 = *a2 >> 60;
    v15 = *a4 >> 60;
    if (!v14)
    {
      goto LABEL_8;
    }

    if (!v15)
    {
      goto LABEL_6;
    }

    if (v14 < v15)
    {
      goto LABEL_4;
    }

    if (v14 > v15)
    {
      goto LABEL_6;
    }

    if (v14 != 14)
    {
LABEL_22:
      if (obj_type(a1) != 13)
      {
        return 22;
      }

      if (jobj_validate_key_val(a1, a2, a3, 0, 0))
      {
        return 22;
      }

      v13 = jobj_validate_key_val(a1, a4, a5, 0, 0);
      if (v13)
      {
        return 22;
      }

      if (v14 <= 10)
      {
        if (v14 > 7)
        {
          if (v14 == 8)
          {
            v39 = a2[1];
            v40 = a4[1];
            if (v39 != -1)
            {
              if (v40 == -1)
              {
                goto LABEL_6;
              }

              v25 = v39 > v40;
              if (v39 < v40)
              {
                goto LABEL_4;
              }

              goto LABEL_83;
            }

            v16 = v40 == -1;
            goto LABEL_9;
          }

          if (v14 != 9)
          {
            goto LABEL_12;
          }

          if ((*(*(a1 + 376) + 56) & 9) != 0)
          {
            v29 = *(a2 + 2);
            v30 = *(a4 + 2);
            if (v29 >> 10 < v30 >> 10)
            {
              goto LABEL_4;
            }

            if (v29 >> 10 > v30 >> 10)
            {
              goto LABEL_6;
            }

            v31 = a2 + 12;
            v32 = a4 + 12;
            v33 = v29 & 0x3FF;
            v34 = v30 & 0x3FF;
LABEL_52:
            v13 = apfs_cstrncmp(v31, v32, v33, v34);
            goto LABEL_12;
          }
        }

        else if (v14 != 4)
        {
          if (v14 != 5)
          {
            goto LABEL_12;
          }

          v26 = a2[1];
          v15 = a4[1];
          if (v26)
          {
            if (!v15)
            {
              goto LABEL_6;
            }

            v27 = v26 >= v15;
            v28 = v26 > v15;
LABEL_72:
            if (v27)
            {
              v13 = v28;
            }

            else
            {
              v13 = -1;
            }

            goto LABEL_12;
          }

          goto LABEL_8;
        }
      }

      else
      {
        if (v14 > 15)
        {
          switch(v14)
          {
            case 0x10:
              v41 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v41)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                if (v41 < v15)
                {
                  goto LABEL_4;
                }

                if (v41 != v15)
                {
                  v25 = v41 > v15;
                  goto LABEL_83;
                }

                v42 = *(a2 + 20);
                v15 = *(a4 + 20);
                if (v42)
                {
                  if (v15)
                  {
                    if (v42 >= v15)
                    {
                      v13 = v42 != v15;
                      goto LABEL_12;
                    }

                    goto LABEL_4;
                  }

                  goto LABEL_6;
                }
              }

              break;
            case 0x11:
              v43 = *(a2 + 12);
              v15 = *(a4 + 12);
              if (v43)
              {
                if (!v15)
                {
                  goto LABEL_6;
                }

                v27 = v43 >= v15;
                v44 = v43 == v15;
                goto LABEL_69;
              }

              break;
            case 0x13:
              v21 = *(a2 + 12);
              v22 = *(a4 + 12);
              if (v21 < v22)
              {
                goto LABEL_4;
              }

              if (v21 > v22)
              {
                goto LABEL_6;
              }

              v23 = *(a2 + 20);
              v24 = *(a4 + 20);
              v25 = v23 > v24;
              if (v23 < v24)
              {
                goto LABEL_4;
              }

LABEL_83:
              v13 = v25;
              goto LABEL_12;
            default:
              goto LABEL_12;
          }

LABEL_8:
          v16 = v15 == 0;
          goto LABEL_9;
        }

        if (v14 != 11)
        {
          if (v14 != 13)
          {
            goto LABEL_12;
          }

          v35 = a2[1];
          v36 = HIBYTE(v35);
          v37 = a4[1];
          v38 = HIBYTE(v37);
          if (HIBYTE(v35))
          {
            if (!v38)
            {
              goto LABEL_6;
            }

            if (v36 != v38)
            {
              if (v36 < v38)
              {
                v13 = -1;
              }

              else
              {
                v13 = 1;
              }

              goto LABEL_12;
            }

            v45 = v35 & 0xFFFFFFFFFFFFFFLL;
            v46 = v37 & 0xFFFFFFFFFFFFFFLL;
            if (v45 != 0xFFFFFFFFFFFFFFLL)
            {
              if (v46 == 0xFFFFFFFFFFFFFFLL)
              {
                goto LABEL_6;
              }

              v27 = v45 >= v46;
              v44 = v45 == v46;
LABEL_69:
              v28 = !v44;
              goto LABEL_72;
            }

            v16 = v46 == 0xFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v38 == 0;
          }

LABEL_9:
          if (v16)
          {
            v13 = 0;
          }

          else
          {
            v13 = -1;
          }

          goto LABEL_12;
        }
      }

      v33 = *(a2 + 4);
      v34 = *(a4 + 4);
      v31 = a2 + 10;
      v32 = a4 + 10;
      goto LABEL_52;
    }

    v6 = 22;
    if (a3 >= 0xC && a5 >= 0xC)
    {
      LODWORD(v14) = *(a2 + 8);
      v20 = *(a4 + 8);
      if (v14 < v20)
      {
        goto LABEL_4;
      }

      if (v14 > v20)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  return v6;
}

uint64_t jfs_get_tree_in_snap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  doc_id_tree = 22;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        pthread_mutex_lock((a1 + 1664));
        if (*(a1 + 440) == a4 && (v22 = *(a1 + 3616)) != 0)
        {
          obj_retain(*(a1 + 3616));
          if (a3 && (v23 = obj_modify(v22, 0, a3), v23))
          {
            doc_id_tree = v23;
            obj_release(v22);
          }

          else
          {
            doc_id_tree = 0;
            *a5 = v22;
          }
        }

        else
        {
          doc_id_tree = apfs_get_doc_id_tree(a1, 0, a4, a3, a5);
          if (!doc_id_tree)
          {
            if (*(a1 + 440) == a4)
            {
              v25 = *a5;
              obj_retain(v25);
              doc_id_tree = 0;
              *(a1 + 3616) = v25;
            }

            else
            {
              doc_id_tree = 0;
            }
          }
        }

        v21 = (a1 + 1664);
        goto LABEL_110;
      }

      if (a2 != 8)
      {
        return doc_id_tree;
      }

      if (*(a1 + 440) != a4 || (v14 = *(a1 + 3576)) == 0)
      {
        doc_id_tree = apfs_get_secondary_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v27 = *(a1 + 440);
          v28 = v27 && *(a1 + 504) == 0;
          if (!v28 && v27 == a4)
          {
            v29 = *a5;
            obj_retain(v29);
            doc_id_tree = 0;
            *(a1 + 3576) = v29;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3576));
      if (!a3)
      {
LABEL_72:
        doc_id_tree = 0;
        *a5 = v14;
        return doc_id_tree;
      }

LABEL_51:
      v24 = obj_modify(v14, 0, a3);
      if (v24)
      {
        doc_id_tree = v24;
        obj_release(v14);
        return doc_id_tree;
      }

      goto LABEL_72;
    }

    if (a2 != 5)
    {
      if ((*(*(a1 + 376) + 56) & 0x40) != 0)
      {
        pthread_mutex_lock((a1 + 1600));
        v12 = *(a1 + 3608);
        if (v12)
        {
          obj_retain(v12);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3608), 2, a3);
            v13 = *(a1 + 3608);
            if (doc_id_tree)
            {
              obj_release(v13);
LABEL_109:
              v21 = (a1 + 1600);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1048) = obj_oid(v13);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3608);
          goto LABEL_109;
        }

        v34 = *(a1 + 384);
        if (!v34)
        {
          v34 = *(a1 + 376);
        }

        v35 = *(v34 + 1044);
        v36 = *(v34 + 1048);
        v46 = 0u;
        v47 = 0u;
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v45 = pfkur_tree_key_cmp;
        DWORD2(v46) = 32;
        if (v35 == 2)
        {
          extended = btree_get_extended(a1, v35 & 0xFFFF0000, v36, a4, a3 != 0, &v45, a3, a5);
          v38 = extended;
          if (a3 && !extended)
          {
            doc_id_tree = 0;
            *(*(a1 + 376) + 1048) = obj_oid(*a5);
            goto LABEL_109;
          }

          if (!extended)
          {
            doc_id_tree = 0;
            goto LABEL_109;
          }

          v36 = *(v34 + 1048);
        }

        else
        {
          v38 = 22;
        }

        v43 = strerror(v38);
        log_err("%s:%d: %s Failed to get pfkur tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3946, (a1 + 4040), v36, a3, v38, v43);
        doc_id_tree = v38;
        goto LABEL_109;
      }

      return 45;
    }

    v20 = *(a1 + 376);
    if ((*(v20 + 56) & 0x20) == 0)
    {
      return 45;
    }

    v26 = *(v20 + 1040);
    if (a3 && *(a1 + 448))
    {
      return 30;
    }

    pthread_mutex_lock((a1 + 1536));
    v31 = *(a1 + 3600);
    if (v31)
    {
      if ((v26 & 0xC0000000) != 0)
      {
        if ((v26 & 0xC0000000) == 0x40000000)
        {
          v32 = *(a1 + 448);
          if (v32)
          {
            v33 = *(a1 + 376);
            goto LABEL_98;
          }

LABEL_93:
          obj_retain(v31);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3600), 2, a3);
            v39 = *(a1 + 3600);
            if (doc_id_tree)
            {
              obj_release(v39);
LABEL_105:
              v21 = (a1 + 1536);
              goto LABEL_110;
            }

            *(*(a1 + 376) + 1032) = obj_oid(v39);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3600);
          goto LABEL_105;
        }
      }

      else if (*(a1 + 440) == a4)
      {
        goto LABEL_93;
      }
    }

    v32 = *(a1 + 448);
    v33 = *(a1 + 376);
    if (!v32)
    {
      v32 = *(v33 + 1032);
    }

LABEL_98:
    v40 = *(v33 + 1040);
    *&v46 = 0;
    v47 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v45 = fext_tree_key_cmp;
    *(&v46 + 1) = 0x20000001FLL;
    if (v40 == 2)
    {
      v41 = btree_get_extended(a1, v40 & 0xFFFF0000, v32, a4, a3 != 0, &v45, a3, a5);
      doc_id_tree = v41;
      if (a3 && !v41)
      {
        *(*(a1 + 376) + 1032) = obj_oid(*a5);
        goto LABEL_105;
      }

      if (!v41)
      {
        goto LABEL_105;
      }
    }

    else
    {
      doc_id_tree = 22;
    }

    v42 = strerror(doc_id_tree);
    log_err("%s:%d: %s Failed to get fext tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3898, (a1 + 4040), v32, a3, doc_id_tree, v42);
    goto LABEL_105;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      pthread_mutex_lock((a1 + 1472));
      doc_id_tree = apfs_get_snap_meta_tree(a1, a3, a5);
      if (!doc_id_tree)
      {
        *(*(a1 + 376) + 152) = obj_oid(*a5);
      }

      v21 = (a1 + 1472);
      goto LABEL_110;
    }

    v14 = *(a1 + 3584);
    if (v14)
    {
      obj_retain(*(a1 + 3584));
      if (!a3)
      {
        goto LABEL_72;
      }

      v15 = obj_modify(v14, 0, a3);
      if (!v15)
      {
        goto LABEL_72;
      }

      doc_id_tree = v15;
      obj_release(v14);
LABEL_28:
      v14 = *(a1 + 3568);
      if (*(a1 + 440) != a4 || v14 == 0)
      {
        doc_id_tree = apfs_get_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v17 = *(a1 + 440);
          v18 = v17 && *(a1 + 504) == 0;
          if (!v18 && v17 == a4)
          {
            v19 = *a5;
            obj_retain(v19);
            doc_id_tree = 0;
            *(a1 + 3568) = v19;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3568));
      if (!a3)
      {
        if (doc_id_tree)
        {
          return doc_id_tree;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_27:
    doc_id_tree = 0;
    goto LABEL_28;
  }

  if (a2 == 1)
  {
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    pthread_mutex_lock((a1 + 1408));
    v10 = *(a1 + 3592);
    if (!v10)
    {
      doc_id_tree = apfs_get_extentref_tree(a1, *(*(a1 + 376) + 144), a3, a5);
      if (!doc_id_tree)
      {
        if (a3)
        {
          *(*(a1 + 376) + 144) = obj_oid(*a5);
        }

        v30 = *a5;
        *(a1 + 3592) = *a5;
        obj_retain(v30);
        doc_id_tree = 0;
      }

      goto LABEL_86;
    }

    obj_retain(v10);
    if (a3)
    {
      doc_id_tree = obj_modify(*(a1 + 3592), 2, a3);
      v11 = *(a1 + 3592);
      if (doc_id_tree)
      {
        obj_release(v11);
LABEL_86:
        v21 = (a1 + 1408);
LABEL_110:
        pthread_mutex_unlock(v21);
        return doc_id_tree;
      }

      *(*(a1 + 376) + 144) = obj_oid(v11);
    }

    doc_id_tree = 0;
    *a5 = *(a1 + 3592);
    goto LABEL_86;
  }

  return doc_id_tree;
}

uint64_t match_jobj_type_to_tree_type(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0x10)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      log_err("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "match_jobj_expanded_type_to_tree_type", 4205, (a1 + 4040), a2);
      return 0;
    }

    if ((a2 & 0xFC) == 0x10)
    {
      if (apfs_has_secondary_fsroot(a1))
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }

    log_warn("%s:%d: %s Warning: attempting to place unknown expanded type %hhu into fsroot.\n", "match_jobj_expanded_type_to_tree_type", 4226, (a1 + 4040), a2);
    return 1;
  }

  v4 = 3;
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      return v4;
    }

    if (a2 == 2)
    {
      return 2;
    }

    return a3;
  }

  if (a2 - 6 < 2)
  {
    goto LABEL_18;
  }

  if (a2 != 8)
  {
    if (a2 == 11)
    {
      return v4;
    }

    return a3;
  }

  if ((*(*(a1 + 376) + 56) & 0x20) == 0)
  {
LABEL_18:
    if (a3 == 100)
    {
      return 1;
    }

    if (a3 == 101)
    {
      if ((*(*(a1 + 376) + 57) & 1) == 0)
      {
        panic("Requested forced secondary_fs_root but the tree is missing\n");
      }
    }

    else
    {
      if ((apfs_has_secondary_fsroot(a1) & 1) == 0)
      {
        return a3;
      }

      if (a3 != 1)
      {
        panic("type = %u, req_tree != fs_root\n", a2);
      }
    }

    return 8;
  }

  if (a3 != 1)
  {
    panic("sealed, fext, req_tree != fs_root");
  }

  return 5;
}

unsigned __int16 *key_val_to_jobj(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  if (jobj_validate_key_val(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v12 = *a2 >> 60;
  LODWORD(v13) = 40;
  switch(v12)
  {
    case 1:
      if (!a4)
      {
        return 0;
      }

      v14 = a4[24] + 80;
      goto LABEL_32;
    case 2:
      goto LABEL_36;
    case 3:
      LODWORD(v13) = 648;
      goto LABEL_36;
    case 4:
      if (!a4)
      {
        return 0;
      }

      v14 = *(a2 + 4) + a4[1] + 24;
      goto LABEL_32;
    case 5:
      if (!a4)
      {
        return 0;
      }

      v16 = a4[4];
      goto LABEL_19;
    case 6:
    case 12:
      LODWORD(v13) = 24;
      goto LABEL_36;
    case 7:
      if (!a4)
      {
        return 0;
      }

      if (a4[2] == 6)
      {
        v16 = HIBYTE(a4[11]) + a4[11];
      }

      else
      {
        v16 = a4[11];
      }

LABEL_19:
      v14 = v16 + 40;
      goto LABEL_32;
    case 8:
      LODWORD(v13) = 56;
      goto LABEL_36;
    case 9:
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        LODWORD(v13) = (a2[1] & 0x3FF) + 72;
        goto LABEL_36;
      }

      v14 = *(a2 + 4) + 72;
LABEL_32:
      LODWORD(v13) = v14;
      if (v14 >> 16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14 == 0;
      }

      if (!v19)
      {
        goto LABEL_36;
      }

      return 0;
    case 10:
      LODWORD(v13) = 96;
      goto LABEL_36;
    case 11:
      v14 = *(a2 + 4) + 32;
      goto LABEL_32;
    case 13:
      if (!a4)
      {
        return 0;
      }

      v15 = *(a2 + 15);
      if (v15 == 2)
      {
        LODWORD(v13) = 80;
      }

      else
      {
        if (v15 != 1)
        {
          return 0;
        }

        LODWORD(v13) = *(a4 + 2) + 32;
      }

      goto LABEL_36;
    case 14:
      v17 = *(a2 + 2);
      if ((a2[1] & 0xFC) != 0x10)
      {
        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s *** unknown expanded obj type %hhu\n", "jobj_size_for_large_key_val", 2464, (a1 + 4040), v17);
        return 0;
      }

      v13 = (0x48006000200050uLL >> (16 * (v17 & 0xFu))) & 0x78;
LABEL_36:
      if (v12 == 14)
      {
        LODWORD(v20) = *(a2 + 8);
        if (v20 <= 0xF)
        {
          log_err("%s:%d: unknown expanded type (%hhu) on record (%u)\n");
          return 0;
        }
      }

      else
      {
        v20 = *a2 >> 60;
      }

      switch(v20)
      {
        case 1:
          v10 = _apfs_calloc_typed(1uLL, 0x50uLL, 0x10100406569770FuLL);
          if (!v10)
          {
            return v10;
          }

          v27 = _apfs_calloc_typed(1uLL, v13 - 80, 0xDA2D0A4CuLL);
          *(v10 + 9) = v27;
          if (v27)
          {
            goto LABEL_73;
          }

          v28 = v10;
          v29 = 80;
          goto LABEL_66;
        case 2:
          v21 = 0x10000407607B2BCLL;
          v22 = 40;
          goto LABEL_71;
        case 3:
          v30 = _apfs_zalloc(2u);
          goto LABEL_72;
        case 4:
          v24 = v13;
          v25 = -753538664;
          goto LABEL_59;
        case 5:
          v24 = v13;
          v25 = -2067986874;
          goto LABEL_59;
        case 6:
          v26 = 887226456;
          goto LABEL_51;
        case 7:
          v24 = v13;
          v25 = -1260340143;
          goto LABEL_59;
        case 8:
          v21 = 0x1000040C6EC63FFLL;
          v22 = 56;
          goto LABEL_71;
        case 9:
          v10 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
          if (!v10)
          {
            return v10;
          }

          v32 = _apfs_malloc_typed(v13 - 72, 0xEA9F5E2EuLL);
          *(v10 + 8) = v32;
          if (v32)
          {
            goto LABEL_73;
          }

          v28 = v10;
          v29 = 72;
LABEL_66:
          _apfs_free(v28, v29);
          return 0;
        case 10:
        case 18:
          v21 = 0x10A004019B037CALL;
          v22 = 96;
          goto LABEL_71;
        case 11:
          v24 = v13;
          v25 = 173046394;
          goto LABEL_59;
        case 12:
          v26 = -753538664;
LABEL_51:
          v21 = v26 | 0x100004000000000;
          v22 = 24;
          goto LABEL_71;
        case 13:
          v23 = HIBYTE(a2[1]);
          if (v23 == 2)
          {
            v31 = 1202085462;
LABEL_70:
            v21 = v31 | 0x10A004000000000;
            v22 = 80;
LABEL_71:
            v30 = _apfs_calloc_typed(1uLL, v22, v21);
          }

          else
          {
            if (v23 != 1)
            {
              log_err("%s:%d: *** Unknown file info type %llu\n");
              return 0;
            }

            v24 = v13;
            v25 = 130634920;
LABEL_59:
            v30 = _apfs_malloc_typed(v24, v25 | 0x100004000000000);
          }

LABEL_72:
          v10 = v30;
          if (!v30)
          {
            return v10;
          }

LABEL_73:
          v33 = *a2;
          v34 = *a2 & 0xFFFFFFFFFFFFFFFLL;
          *(v10 + 1) = v34;
          v33 >>= 60;
          *v10 = v33;
          *(v10 + 1) = 1;
          v10[1] = v13;
          switch(v33)
          {
            case 1:
              *(v10 + 1) = *a4;
              *(v10 + 2) = *(a4 + 1);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              v35 = a4[24];
              v10[32] = v35;
              v36 = *(v10 + 9);
              v37 = a4 + 25;
              goto LABEL_78;
            case 2:
              v47 = *(a4 + 1);
              v48 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              *(v10 + 1) = *a4 >> 60;
              *(v10 + 8) = *(a4 + 4);
              *(v10 + 2) = v48;
              *(v10 + 3) = v47;
              return v10;
            case 3:
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              *(v10 + 4) = *(a4 + 2);
              *(v10 + 5) = *(a4 + 3);
              *(v10 + 6) = *(a4 + 4);
              *(v10 + 7) = *(a4 + 5);
              *(v10 + 18) = *(a4 + 14);
              *(v10 + 8) = *(a4 + 6);
              *(v10 + 19) = *(a4 + 15);
              *(v10 + 20) = *(a4 + 16);
              *(v10 + 21) = *(a4 + 17);
              *(v10 + 22) = *(a4 + 18);
              *(v10 + 23) = *(a4 + 19);
              v10[48] = a4[40];
              v10[49] = a4[41];
              *(v10 + 13) = *(a4 + 42);
              if (a5 < 0x5D)
              {
                return v10;
              }

              if (xf_init_with_blob(v10 + 204, a4 + 46, a5 - 92))
              {
                log_debug("%s:%d: failed to init extended fields on inode %lld from blob (xfret %d).\n");
                return v10;
              }

              v58 = v10[204];
              if (!v10[204])
              {
                return v10;
              }

              v59 = 0;
              v60 = (*(v10 + 52) + 2);
              break;
            case 4:
              v45 = *(a2 + 4);
              v10[10] = v45;
              strlcpy(v10 + 24, a2 + 10, v45);
              *(v10 + 4) = *a4;
              v42 = a4[1];
              v10[11] = v42;
              v43 = v10 + v10[10] + 24;
              v44 = a4 + 2;
              goto LABEL_98;
            case 5:
              v39 = *a4;
              *(v10 + 2) = a2[1];
              *(v10 + 3) = v39;
              v35 = a4[4];
              v10[16] = v35;
              v36 = (v10 + 17);
              v37 = a4 + 5;
LABEL_78:
              strlcpy(v36, v37, v35);
              return v10;
            case 6:
              *(v10 + 4) = *a4;
              return v10;
            case 7:
              *(v10 + 4) = *a4;
              LODWORD(v51) = a4[11];
              v53 = a4[2];
              v52 = a4 + 2;
              if (v53 == 6)
              {
                v51 = (v51 >> 8) + v51;
              }

              else
              {
                v51 = v51;
              }

              v43 = (v10 + 10);
              v42 = v51 + 20;
              v44 = v52;
              goto LABEL_98;
            case 8:
              *(v10 + 2) = a2[1];
              v46 = *a4;
              *(v10 + 5) = *a4 & 0xFFFFFFFFFFFFFFLL;
              *(v10 + 12) = *(a4 + 4);
              *(v10 + 48) = HIBYTE(v46);
              return v10;
            case 9:
              if ((*(*(a1 + 376) + 56) & 9) != 0)
              {
                v54 = *(a2 + 2);
                *(v10 + 14) = v54 >> 10;
                v55 = v54 & 0x3FF;
                v56 = 12;
              }

              else
              {
                *(v10 + 14) = 0;
                v55 = *(a2 + 4);
                v56 = 10;
              }

              v10[31] = v55;
              strlcpy(*(v10 + 8), a2 + v56, v55);
              *(v10 + 2) = *a4;
              *(v10 + 3) = *(a4 + 1);
              v10[30] = a4[8];
              if (a5 < 0x13)
              {
                xf_init((v10 + 16), 0);
              }

              else if (xf_init_with_blob(v10 + 16, a4 + 9, a5 - 18))
              {
                log_debug("%s:%d: failed to init extended fields on drec %lld from blob.\n");
              }

              return v10;
            case 10:
              *(v10 + 12) = *a4;
              *(v10 + 3) = vextq_s8(*(a4 + 1), *(a4 + 1), 8uLL);
              return v10;
            case 11:
              v38 = *(a2 + 4);
              v10[12] = v38;
              strlcpy(v10 + 26, a2 + 10, v38);
              goto LABEL_76;
            case 12:
LABEL_76:
              *(v10 + 2) = *a4;
              return v10;
            case 13:
              v40 = a2[1];
              *(v10 + 16) = HIBYTE(v40);
              *(&v41 + 1) = a2[1];
              *&v41 = v40;
              *(v10 + 2) = v41 >> 56;
              if (HIBYTE(v40) == 2)
              {
                *(v10 + 3) = *a4;
                *(v10 + 4) = *(a4 + 1);
                *(v10 + 5) = *(a4 + 2);
                v10[24] = a4[12];
                if (a5 < 0x1B)
                {
                  log_err("%s:%d: %s s_hash <%llu> finfo attribution tag value <%zu> is less than sizeof(j_file_attribution_tag_val_t) <%lu\n");
                  return v10;
                }

                v57 = xf_init_with_blob(v10 + 28, a4 + 13, a5 - 26);
                if (v57)
                {
                  strerror(v57);
                  log_debug("%s:%d: failed to init extended fields on attribution tag record with objid <%lld> from blob due to error <%d> %s\n");
                  return v10;
                }

                v62 = v10[28];
                if (v10[28])
                {
                  v63 = 0;
                  for (i = (*(v10 + 8) + 2); ; i += 2)
                  {
                    v65 = *i;
                    if (*(i - 2) == 1)
                    {
                      break;
                    }

                    v63 += (v65 + 7) & 0x1FFF8;
                    if (!--v62)
                    {
                      return v10;
                    }
                  }

                  if (v65 > 0)
                  {
                    v66 = *(v10 + 9) + (v63 + v65);
                    goto LABEL_126;
                  }

                  log_err("%s:%d: %s size (%d) of FILE_INFO_TAG_EXT_TYPE_SIGNING_ID in attribution tag record with s_hash <%llu> <= 0 \n");
                }
              }

              else if (HIBYTE(v40) == 1)
              {
                v10[12] = *a4;
                v42 = *(a4 + 2);
                *(v10 + 26) = v42;
                v43 = v10 + 27;
                v44 = (a4 + 3);
LABEL_98:
                memcpy(v43, v44, v42);
              }

              return v10;
            case 14:
              if (a3 < 0xC)
              {
                goto LABEL_93;
              }

              if (large_key_val_to_jobj(a1, v10, a2, a4, a5))
              {
                return v10;
              }

              v34 = *(v10 + 1);
LABEL_93:
              v49 = log_err("%s:%d: %s cannot translate key-val (%llu) into valid jobj\n", "key_val_to_jobj", 4935, (a1 + 4040), v34);
              jobj_release(v49, v10, v50);
              return 0;
            default:
              return v10;
          }

          break;
        case 16:
          v31 = -624060581;
          goto LABEL_70;
        case 17:
          v21 = 0x100004089CA3EB1;
          v22 = 32;
          goto LABEL_71;
        case 19:
          v21 = 0x10A0040D41B49CCLL;
          v22 = 72;
          goto LABEL_71;
        default:
          log_err("%s:%d: *** Can't allocate unknown obj type %d\n");
          return 0;
      }

      break;
    default:
      log_err("%s:%d: *** unknown obj type %d\n");
      return 0;
  }

  while (1)
  {
    v61 = *v60;
    if (*(v60 - 2) != 4)
    {
      v61 = (v61 + 7) & 0x1FFF8;
      goto LABEL_116;
    }

    if (*v60)
    {
      break;
    }

LABEL_116:
    v60 += 2;
    v59 += v61;
    if (!--v58)
    {
      return v10;
    }
  }

  v66 = *(v10 + 53) + (v59 + v61);
LABEL_126:
  *(v66 - 1) = 0;
  return v10;
}

uint64_t large_key_val_to_jobj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5 <= 0xF)
  {
    log_err("%s:%d: %s unknown expanded type (%hhu) on record (%u)\n", "large_key_val_to_jobj", 4506, (a1 + 4040), *(a3 + 8), *a3 >> 60);
    return 0;
  }

  v6 = a2;
  *a2 = v5;
  if (v5 <= 17)
  {
    if (v5 != 16)
    {
      v7 = *a4;
      *(a2 + 16) = *(a3 + 12);
      *(a2 + 24) = v7;
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4;
    *(a2 + 40) = a4[1];
    *(a2 + 48) = *(a4 + 4);
    *(a2 + 52) = *(a4 + 5);
    if (a5 >= 0x19)
    {
      if (xf_init_with_blob((a2 + 56), a4 + 12, a5 - 24))
      {
        log_err("%s:%d: %s failed to init extended fields on purgeable %llu from blob\n");
      }

      return v6;
    }

    v8 = a2 + 56;
LABEL_20:
    xf_init(v8, 0);
    return v6;
  }

  if (v5 == 18)
  {
    *(a2 + 16) = a4[3];
    *(a2 + 24) = *a4;
    *(a2 + 32) = a4[1];
    *(a2 + 40) = a4[2];
    *(a2 + 56) = a4[4];
    *(a2 + 48) = a4[5];
    *(a2 + 92) = *(a4 + 12);
    if (a5 < 0x35)
    {
      v8 = a2 + 64;
      goto LABEL_20;
    }

    if (xf_init_with_blob((a2 + 64), a4 + 26, a5 - 52))
    {
      log_err("%s:%d: %s failed to init extended fields on dir-stats %llu from blob\n");
    }
  }

  else
  {
    if (v5 != 19)
    {
      return v6;
    }

    *(a2 + 16) = *(a3 + 12);
    *(a2 + 32) = *a4 & 0xFFFFFFFFFFFFFFLL;
    *(a2 + 40) = *(a4 + 7);
    if (a5 < 9)
    {
      v8 = a2 + 48;
      goto LABEL_20;
    }

    if (xf_init_with_blob((a2 + 48), a4 + 4, a5 - 8))
    {
      log_err("%s:%d: %s failed to init extended fields on clone mapping <%llu/%llu> from blob\n");
    }
  }

  return v6;
}

uint64_t lookup_jobj_in_snap(uint64_t a1, int a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5, unsigned __int16 **a6)
{
  matched = match_jobj_type_to_tree_type(a1, *a4, a2);
  v12 = _apfs_zalloc(3u);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v18 = 832;
  v19 = 3808;
  make_jkey_from_jobj(a1, a4, v12, &v18);
  v17 = 0;
  tree_in_snap = jfs_get_tree_in_snap(a1, matched, 0, a5, &v17);
  if (tree_in_snap)
  {
    v15 = tree_in_snap;
LABEL_6:
    _apfs_zfree(v13, 3u);
    return v15;
  }

  v15 = bt_lookup_variant(v17, a5, v13, &v18, 832, v13 + 832, &v19, 0, 0, a3);
  obj_release(v17);
  if (v15)
  {
    goto LABEL_6;
  }

  *a6 = key_val_to_jobj(a1, v13, v18, v13 + 416, v19);
  _apfs_zfree(v13, 3u);
  if (*a6)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(a1 + 392));
  }
}

uint64_t initialize_phys_range_lock_state(uint64_t *a1, unsigned int a2)
{
  a1[12] = 0;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v4 = a2;
  *(a1 + 23) = a2;
  v5 = _apfs_calloc_typed(a2, 0x10uLL, 0x1000040451B5BE8uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = (a2 + 63) >> 6;
    *(a1 + 22) = v6;
    v7 = _apfs_calloc_typed(v6, 8uLL, 0x100004000313F17uLL);
    a1[9] = v7;
    if (v7)
    {
      v8 = _apfs_calloc_typed(*(a1 + 22), 8uLL, 0x100004000313F17uLL);
      a1[10] = v8;
      if (v8)
      {
        new_lock((a1 + 1));
        return 0;
      }

      _apfs_free(*a1, 16 * v4);
      v10 = a1[9];
      v11 = 8 * *(a1 + 22);
    }

    else
    {
      v10 = *a1;
      v11 = 16 * v4;
    }

    _apfs_free(v10, v11);
  }

  return 12;
}

uint64_t release_phys_range_lock_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _apfs_free(*a1, 16 * *(a1 + 92));
  _apfs_free(*(a1 + 72), 8 * *(a1 + 88));
  _apfs_free(*(a1 + 80), 8 * *(a1 + 88));

  return free_lock((a1 + 8));
}

uint64_t apfs_cstrncmp(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - 2;
  if (v4 < 2)
  {
LABEL_11:
    if (a3 < a4)
    {
      LODWORD(v7) = -1;
    }

    else
    {
      LODWORD(v7) = 1;
    }

    if (a3 == a4)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    while (1)
    {
      v6 = *a1;
      v7 = v6 - *a2;
      if (v7)
      {
        break;
      }

      ++a1;
      ++a2;
      if (v6)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      --v5;
      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  return v7;
}

void fs_sb_dirty(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 484) & 4) != 0)
  {
    v4 = *(a1 + 376);
    if ((*(v4 + 264) & 4) == 0)
    {
      atomic_fetch_or_explicit((v4 + 264), 4uLL, memory_order_relaxed);
    }

    pthread_mutex_lock((a1 + 1280));
    *(a1 + 480) &= ~0x400000000uLL;
    pthread_mutex_unlock((a1 + 1280));
  }

  *(*(a1 + 376) + 1056) = a2;
  v5 = apfs_doc_id_index_supported(a1);
  v6 = *(a1 + 376);
  if (v5)
  {
    *(v6 + 1064) |= 0x10u;
  }

  *(v6 + 1120) = a2;

  obj_dirty(a1, a2, 0);
}

uint64_t evict_mapping_key_compare(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = *a2 > *a4;
  if (*a2 < *a4)
  {
    v6 = -1;
  }

  *a6 = v6;
  return 0;
}

uint64_t apfs_free_data_blocks(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 504))
  {
    v7 = *(a1 + 504);
  }

  else
  {
    v7 = a1;
  }

  v8 = spaceman_free(v7, 0, a3, a4, a2);
  v9 = v8;
  if (v8)
  {
    v10 = strerror(v8);
    log_err("%s:%d: %s spaceman_free failed for LBA %llx, size %llu : %d %s\n", "apfs_free_data_blocks", 32582, (v7 + 4040), a3, a4, v9, v10);
  }

  else
  {
    atomic_fetch_add_explicit((*(v7 + 376) + 232), a4, memory_order_relaxed);
    fs_sb_dirty(v7, a2);
  }

  return v9;
}

uint64_t fs_is_fully_unencrypted(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264);
  if (v2)
  {
    LOBYTE(v2) = *(*(a1 + 376) + 976) == 0;
  }

  return v2 & 1;
}

uint64_t xf_init(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = _apfs_malloc_typed(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = _apfs_malloc_typed((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t xf_init_with_blob(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3 < 4)
  {
    return 28;
  }

  v6 = *a2;
  *a1 = v6;
  v7 = a2[1];
  a1[2] = v7;
  a1[1] = v6;
  if (v7 + 4 * v6 + 4 > a3)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = 0;
    v9 = a2 + 3;
    v10 = v6;
    while (v7 > v8)
    {
      v11 = *v9;
      if ((v7 - v8) < v11)
      {
        break;
      }

      v8 += (v11 + 7) & 0x1FFF8;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = (v7 + 7) & 0xFFF8;
  a1[3] = v12;
  if (v12 < v7)
  {
LABEL_10:
    result = 22;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return result;
  }

  v13 = 2 * v6;
  *(a1 + 1) = _apfs_malloc_typed(4 * v6, 0x100004052888210uLL);
  v14 = _apfs_malloc_typed(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    _apfs_free(v15, 4 * v16);
    _apfs_free(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = a2 + 2;
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t xf_get_from_blob(unsigned __int16 *a1, unint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a2 < 4)
  {
    return 28;
  }

  v7 = *a1;
  v8 = a1[1];
  if (v8 + 4 * v7 + 4 > a2)
  {
    return 22;
  }

  if (*a1)
  {
    v9 = 0;
    v10 = &a1[2 * v7 + 2];
    for (i = a1 + 3; ; i += 2)
    {
      v12 = *i;
      if (v9 + v12 > v8)
      {
        break;
      }

      if (*(i - 2) == a3)
      {
        if (a4)
        {
          *a4 = *(i - 1);
        }

        if (a6)
        {
          *a6 = v12;
        }

        result = 0;
        *a5 = v10 + v9;
        return result;
      }

      v9 += (v12 + 7) & 0x1FFF8;
      if (!--v7)
      {
        return 2;
      }
    }

    return 22;
  }

  return 2;
}

uint64_t xf_release(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _apfs_free(*(a1 + 8), 4 * *(a1 + 2));
  _apfs_free(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

pthread_cond_t *free_cv(pthread_cond_t *result)
{
  if (result)
  {
    return pthread_cond_destroy(result);
  }

  return result;
}

uint64_t cv_wait(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, timespec *a5)
{
  if (a5)
  {
    v14.tv_sec = 0;
    v14.tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, &v14);
    v8 = __OFADD__(a5->tv_sec, v14.tv_sec);
    v9 = a5->tv_sec + v14.tv_sec;
    a5->tv_sec = v9;
    if (v8)
    {
      return 35;
    }

    else
    {
      tv_nsec = a5->tv_nsec;
      v8 = __OFADD__(tv_nsec, v14.tv_nsec);
      v12 = tv_nsec + v14.tv_nsec;
      if (v8)
      {
        v12 = 999999999;
      }

      a5->tv_nsec = v12;
      if (v12 > 0x3B9ACA00)
      {
        v13 = v12 - 1000000000;
        a5->tv_sec = v9 + (v13 - 1) / 0x3B9ACA00 + 1;
        a5->tv_nsec = v13 - 1000000000 * ((v13 - 1) / 0x3B9ACA00);
      }

      LODWORD(result) = pthread_cond_timedwait(a1, a2, a5);
      if (result == 60)
      {
        return 35;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {

    return pthread_cond_wait(a1, a2);
  }
}

uint64_t btree_node_space_stats(void *a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v5 = a1[7];
  *a2 = (a1[50] >> 27) & 0x1F000;
  LODWORD(v5) = v5[25] + v5[23] + v5[27];
  *a3 = v5;
  v6 = *a2 >= v5;
  v7 = *a2 - v5;
  if (v6)
  {
    result = 0;
  }

  else
  {
    v11 = a1[1];
    if (v11)
    {
      v12 = (v11 + 4040);
    }

    else
    {
      v12 = (*(*(*a1 + 392) + 384) + 212);
    }

    v14 = obj_oid(a1);
    log_err("%s:%d: %s oid 0x%llx (level %d): freespace %u larger than nodespace %u\n", "btree_node_space_stats", 52, v12, v14, *(a1[7] + 34), *a3, *a2);
    v7 = 0;
    result = 22;
  }

  *a4 = v7;
  return result;
}

uint64_t btree_node_debug_stats(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v7 = a2[7];
  if ((*(v7 + 32) & 2) != 0)
  {
    ++*(a4 + 4);
    *(a4 + 16) += *(v7 + 36);
  }

  else
  {
    ++*a4;
    *(a4 + 12) += *(v7 + 36);
  }

  if (*(a4 + 8) < a3)
  {
    *(a4 + 8) = a3;
  }

  v8 = *(v7 + 34);
  if (v8 <= 0xF)
  {
    ++*(a4 + 4 * v8 + 216);
  }

  v9 = btree_node_sanity_check(a2, 0);
  if (!v9)
  {
    v32 = 0;
    v31 = 0;
    v9 = btree_node_space_stats(a2, &v32 + 1, &v32, &v31);
    v10 = v31;
    v11 = HIDWORD(v32);
    v12 = 5 * v31 / HIDWORD(v32);
    ++*(a4 + 4 * v12 + 20);
    v13 = *(a4 + 56) + v10;
    *(a4 + 48) += v11;
    *(a4 + 56) = v13;
    if ((*(a2[7] + 32) & 2) != 0)
    {
      ++*(a4 + 4 * v12 + 104);
      v15 = *(a4 + 136);
      *(a4 + 128) += v11;
      *(a4 + 136) = v15 + v10;
      if (*(v7 + 36))
      {
        v16 = 0;
        do
        {
          v17 = btree_node_key_len(a2, v16);
          v18 = btree_node_val_len(a2, v16);
          v19 = *(a1 + 392);
          if (*(v19 + 16) < v17)
          {
            if (v9)
            {
              v9 = v9;
            }

            else
            {
              v9 = 22;
            }

            v20 = a2[1];
            if (v20)
            {
              v21 = (v20 + 4040);
            }

            else
            {
              v21 = (*(*(*a2 + 392) + 384) + 212);
            }

            v22 = obj_oid(a2);
            log_err("%s:%d: %s oid 0x%llx (level %d): index %d key length %d longer than tree longest %d\n", "btree_node_debug_stats", 110, v21, v22, *(a2[7] + 34), v16, v17, *(*(a1 + 392) + 16));
            v19 = *(a1 + 392);
            v17 = *(v19 + 16);
          }

          if (v18 == 65534 || *(v19 + 20) < v18 && (v9 ? (v9 = v9) : (v9 = 22), (v23 = a2[1]) == 0 ? (v24 = (*(*(*a2 + 392) + 384) + 212)) : (v24 = (v23 + 4040)), v25 = obj_oid(a2), log_err("%s:%d: %s oid 0x%llx (level %d): index %d val length %d longer than tree longest %d\n", "btree_node_debug_stats", 115, v24, v25, *(a2[7] + 34), v16, v18, *(*(a1 + 392) + 20)), v19 = *(a1 + 392), v18 = *(v19 + 20), v18 == 65534))
          {
            v18 = 0;
          }

          if (*(a4 + 208) < v17)
          {
            *(a4 + 208) = v17;
          }

          if (*(a4 + 212) < v18)
          {
            *(a4 + 212) = v18;
          }

          *(a4 + 144) += v17;
          v26 = *(v19 + 16);
          v27 = (a4 + 180);
          if (v26)
          {
            v27 = (a4 + 160 + 4 * (5 * v17 / v26));
          }

          ++*v27;
          *(a4 + 152) += v18;
          v28 = *(v19 + 20);
          v29 = (a4 + 204);
          if (v28)
          {
            v29 = (a4 + 184 + 4 * (5 * v18 / v28));
          }

          ++*v29;
          ++v16;
        }

        while (v16 < *(v7 + 36));
      }
    }

    else
    {
      ++*(a4 + 4 * v12 + 64);
      v14 = *(a4 + 96) + v10;
      *(a4 + 88) += v11;
      *(a4 + 96) = v14;
    }
  }

  return v9;
}

uint64_t btree_node_check(void *a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  v294[1] = *MEMORY[0x277D85DE8];
  if (!a5 || (v12 = a5[7]) == 0)
  {
    v19 = a5[1];
    if (v19)
    {
      v20 = (v19 + 4040);
    }

    else
    {
      v20 = (*(*(*a5 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s btree_node is null\n", "btree_node_check", 152, v20);
    return 22;
  }

  v15 = a6;
  v16 = a1;
  v284 = a2;
  v285 = a4;
  v287 = a3;
  v17 = a5[1];
  if (!v17)
  {
    v17 = *(*a5 + 392);
  }

  v286 = v17;
  if (a9)
  {
    a1 = btree_node_debug_stats(a1, a5, a6, a9);
    v18 = a1;
    if (a1)
    {
      return v18;
    }
  }

  if (!v16 && (a5[4] & 1) == 0)
  {
    return 0;
  }

  v282 = a9;
  v281 = a11;
  v283 = v15;
  if (a11)
  {
LABEL_17:
    v293 = 0;
    v294[0] = 0;
    v291 = 0;
    v292 = 0;
    v22 = a5[7];
    v23 = v287;
    v24 = v285;
    if (v287 && *(v22 + 36))
    {
      v25 = btree_node_key_ptr(v287, v285, v294, &v292 + 1);
      if (v25)
      {
        v18 = v25;
        obj_oid(v287);
LABEL_249:
        log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n");
        return v18;
      }

      v33 = btree_node_key_ptr(a5, 0, &v293, &v292);
      if (v33)
      {
        v18 = v33;
        obj_oid(a5);
        goto LABEL_249;
      }

      a1 = (a5[52])(v286, v294[0], HIWORD(v292), v293, v292, &v291);
      if (a1)
      {
        v18 = a1;
        obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey compare error: %d\n");
        return v18;
      }

      if (v291 >= 1)
      {
        obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey not correct\n");
        return 22;
      }

      if (v291)
      {
        obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): minkey not in sync\n");
        return 22;
      }

      v22 = a5[7];
      v23 = v287;
      v24 = v285;
    }

    v81 = *(v22 + 36);
    if (v81 >= 2)
    {
      v279 = a7;
      v280 = a8;
      v18 = 0;
      for (i = 1; i < v81; ++i)
      {
        a1 = btree_node_key_off(a5, (i - 1));
        if (a1 != 0xFFFF)
        {
          a1 = btree_node_key_off(a5, i);
          if (a1 != 0xFFFF)
          {
            v83 = btree_node_key_ptr(a5, (i - 1), v294, &v292 + 1);
            if (v83)
            {
              v84 = v83;
              if (v18)
              {
                v18 = v18;
              }

              else
              {
                v18 = v83;
              }

              v85 = a5[1];
              if (v85)
              {
                v86 = (v85 + 4040);
              }

              else
              {
                v86 = (*(*(*a5 + 392) + 384) + 212);
              }

              v87 = obj_oid(a5);
              a1 = log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 536, v86, v87, *(a5[7] + 34), i - 1, v84);
            }

            else
            {
              a1 = btree_node_key_ptr(a5, i, &v293, &v292);
              if (a1)
              {
                v88 = a1;
                if (v18)
                {
                  v18 = v18;
                }

                else
                {
                  v18 = a1;
                }

                v89 = a5[1];
                if (v89)
                {
                  v90 = (v89 + 4040);
                }

                else
                {
                  v90 = (*(*(*a5 + 392) + 384) + 212);
                }

                v91 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 543, v90, v91, *(a5[7] + 34), i, v88);
              }
            }

            if (!v18)
            {
              a1 = (a5[52])(v286, v294[0], HIWORD(v292), v293, v292, &v291);
              if (a1)
              {
                v18 = a1;
                v92 = a5[1];
                if (v92)
                {
                  v93 = (v92 + 4040);
                }

                else
                {
                  v93 = (*(*(*a5 + 392) + 384) + 212);
                }

                v94 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n", "btree_node_check", 547, v93, v94, *(a5[7] + 34), i, v18);
              }

              else if (v291 < 0)
              {
                v18 = 0;
              }

              else
              {
                v95 = a5[1];
                if (v95)
                {
                  v96 = (v95 + 4040);
                }

                else
                {
                  v96 = (*(*(*a5 + 392) + 384) + 212);
                }

                v97 = obj_oid(a5);
                a1 = log_err("%s:%d: %s oid 0x%llx (level %d): keys out of order: %d\n", "btree_node_check", 550, v96, v97, *(a5[7] + 34), i);
                v18 = 22;
              }
            }
          }
        }

        v81 = *(a5[7] + 36);
      }

      a8 = v280;
      a7 = v279;
      v15 = v283;
      if (v18)
      {
        return v18;
      }

      v23 = v287;
      v24 = v285;
    }

    if (!v23)
    {
      goto LABEL_203;
    }

    a1 = btree_node_key_ptr(a5, (v81 - 1), v294, &v292 + 1);
    if (a1)
    {
      v98 = a1;
      v99 = a5[1];
      if (v99)
      {
        v100 = (v99 + 4040);
      }

      else
      {
        v100 = (*(*(*a5 + 392) + 384) + 212);
      }

      v101 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 559, v100, v101, *(a5[7] + 34), *(a5[7] + 36) - 1, v98);
      return 22;
    }

    if (*(*(v23 + 56) + 36) - 1 <= v24)
    {
      v293 = a7;
      LOWORD(v292) = a8;
      v102 = a8;
      v103 = a7;
    }

    else
    {
      a1 = btree_node_key_ptr(v23, (v24 + 1), &v293, &v292);
      if (a1)
      {
        v18 = a1;
        obj_oid(v287);
        goto LABEL_249;
      }

      v103 = v293;
      v102 = v292;
    }

    if (!v103 || !v102 || !HIWORD(v292))
    {
      goto LABEL_203;
    }

    a1 = (a5[52])(v286, v294[0]);
    if (a1)
    {
      v18 = a1;
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key %d compare error: %d\n");
      return v18;
    }

    if (v291 < 0)
    {
LABEL_203:
      if (v16)
      {
        v104 = a5[7];
        if ((*(v104 + 32) & 2) != 0 || *(v104 + 36))
        {
          v18 = 0;
        }

        else
        {
          v122 = a5[1];
          if (v122)
          {
            v123 = (v122 + 4040);
          }

          else
          {
            v123 = (*(*(*a5 + 392) + 384) + 212);
          }

          v124 = obj_oid(a5);
          a1 = log_err("%s:%d: %s oid 0x%llx (level %d): non-leaf node has no children?\n", "btree_node_check", 595, v123, v124, *(a5[7] + 34));
          v18 = 22;
        }

        if ((*(a5[7] + 32) & 2) == 0 && (a10 & 1) == 0)
        {
          v287 = v268;
          MEMORY[0x28223BE20](a1);
          v106 = &v268[-v105];
          bzero(&v268[-v105], v107);
          if (*(a5[7] + 36))
          {
            v280 = a8;
            v108 = v15;
            v109 = 0;
            LODWORD(v286) = v108 + 1;
            while (1)
            {
              if (btree_node_key_off(a5, v109) != 0xFFFF && btree_node_val_off(a5, v109) != 0xFFFF)
              {
                v110 = btree_node_child_val(a5, v109, v106);
                if (v110)
                {
                  v111 = v110;
                  v112 = a7;
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  v113 = a5[1];
                  if (v113)
                  {
                    v114 = (v113 + 4040);
                  }

                  else
                  {
                    v114 = (*(*(*a5 + 392) + 384) + 212);
                  }

                  v115 = obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): can't get child %d oid: %d\n", "btree_node_check", 606, v114, v115, *(a5[7] + 34), v109, v111);
                  a7 = v112;
                }

                else if (*v106)
                {
                  v289 = a7;
                  v290 = 0;
                  v288 = v280;
                  v116 = a5[7];
                  if (v109 < *(v116 + 36) - 1)
                  {
                    v117 = btree_node_key_ptr(a5, (v109 + 1), &v289, &v288);
                    if (v117)
                    {
                      v137 = v117;
                      if (v18)
                      {
                        v18 = v18;
                      }

                      else
                      {
                        v18 = 22;
                      }

                      v138 = a5[1];
                      if (v138)
                      {
                        v139 = (v138 + 4040);
                      }

                      else
                      {
                        v139 = (*(*(*a5 + 392) + 384) + 212);
                      }

                      v159 = obj_oid(a5);
                      log_err("%s:%d: %s oid 0x%llx (level %d): can't get key %d: %d\n", "btree_node_check", 625, v139, v159, *(a5[7] + 34), v109 + 1, v137);
                      return v18;
                    }

                    v116 = a5[7];
                  }

                  v118 = v284;
                  if (btree_node_get(v16, v106, v284, 0x202u, *(v116 + 34) - 1, 0, &v290))
                  {
                    v119 = 1;
                  }

                  else
                  {
                    v119 = v290 == 0;
                  }

                  if (v119)
                  {
                    if (v18)
                    {
                      v18 = v18;
                    }

                    else
                    {
                      v18 = 22;
                    }

                    obj_oid(a5);
                    log_err("%s:%d: %s oid 0x%llx (level %d): can't get child: 0x%llx\n");
                  }

                  else
                  {
                    v120 = btree_node_check(v16, v118, a5, v109, v290, v286, v289, v288, v282, 0, v281);
                    if (v18)
                    {
                      v121 = 1;
                    }

                    else
                    {
                      v121 = v120 == 0;
                    }

                    if (v121)
                    {
                      v18 = v18;
                    }

                    else
                    {
                      v18 = v120;
                    }

                    obj_unlock(v290, 1);
                    obj_release(v290);
                  }
                }

                else
                {
                  if (v18)
                  {
                    v18 = v18;
                  }

                  else
                  {
                    v18 = 22;
                  }

                  obj_oid(a5);
                  log_err("%s:%d: %s oid 0x%llx (level %d): invalid child oid: 0x%llx\n");
                }
              }

              if (++v109 >= *(a5[7] + 36))
              {
                return v18;
              }
            }
          }
        }

        return v18;
      }

      return 0;
    }

    obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): node's max key is not less than next sibling's entry in parent\n");
    return 22;
  }

  v18 = 0;
  if (v287 && (*(v12 + 32) & 1) != 0)
  {
    v26 = a5[1];
    if (v26)
    {
      v27 = (v26 + 4040);
    }

    else
    {
      v27 = (*(*(*a5 + 392) + 384) + 212);
    }

    v28 = obj_oid(a5);
    v29 = *(a5[7] + 34);
    v30 = obj_oid(v287);
    log_err("%s:%d: %s oid 0x%llx (level %d): root node has a parent 0x%llx (level %d)\n", "btree_node_check", 183, v27, v28, v29, v30, *(*(v287 + 7) + 34));
    v18 = 22;
    v15 = v283;
  }

  if ((*(v12 + 32) & 2) != 0 && *(v12 + 34))
  {
    v31 = a5[1];
    if (v31)
    {
      v32 = (v31 + 4040);
    }

    else
    {
      v32 = (*(*(*a5 + 392) + 384) + 212);
    }

    v34 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): leaf node has non-zero level\n", "btree_node_check", 186, v32, v34, *(v12 + 34));
    v18 = 22;
  }

  if (v16)
  {
    if (*(a5[7] + 34) > *(v16[7] + 34))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v35 = a5[1];
      if (v35)
      {
        v36 = (v35 + 4040);
      }

      else
      {
        v36 = (*(*(*a5 + 392) + 384) + 212);
      }

      v37 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): node level greater than root level %d\n", "btree_node_check", 189, v36, v37, *(v12 + 34), *(v16[7] + 34));
    }

    v38 = v15 - 1;
    if (*(v16[7] + 34) - (v15 - 1) != *(a5[7] + 34))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v39 = a5[1];
      if (v39)
      {
        v40 = (v39 + 4040);
      }

      else
      {
        v40 = (*(*(*a5 + 392) + 384) + 212);
      }

      v41 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): node level should be %d\n", "btree_node_check", 192, v40, v41, *(v12 + 34), *(v16[7] + 34) - v38);
    }
  }

  if (*(v12 + 32))
  {
    v42 = -96;
  }

  else
  {
    v42 = -56;
  }

  v43 = v42 + ((a5[50] >> 27) & 0xF000);
  if (*(v12 + 40))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v44 = a5[1];
    if (v44)
    {
      v45 = (v44 + 4040);
    }

    else
    {
      v45 = (*(*(*a5 + 392) + 384) + 212);
    }

    v46 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid table space offset\n", "btree_node_check", 203, v45, v46, *(a5[7] + 34));
  }

  if (*(v12 + 42) > v43)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v47 = a5[1];
    if (v47)
    {
      v48 = (v47 + 4040);
    }

    else
    {
      v48 = (*(*(*a5 + 392) + 384) + 212);
    }

    v49 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): table space length larger than available data space\n", "btree_node_check", 206, v48, v49, *(a5[7] + 34));
  }

  if ((*(v12 + 32) & 4) == 0)
  {
    v50 = *(v12 + 42);
    if (v50 < 8 * btree_node_toc_entry_size(a5))
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): table space length smaller than minimum\n");
      return v18;
    }
  }

  if (v18)
  {
    return v18;
  }

  v51 = (v43 - *(v12 + 42));
  if (*(v12 + 44) <= (v43 - *(v12 + 42)))
  {
    v18 = 0;
  }

  else
  {
    v52 = a5[1];
    if (v52)
    {
      v53 = (v52 + 4040);
    }

    else
    {
      v53 = (*(*(*a5 + 392) + 384) + 212);
    }

    v54 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): free space offset too large\n", "btree_node_check", 218, v53, v54, *(a5[7] + 34));
    v18 = 22;
  }

  if (*(v12 + 46) + *(v12 + 44) > v51)
  {
    v55 = a5[1];
    if (v55)
    {
      v56 = (v55 + 4040);
    }

    else
    {
      v56 = (*(*(*a5 + 392) + 384) + 212);
    }

    v57 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): free space extends beyond end of node\n", "btree_node_check", 221, v56, v57, *(a5[7] + 34));
    v18 = 22;
  }

  v278 = *(v12 + 44);
  v58 = *(v12 + 46);
  if (*(v12 + 36) > v51)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v59 = a5[1];
    if (v59)
    {
      v60 = (v59 + 4040);
    }

    else
    {
      v60 = (*(*(*a5 + 392) + 384) + 212);
    }

    v61 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than possible\n", "btree_node_check", 228, v60, v61, *(a5[7] + 34));
  }

  v62 = *(v12 + 36);
  v277 = v51;
  if (v62 > v278 && (*(v12 + 32) & 0x80000000) == 0)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v63 = a5[1];
    if (v63)
    {
      v64 = (v63 + 4040);
    }

    else
    {
      v64 = (*(*(*a5 + 392) + 384) + 212);
    }

    v65 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than gross key space\n", "btree_node_check", 231, v64, v65, *(a5[7] + 34));
  }

  v66 = *(v12 + 36);
  v67 = *(v12 + 42);
  if (v66 > v67 / btree_node_toc_entry_size(a5))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key count larger than TOC space\n");
    return v18;
  }

  if (v18)
  {
    return v18;
  }

  if (a5[47] == v12 + 56)
  {
    v18 = 0;
  }

  else
  {
    v68 = a5[1];
    if (v68)
    {
      v69 = (v68 + 4040);
    }

    else
    {
      v69 = (*(*(*a5 + 392) + 384) + 212);
    }

    v70 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid TOC[] pointer\n", "btree_node_check", 242, v69, v70, *(a5[7] + 34));
    v18 = 22;
  }

  if (a5[48] != v12 + 56 + *(v12 + 42))
  {
    v71 = a5[1];
    if (v71)
    {
      v72 = (v71 + 4040);
    }

    else
    {
      v72 = (*(*(*a5 + 392) + 384) + 212);
    }

    v73 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid keys[] pointer\n", "btree_node_check", 245, v72, v73, *(a5[7] + 34));
    v18 = 22;
  }

  if ((*(v12 + 32) & 1) != 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000) - 40)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v74 = a5[1];
    if (v74)
    {
      v75 = (v74 + 4040);
    }

    else
    {
      v75 = (*(*(*a5 + 392) + 384) + 212);
    }

    v76 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n", "btree_node_check", 248, v75, v76, *(a5[7] + 34));
  }

  if ((*(v12 + 32) & 1) == 0 && a5[49] != v12 + ((a5[50] >> 27) & 0x1F000))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): invalid vals[] pointer\n");
    return v18;
  }

  if (v18)
  {
    return v18;
  }

  v77 = v278 + v58;
  if (*(v12 + 50) <= v278)
  {
    v18 = 0;
    v80 = v277;
  }

  else
  {
    v78 = a5[1];
    if (v78)
    {
      v79 = (v78 + 4040);
    }

    else
    {
      v79 = (*(*(*a5 + 392) + 384) + 212);
    }

    v80 = v277;
    v125 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key free list space larger than key space available\n", "btree_node_check", 259, v79, v125, *(a5[7] + 34));
    v18 = 22;
  }

  v126 = v80 - v77;
  v127 = *(v12 + 48);
  if (v127 != 0xFFFF && v278 - 4 < v127)
  {
    v128 = a5[1];
    if (v128)
    {
      v129 = (v128 + 4040);
    }

    else
    {
      v129 = (*(*(*a5 + 392) + 384) + 212);
    }

    v130 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): key free list head beyond key space available\n", "btree_node_check", 263, v129, v130, *(a5[7] + 34));
    v18 = 22;
  }

  if (*(v12 + 54) > v126)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v131 = a5[1];
    if (v131)
    {
      v132 = (v131 + 4040);
    }

    else
    {
      v132 = (*(*(*a5 + 392) + 384) + 212);
    }

    v133 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): val free list space larger than val space available\n", "btree_node_check", 266, v132, v133, *(a5[7] + 34));
  }

  v134 = *(v12 + 52);
  if (v134 != 0xFFFF)
  {
    if (v134 > v126)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      v135 = a5[1];
      if (v135)
      {
        v136 = (v135 + 4040);
      }

      else
      {
        v136 = (*(*(*a5 + 392) + 384) + 212);
      }

      v140 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list head beyond val space available\n", "btree_node_check", 270, v136, v140, *(a5[7] + 34));
      v134 = *(v12 + 52);
    }

    if (v134 <= 3)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list head beyond end of node\n");
      return v18;
    }
  }

  if (v18)
  {
    return v18;
  }

  v276 = v278 - 4;
  v141 = _apfs_calloc_typed((v277 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
  v142 = _apfs_calloc_typed((v277 + 63) >> 6, 8uLL, 0x100004000313F17uLL);
  v274 = (v277 + 63) >> 6;
  v275 = v142;
  if (!v141 || !v142)
  {
    v156 = a5[1];
    if (v156)
    {
      v157 = (v156 + 4040);
    }

    else
    {
      v157 = (*(*(*a5 + 392) + 384) + 212);
    }

    v158 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): couldn't allocate bitmap to check btree node space usage\n", "btree_node_check", 286, v157, v158, *(a5[7] + 34));
    v18 = 12;
    goto LABEL_343;
  }

  v273 = v126;
  v279 = a7;
  v280 = a8;
  bitmap_set_range(v141, *(v12 + 44), *(v12 + 46), v143);
  v144 = 0;
  LOWORD(v145) = *(v12 + 48);
  v146 = v141;
  while (1)
  {
    v147 = v145;
    if (v145 == 0xFFFF)
    {
      break;
    }

    if (v145 >= v278 || v276 < v145)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry starts beyond key space available\n");
LABEL_341:
      v18 = 22;
      goto LABEL_342;
    }

    v148 = (a5[48] + v145);
    v149 = v148[1];
    if (v149 <= 3)
    {
LABEL_339:
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry len value too small\n");
      goto LABEL_341;
    }

    v150 = v149 + v145;
    if (v150 > v278)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry extends beyond key space available\n");
      goto LABEL_341;
    }

    if (!bitmap_range_is_clear(v141, v147, v149, v150))
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry overlaps with other free space\n");
      goto LABEL_341;
    }

    bitmap_set_range(v141, v147, v148[1], v151);
    v144 += v148[1];
    v152 = *(v12 + 50);
    if (v144 <= v152)
    {
      v18 = 0;
    }

    else
    {
      v153 = a5[1];
      if (v153)
      {
        v154 = (v153 + 4040);
      }

      else
      {
        v154 = (*(*(*a5 + 392) + 384) + 212);
      }

      v155 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entries total space exceeds free list space\n", "btree_node_check", 326, v154, v155, *(a5[7] + 34));
      v18 = 22;
    }

    v145 = *v148;
    if (v147 == v145)
    {
LABEL_340:
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): key free list entry points to itself\n");
      goto LABEL_341;
    }

    v141 = v146;
    if (v144 > v152)
    {
      goto LABEL_343;
    }
  }

  v160 = 0;
  LOWORD(v161) = *(v12 + 52);
  while (1)
  {
    v162 = v161;
    if (v161 == 0xFFFF)
    {
      break;
    }

    if (v161 <= 3u)
    {
      v163 = a5[1];
      if (v163)
      {
        v164 = (v163 + 4040);
      }

      else
      {
        v164 = (*(*(*a5 + 392) + 384) + 212);
      }

      v165 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry beyond end of node\n", "btree_node_check", 342, v164, v165, *(a5[7] + 34));
      v18 = 22;
    }

    else
    {
      v18 = 0;
    }

    if (v162 > v273)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry starts beyond val space available\n");
      goto LABEL_341;
    }

    v141 = v146;
    if (v162 < 4)
    {
      goto LABEL_343;
    }

    v166 = (a5[49] - v162);
    v167 = v166[1];
    if (v167 <= 3)
    {
      goto LABEL_339;
    }

    if (v162 < v167)
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry extends beyond val space available\n");
      goto LABEL_341;
    }

    v168 = v277 - v162;
    v169 = v168;
    if (!bitmap_range_is_clear(v146, v168, v167, v168))
    {
      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entry overlaps with other free space\n");
      goto LABEL_341;
    }

    bitmap_set_range(v146, v169, v166[1], v170);
    v160 += v166[1];
    v171 = *(v12 + 54);
    if (v160 <= v171)
    {
      v18 = 0;
    }

    else
    {
      v172 = a5[1];
      if (v172)
      {
        v173 = (v172 + 4040);
      }

      else
      {
        v173 = (*(*(*a5 + 392) + 384) + 212);
      }

      v174 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val free list entries total space exceeds free list space\n", "btree_node_check", 372, v173, v174, *(a5[7] + 34));
      v18 = 22;
    }

    v161 = *v166;
    if (v162 == v161)
    {
      goto LABEL_340;
    }

    v141 = v146;
    if (v160 > v171)
    {
      goto LABEL_343;
    }
  }

  if ((*(v12 + 32) & 4) != 0 && (*(a5 + 401) & 0x7FFE) == 0)
  {
    v177 = a5[1];
    if (v177)
    {
      v178 = (v177 + 4040);
    }

    else
    {
      v178 = (*(*(*a5 + 392) + 384) + 212);
    }

    v179 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says key size is variable\n", "btree_node_check", 387, v178, v179, *(a5[7] + 34));
    v18 = 22;
  }

  else
  {
    v18 = 0;
  }

  if ((*(a5[7] + 32) & 2) == 0 && (*(a5 + 401) & 0x7FFE) != 0 && (*(v12 + 32) & 4) == 0)
  {
    v175 = a5[1];
    if (v175)
    {
      v176 = (v175 + 4040);
    }

    else
    {
      v176 = (*(*(*a5 + 392) + 384) + 212);
    }

    v180 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): tree says key size is fixed, but node says kv size is variable\n", "btree_node_check", 390, v176, v180, *(a5[7] + 34));
    v18 = 22;
  }

  if ((*(v12 + 32) & 4) != 0 && (*(a5[7] + 32) & 2) != 0 && (*(a5 + 401) & 0x7FFF8000) == 0)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v181 = a5[1];
    if (v181)
    {
      v182 = (v181 + 4040);
    }

    else
    {
      v182 = (*(*(*a5 + 392) + 384) + 212);
    }

    v183 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): node says kv size is fixed, but tree says val size is variable\n", "btree_node_check", 393, v182, v183, *(a5[7] + 34));
  }

  v184 = a5[7];
  v185 = *(v184 + 32);
  if ((v185 & 2) != 0)
  {
    v229 = a5[50];
    if ((v229 & 0x7FFF800000) != 0 && (v229 & 4) == 0 && (v229 & 0x7FFE00) != 0 && (*(v12 + 32) & 4) == 0)
    {
      if (v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = 22;
      }

      obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): tree says kv sizes are fixed, but leaf says kv size is variable\n");
      goto LABEL_342;
    }
  }

  v141 = v146;
  if (v18)
  {
    goto LABEL_343;
  }

  v186 = a5[47];
  if ((*(v12 + 32) & 4) == 0)
  {
    if (*(v184 + 36))
    {
      v187 = 0;
      v188 = (v186 + 4);
      while (1)
      {
        v189 = *(v188 - 2);
        v276 = *v188;
        v190 = v188[1];
        if (v189 == 0xFFFF)
        {
          if ((*(v12 + 32) & 0x80000000) == 0)
          {
            obj_oid(a5);
            goto LABEL_577;
          }

          v18 = 0;
        }

        else
        {
          v191 = *(v188 - 1);
          v192 = *(v184 + 32);
          if ((v192 & 2) != 0 && (v16 && *(v16[49] + 16) < v191 || (v192 & 1) != 0 && *(a5[49] + 16) < v191))
          {
            v193 = a5[1];
            if (v193)
            {
              v194 = (v193 + 4040);
            }

            else
            {
              v194 = (*(*(*a5 + 392) + 384) + 212);
            }

            v195 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 475, v194, v195, *(a5[7] + 34));
            v18 = 22;
          }

          else
          {
            v18 = 0;
          }

          if (v189 >= v278)
          {
            v196 = a5[1];
            if (v196)
            {
              v197 = (v196 + 4040);
            }

            else
            {
              v197 = (*(*(*a5 + 392) + 384) + 212);
            }

            v198 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 475, v197, v198, *(a5[7] + 34));
            v18 = 22;
          }

          v199 = (v191 + v189);
          if (v199 <= v278)
          {
            if (!v18)
            {
              if (bitmap_range_is_clear(v146, v189, v191, v199))
              {
                v18 = 0;
              }

              else
              {
                v204 = a5[1];
                if (v204)
                {
                  v205 = (v204 + 4040);
                }

                else
                {
                  v205 = (*(*(*a5 + 392) + 384) + 212);
                }

                v206 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 475, v205, v206, *(a5[7] + 34));
                v18 = 22;
              }

              if (!bitmap_range_is_clear(v275, v189, v191, v202))
              {
                v207 = a5[1];
                if (v207)
                {
                  v208 = (v207 + 4040);
                }

                else
                {
                  v208 = (*(*(*a5 + 392) + 384) + 212);
                }

                v209 = obj_oid(a5);
                log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 475, v208, v209, *(a5[7] + 34));
                v18 = 22;
              }

              v210 = a5[50];
              if ((v210 & 0x40) != 0)
              {
                v211 = v191;
              }

              else
              {
                v211 = (v191 + 7) & 0x1FFF8;
              }

              bitmap_set_range(v275, v189, v211, v210);
            }
          }

          else
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v200 = a5[1];
            if (v200)
            {
              v201 = (v200 + 4040);
            }

            else
            {
              v201 = (*(*(*a5 + 392) + 384) + 212);
            }

            v203 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 475, v201, v203, *(a5[7] + 34));
          }
        }

        if (v276 > 0xFFFD)
        {
          if (v190 && v190 != 65534)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): invalid val offset has non-zero length\n");
            goto LABEL_342;
          }
        }

        else
        {
          v212 = *(a5[7] + 32);
          if ((v212 & 2) != 0 && (v16 && *(v16[49] + 20) < v190 || (v212 & 1) != 0 && *(a5[49] + 20) < v190))
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v213 = a5[1];
            if (v213)
            {
              v214 = (v213 + 4040);
            }

            else
            {
              v214 = (*(*(*a5 + 392) + 384) + 212);
            }

            v215 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 478, v214, v215, *(a5[7] + 34));
          }

          if (v276 > v273)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            v216 = a5[1];
            if (v216)
            {
              v217 = (v216 + 4040);
            }

            else
            {
              v217 = (*(*(*a5 + 392) + 384) + 212);
            }

            v218 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 478, v217, v218, *(a5[7] + 34));
          }

          if (v276 < v190)
          {
            if (v18)
            {
              v18 = v18;
            }

            else
            {
              v18 = 22;
            }

            obj_oid(a5);
            goto LABEL_576;
          }

          v141 = v146;
          if (v18)
          {
            goto LABEL_343;
          }

          v219 = v277 - v276;
          if (bitmap_range_is_clear(v146, v277 - v276, v190, v277))
          {
            v18 = 0;
          }

          else
          {
            v221 = a5[1];
            if (v221)
            {
              v222 = (v221 + 4040);
            }

            else
            {
              v222 = (*(*(*a5 + 392) + 384) + 212);
            }

            v223 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 478, v222, v223, *(a5[7] + 34));
            v18 = 22;
          }

          if (!bitmap_range_is_clear(v275, v219, v190, v220))
          {
            v224 = a5[1];
            if (v224)
            {
              v225 = (v224 + 4040);
            }

            else
            {
              v225 = (*(*(*a5 + 392) + 384) + 212);
            }

            v226 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 478, v225, v226, *(a5[7] + 34));
            v18 = 22;
          }

          v227 = a5[50];
          if ((v227 & 0x40) != 0)
          {
            v228 = v190;
          }

          else
          {
            v228 = (v190 + 7) & 0x1FFF8;
          }

          bitmap_set_range(v275, v219, v228, v227);
        }

        v141 = v146;
        if (v18)
        {
          goto LABEL_343;
        }

        v188 += 4;
        ++v187;
        v184 = a5[7];
        if (v187 >= *(v184 + 36))
        {
          goto LABEL_561;
        }
      }
    }

    goto LABEL_561;
  }

  v230 = a5[50];
  if ((v185 & 2) != 0)
  {
    v231 = v230 >> 23;
  }

  else
  {
    v231 = 8;
  }

  if (!*(v184 + 36))
  {
LABEL_561:
    _apfs_free(v146, 8 * v274);
    _apfs_free(v275, 8 * v274);
    a8 = v280;
    a7 = v279;
    v15 = v283;
    goto LABEL_17;
  }

  v232 = 0;
  v272 = (v230 >> 9) & 0x3FFF;
  v269 = (v272 + 7) & 0x7FF8;
  v271 = v231;
  v270 = (v231 + 7) & 0x1FFF8;
  v233 = (v186 + 2);
  while (1)
  {
    v234 = *(v233 - 1);
    v276 = *v233;
    if (v234 == 0xFFFF)
    {
      if ((*(v12 + 32) & 0x80000000) == 0)
      {
        obj_oid(a5);
LABEL_577:
        log_err("%s:%d: %s oid 0x%llx (level %d): invalid key offset\n");
        goto LABEL_341;
      }

      v18 = 0;
    }

    else
    {
      v235 = *(v184 + 32);
      if ((v235 & 2) != 0 && (v16 && *(v16[49] + 16) < v272 || (v235 & 1) != 0 && *(a5[49] + 16) < v272))
      {
        v236 = a5[1];
        if (v236)
        {
          v237 = (v236 + 4040);
        }

        else
        {
          v237 = (*(*(*a5 + 392) + 384) + 212);
        }

        v238 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key size greater than longest recorded for tree\n", "btree_node_check", 452, v237, v238, *(a5[7] + 34));
        v18 = 22;
      }

      else
      {
        v18 = 0;
      }

      if (v234 >= v278)
      {
        v239 = a5[1];
        if (v239)
        {
          v240 = (v239 + 4040);
        }

        else
        {
          v240 = (*(*(*a5 + 392) + 384) + 212);
        }

        v241 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key location not within key space\n", "btree_node_check", 452, v240, v241, *(a5[7] + 34));
        v18 = 22;
      }

      if (v272 + v234 <= v278)
      {
        if (!v18)
        {
          if (bitmap_range_is_clear(v146, v234, v272, &v295))
          {
            v18 = 0;
          }

          else
          {
            v245 = a5[1];
            if (v245)
            {
              v246 = (v245 + 4040);
            }

            else
            {
              v246 = (*(*(*a5 + 392) + 384) + 212);
            }

            v247 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with free space\n", "btree_node_check", 452, v246, v247, *(a5[7] + 34));
            v18 = 22;
          }

          if (!bitmap_range_is_clear(v275, v234, v272, &v295))
          {
            v248 = a5[1];
            if (v248)
            {
              v249 = (v248 + 4040);
            }

            else
            {
              v249 = (*(*(*a5 + 392) + 384) + 212);
            }

            v250 = obj_oid(a5);
            log_err("%s:%d: %s oid 0x%llx (level %d): key entry overlaps with other entries\n", "btree_node_check", 452, v249, v250, *(a5[7] + 34));
            v18 = 22;
          }

          if ((a5[50] & 0x40) != 0)
          {
            v251 = v272;
          }

          else
          {
            v251 = v269;
          }

          bitmap_set_range(v275, v234, v251, v269);
        }
      }

      else
      {
        v18 = v18 ? v18 : 22;
        v242 = a5[1];
        v243 = (v242 ? v242 + 4040 : *(*(*a5 + 392) + 384) + 212);
        v244 = obj_oid(a5);
        log_err("%s:%d: %s oid 0x%llx (level %d): key location extends beyond key space\n", "btree_node_check", 452, v243, v244, *(a5[7] + 34));
      }
    }

    if (v276 <= 0xFFFD)
    {
      break;
    }

LABEL_559:
    v141 = v146;
    if (v18)
    {
      goto LABEL_343;
    }

    v233 += 2;
    ++v232;
    v184 = a5[7];
    if (v232 >= *(v184 + 36))
    {
      goto LABEL_561;
    }
  }

  v252 = *(a5[7] + 32);
  if ((v252 & 2) != 0 && (v16 && *(v16[49] + 20) < v271 || (v252 & 1) != 0 && *(a5[49] + 20) < v271))
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v253 = a5[1];
    if (v253)
    {
      v254 = (v253 + 4040);
    }

    else
    {
      v254 = (*(*(*a5 + 392) + 384) + 212);
    }

    v255 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): val size greater than longest recorded for tree\n", "btree_node_check", 455, v254, v255, *(a5[7] + 34));
  }

  if (v276 > v273)
  {
    if (v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = 22;
    }

    v256 = a5[1];
    if (v256)
    {
      v257 = (v256 + 4040);
    }

    else
    {
      v257 = (*(*(*a5 + 392) + 384) + 212);
    }

    v258 = obj_oid(a5);
    log_err("%s:%d: %s oid 0x%llx (level %d): val location not within val space\n", "btree_node_check", 455, v257, v258, *(a5[7] + 34));
  }

  if (v276 >= v231)
  {
    v141 = v146;
    if (v18)
    {
      goto LABEL_343;
    }

    v259 = v277 - v276;
    if (bitmap_range_is_clear(v146, v277 - v276, v231, v277))
    {
      v18 = 0;
    }

    else
    {
      v261 = a5[1];
      if (v261)
      {
        v262 = (v261 + 4040);
      }

      else
      {
        v262 = (*(*(*a5 + 392) + 384) + 212);
      }

      v263 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with free space\n", "btree_node_check", 455, v262, v263, *(a5[7] + 34));
      v18 = 22;
    }

    if (!bitmap_range_is_clear(v275, v259, v231, v260))
    {
      v264 = a5[1];
      if (v264)
      {
        v265 = (v264 + 4040);
      }

      else
      {
        v265 = (*(*(*a5 + 392) + 384) + 212);
      }

      v266 = obj_oid(a5);
      log_err("%s:%d: %s oid 0x%llx (level %d): val entry overlaps with other entries\n", "btree_node_check", 455, v265, v266, *(a5[7] + 34));
      v18 = 22;
    }

    if ((a5[50] & 0x40) != 0)
    {
      v267 = v271;
    }

    else
    {
      v267 = v270;
    }

    bitmap_set_range(v275, v259, v267, v271);
    goto LABEL_559;
  }

  if (v18)
  {
    v18 = v18;
  }

  else
  {
    v18 = 22;
  }

  obj_oid(a5);
LABEL_576:
  log_err("%s:%d: %s oid 0x%llx (level %d): val location extends beyond val space\n");
LABEL_342:
  v141 = v146;
LABEL_343:
  if (v141)
  {
    _apfs_free(v141, (8 * v274));
  }

  if (v275)
  {
    _apfs_free(v275, (8 * v274));
  }

  return v18;
}
uint64_t sub_10008A20C(uint64_t *a1, int8x16_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2[2].i64[1];
  v14 = *(v13 + 1000);
  memset(v95, 0, sizeof(v95));
  v93 = 3808;
  v94 = 832;
  v15 = *a5;
  v16 = *a3;
  *(a7 + 64) = *a3;
  a2[3].i64[1] = v16;
  if (v15)
  {
    fsckPrint(fsck_apfs_ctx, 215, a3, a4, a5, a6, a7, a8);
  }

  else if ((v15 & 2) == 0)
  {
    v17 = *a3;
    v18 = v15;
    if (*a3 > *(a1[1] + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  omap_sv_disable(1);
  v17 = *a3;
  if (*a3 > *(a1[1] + 16))
  {
    if (v15)
    {
LABEL_10:
      fsck_printf_err("omap snapshot: invalid key (0x%llx)\n", v17);
      v20 = 92;
      fsck_fail_func(0x174, 92);
LABEL_50:
      v56 = 0;
LABEL_51:
      v59 = a2->i8[14] & (v15 | v56);
      goto LABEL_52;
    }

    v13 = a2[2].i64[1];
LABEL_9:
    memset(v110, 0, sizeof(v110));
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    memset(&v99[1], 0, 64);
    v19 = *(a7 + 32) + 1;
    *(a7 + 32) = v19;
    v99[0] = 0;
    fsckPrint(fsck_apfs_ctx, 214, a3, a4, a5, a6, a7, a8, v19, *(v13 + 216), v99, v17);
    v17 = *a3;
    goto LABEL_10;
  }

  v18 = *a5;
LABEL_12:
  if (v18 >= 4)
  {
    fsck_printf_warn("omap snapshot: invalid oms_flags (0x%x)\n", v18);
    fsck_fail_func(0x175, -3);
  }

  if (*(a5 + 4))
  {
    fsck_printf_warn("omap snapshot: invalid oms_pad (0x%x)\n", *(a5 + 4));
    fsck_fail_func(0x176, -10);
  }

  if (*(a5 + 8))
  {
    fsck_printf_warn("omap snapshot: oms_oid should be unused but has value (0x%llx)\n", *(a5 + 8));
    fsck_fail_func(0x312, -2);
  }

  if (v15)
  {
    v20 = 0;
    goto LABEL_50;
  }

  v21 = a2[2].i64[1];
  if (v14 && ((*(v21 + 264) & 1) != 0 && !*(v21 + 976) || a2[1].i64[1]))
  {
    v22 = *a3;
    v98 = 0;
    memset(v99, 0, 24);
    v23 = copy_obj(a1, a2, 0, v14, v22, 0, 29, 0, &v98, v99, 0);
    if (v23)
    {
      v20 = v23;
      if (v23 != 2)
      {
LABEL_34:
        if (v98)
        {
          free(v98);
        }

        if (v20)
        {
          goto LABEL_50;
        }

        v21 = a2[2].i64[1];
        goto LABEL_38;
      }

      fsck_printf_debug("snap_meta_ext: object (oid 0x%llx): no record for snapshot (xid 0x%llx)\n", v14, v22);
    }

    else
    {
      v24 = v98;
      v25 = *(v98 + 8);
      if (v25 < 2)
      {
        if (v25)
        {
          v26 = *(v98 + 5);
          if (v26 == v22 || (fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): invalid xid (0x%llx)\n", v14, v22, v26), fsck_fail_func(0x35F, 92), !fsckAskPrompt(fsck_apfs_ctx, "Fix sme_snap_xid (xid 0x%llx)? ", v27, v28, v29, v30, v31, v32, *(v24 + 5))))
          {
            v20 = 0;
          }

          else
          {
            *(v24 + 5) = v22;
            v20 = 1;
          }

          v78 = *(v24 + 9);
          if (v78)
          {
            fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): unknown flags (%u)\n", v14, v22, v78);
            fsck_fail_func(0x360, -3);
          }

          if (uuid_is_null(v24 + 48))
          {
            fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): sme_uuid is NULL\n", v14, v22);
            fsck_fail_func(0x361, 92);
          }

          if (v20)
          {
            v96 = *v99;
            v97 = *&v99[16];
            v20 = write_obj(a1, a2, v98, &v96, *v99, v79);
            if (v20)
            {
              fsck_fail_func(0x362, v20);
            }

            else
            {
              fsck_fail_add_repair();
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        fsck_printf_warn("snap_meta_ext: (0x%llx:0x%llx): unknown version (%u)\n", v14, v22, v25);
        fsck_fail_func(0x35E, -6);
      }
    }

    v20 = 0;
    goto LABEL_34;
  }

LABEL_38:
  inited = tree_init_ext(v95, a1, a2, *(v21 + 124) & 0xC0000000, *(v21 + 124), 16, 0, *(a1[1] + 36), 0, 0, 0, *(v21 + 152), jkey_compare);
  v34 = malloc_type_calloc(1uLL, 0x340uLL, 0xAF9E5F5EuLL);
  v35 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x3A80B5D4uLL);
  v42 = v35;
  v43 = *a3;
  if (inited || !v34 || !v35)
  {
    memset(v110, 0, sizeof(v110));
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    memset(&v99[1], 0, 64);
    v57 = *(a7 + 32) + 1;
    *(a7 + 32) = v57;
    v99[0] = 0;
    fsckPrint(fsck_apfs_ctx, 214, v36, v37, v38, v39, v40, v41, v57, *(a2[2].i64[1] + 216), v99, v43);
    if (inited)
    {
      v20 = inited;
    }

    else
    {
      v20 = 12;
    }

    v58 = strerror(v20);
    fsck_printf_err("unable to init snap_meta tree for extentref_tree_oid lookup: %s\n", v58);
    fsck_fail_func(0x2B0, v20);
    if (v42)
    {
      free(v42);
    }

    if (v34)
    {
      free(v34);
    }

    goto LABEL_50;
  }

  *v34 = v43 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  v44 = tree_lookup(v95, 0, 0, v34, &v94, 832, v35, &v93);
  v51 = *a3;
  if (v44)
  {
    v20 = v44;
    memset(v110, 0, sizeof(v110));
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    memset(&v99[1], 0, 64);
    v52 = *(a7 + 32) + 1;
    *(a7 + 32) = v52;
    v99[0] = 0;
    fsckPrint(fsck_apfs_ctx, 214, v45, v46, v47, v48, v49, v50, v52, *(a2[2].i64[1] + 216), v99, v51);
    v53 = *a3;
    v54 = strerror(v20);
    fsck_printf_err("Could not lookup cached extent_ref_tree information at snap xid (0x%llx): %s\n", v53, v54);
    fsck_fail_func(0x2B7, 92);
    v55 = 0;
    v56 = 0;
    goto LABEL_104;
  }

  v91 = v34;
  memset(v110, 0, sizeof(v110));
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  memset(&v99[1], 0, 64);
  ++*(a7 + 32);
  v99[0] = 0;
  __strlcpy_chk();
  fsckPrint(fsck_apfs_ctx, 214, v61, v62, v63, v64, v65, v66, *(a7 + 32), *(a2[2].i64[1] + 216), v99, v51);
  v90 = *(v42 + 10);
  v68 = *v42;
  v67 = v42[1];
  v92 = v42;
  v56 = *v42 == 0;
  v69 = a2 + 3;
  v70 = copy_obj(a1, 0, 0x40000000, v67, 0, 0, 13, 0, a2[3].i64, 0, 0);
  if (v70)
  {
    v20 = v70;
    v55 = 0;
LABEL_57:
    v34 = v91;
    v42 = v92;
    goto LABEL_104;
  }

  v89 = v68;
  v71 = v69->i64[0];
  v72 = v69->i64[0];
  v73 = a2 + 3;
  if (!v69->i64[0])
  {
    v72 = a2[2].i64[1];
  }

  v34 = v91;
  v42 = v92;
  if ((*(v72 + 56) & 0x20) != 0)
  {
    if (*(v71 + 1024))
    {
      v80 = fsck_integrity_meta(a1, a2, *a3);
      v73 = a2 + 3;
      v42 = v92;
      if (!v80)
      {
        goto LABEL_61;
      }

      v20 = v80;
    }

    else
    {
      fsck_printf_err("Snapshot (0x%llx): apfs_integrity_meta_oid is invalid\n", *a3);
      v20 = 92;
      fsck_fail_func(0x387, 92);
    }

    v55 = 0;
    goto LABEL_104;
  }

LABEL_61:
  v87 = v73;
  v88 = is_snapshot_in_purgatory(v42 + 50, *(v42 + 24));
  if (v89 && !v88)
  {
    if (a2->i8[9])
    {
      goto LABEL_67;
    }

    v74 = *v87;
    if (!*v87)
    {
      v74 = a2[2].i64[1];
    }

    if ((*(v74 + 56) & 0x20) != 0)
    {
LABEL_67:
      phys_extent_init(a2->i8);
    }
  }

  v75 = a2[3].i64[0];
  if (a2->i8[9] == 1)
  {
    memset(v99, 0, 64);
    sub_10008AD40(v99, a1, a2, *(a2[2].i64[1] + 116), 14, *(v75 + 136));
    fsroot_jobj_init(v99, *a3);
    fsck_doc_id_init(a1, a2, *a3);
    v76 = fsck_doc_id_trees(a1, a2, *a3);
    if (v76 || (v76 = fsck_clonegroup_tree(a1, a2, *a3, a7), v76) || (v76 = fsck_tree(v99, *a3, jobj_validate_repair_key_val, a7, 0, 0), v76) || *(a2[2].i64[1] + 1096) && ((v76 = fsroot_jobj_advance(a1, a2, 0), v76) || (sub_10008AD40(v99, a1, a2, *(a2[2].i64[1] + 1104), 36, *(a2[3].i64[0] + 1096)), v76 = fsck_tree(v99, *a3, jobj_validate_repair_key_val, a7, 0, 0), v76)) || (v76 = fsck_ios_encryption_rolling(a1, a2), v76))
    {
LABEL_102:
      v20 = v76;
      goto LABEL_103;
    }

    v77 = fsroot_jobj_finalize(a1, a2, *a3, 0);
    if (v77 || (v77 = fsck_doc_id_finalize(a1, a2, *a3), v77))
    {
      v20 = v77;
      v55 = v88;
      goto LABEL_57;
    }

    v75 = *v87;
    v34 = v91;
    v42 = v92;
  }

  v81 = v75;
  v82 = v90;
  if (!v75)
  {
    v81 = a2[2].i64[1];
  }

  if ((*(v81 + 56) & 0x20) != 0)
  {
    memset(v99, 0, 64);
    sub_10008ADD4(v99, a1, a2, *(a2[2].i64[1] + 1040), *(v75 + 1032));
    v76 = fsck_tree(v99, 0, fext_validate_repair_key_val, a7, 0, 1);
    v82 = v90;
    if (v76)
    {
      goto LABEL_102;
    }
  }

  if (!v89 || (memset(v99, 0, 64), sub_10008AE2C(v99, a1, a2, v82, v89), v83 = fsck_tree(v99, 0, jobj_validate_repair_key_val, a7, 0, 1), !v83))
  {
    v76 = phys_extent_finalize(a2, *a3);
    if (!v76)
    {
      v84 = a2[2].i64[1];
      if ((*(v84 + 56) & 0x40) != 0)
      {
        memset(v99, 0, 64);
        sub_10008AE80(v99, a1, a2, *(v84 + 1044), *(a2[3].i64[0] + 1048));
        v85 = fsck_tree(v99, 0, pfkur_validate_repair_key_val, a7, 0, 1);
        v86 = pfkur_finalize(a1, a2, 0);
        if (v85)
        {
          v20 = v85;
        }

        else
        {
          v20 = v86;
        }
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v20 = v83;
  v56 = 0;
LABEL_103:
  v55 = v88;
LABEL_104:
  free(v42);
  free(v34);
  if (!v55)
  {
    goto LABEL_51;
  }

  v59 = 1;
LABEL_52:
  volume_reset_snapshot(a2, v59 & 1);
  if (v20 == 92)
  {
    omap_sv_disable(1);
    fsroot_jobj_abort(a2);
    fsck_doc_id_cleanup();
    v20 = 0;
    a2->i8[11] = 1;
    a2->i8[13] = 1;
  }

  return v20;
}

uint64_t sub_10008AD40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v6 = *(a3 + 48);
  v7 = v6;
  if (!v6)
  {
    v7 = *(a3 + 40);
  }

  if ((*(v7 + 56) & 0x20) != 0)
  {
    v8 = *(a3 + 16);
  }

  else
  {
    v8 = 0;
  }

  if (!v6)
  {
    v6 = *(a3 + 40);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a3 + 20);
  }

  else
  {
    v9 = 0;
  }

  return tree_init_ext(a1, a2, a3, a4 & 0xC0000000, a4, a5, v8, *(*(a2 + 8) + 36), 0, 0, v9, a6, jkey_compare);
}

char *pfkur_register_file_id(char *result)
{
  if ((byte_100103C54 & 1) == 0)
  {
    if (dword_100103C58 <= 0xFF && (v1 = result, (result = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL)) != 0))
    {
      *result = v1;
      *(result + 1) = 0;
      *off_1000E8F68 = result;
      off_1000E8F68 = (result + 8);
      ++dword_100103C58;
    }

    else
    {
      result = fsck_printf_debug("more than %d inodes tracked as rolling, disabling pfkur tracking repairs\n", 256);
      byte_100103C54 = 1;
    }
  }

  return result;
}

uint64_t pfkur_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100103C54)
  {
LABEL_8:
    v13 = 0;
LABEL_9:
    v6 = off_1000E8F60;
    if (!off_1000E8F60)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v7 = v6;
      v6 = v6[1];
      v8 = off_1000E8F60;
      if (off_1000E8F60 != v7)
      {
        break;
      }

      off_1000E8F60 = *(off_1000E8F60 + 1);
      if (!off_1000E8F60)
      {
        v11 = &off_1000E8F60;
LABEL_16:
        off_1000E8F68 = v11;
      }

LABEL_17:
      free(v7);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = v8;
      v8 = v8[1];
    }

    while (v8 != v7);
    v10 = v8[1];
    v9[1] = v10;
    v11 = (v9 + 1);
    if (v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = off_1000E8F60;
  if (off_1000E8F60)
  {
    while (1)
    {
      fsck_printf_warn("missing upgrade-rolling entry for inode (%llu)\n", *v3);
      fsck_fail_func(0x3C2, -2);
      memset(v14, 0, sizeof(v14));
      if (a3)
      {
        v5 = fsck_repairs_add(a3, 8u, 2, 0, 1, v3, 8u, v14, 0x18u);
        if (v5)
        {
          v13 = v5;
          goto LABEL_9;
        }
      }

      else
      {
        print_snapshot_warning();
      }

      v3 = *(v3 + 1);
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = 0;
LABEL_20:
  dword_100103C58 = 0;
  byte_100103C54 = 0;
  return v13;
}

uint64_t pfkur_validate_repair_key_val(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(a2 + 40) + 56) & 0x40) == 0)
  {
    fsck_printf_err("pfkur_tree_key : object (oid 0x%llx): pfkur tree record present on non-pfkur volume\n", *a3);
    v8 = 963;
    goto LABEL_26;
  }

  v9 = *a3;
  if ((byte_100103C54 & 1) == 0)
  {
    v10 = off_1000E8F60;
    if (off_1000E8F60)
    {
      v11 = off_1000E8F60;
      while (*v11 != v9)
      {
        v11 = v11[1];
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      if (off_1000E8F60 == v11)
      {
        v14 = &off_1000E8F60;
        off_1000E8F60 = *(off_1000E8F60 + 1);
        if (off_1000E8F60)
        {
          goto LABEL_13;
        }
      }

      else
      {
        do
        {
          v12 = v10;
          v10 = v10[1];
        }

        while (v10 != v11);
        v13 = v10[1];
        v12[1] = v13;
        v14 = (v12 + 1);
        if (v13)
        {
          goto LABEL_13;
        }
      }

      off_1000E8F68 = v14;
LABEL_13:
      --dword_100103C58;
      free(v11);
      v9 = *a3;
    }
  }

LABEL_14:
  if (v9 - 0x1000000000000000 > 0xF000000000000001)
  {
    if (v9 <= 0xF)
    {
      fsck_printf_err("pfkur_key : object (oid 0x%llx): invalid oid (0x%llx)\n", v9, v9);
      fsck_fail_func(0x3C5, -2);
    }

    if (*a5)
    {
      fsck_printf_warn("pfk_val : object (oid 0x%llx): unknown version (%u)\n", *a3, *a5);
      fsck_fail_func(0x3C6, -6);
    }

    v15 = *(a5 + 4);
    if (v15 >= 0x10)
    {
      fsck_printf_warn("pfk_val : object (oid 0x%llx): unknown flags (%u)\n", *a3, v15);
      fsck_fail_func(0x3C7, -3);
    }

    v16 = *(a5 + 8);
    if (HIBYTE(v16))
    {
      fsck_printf_err("pfk_val : object (oid 0x%llx): invalid current_offset (%llu)\n", *a3, v16);
      v8 = 968;
    }

    else
    {
      v17 = *(a5 + 16);
      if (!HIBYTE(v17))
      {
        return 0;
      }

      fsck_printf_err("pfk_val : object (oid 0x%llx): invalid current_ns_offset (%llu)\n", *a3, v17);
      v8 = 969;
    }
  }

  else
  {
    fsck_printf_err("pfkur_key : object (oid 0x%llx): invalid oid (0x%llx)\n", v9, v9);
    v8 = 964;
  }

LABEL_26:
  v18 = 92;
  fsck_fail_func(v8, 92);
  print_pfkur_tree_key_val_info(a2, a3, a5);
  return v18;
}

uint64_t sub_10008B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v14 = *(a1 + 48);
  v15 = *(a1 + 52) != 0;
  v22 = 0;
  v23 = 0;
  v21 = 0uLL;
  v16 = copy_obj(*a1, *(a1 + 8), *(a1 + 40), *(a1 + 56), a3, (v15 << 29), 2, v14, &v23, &v21, a8);
  if (!v16)
  {
    v18 = v23;
    v19 = v23 + DWORD2(v21) - 40;
    if (a7)
    {
      *a7 = *v19;
      v20 = *(a1 + 36);
      *(a7 + 40) = *(a1 + 52);
      *(a7 + 44) = v20;
      *(a7 + 64) = a2;
    }

    if (a4)
    {
      *a4 = v21;
      *(a4 + 16) = v22;
    }

    if (a5)
    {
      *a5 = v18;
      if (a6)
      {
        *a6 = v19;
      }
    }

    else
    {
      free(v18);
    }
  }

  return v16;
}

unint64_t get_key_and_value_at_index(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _WORD *a5, uint64_t *a6, _WORD *a7)
{
  result = sub_10008B4DC(a1, a2, a3);
  if (result == 0xFFFFLL)
  {
    v14 = 0;
    LOWORD(v15) = 0;
  }

  else
  {
    v15 = result >> 16;
    v14 = a1 + result + *(a1 + 42) + 56;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 4);
  *a4 = v14;
  *a5 = v15;
  if (a6)
  {
    if (!a7)
    {
      sub_10008F28C();
    }

    v18 = v17 + ((v16 << 31 >> 31) & 0xFFFFFFD8) - 56;
    v19 = HIWORD(result);
    v20 = a1 + v18 - WORD2(result) + 56;
    if ((result & 0xFFFE00000000) == 0xFFFE00000000)
    {
      v20 = 0;
      LOWORD(v19) = 0;
    }

    *a6 = v20;
    *a7 = v19;
  }

  return result;
}

unint64_t sub_10008B4DC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = a1 + 56;
  if ((v3 & 4) != 0)
  {
    v10 = (v4 + 4 * a3);
    v6 = *v10;
    v8 = v10[1];
    if (v6 == 0xFFFF)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v8 == 0xFFFF)
    {
      v9 = 0;
    }

    else if (v8 == 65534)
    {
      v9 = 65534;
      v8 = 65534;
    }

    else if ((v3 & 2) != 0)
    {
      v9 = *(a2 + 12);
    }

    else if ((v3 & 8) != 0)
    {
      v9 = *(a2 + 44) + 8;
    }

    else
    {
      v9 = 8;
    }
  }

  else
  {
    v5 = (v4 + 8 * a3);
    v6 = *v5;
    LOWORD(v7) = v5[1];
    v8 = v5[2];
    v9 = v5[3];
  }

  return (v9 << 48) | (v8 << 32) | (v7 << 16) | v6;
}

unint64_t get_key_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _WORD *a5, uint64_t a6, uint64_t *a7, _WORD *a8)
{
  v8 = *(a1 + 36);
  if (v8 <= a3 || v8 <= a6)
  {
    sub_10008F2B8();
  }

  get_key_and_value_at_index(a1, a2, a3, a4, a5, 0, 0);

  return get_key_and_value_at_index(a1, a2, a6, a7, a8, 0, 0);
}

uint64_t fsck_btree_validate_node(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v13 = 8;
  if ((v12 & 2) != 0)
  {
    v13 = a2[3];
  }

  if ((v12 & 4) != 0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  if (v12)
  {
    v15 = -96;
  }

  else
  {
    v15 = -56;
  }

  v16 = *a2;
  v17 = a2[1];
  v18 = v12 < 0x20 || a3 == 0;
  v19 = *a2;
  if (!v18)
  {
    fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid btn_flags (0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v12, *(a1 + 34), v12);
    fsck_fail_func(0x17A, -3);
    v19 = *a2;
  }

  v20 = *(a1 + 32);
  if ((v19 & 0x80) != 0)
  {
    if ((v20 & 0x18) != 0x18)
    {
      if (v9)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: missing btn_flags (expected 0x%x, actual 0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v20, *(a1 + 34), 24, v20 & 0x18);
        fsck_fail_func(0x390, 92);
      }

      if (!a4 || !fsckAskPrompt(fsck_apfs_ctx, "Set missing flags? ", a3, a4, a5, a6, a7, a8))
      {
        return 92;
      }

      LOWORD(v20) = *(a1 + 32) | 0x18;
      *(a1 + 32) = v20;
      *a4 = 1;
    }

    v13 = a2[11] + v13;
  }

  else if ((v20 & 0x18) != 0)
  {
    if (v9)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unexpected btn_flags (0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v20, *(a1 + 34), v20 & 0x18);
      fsck_fail_func(0x391, 92);
    }

    if (!a4 || !fsckAskPrompt(fsck_apfs_ctx, "Clear unexpected flags? ", a3, a4, a5, a6, a7, a8))
    {
      return 92;
    }

    LOWORD(v20) = *(a1 + 32) & 0xFFE7;
    *(a1 + 32) = v20;
    *a4 = 1;
  }

  v21 = v20;
  if ((v20 & 4) != 0)
  {
    if (!v13)
    {
      if (v9)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u), given btn_flags (0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v20, *(a1 + 34), a2[3], v20);
        v22 = 92;
        v23 = 380;
        goto LABEL_52;
      }

      return 92;
    }
  }

  else if (a2[2] && v13)
  {
    if (v9)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btn_btree.bt_fixed.bt_key_size (%u) and btn_btree.bt_fixed.bt_val_size (%u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v20, *(a1 + 34), v20, a2[2], v13);
      v22 = 92;
      v23 = 379;
LABEL_52:
      v32 = 92;
LABEL_53:
      fsck_fail_func(v23, v32);
      return v22;
    }

    return 92;
  }

  v24 = *(a1 + 42);
  if (v14 > v24)
  {
    if (v9)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space.len (%u), given toc_entry_size (%u) and btn_flags (0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v21, *(a1 + 34), v24, v14, v21);
      v22 = 92;
      v23 = 381;
      goto LABEL_52;
    }

    return 92;
  }

  v25 = *(a1 + 36);
  if ((v12 & 4) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (v25 > v24 >> v26)
  {
    if (v9)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_nkeys (%u), given btn_table_space.len (%u) and toc_entry_size (%u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v21, *(a1 + 34), v25, *(a1 + 42), v14);
      v22 = 92;
      v23 = 382;
      goto LABEL_52;
    }

    return 92;
  }

  if (!(v25 | v21 & 1))
  {
    if (v9)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_nkeys (%u), given btn_flags (0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v21, *(a1 + 34), 0, v21);
      v22 = 92;
      v23 = 383;
      goto LABEL_52;
    }

    return 92;
  }

  v27 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  if (!v27)
  {
LABEL_57:
    if (!v9)
    {
      return 12;
    }

    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: validate_loc_ctx_alloc failed for btn_nkeys (%u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 36));
    v22 = 12;
    v23 = 384;
    v32 = 12;
    goto LABEL_53;
  }

  v28 = v27;
  v29 = (2 * *(a1 + 36) + 7) & 0xFFFFFFF8;
  *v28 = v29;
  v30 = malloc_type_calloc(v29, 4uLL, 0x100004052888210uLL);
  *(v28 + 8) = v30;
  if (!v30)
  {
    free(v28);
    goto LABEL_57;
  }

  if (*(a1 + 40))
  {
    v31 = 0;
    goto LABEL_61;
  }

  v31 = sub_10008C234(a1, a2, *(a1 + 40), 0, v28);
  if (!v31)
  {
    v38 = *(a1 + 32);
    if ((v38 & 4) != 0)
    {
      v34 = *(a1 + 42) >> v26;
      if ((((a2[1] - 56) / ((a2[2] + v13) + 4)) & 0xFFFFFFFFFFFFFFFELL) > v34)
      {
        if (v9)
        {
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space (%u, %u), given btn_flags (0x%x)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), v38, *(a1 + 34), *(a1 + 40), *(a1 + 42), v38);
          v22 = 92;
          v36 = 386;
LABEL_74:
          v35 = 92;
LABEL_66:
          fsck_fail_func(v36, v35);
          goto LABEL_67;
        }

        goto LABEL_79;
      }
    }

    if (*(a1 + 46))
    {
      v39 = sub_10008C234(a1, a2, *(a1 + 44), 5, v28);
      if (v39)
      {
        if (v9)
        {
          v40 = v39;
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 44), *(a1 + 46));
          fsck_fail_func(0x183, v40);
        }

        goto LABEL_79;
      }
    }

    v41 = *(a1 + 48);
    v96 = v28;
    if (v41 == 0xFFFF)
    {
      v42 = *(a1 + 50);
      v43 = v42;
LABEL_82:
      v44 = v15 + v17;
      v45 = *(a1 + 52);
      if (v45 != 0xFFFF)
      {
        v87 = v42;
        v94 = v43;
        v60 = 0;
        v89 = v44;
        v91 = a1 + v44 + 56;
        while (1)
        {
          if ((*a2 & 0x40) != 0)
          {
            v61 = 0x40000;
          }

          else
          {
            v61 = 0x80000;
          }

          v13 = v13 & 0xFFFFFFFF00000000 | v61 | v45;
          v62 = sub_10008C234(a1, a2, v13, 4, 0);
          if (v62)
          {
            if (!v9)
            {
              goto LABEL_146;
            }

            v66 = v62;
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list offset %u\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v45);
            v67 = 391;
            goto LABEL_138;
          }

          v63 = (v91 - v45);
          v64 = v63[1];
          v95 = v95 & 0xFFFFFFFF00000000 | v45 | (v64 << 16);
          v65 = sub_10008C234(a1, a2, v45 | (v64 << 16), 4, v96);
          if (v65)
          {
            break;
          }

          v60 += v64;
          v45 = *v63;
          if (v45 == 0xFFFF)
          {
            v46 = *(a1 + 54);
            v28 = v96;
            v42 = v87;
            v44 = v89;
            v43 = v94;
            if (v46 >= v60)
            {
              goto LABEL_84;
            }

            if (v9)
            {
              fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list length (%u), given total value length (%u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 54), v60);
              v22 = 92;
              v36 = 393;
              goto LABEL_74;
            }

            goto LABEL_79;
          }
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v66 = v65;
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list entry (%u, %u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v45, v64);
        v67 = 392;
LABEL_138:
        v73 = v66;
        goto LABEL_145;
      }

      v46 = *(a1 + 54);
LABEL_84:
      if (*(a1 + 36))
      {
        v88 = v44;
        v90 = v46;
        v47 = 0;
        while (1)
        {
          v93 = v43;
          v48 = sub_10008B4DC(a1, a2, v47);
          v28 = v28 & 0xFFFFFFFF00000000 | v48;
          v49 = sub_10008C234(a1, a2, v28, 1, v96);
          if (v49)
          {
            if (!v9)
            {
              goto LABEL_146;
            }

            v68 = v49;
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key (%u, %u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v48, WORD1(v48));
            v67 = 394;
            goto LABEL_144;
          }

          v50 = HIWORD(v48);
          v95 = v95 & 0xFFFFFFFF00000000 | WORD2(v48) | (HIWORD(v48) << 16);
          v51 = sub_10008C234(a1, a2, WORD2(v48) | (HIWORD(v48) << 16), 2, v96);
          if (v51)
          {
            break;
          }

          if (WORD1(v48) > a2[4])
          {
            a2[4] = WORD1(v48);
          }

          if ((*(a1 + 32) & 2) != 0 && v50 != 65534 && a2[5] < v50)
          {
            a2[5] = v50;
          }

          v52 = v48 >> 16;
          if ((v16 & 0x40) == 0)
          {
            LODWORD(v52) = ((v48 >> 16) + 7) & 0xFFFFFFF8;
          }

          if (v50 != 65534)
          {
            if ((v16 & 0x40) != 0)
            {
              v90 += v50;
            }

            else
            {
              v90 += (v50 + 7) & 0x1FFF8;
            }
          }

          v43 = v52 + v93;
          ++v47;
          v53 = *(a1 + 36);
          if (v47 >= v53)
          {
            v42 = (v52 + v93);
            v28 = v96;
            v44 = v88;
            LOWORD(v46) = v90;
            goto LABEL_128;
          }
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v68 = v51;
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid value (%u, %u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), WORD2(v48), HIWORD(v48));
        v67 = 395;
LABEL_144:
        v73 = v68;
        goto LABEL_145;
      }

      v53 = 0;
LABEL_128:
      v69 = *(a1 + 44);
      if (v69 < v43)
      {
        if (v9)
        {
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u), given total key length (%u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v69, *(a1 + 46), v42);
          v22 = 92;
          v36 = 396;
          goto LABEL_74;
        }

LABEL_79:
        v22 = 92;
        goto LABEL_67;
      }

      v70 = *(a1 + 46);
      v71 = *(a1 + 42);
      v72 = v44 - (v71 + v46);
      if (v70 + v69 < v72)
      {
        if (v9)
        {
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u), given total value length (%u) (%d %d %d = %d)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v69, v70, v46, v44, v71, v46, v72);
          v22 = 92;
          v36 = 397;
          goto LABEL_74;
        }

        goto LABEL_79;
      }

      v74 = sub_10008C568(a1, a2, v28);
      if (v74)
      {
        if (!v9)
        {
          goto LABEL_146;
        }

        v75 = v74;
        v76 = *(a1 + 8);
        v77 = *(a1 + 16);
        v78 = *(a1 + 32);
        v79 = *(a1 + 34);
        v81 = *(a1 + 24);
        v80 = *(a1 + 28);
        v82 = strerror(v74);
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list, btn_val_free_list, or btn_free_space: %s\n", v76, v77, v81, v80, v78, v79, v82);
        v67 = 398;
        v73 = v75;
LABEL_145:
        fsck_fail_func(v67, v73);
LABEL_146:
        v22 = 92;
        goto LABEL_147;
      }

      v83 = *(a2 + 3);
      v84 = __CFADD__(v83, v53);
      v85 = v83 + v53;
      if (v84)
      {
        if (!v9)
        {
          goto LABEL_146;
        }

        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_key_count (overflow)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34));
        v22 = 92;
        v59 = 399;
      }

      else
      {
        v86 = *(a2 + 4);
        if (v86 != -1)
        {
          if ((*(a1 + 32) & 2) != 0)
          {
            *(a2 + 3) = v85;
          }

          *(a2 + 4) = v86 + 1;
          v22 = 0;
          goto LABEL_147;
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_node_count (overflow)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34));
        v22 = 92;
        v59 = 400;
      }
    }

    else
    {
      v54 = 0;
      v13 = a1 + 56;
      do
      {
        if ((*a2 & 0x40) != 0)
        {
          v55 = 0x40000;
        }

        else
        {
          v55 = 0x80000;
        }

        v95 = v34 & 0xFFFFFFFF00000000 | v55 | v41;
        v56 = sub_10008C234(a1, a2, v55 | v41, 3, 0);
        if (v56)
        {
          if (!v9)
          {
            goto LABEL_146;
          }

          v66 = v56;
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list offset %u\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v41);
          v67 = 388;
          goto LABEL_138;
        }

        v57 = *(v13 + *(a1 + 42) + v41 + 2);
        v92 = v92 & 0xFFFFFFFF00000000 | v41 | (v57 << 16);
        v58 = sub_10008C234(a1, a2, v41 | (v57 << 16), 3, v96);
        if (v58)
        {
          if (!v9)
          {
            goto LABEL_146;
          }

          v68 = v58;
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list entry (%u, %u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), v41, v57);
          v67 = 389;
          goto LABEL_144;
        }

        v54 += v57;
        v41 = *(v13 + *(a1 + 42) + v41);
        v34 = v95;
      }

      while (v41 != 0xFFFF);
      v42 = *(a1 + 50);
      if (v42 >= v54)
      {
        v43 = *(a1 + 50);
        v28 = v96;
        goto LABEL_82;
      }

      if (!v9)
      {
        goto LABEL_146;
      }

      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list length (%u), given total key length (%u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 50), v54);
      v22 = 92;
      v59 = 390;
    }

    fsck_fail_func(v59, 92);
LABEL_147:
    v28 = v96;
    goto LABEL_67;
  }

LABEL_61:
  v22 = 92;
  if (v9)
  {
    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space (%u, %u)\n", *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 34), *(a1 + 40), *(a1 + 42));
    if (v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = 92;
    }

    v36 = 385;
    goto LABEL_66;
  }

LABEL_67:
  v37 = *(v28 + 8);
  if (v37)
  {
    free(v37);
  }

  free(v28);
  return v22;
}

uint64_t sub_10008C234(unsigned __int16 *a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  v6 = a3;
  v8 = HIWORD(a3);
  v9 = a1[16];
  if ((v9 & 2) != 0)
  {
    v10 = a2[3];
  }

  else if ((v9 & 8) != 0)
  {
    v10 = a2[11] + 8;
  }

  else
  {
    v10 = 8;
  }

  v11 = *a2;
  if (a3 == 0xFFFF || !HIWORD(a3))
  {
    result = 22;
    if (a3 == 0xFFFF)
    {
      if ((v11 & 4) != 0 && a4 == 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 22;
      }

      if ((v9 & 2) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 22;
      }

      if (HIWORD(a3))
      {
        return 22;
      }

      else
      {
        return v18;
      }
    }

    return result;
  }

  v12 = a1[22];
  v13 = a2[1] + ((v9 << 31 >> 31) & 0xFFFFFFD8) - 56;
  v14 = 8;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      if (HIWORD(a3) <= 0x340u)
      {
        v20 = a2[2];
        v14 = 1;
        if (!v20 || HIWORD(a3) == v20)
        {
LABEL_46:
          result = 84;
          if (v12 <= a3 || HIWORD(a3) > (v12 - a3))
          {
            return result;
          }

          goto LABEL_48;
        }

        return 22;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_41;
      }

      if (a3 == 65534 || HIWORD(a3) == 65534)
      {
        result = 22;
        if (a3 == 65534 && HIWORD(a3) == 65534)
        {
          if ((v11 & 4) != 0)
          {
            v27 = 0;
          }

          else
          {
            v27 = 22;
          }

          if ((v9 & 2) != 0)
          {
            return v27;
          }

          else
          {
            return 22;
          }
        }

        return result;
      }

      if (HIWORD(a3) <= 0xEE0u)
      {
        v14 = 1;
        if (!v10 || HIWORD(a3) == v10)
        {
          goto LABEL_33;
        }

        return 22;
      }
    }

    return 7;
  }

  if (a4 == 3)
  {
    goto LABEL_46;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_41;
    }

LABEL_48:
    v6 = a1[21] + a3;
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_33:
  if (a3 > v13 - (a1[23] + v12) || HIWORD(a3) > a3)
  {
    return 84;
  }

  v6 = *(a2 + 2) + (((v9 << 15) >> 15) & 0xFFD8) - 56 - a3;
LABEL_41:
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((v6 & 7) != 0 || HIWORD(a3) % v14)
  {
    return 14;
  }

LABEL_52:
  result = 84;
  if (v13 < v6 || HIWORD(a3) > v13 - v6)
  {
    return result;
  }

  if (!a5)
  {
    return 0;
  }

  v21 = *(a5 + 4);
  if (v21)
  {
    v22 = 0;
    v23 = *(a5 + 4);
    do
    {
      if (v6 >= *(*(a5 + 8) + 4 * ((v22 + v23) >> 1)))
      {
        v22 = ((v22 + v23) >> 1) + 1;
      }

      else
      {
        v23 = (v22 + v23) >> 1;
      }
    }

    while (v22 < v23);
    if (v22)
    {
      v24 = (*(a5 + 8) + 4 * (v22 - 1));
      v25 = *v24;
      if (v24[1] + v25 > v6 && HIWORD(a3) + v6 > v25)
      {
        return 34;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (v22 < v21)
  {
    v28 = (*(a5 + 8) + 4 * v22);
    v29 = *v28;
    if (v28[1] + v29 > v6 && HIWORD(a3) + v6 > v29)
    {
      return 34;
    }
  }

  if (v21 == *a5)
  {
    v31 = v21 + 8;
    *a5 = v31;
    v32 = reallocf(*(a5 + 8), 4 * v31);
    *(a5 + 8) = v32;
    if (!v32)
    {
      return 12;
    }

    v21 = *(a5 + 4);
  }

  if (v21 > v22)
  {
    memmove((*(a5 + 8) + 4 * (v22 + 1)), (*(a5 + 8) + 4 * v22), 4 * (v21 - v22));
    v21 = *(a5 + 4);
  }

  result = 0;
  v33 = (*(a5 + 8) + 4 * v22);
  *v33 = v6;
  v33[1] = v8;
  *(a5 + 4) = v21 + 1;
  return result;
}

uint64_t sub_10008C568(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 8);
    while (1)
    {
      if ((v3 & 0x40) != 0)
      {
        v5 = *v7;
      }

      else
      {
        v8 = ((v6 + 7) & 0x1FFF8) + v5;
        v5 = *v7;
        if (v8 != v5)
        {
          return 22;
        }
      }

      v6 = v7[1];
      v7 += 2;
      if (!--v4)
      {
        v9 = ((v6 + 7) & 0x1FFF8) + v5;
        goto LABEL_9;
      }
    }
  }

  v9 = 0;
LABEL_9:
  v10 = (v3 >> 6) & 1;
  if (v9 == a2[1] + ((*(a1 + 32) << 31 >> 31) & 0xFFFFFFD8) - 56)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t fsck_tree(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, uint64_t, void, uint64_t *, void, uint64_t, int *), uint64_t a4, void *a5, char a6)
{
  if (*(a1 + 44) != 2)
  {
    return 45;
  }

  v12 = *(a1 + 56);
  v94 = 0uLL;
  v95 = 0;
  v96 = v12;
  v93 = 0;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  memset(v97, 0, sizeof(v97));
  v86 = -1;
  v13 = sub_10008B300(a1, v12, a2, &v94, &v93, &v92, &v87, a6);
  if (!v13)
  {
    v14 = v92;
    v15 = *v92;
    if ((*v92 & 0xFFFFFE20) != 0)
    {
      fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v15);
      fsck_fail_func(0x19A, -3);
      v14 = v92;
      v15 = *v92;
    }

    if ((~v15 & 0x18) == 0)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v15);
      v13 = 92;
      v17 = 411;
LABEL_36:
      v28 = 92;
LABEL_37:
      fsck_fail_func(v17, v28);
      goto LABEL_38;
    }

    v18 = v15 & 0x180;
    v19 = *(a1 + 52);
    if (v18 == 384)
    {
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else if (!(v19 | v18))
    {
LABEL_11:
      if (((v15 << 26) & 0x40000000 | ((v15 >> 3) << 31)) != *(a1 + 40))
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x), given mt_btflags\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v15);
        v13 = 92;
        v17 = 412;
        goto LABEL_36;
      }

      v20 = *(a1 + 24);
      if (v20)
      {
        v21 = v14[1];
        if (v21 != v20)
        {
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_node_size (%u), given mt_node_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v21, v20);
          v13 = 92;
          v17 = 415;
          goto LABEL_36;
        }
      }

      v22 = v14[2];
      v23 = v93;
      if (v22 > 0x340 || (v22 & 3) != 0)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v22);
        v13 = 92;
        v17 = 416;
        goto LABEL_36;
      }

      v24 = *(v93 + 16);
      if (!v22 && (v24 & 4) != 0)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given btn_flags (0x%x)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), v24, *(v93 + 17), 0, v24);
        v13 = 92;
        v17 = 417;
        goto LABEL_36;
      }

      if ((v15 & 1) != 0 && v22 != 8)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given btn_btree.bt_fixed.bt_flags (0x%x)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), v24, *(v93 + 17), v22, v15);
        v13 = 92;
        v17 = 418;
        goto LABEL_36;
      }

      v25 = *(a1 + 28);
      if (v25 && v22 != v25)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given mt_key_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), v24, *(v93 + 17), v22, v25);
        v13 = 92;
        v17 = 419;
        goto LABEL_36;
      }

      v26 = v14[3];
      if (v26 > 0xEE0 || (v26 & 7) != 0)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), v24, *(v93 + 17), v26);
        v13 = 92;
        v17 = 420;
        goto LABEL_36;
      }

      v27 = *(a1 + 32);
      if (v27 && v26 != v27)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u), given mt_val_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), v24, *(v93 + 17), v26, v27);
        v13 = 92;
        v17 = 421;
        goto LABEL_36;
      }

      if (v18 == 384)
      {
        is_seal_intact = fsck_is_seal_intact(*a1, *(a1 + 8), a2, &v91 + 8, &v90, &v90 + 1, v97, 0x40u);
        if (is_seal_intact)
        {
LABEL_44:
          v13 = is_seal_intact;
          goto LABEL_38;
        }

        v23 = v93;
      }

      v84 = 0uLL;
      v85 = 0;
      v82 = v94;
      v83 = v95;
      is_seal_intact = sub_10008CF58(a1, 0, &v84, v23, &v82, &v96, a2, a3, a4, 0, 0, 0, 0, &v86, &v87, 1u, a6);
      if (is_seal_intact)
      {
        goto LABEL_44;
      }

      if (BYTE11(v91) == 1)
      {
        do
        {
          fsck_printf("Restarting tree validation in case more minkey errors exist...\n");
          BYTE11(v91) = 0;
          BYTE9(v91) = 1;
          v31 = v89;
          v84 = 0uLL;
          v85 = 0;
          v82 = v94;
          v83 = v95;
          is_seal_intact = sub_10008CF58(a1, 0, &v84, v93, &v82, &v96, a2, 0, 0, 0, 0, 0, 0, &v86, &v87, 1u, 0);
          if (is_seal_intact)
          {
            goto LABEL_44;
          }

          *&v89 = v31;
        }

        while ((BYTE11(v91) & 1) != 0);
      }

      v32 = v92;
      v33 = v92[4];
      if (v33 > 0x340 || v33 < v88)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_key (expected %u, actual %u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v88, v33);
        v13 = 92;
        fsck_fail_func(0x1AA, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_key (%u)? ", v35, v36, v37, v38, v39, v40, v92[4]))
        {
          goto LABEL_38;
        }

        v33 = v88;
        v32 = v92;
        v92[4] = v88;
        v34 = 1;
      }

      else
      {
        v34 = 0;
      }

      if (*(v32 + 3))
      {
        v41 = v32[2];
        if (v41)
        {
          if (v33 != v41)
          {
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_key (%u), given btn_btree.bt_fixed.bt_key_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v33, v41);
            v13 = 92;
            fsck_fail_func(0x1AB, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_key (%u)? ", v42, v43, v44, v45, v46, v47, v92[4]))
            {
              goto LABEL_38;
            }

            v32 = v92;
            v92[4] = v92[2];
            v34 = 1;
          }
        }
      }

      v48 = v32[5];
      if (v48 > 0xEE0 || (v49 = v32[5], v48 < DWORD1(v88)))
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_val (expected %u, actual %u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), DWORD1(v88), v48);
        v13 = 92;
        fsck_fail_func(0x1AC, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_val (%u)? ", v50, v51, v52, v53, v54, v55, v92[5]))
        {
          goto LABEL_38;
        }

        v49 = DWORD1(v88);
        v32 = v92;
        v92[5] = DWORD1(v88);
        v34 = 1;
      }

      v56 = *(v32 + 3);
      if (v56)
      {
        v57 = v32[3];
        if (v57)
        {
          if (v49 != v57 && (v49 || (*v32 & 4) == 0))
          {
            fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_val (%u), given btn_btree.bt_fixed.bt_val_size (%u)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v49, v57);
            v13 = 92;
            fsck_fail_func(0x1AD, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_longest_val (%u)? ", v58, v59, v60, v61, v62, v63, v92[5]))
            {
              goto LABEL_38;
            }

            v32 = v92;
            v92[5] = v92[3];
            v56 = *(v32 + 3);
            v34 = 1;
          }
        }
      }

      if (v56 == *(&v88 + 1))
      {
        v64 = *(v32 + 4);
        v65 = v89;
        if (v64 == v89)
        {
          if (!v34)
          {
            goto LABEL_80;
          }

          goto LABEL_77;
        }
      }

      else
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_key_count (expected %llu, actual %llu)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), *(&v88 + 1), v56);
        v13 = 92;
        fsck_fail_func(0x1AE, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_key_count (%llu)? ", v66, v67, v68, v69, v70, v71, *(v92 + 3)))
        {
          goto LABEL_38;
        }

        v72 = v92;
        *(v92 + 3) = *(&v88 + 1);
        v64 = *(v72 + 4);
        v65 = v89;
        if (v64 == v89)
        {
LABEL_77:
          v79 = *a1;
          v80 = *(a1 + 8);
          v84 = v94;
          v85 = v95;
          v81 = write_obj(v79, v80, v93, &v84, v94, v30);
          if (v81)
          {
            v13 = v81;
            v17 = 434;
            v28 = v13;
            goto LABEL_37;
          }

          fsck_fail_add_repair();
LABEL_80:
          v13 = 0;
          if (a5)
          {
            *a5 = *(&v88 + 1);
          }

          goto LABEL_38;
        }
      }

      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_node_count (expected %llu, actual %llu)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v65, v64);
      v13 = 92;
      fsck_fail_func(0x1AF, 92);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix btree: bt_node_count (%llu)? ", v73, v74, v75, v76, v77, v78, *(v92 + 4)))
      {
        *(v92 + 4) = v89;
        goto LABEL_77;
      }

LABEL_38:
      if (v93)
      {
        free(v93);
      }

      return v13;
    }

    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unexpected btn_btree.bt_fixed.bt_flags (0x%x)\n", v93[1], v93[2], *(v93 + 6), *(v93 + 7), *(v93 + 16), *(v93 + 17), v15);
    v13 = 92;
    v17 = 914;
    goto LABEL_36;
  }

  return v13;
}

uint64_t sub_10008CF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t (*a8)(void, void, uint64_t, void, uint64_t *, void, uint64_t, int *), uint64_t a9, unsigned __int8 *a10, unsigned int a11, void *a12, unsigned int a13, unsigned __int16 *a14, int8x16_t *a15, unsigned __int8 a16, char a17)
{
  v18 = a14;
  v19 = a11;
  v177 = a10;
  v174 = 0;
  v175 = 0;
  v173 = a11;
  v171 = 0;
  v169 = 0;
  v20 = a15->i32[1];
  if (*(a5 + 8) != v20)
  {
    fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid cpm_size or ov_size (%u), given btn_btree.bt_fixed.bt_node_size (%u)\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), *(a4 + 32), *(a4 + 34), *(a5 + 8), v20);
    v27 = 92;
    v46 = 401;
    goto LABEL_13;
  }

  v21 = a6;
  v24 = *(a4 + 32);
  if ((v24 & 1) != a16)
  {
    v25 = "not a root";
    if (a16)
    {
      v25 = "a root";
      v26 = "Set";
    }

    else
    {
      v26 = "Clear";
    }

    fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), v24, *(a4 + 34), *(a4 + 32), v25);
    v27 = 92;
    fsck_fail_func(0x192, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_ROOT flag? ", v28, v29, v30, v31, v32, v33, v26))
    {
      goto LABEL_163;
    }

    LOWORD(v24) = *(a4 + 32) & 0xFFFE | a16;
    *(a4 + 32) = v24;
    v169 = 1;
  }

  v34 = *(a4 + 34);
  v160 = v21;
  if ((*(a4 + 34) == 0) == ((v24 & 2) == 0))
  {
    if ((v24 & 1) == 0 || (v48 = a4 + *(a5 + 8), v49 = *(a4 + 36), v50 = *(v48 - 16), (v50 == v49) == (*(v48 - 8) != 1)))
    {
      v56 = *a14;
      v21 = v160;
      if (v56 != 0xFFFF && v34 == v56)
      {
        v57 = "not a leaf";
        if (*(a4 + 34))
        {
          v58 = "Clear";
        }

        else
        {
          v57 = "a leaf";
          v58 = "Set";
        }

        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), v24, v34, v24, v57);
        v27 = 92;
        fsck_fail_func(0x4AF, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_LEAF flag? ", v59, v60, v61, v62, v63, v64, v58))
        {
          goto LABEL_163;
        }

        *(a4 + 32) = *(a4 + 32) & 0xFFFD | (2 * (v34 == 0));
        v169 = 1;
      }
    }

    else
    {
      v51 = *(a4 + 8);
      v52 = *(a4 + 16);
      v53 = *(a4 + 24);
      v54 = *(a4 + 28);
      v55 = "not a leaf";
      if (v50 == v49)
      {
        v55 = "a leaf";
      }

      if ((v34 == 0) != (v50 == v49))
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_level (%u), given btree node is %s\n", v51, v52, v53, v54, v24, v34, v34, v55);
        fsck_fail_func(0x4AE, 92);
      }

      else
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", v51, v52, v53, v54, v24, v34, v24, v55);
        v27 = 92;
        fsck_fail_func(0x4AD, 92);
        v135 = "Clear";
        if (v50 == v49)
        {
          v135 = "Set";
        }

        if (!fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_LEAF flag? ", v129, v130, v131, v132, v133, v134, v135))
        {
          goto LABEL_163;
        }

        *(a4 + 32) = *(a4 + 32) & 0xFFFD | (2 * (v50 == v49));
        v169 = 1;
      }

      v21 = v160;
    }
  }

  v176 = 0;
  v172 = 0;
  v170 = 0;
  v35 = fsck_btree_validate_node(a4, a15, 1, &v169, a5, a6, a7, a8);
  v41 = *(a4 + 32);
  if (v35)
  {
    v42 = v35;
    *(a4 + 32) = v41 ^ 2;
    v43 = fsck_btree_validate_node(a4, a15, 0, &v169, v36, v37, v38, v39);
    v44 = *(a4 + 32);
    *(a4 + 32) = v44 ^ 2;
    if (v43 || ((v65 = "a leaf", (v44 & 2) != 0) ? (v66 = "Set") : (v65 = "not a leaf", v66 = "Clear"), fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), v44 ^ 2u, *(a4 + 34), v44 ^ 2u, v65), fsck_fail_func(0x480, 92), v35 = fsckAskPrompt(fsck_apfs_ctx, "%s BTNODE_LEAF flags? ", v67, v68, v69, v70, v71, v72, v66), !v35))
    {
      v45 = fsck_tree_node_repair_add_maybe(a1, a15, *(a4 + 8), *(a4 + 16), *(a4 + 34), a10, a11, a12, a13, v42);
LABEL_40:
      v27 = v45;
      goto LABEL_163;
    }

    v73 = *(a4 + 32);
    v41 = v73 ^ 2;
    *(a4 + 32) = v73 ^ 2;
    if ((v44 & 2) != 0)
    {
      *(a4 + 34) = 0;
    }

    v169 = 1;
  }

  v157 = a5;
  if ((v41 & 2) != 0 && memory_storage_limit_reached(v35))
  {
    fsck_printf_err("fsck_apfs is out of memory - some cross checks are skipped\n");
    fsck_fail_func(0x585, 12);
  }

  if (*(a1 + 52))
  {
    v45 = fsck_validate_node_hash(a15, a4, v21, *(a1 + 24));
    if (v45)
    {
      goto LABEL_40;
    }
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  v162 = v41;
  v156 = v41 << 25;
  v161 = a13;
  v77 = *(a4 + 36);
  v78 = a1;
  v79 = a10;
  do
  {
    v80 = v19;
    v81 = v79;
    if (v77 <= v74)
    {
      v79 = a12;
      v174 = 0;
      v175 = a12;
      HIWORD(v171) = a13;
      if (!v81)
      {
        goto LABEL_112;
      }
    }

    else
    {
      get_key_and_value_at_index(a4, a15, v74, &v175, &v171 + 1, &v174, &v171);
      v79 = v175;
      if (!v81)
      {
        goto LABEL_112;
      }
    }

    if (!v79)
    {
      goto LABEL_112;
    }

    v82 = *(v78 + 8);
    if (v82)
    {
      v83 = *(v82 + 40);
    }

    else
    {
      v83 = 0;
    }

    v84 = HIWORD(v171);
    v163 = v81;
    v166 = v79;
    v85 = (*(v78 + 16))(v83, v81, v80);
    if (v85 == 45)
    {
      fsck_printf_warn("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: can't compare key (%u) with key (%u)\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), *(a4 + 32), *(a4 + 34), v74 - 1, v74);
      fsck_fail_func(0x55F, -5);
      v86 = (v74 != 0) << 31 >> 31;
      v170 = v86;
    }

    else
    {
      v27 = v85;
      if (v85)
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: key (%u) compare error: %d\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), *(a4 + 32), *(a4 + 34), v74, v85);
        v147 = 403;
        goto LABEL_160;
      }

      v86 = v170;
    }

    v81 = v163;
    if (v74 || !v86)
    {
      v79 = v166;
      if (!v74 || v86 < 0)
      {
        goto LABEL_112;
      }

      v105 = *(a4 + 8);
      v106 = *(a4 + 16);
      v107 = *(a4 + 24);
      v108 = *(a4 + 28);
      v109 = *(a4 + 32);
      v110 = *(a4 + 34);
      v111 = v86 == 0;
      v112 = "greater than";
      if (v111)
      {
        v112 = "equal to";
      }

      if (v74 == *(a4 + 36))
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: index %u is %s maxkey (should be less than)\n", v105, v106, v107, v108, v109, v110, v74 - 1, v112);
        v89 = 1118;
      }

      else
      {
        fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: index %u is %s index %u (should be less than)\n", v105, v106, v107, v108, v109, v110, v74 - 1, v112, v74);
        v89 = 404;
      }
    }

    else
    {
      v87 = v86 < 0;
      v88 = "greater than";
      if (v87)
      {
        v88 = "less than";
      }

      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: minkey is %s index 0 (should be equal)\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), *(a4 + 32), *(a4 + 34), v88);
      v89 = 1117;
    }

    fsck_fail_func(v89, 92);
    v90 = v80;
    if (v80 <= v84)
    {
      v90 = v84;
    }

    v91 = 3 * v90 + 1;
    v92 = malloc_type_malloc(v91, 0x19ECC3C2uLL);
    *__str = 0u;
    v192 = 0u;
    if (v92)
    {
      v93 = v92;
      if (v74 && v75)
      {
        sub_10008DFF0(__str, v74 - 1, *(a4 + 36));
        sub_10008E07C(v93, v91, v75, v76);
        fsck_printf("\t%-14s: %s\n", __str, v93);
      }

      sub_10008DFF0(__str, v74, *(a4 + 36));
      sub_10008E07C(v93, v91, v163, v80);
      fsck_printf("\t%-14s: %s\n", __str, v93);
      sub_10008DFF0(__str, v74 + 1, *(a4 + 36));
      sub_10008E07C(v93, v91, v166, v84);
      fsck_printf("\t%-14s: %s\n", __str, v93);
      v94 = *(a4 + 36);
      if (v74 < v94)
      {
        v180.i64[0] = 0;
        v178.i16[0] = 0;
        v95 = a13;
        v96 = a12;
        if (v94 > v74 + 1)
        {
          get_key_and_value_at_index(a4, a15, (v74 + 1), v180.i64, &v178, 0, 0);
          v94 = *(a4 + 36);
          v96 = v180.i64[0];
          v95 = v178.u16[0];
        }

        sub_10008DFF0(__str, v74 + 2, v94);
        sub_10008E07C(v93, v91, v96, v95);
        fsck_printf("\t%-14s: %s\n", __str, v93);
      }

      free(v93);
    }

    v27 = 92;
    if (v74 || (v170 & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    fsck_printf("Checking if the parent's minkey can be updated...\n");
    *v167 = *a3;
    v168 = *(a3 + 16);
    v189 = 0;
    v185 = 0;
    v183 = 0;
    if (!*(a2 + 36))
    {
      goto LABEL_182;
    }

    v97 = 0;
    do
    {
      get_key_and_value_at_index(a2, a15, v97, &v190, &v186, &v189, &v185);
      if (!v189)
      {
        sub_10008F310();
      }

      if (a15[2].i32[2])
      {
        v98 = a15[4].i64[0];
      }

      else
      {
        v98 = 0;
      }

      v99 = *(a2 + 36);
      if (v98 + *v189 == *v160)
      {
        break;
      }

      v97 = (v97 + 1);
    }

    while (v97 < v99);
    if (v97 >= v99)
    {
LABEL_182:
      sub_10008F33C();
    }

    if (!v97 && (*(a2 + 32) & 1) == 0)
    {
      a15[4].i8[11] = 1;
    }

    v187 = 0;
    v188 = 0;
    v184 = 0;
    get_key_and_value_at_index(a4, a15, 0, &v188, &v184 + 1, 0, 0);
    v104 = (v97 + 1);
    if (*(a2 + 36) <= v104)
    {
      v187 = a12;
      LOWORD(v184) = a13;
      if (!a12)
      {
        goto LABEL_99;
      }
    }

    else
    {
      get_key_and_value_at_index(a2, a15, v104, &v187, &v184, 0, 0);
      if (!v187)
      {
        goto LABEL_99;
      }
    }

    v113 = *(a1 + 8);
    if (v113)
    {
      v114 = *(v113 + 40);
    }

    else
    {
      v114 = 0;
    }

    v115 = (*(a1 + 16))(v114, v188, HIWORD(v184));
    if (v115 || (v183 & 0x80000000) == 0)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unable to repair minkey\n", *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 28), *(a2 + 32), *(a2 + 34));
      if (v115)
      {
        v27 = v115;
      }

      else
      {
        v27 = 92;
      }

      v147 = 1114;
LABEL_160:
      v148 = v27;
LABEL_161:
      fsck_fail_func(v147, v148);
LABEL_162:
      v18 = a14;
      goto LABEL_163;
    }

LABEL_99:
    if (*(a4 + 36) < 2u)
    {
      LOWORD(v184) = a13;
      v116 = a12;
      if (a12)
      {
LABEL_103:
        v117 = *(a1 + 8);
        if (v117)
        {
          v118 = *(v117 + 40);
        }

        else
        {
          v118 = 0;
        }

        v119 = (*(a1 + 16))(v118, v188, HIWORD(v184));
        if (v119 || (v183 & 0x80000000) == 0)
        {
          fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unable to repair minkey\n", *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 28), *(a2 + 32), *(a2 + 34));
          if (v119)
          {
            v27 = v119;
          }

          else
          {
            v27 = 92;
          }

          v147 = 1115;
          goto LABEL_160;
        }
      }
    }

    else
    {
      get_key_and_value_at_index(a4, a15, 1, &v187, &v184, 0, 0);
      v116 = v187;
      if (v187)
      {
        goto LABEL_103;
      }
    }

    if (!fsckAskPrompt(fsck_apfs_ctx, "Update the parent's minkey? ", v104, v116, v100, v101, v102, v103))
    {
      v27 = 92;
      goto LABEL_162;
    }

    v180 = *a15;
    v78 = a1;
    v120 = *(a1 + 36);
    v182 = *(a1 + 56);
    v181 = v120;
    if (!btree_node_update_maybe(v180.i32, a2, v97, v188, HIWORD(v184), 0, 0))
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: parent doesn't have enough space to update the minkey\n", *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 28), *(a2 + 32), *(a2 + 34));
      v27 = 92;
      v147 = 1116;
      v148 = 92;
      goto LABEL_161;
    }

    v122 = *a1;
    v123 = *(a1 + 8);
    v178 = *v167;
    v179 = v168;
    v124 = write_obj(v122, v123, a2, &v178, *v167, v121);
    if (v124)
    {
      goto LABEL_134;
    }

    fsck_fail_add_repair();
    v79 = v166;
    v81 = v163;
LABEL_112:
    v77 = *(a4 + 36);
    if ((v162 & 2) != 0 && a8 && v74 < v77)
    {
      v19 = HIWORD(v171);
      if ((a15[4].i8[10] & 1) == 0)
      {
        v125 = v79;
        v124 = a8(*v78, *(v78 + 8), v79, HIWORD(v171), v174, v171, a9, &v169);
        if (v124)
        {
LABEL_134:
          v27 = v124;
          goto LABEL_162;
        }

        v77 = *(a4 + 36);
        v79 = v125;
      }
    }

    else
    {
      v19 = HIWORD(v171);
    }

    v176 = v174;
    v172 = v171;
    v74 = (v74 + 1);
    v75 = v81;
    v76 = v80;
  }

  while (v74 <= v77);
  v177 = v79;
  v173 = v19;
  if ((v162 & 2) != 0 || !v77)
  {
    v126 = v157;
    v18 = a14;
    if ((v162 & 2) != 0)
    {
      *a14 = 0;
    }

    goto LABEL_137;
  }

  v126 = v157;
  v18 = a14;
  if (a15[4].i8[9] != 1 || *(a4 + 34) >= 2u)
  {
    v180 = 0uLL;
    v181 = 0;
    v167[0] = 0;
    get_key_and_value_at_index(a4, a15, 0, &v177, &v173, &v176, &v172);
    if (!v176)
    {
      sub_10008F2E4();
    }

    v127 = *v176;
    v128 = a15[2].i32[2] ? a15[4].i64[0] : 0;
    v150 = copy_obj(*a1, *(a1 + 8), *(a1 + 40), v128 + v127, a7, v156 & 0x20000000, 3, *(a1 + 48), v167, &v180, a17);
    if (v150)
    {
      v151 = v150;
      v152 = a12;
      if (*(a4 + 36) >= 2u)
      {
        get_key_and_value_at_index(a4, a15, 1, &v175, &v171 + 1, 0, 0);
        v152 = v175;
        v161 = HIWORD(v171);
      }

      v45 = fsck_tree_node_repair_add_maybe(a1, a15, v128 + v127, *(a4 + 16), (*(a4 + 34) - 1), v177, v173, v152, v161, v151);
      if (v45)
      {
        goto LABEL_40;
      }
    }

    if (*(a4 + 34) > 1u)
    {
      v153 = sub_10008E19C;
      v78 = a1;
      goto LABEL_179;
    }

    *__str = 0;
    v78 = a1;
    v154 = dev_features(**a1);
    if (v154)
    {
      v27 = v154;
      free(v167[0]);
      goto LABEL_163;
    }

    v153 = sub_10008E4E0;
    if (!*__str)
    {
      v153 = sub_10008E9B4;
    }

LABEL_179:
    *__str = *v157;
    *&v192 = *(v157 + 16);
    v178 = v180;
    v179 = v181;
    LOBYTE(v155) = a17;
    v45 = (v153)(v78, a4, __str, v167[0], &v178, a7, a8, a9, a12, a13, a14, a15, v155);
    if (v45)
    {
      goto LABEL_40;
    }
  }

LABEL_137:
  if ((a15[4].i8[10] & 1) == 0 && (a15[4].i8[9] & 1) == 0)
  {
    v136 = *(a4 + 34);
    if (v136 != *v18)
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_level (expected %u, actual %u)\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), *(a4 + 32), v136, *v18, v136);
      v27 = 92;
      fsck_fail_func(0x197, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix btn_level (%u)? ", v137, v138, v139, v140, v141, v142, *(a4 + 34)))
      {
        goto LABEL_163;
      }

      v136 = *v18;
      *(a4 + 34) = v136;
      v169 = 1;
    }

    if (((v162 & 2) == 0) == (v136 == 0))
    {
      fsck_printf_err("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btn_level (%u)\n", *(a4 + 8), *(a4 + 16), *(a4 + 24), *(a4 + 28), *(a4 + 32), v136, *(a4 + 32), v136);
      v27 = 92;
      v46 = 408;
LABEL_13:
      v47 = 92;
LABEL_14:
      fsck_fail_func(v46, v47);
      goto LABEL_163;
    }
  }

  if (!*(v78 + 40))
  {
    v143 = omap_sv_mark(1, *v160, 1);
    if (v143)
    {
      v144 = v143;
      fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", *v160);
      fsck_fail_func(0x3F4, v144);
    }
  }

  if (v169)
  {
    v145 = *v78;
    v146 = *(v78 + 8);
    v180 = *v126;
    v181 = v126[1].i64[0];
    v27 = write_obj(v145, v146, a4, &v180, v180, v40);
    if (v27)
    {
      v46 = 409;
      v47 = v27;
      goto LABEL_14;
    }

    fsck_fail_add_repair();
  }

  else
  {
    v27 = 0;
  }

LABEL_163:
  ++*v18;
  return v27;
}

char *sub_10008DFF0(char *__str, unsigned int a2, int a3)
{
  if (!a2)
  {
    *(__str + 3) = 7955819;
    v4 = 1802398061;
LABEL_6:
    *__str = v4;
    return __str;
  }

  if (a3 + 1 <= a2)
  {
    *(__str + 3) = 7955819;
    v4 = 1803051373;
    goto LABEL_6;
  }

  snprintf(__str, 0x20uLL, "index %u key", a2 - 1);
  return __str;
}

char *sub_10008E07C(char *__s, size_t __size, unsigned __int8 *a3, unsigned int a4)
{
  v5 = __size;
  if (a4 == 4)
  {
    snprintf(__s, __size, "0x%08x");
  }

  else if (a4 == 8)
  {
    snprintf(__s, __size, "0x%016llx");
  }

  else
  {
    v8 = a4 != 0;
    if (a4 && __size)
    {
      v9 = __size;
      v10 = 1;
      v11 = 3;
      v12 = __s;
      v13 = a4;
      do
      {
        v14 = *a3++;
        snprintf(v12, v5, "%02x ", v14);
        v8 = v10 < v13;
        if (v10 >= v13)
        {
          break;
        }

        v5 -= 3;
        ++v10;
        v12 += 3;
        v15 = v11 >= v9;
        v11 += 3;
      }

      while (!v15);
    }

    if (v8)
    {
      __s[strlen(__s) - 1] = 43;
    }
  }

  return __s;
}

uint64_t sub_10008E19C(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, __int128 *a5, uint64_t a6, uint64_t (*a7)(void, void, uint64_t, void, uint64_t *, void, uint64_t, int *), uint64_t a8, const void *a9, __int16 a10, unsigned __int16 *a11, int8x16_t *a12, char a13)
{
  v14 = a4;
  v44 = 0;
  v45 = a4;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a2 + 32);
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  get_key_and_value_at_index(a2, a12, 0, &v44, &v40 + 1, &v43, &v40);
  if (!v43)
  {
    sub_10008F394();
  }

  v18 = *v43;
  v46 = *v43;
  if (a12[2].i32[2])
  {
    v46 = a12[4].i64[0] + v18;
    __memcpy_chk();
  }

  v19 = *(a2 + 36);
  if (!v19)
  {
    v28 = 0;
    if (v14)
    {
      goto LABEL_23;
    }

    return v28;
  }

  v20 = 0;
  v33 = (v17 & 0x10) << 25;
  v21 = HIWORD(v40);
  v22 = v44;
  while (1)
  {
    *a11 = *(a2 + 34) - 1;
    v23 = v20 + 1;
    if (v19 <= v20 + 1)
    {
      v41 = 0;
      v42 = a9;
      HIWORD(v39) = a10;
      if (!v20)
      {
LABEL_17:
        v26 = v42;
LABEL_18:
        if (v45)
        {
          v37 = *a3;
          v38 = *(a3 + 2);
          v35 = *a5;
          v36 = *(a5 + 2);
          v28 = sub_10008CF58(a1, a2, &v37, v45, &v35, &v46, a6, a7, a8, v22, v21, v26, HIWORD(v39), a11, a12, 0, a13);
          free(v45);
          v45 = 0;
          if (v28)
          {
            return v28;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      get_key_and_value_at_index(a2, a12, (v20 + 1), &v42, &v39 + 1, &v41, &v39);
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    if (!v43)
    {
      sub_10008F368();
    }

    v24 = *v43;
    v46 = *v43;
    if (a12[2].i32[2])
    {
      v24 += a12[4].i64[0];
      v46 = v24;
      __memcpy_chk();
    }

    v25 = copy_obj(*a1, *(a1 + 8), *(a1 + 40), v24, a6, v33, 3, *(a1 + 48), &v45, a5, a13);
    v26 = v42;
    if (!v25)
    {
      goto LABEL_18;
    }

    v27 = fsck_tree_node_repair_add_maybe(a1, a12, v46, *(a2 + 16), (*(a2 + 34) - 1), v22, v21, v42, HIWORD(v39), v25);
    v14 = v45;
    if (v27)
    {
      break;
    }

    if (v45)
    {
      free(v45);
    }

    v45 = 0;
LABEL_20:
    v21 = HIWORD(v39);
    v43 = v41;
    LOWORD(v40) = v39;
    v19 = *(a2 + 36);
    ++v20;
    v22 = v26;
    if (v23 >= v19)
    {
      return 0;
    }
  }

  v28 = v27;
  if (!v45)
  {
    return v28;
  }

LABEL_23:
  free(v14);
  return v28;
}

uint64_t sub_10008E4E0(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, __int128 *a5, uint64_t a6, uint64_t (*a7)(void, void, uint64_t, void, uint64_t *, void, uint64_t, int *), uint64_t a8, const void *a9, unsigned __int16 a10, unsigned __int16 *a11, int8x16_t *a12, char a13)
{
  v49 = 0;
  v50 = a4;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v15 = *(a2 + 32);
  memset(&v57[8], 0, 64);
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  get_key_and_value_at_index(a2, a12, 0, &v49, &v46 + 1, &v48, &v46);
  if (!v48)
  {
    sub_10008F3EC();
  }

  v16 = *v48;
  *v57 = *v48;
  if (a12[2].i32[2])
  {
    *v57 = a12[4].i64[0] + v16;
    __memcpy_chk();
  }

  v44 = 0;
  v17 = *(a2 + 36);
  if (!v17)
  {
    LOBYTE(v21) = 0;
    v32 = 0;
    goto LABEL_31;
  }

  LODWORD(v18) = 0;
  v37 = (v15 & 0x10) << 25;
  v19 = HIWORD(v46);
  v20 = v49;
  while (1)
  {
    v21 = v18;
    *a11 = *(a2 + 34) - 1;
    v18 = (v18 + 1);
    if (v17 <= v18)
    {
      v47 = a9;
      v48 = 0;
      v45 = a10;
    }

    else
    {
      get_key_and_value_at_index(a2, a12, v18, &v47, &v45, &v48, &v46);
      v17 = *(a2 + 36);
    }

    if (v21 < v17 - 1)
    {
      if (!v48)
      {
        sub_10008F3C0();
      }

      v22 = *v48;
      *&v52 = *v48;
      if (a12[2].i32[2])
      {
        v22 += a12[4].i64[0];
        *&v52 = v22;
        __memcpy_chk();
      }

      *(&v44 | v21 & 1) = 1;
      v23 = copy_obj_async(*a1, *(a1 + 8), *(a1 + 40), v22, a6, v37, 3, *(a1 + 48), &v51[11 * (v21 & 1)]);
      if (v23)
      {
        break;
      }
    }

LABEL_18:
    if (v21 && (v29 = !(v21 & 1), *(&v44 | v29) == 1) && (*(&v44 | v29) = 0, (v30 = copy_obj_finish(*a1, *(a1 + 8), *(a1 + 40), *v57, a6, v37, 3, *(a1 + 48), &v51[11 * !(v21 & 1)], &v50, a5, a13)) != 0))
    {
      v31 = v47;
      v28 = fsck_tree_node_repair_add_maybe(a1, a12, *v57, *(a2 + 16), (*(a2 + 34) - 1), v20, v19, v47, v45, v30);
      if (v28)
      {
        goto LABEL_30;
      }

      if (v50)
      {
        free(v50);
      }

      v50 = 0;
    }

    else
    {
      v31 = v47;
      if (v50)
      {
        v42 = *a3;
        v43 = *(a3 + 2);
        v40 = *a5;
        v41 = *(a5 + 2);
        v32 = sub_10008CF58(a1, a2, &v42, v50, &v40, v57, a6, a7, a8, v20, v19, v47, v45, a11, a12, 0, a13);
        free(v50);
        v50 = 0;
        if (v32)
        {
          goto LABEL_34;
        }
      }
    }

    v19 = v45;
    *&v57[32] = v54;
    *&v57[48] = v55;
    *&v57[64] = v56;
    *v57 = v52;
    *&v57[16] = v53;
    v20 = v31;
    v17 = *(a2 + 36);
    if (v18 >= v17)
    {
      v32 = 0;
      LOBYTE(v21) = v18;
      goto LABEL_31;
    }
  }

  v24 = v23;
  *&v42 = 0;
  LOWORD(v40) = 0;
  v25 = v21 + 2;
  v26 = a10;
  v27 = a9;
  if (*(a2 + 36) > v25)
  {
    get_key_and_value_at_index(a2, a12, v25, &v42, &v40, 0, 0);
    v27 = v42;
    v26 = v40;
  }

  v28 = fsck_tree_node_repair_add_maybe(a1, a12, v52, *(a2 + 16), (*(a2 + 34) - 1), v47, v45, v27, v26, v24);
  if (!v28)
  {
    *(&v44 | v21 & 1) = 0;
    goto LABEL_18;
  }

LABEL_30:
  v32 = v28;
LABEL_31:
  if (v50)
  {
    free(v50);
    v50 = 0;
  }

  if (v32)
  {
LABEL_34:
    if (*(&v44 | !(v21 & 1)) == 1)
    {
      copy_obj_abort(*a1, *(a1 + 8), *v57, &v51[11 * !(v21 & 1)]);
    }
  }

  return v32;
}

uint64_t sub_10008E9B4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t (*a7)(void, void, uint64_t, void, uint64_t *, void, uint64_t, int *), uint64_t a8, uint64_t a9, int a10, unsigned __int16 *a11, int8x16_t *a12, unsigned __int8 a13)
{
  v88 = a7;
  v89 = a8;
  v101 = a6;
  v87 = a3;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v17 = *(a2 + 32);
  get_key_and_value_at_index(a2, a12, 0, &v111, &v108 + 1, &v110, &v108);
  if (!v110)
  {
    sub_10008F470();
  }

  v98 = a5;
  v100 = a4;
  v99 = (v17 & 0x10) << 25;
  bzero(v112, 0x580uLL);
  v86 = &v86;
  v18 = 112 * *(a2 + 36);
  __chkstk_darwin(v19);
  v20 = &v86 - v18;
  bzero(&v86 - v18, v18);
  v21 = *(a2 + 36);
  v22 = 8 * v21;
  __chkstk_darwin(v23);
  v24 = (&v86 - ((8 * v21 + 15) & 0xFFFFFFFF0));
  bzero(v24, 8 * v21);
  v96 = v21;
  __chkstk_darwin(v25);
  v27 = &v86 - ((v26 + 15) & 0x7FFFFFFF0);
  bzero(v27, v26);
  bzero(&v86 - v18, v18);
  v28 = v110;
  v29 = *v110;
  *(&v86 - v18 + 8) = *v110;
  v30 = a12[2].i32[2];
  v97 = &v86 - v18;
  if (v30)
  {
    *(v20 + 1) = a12[4].i64[0] + v29;
    memcpy(v20 + 16, v28 + 1, a12[2].u32[3]);
    v20 = v97;
  }

  v93 = a9;
  v31 = v98;
  *(v20 + 5) = *v98;
  *(v20 + 12) = *(v31 + 2);
  v32 = v100;
  v20[104] = v100 != 0;
  bzero(&v86 - ((v22 + 15) & 0xFFFFFFFF0), v22);
  *v24 = v32;
  LODWORD(v33) = v96;
  v98 = (&v86 - ((v22 + 15) & 0xFFFFFFFF0));
  v94 = v27;
  LODWORD(v95) = a10;
  if (v96 >= 2)
  {
    LODWORD(v100) = 0;
    v34 = v20 + 216;
    v35 = 1;
    while (1)
    {
      get_key_and_value_at_index(a2, a12, v35, &v111, &v108 + 1, &v110, &v108);
      v36 = v110;
      if (!v110)
      {
        sub_10008F444();
      }

      *(v34 - 26) = v35;
      *v34 = 1;
      v37 = *v36;
      *(v34 - 12) = *v36;
      if (a12[2].i32[2])
      {
        v37 += a12[4].i64[0];
        *(v34 - 12) = v37;
        memcpy(v34 - 88, v36 + 1, a12[2].u32[3]);
      }

      v38 = lookup_obj(*a1, *(a1 + 8), *(a1 + 40), v37, v101, v99, 3, *(a1 + 48), (v34 - 24));
      v39 = v35 + 1;
      if (v38)
      {
        v40 = v38;
        if (v39 >= *(a2 + 36))
        {
          v41 = v93;
          v109 = v93;
          v107 = a10;
          v42 = a10;
        }

        else
        {
          get_key_and_value_at_index(a2, a12, (v35 + 1), &v109, &v107, 0, 0);
          v41 = v109;
          v42 = v107;
        }

        v43 = fsck_tree_node_repair_add_maybe(a1, a12, *(v34 - 12), *(a2 + 16), (*(a2 + 34) - 1), v111, HIWORD(v108), v41, v42, v40);
        if (v43)
        {
          v66 = v43;
          goto LABEL_75;
        }

        *v34 = 0;
        *(v34 - 3) = 0x7FFFFFFFFFFFFFFFLL;
        LODWORD(v100) = v100 + 1;
      }

      v33 = *(a2 + 36);
      v34 += 112;
      ++v35;
      if (v39 >= v33)
      {
        v27 = v94;
        goto LABEL_18;
      }
    }
  }

  LODWORD(v100) = 0;
LABEL_18:
  v44 = v97;
  qsort(v97 + 112, (v33 - 1), 0x70uLL, sub_10008F274);
  v45 = *(a2 + 36);
  v46 = v95;
  if (!v45)
  {
    goto LABEL_22;
  }

  v47 = 0;
  v48 = v44;
  do
  {
    v49 = *v48;
    v48 += 28;
    *&v27[4 * v49] = v47++;
  }

  while (v45 != v47);
  if (v45 != 1)
  {
    v51 = v44 + 30;
    v52 = v112;
    v53 = 1;
    do
    {
      if (*(v51 + 96) == 1)
      {
        v54 = copy_obj_async(*a1, *(a1 + 8), *(a1 + 40), *v51, v101, v99, 3, *(a1 + 48), v52);
        if (v54)
        {
          v66 = v54;
          v58 = 1;
          LODWORD(v50) = v53;
          goto LABEL_66;
        }

        v45 = *(a2 + 36);
      }

      v50 = v53 + 1;
      if (v53 > 7)
      {
        break;
      }

      v51 += 28;
      v52 += 11;
      ++v53;
    }

    while (v50 < v45);
    v46 = v95;
  }

  else
  {
LABEL_22:
    LODWORD(v50) = 1;
  }

  get_key_and_value_at_index(a2, a12, 0, &v111, &v108 + 1, 0, 0);
  v55 = *(a2 + 36);
  if (v55)
  {
    v56 = 0;
    v57 = a11;
    v90 = v46;
    v91 = a13;
    v58 = 1;
    LODWORD(v96) = HIWORD(v108);
    v95 = v111;
    v59 = v97;
    v92 = a11;
    while (1)
    {
      v60 = *&v94[4 * v56];
      if (*(v98 + v56) || (v59[112 * v60 + 104] & 1) == 0)
      {
        if (v55 <= v56 + 1)
        {
          v61 = v93;
          v109 = v93;
          v62 = v90;
          v107 = v90;
        }

        else
        {
          get_key_and_value_at_index(a2, a12, (v56 + 1), &v109, &v107, 0, 0);
          v59 = v97;
          v61 = v109;
          v62 = v107;
        }

        *v57 = *(a2 + 34) - 1;
        v63 = &v59[112 * v60];
        if (v63[104] == 1)
        {
          v64 = v98;
          v65 = *(v98 + v56);
          v105 = *v87;
          v106 = *(v87 + 2);
          v103 = *(v63 + 5);
          v104 = *(v63 + 12);
          v66 = sub_10008CF58(a1, a2, &v105, v65, &v103, (v63 + 8), v101, v88, v89, v95, v96, v61, v62, v57, a12, 0, v91);
          free(v64[v56]);
          v64[v56] = 0;
          if (v66)
          {
            goto LABEL_66;
          }

          v61 = v109;
          v62 = v107;
          v59 = v97;
          v57 = v92;
        }

        v55 = *(a2 + 36);
        LODWORD(v96) = v62;
        v95 = v61;
        ++v56;
      }

      if (v58 < v55)
      {
        v67 = &v59[112 * v58];
        if (v67[104] == 1)
        {
          v68 = *v67;
          v69 = (v58 - 1) & 7;
          if (1 - v58 >= 0)
          {
            v69 = -((1 - v58) & 7);
          }

          v70 = copy_obj_finish(*a1, *(a1 + 8), *(a1 + 40), *(v67 + 1), v101, v99, 3, *(a1 + 48), &v112[11 * v69], v98 + v68, (v67 + 80), v91);
          if (v70)
          {
            v71 = v70;
            *&v105 = 0;
            *&v103 = 0;
            v102 = 0;
            get_key_and_value_at_index(a2, a12, v68, &v105, &v102 + 1, 0, 0);
            v72 = (v68 + 1);
            v73 = v90;
            v74 = v93;
            if (*(a2 + 36) > v72)
            {
              get_key_and_value_at_index(a2, a12, v72, &v103, &v102, 0, 0);
              v74 = v103;
              v73 = v102;
            }

            v75 = fsck_tree_node_repair_add_maybe(a1, a12, *(v67 + 1), *(a2 + 16), (*(a2 + 34) - 1), v105, HIWORD(v102), v74, v73, v71);
            if (v75)
            {
LABEL_64:
              v66 = v75;
              goto LABEL_66;
            }

            v67[104] = 0;
            LODWORD(v100) = v100 + 1;
          }

          v59 = v97;
          v57 = v92;
        }

        ++v58;
        v55 = *(a2 + 36);
      }

      if (v50 < v55)
      {
        if (v50 - v58 >= v100 + 8)
        {
          sub_10008F418();
        }

        v76 = &v59[112 * v50];
        if (v76[104] == 1)
        {
          v77 = (v50 - 1) & 7;
          if (1 - v50 >= 0)
          {
            v77 = -((1 - v50) & 7);
          }

          v75 = copy_obj_async(*a1, *(a1 + 8), *(a1 + 40), *(v76 + 1), v101, v99, 3, *(a1 + 48), &v112[11 * v77]);
          if (v75)
          {
            goto LABEL_64;
          }

          v55 = *(a2 + 36);
          v59 = v97;
          v57 = v92;
        }

        LODWORD(v50) = v50 + 1;
      }

      if (v56 >= v55)
      {
        v66 = 0;
        goto LABEL_67;
      }
    }
  }

  v66 = 0;
  v58 = 1;
LABEL_66:
  v59 = v97;
LABEL_67:
  if (v58 < v50)
  {
    v78 = v58 - 1;
    v79 = &v59[112 * v58 + 104];
    do
    {
      if (*v79 == 1)
      {
        if (v78 <= 0)
        {
          v80 = -(-v78 & 7);
        }

        else
        {
          v80 = v78 & 7;
        }

        copy_obj_abort(*a1, *(a1 + 8), *(v79 - 12), &v112[11 * v80]);
      }

      ++v78;
      v79 += 112;
    }

    while (v78 - v50 != -1);
  }

LABEL_75:
  v81 = *(a2 + 36);
  v82 = v98;
  if (v81)
  {
    for (i = 0; i < v81; ++i)
    {
      v84 = *(v82 + i);
      if (v84)
      {
        free(v84);
        v81 = *(a2 + 36);
      }
    }
  }

  return v66;
}

uint64_t sub_10008F274(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

double space_verification_init(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 40);
  dword_100103C60 = *(v2 + 36);
  v4 = memory_storage_limit(0x64u, 0x38400000uLL, 0x5A00000uLL);
  if (!tree_init_ext(&overlap_info, 0, 0, 0x8000000, 2, 0, 0, 4096, 32, 16, 0, 0, sub_10008F6D4))
  {
    tree_create(&overlap_info, 0, 64);
  }

  byte_100103C68 = 1;
  if (!tree_init_ext(&phys_ext_backref_tree, 0, 0, 0x8000000, 2, 0, 0, 4096, 24, 16, 0, 0, sub_10008F708))
  {
    tree_create(&phys_ext_backref_tree, 0, 64);
  }

  v5 = &spaceman_free_tree;
  v6 = 3;
  do
  {
    if (!tree_init_ext(v5, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_10008F764))
    {
      tree_create(v5, 0, 64);
    }

    v5 += 64;
    --v6;
  }

  while (v6);
  byte_100103C69 = 1;
  bitmap_store_init(&bitmap_store, v3, v4);
  byte_100103C6A = 0;
  byte_100103C6B = 1;
  bitmap_store_init(&unk_1000E9B68, v3, v4);
  bzero(&unk_100103C70, 0x640uLL);
  v7 = 0;
  v8 = *(a1 + 8);
  for (i = 184; i != 984; i += 8)
  {
    v10 = *(v8 + i);
    if (v10)
    {
      v11 = 16 * v7++;
      *(&unk_100103C70 + v11) = v10;
    }
  }

  result = 0.0;
  xmmword_1001042E0 = 0u;
  unk_1001042F0 = 0u;
  xmmword_1001042C0 = 0u;
  unk_1001042D0 = 0u;
  xmmword_1001042B0 = 0u;
  return result;
}

uint64_t sub_10008F708(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  if (*a2 > *a4)
  {
    goto LABEL_2;
  }

  if (*a2 < *a4)
  {
    goto LABEL_4;
  }

  v8 = a2[1];
  v9 = a4[1];
  if (v8 > v9)
  {
LABEL_2:
    v6 = 1;
    goto LABEL_5;
  }

  if (v8 < v9)
  {
LABEL_4:
    v6 = -1;
    goto LABEL_5;
  }

  v10 = a2[2];
  v11 = a4[2];
  v12 = v10 > v11;
  if (v10 >= v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v12)
  {
    v6 = 1;
  }

LABEL_5:
  *a6 = v6;
  return 0;
}

uint64_t sub_10008F764(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = a2[1];
  v7 = a4[1];
  if (v6 <= v7)
  {
    if (v6 >= v7)
    {
      if (*a2 <= *a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 < *a4)
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  *a6 = v8;
  return 0;
}

void space_verification_cleanup()
{
  tree_destroy(&overlap_info, 0);
  tree_destroy(&phys_ext_backref_tree, 0);
  v0 = &bitmap_store;
  v1 = 3;
  do
  {
    bitmap_store_destroy(v0);
    v0 += 104;
    --v1;
  }

  while (v1);
  v2 = &spaceman_free_tree;
  v3 = 3;
  do
  {
    if (v2[7])
    {
      tree_destroy(v2, 0);
    }

    v2 += 8;
    --v3;
  }

  while (v3);
}

uint64_t add_overlapped_extent(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8)
{
  v18 = 0;
  result = tree_key_count(&overlap_info, 0, &v18);
  if (byte_100103C68 == 1 && v18 <= 0x31)
  {
    v17[1] = a2;
    v18 = a3;
    v19 = a4;
    v22 = a5;
    v23 = a6;
    v20 = a7;
    v21 = a8;
    v17[0] = a1;
    return tree_insert(&overlap_info, 0, &v18, 32, v17, 16);
  }

  return result;
}

uint64_t check_object_overlap(unint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8, char a9)
{
  memset(v36, 0, sizeof(v36));
  v28 = 0;
  v29 = 0;
  v30 = a3;
  v31 = a4;
  v34 = a5;
  v35 = a6;
  v32 = a7;
  v33 = a8;
  v26 = 16;
  v27 = 32;
  if (tree_lookup(&overlap_info, 0, 1, v36, &v27, 32, &v28, &v26))
  {
    return 0;
  }

  v20 = a8;
  while (1)
  {
    if (a2 + a1 <= v28 || v29 + v28 <= a1)
    {
      goto LABEL_10;
    }

    if (sub_10008FA90(v36, &v30))
    {
      break;
    }

    a9 = 0;
LABEL_10:
    v21 = 16;
    v22 = 32;
    if (tree_lookup(&overlap_info, 0, 2, v36, &v22, 32, &v28, &v21))
    {
      return 0;
    }
  }

  if (a9)
  {
    v25[0] = 0;
    v25[1] = 0;
    v23 = 16;
    v24 = 32;
    if (tree_lookup(&overlap_info, 0, 0, &v30, &v24, 32, v25, &v23))
    {
      add_overlapped_extent(a1, a2, a3, a4, a5, a6, a7, v20);
    }
  }

  return 1;
}

uint64_t sub_10008FA90(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    v14 = *(a1 + 24);
    v15 = *(a2 + 24);
    if (v14 > v15)
    {
      return 1;
    }

    if (v14 < v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 12);
  v8 = *(a2 + 12);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 14);
  v10 = *(a2 + 14);
  v11 = v9 >= v10;
  v12 = v9 == v10;
  if (v9 >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (!v12 && v11)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

BOOL has_overlapped_extents()
{
  v1 = 0;
  tree_key_count(&overlap_info, 0, &v1);
  return v1 != 0;
}

uint64_t print_overlapped_extents()
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0;
  v6 = 0;
  v3 = 16;
  v4 = 32;
  for (result = tree_lookup(&overlap_info, 0, 1, &v7, &v4, 32, &v5, &v3); !result; result = tree_lookup(&overlap_info, 0, 2, &v7, &v2, 32, &v5, &v1))
  {
    fsck_printf_warn("Overlapping object: (oid : 0x%llx) (type : %u) (subtype : %u), (%llu + %llu)\n", v8, WORD6(v7), HIWORD(v7), v5, v6);
    v1 = 16;
    v2 = 32;
  }

  return result;
}

uint64_t repair_overlapped_extents(uint64_t *a1)
{
  v109 = 0u;
  v110 = 0u;
  v107 = 0;
  v108 = 0;
  v105 = 16;
  v106 = 32;
  v2 = 0;
  if (tree_lookup(&overlap_info, 0, 1, &v109, &v106, 32, &v107, &v105))
  {
    return v2;
  }

  do
  {
    if (DWORD2(v109) != 0x40000000 || *(&v110 + 1) != 0 || WORD6(v109) != 0 || HIWORD(v109) != 15)
    {
      goto LABEL_50;
    }

    v104 = 0;
    v102 = 0;
    v103 = 0;
    v100[0] = 0;
    v100[1] = 0;
    v101 = 0;
    v98 = 20;
    v99 = 8;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v92 = 0;
    v93 = 0;
    if (!check_object_overlap(v107, v108, v109, 0x40000000, v110, 0, 0, 15, 0))
    {
      v111 = v109;
      v112 = v110;
      tree_remove(&overlap_info, 0, &v111, 32);
      v8 = 0;
      goto LABEL_42;
    }

    v7 = fsck_global_volume_get_by_fs_oid(a1, v109);
    v8 = v7;
    if (!v7)
    {
      fsck_printf_warn("repair_overlapped_extents: unable to find volume for fs_oid 0x%llx\n", v109);
      v12 = 604;
      v13 = 2;
      goto LABEL_41;
    }

    v9 = *(v7 + 5);
    v10 = *(v9 + 976);
    if (*(v9 + 264))
    {
      if (v10)
      {
LABEL_26:
        fsck_printf_err("repair_overlapped_extents: encryption is rolling for fs_oid 0x%llx\n", v109);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = 16;
        }

        v12 = 605;
        v13 = 16;
        goto LABEL_41;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_26;
      }

      if (v7[8] == 1)
      {
        v11 = volume_crypto_open(v7, a1, 2);
        if (v11)
        {
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v11;
          }

          goto LABEL_42;
        }
      }
    }

    tree_for_jobj = get_tree_for_jobj(a1, v8, 8u, &v104);
    if (tree_for_jobj)
    {
      v15 = tree_for_jobj;
      fsck_printf_err("repair_overlapped_extents: unable to init fsroot for fs_oid 0x%llx\n", v109);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 606;
      goto LABEL_40;
    }

    extentref_tree = get_extentref_tree(a1, v8, &v103);
    if (extentref_tree)
    {
      v15 = extentref_tree;
      fsck_printf_err("repair_overlapped_extents: unable to init extentref tree for fs_oid 0x%llx\n", v109);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v15;
      }

      v12 = 607;
LABEL_40:
      v13 = v15;
LABEL_41:
      fsck_fail_func(v12, v13);
      goto LABEL_42;
    }

    v102 = v110 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v22 = tree_lookup(v103, 0, 0, &v102, &v99, v99, v100, &v98);
    if (v22)
    {
      v23 = v22;
      v24 = v110;
      v25 = v109;
      v26 = strerror(v22);
      fsck_printf_err("repair_overlapped_extents: unable to load pext 0x%llx for fs_oid 0x%llx: %s\n", v24, v25, v26);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v23;
      }

      v27 = 608;
LABEL_62:
      fsck_fail_func(v27, v23);
      goto LABEL_42;
    }

    v28 = v101;
    fsck_printf_debug("repair_overlapped_extents: allocate space for block_count 0x%llx\n", v108);
    v29 = fsck_allocate_blocks(a1, v8, 3u, v108, &v97);
    if (v29)
    {
      v23 = v29;
      v30 = v108;
      v31 = strerror(v29);
      fsck_printf_err("repair_overlapped_extents: unable to allocate space for block_count 0x%llx: %s\n", v30, v31);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v23;
      }

      v27 = 609;
      goto LABEL_62;
    }

    fsck_printf_debug("repair_overlapped_extents: copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx\n", v107, v97, v108);
    v32 = fsck_blockcopy(a1, v107, v97, v108);
    if (v32)
    {
      v33 = v32;
      v81 = v97;
      v35 = v107;
      v34 = v108;
      v36 = strerror(v32);
      fsck_printf_err("repair_overlapped_extents: failed to copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx: %s\n", v35, v81, v34, v36);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v33;
      }

      goto LABEL_42;
    }

    v102 = v97 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    fsck_printf_debug("repair_overlapped_extents: insert target pext 0x%llx\n", v97);
    v37 = tree_insert(v103, 0, &v102, v99, v100, v98);
    if (v37)
    {
      v23 = v37;
      v38 = v97;
      v39 = v109;
      v40 = strerror(v37);
      fsck_printf_err("repair_overlapped_extents: unable to insert target pext 0x%llx for fs_oid 0x%llx: %s\n", v38, v39, v40);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v23;
      }

      v27 = 613;
      goto LABEL_62;
    }

    v76 = v28;
    v94 = v109;
    v95 = v110;
    v96 = 0;
    v90 = 16;
    v91 = 24;
    if (tree_lookup(&phys_ext_backref_tree, 0, 1, &v94, &v91, 24, &v92, &v90))
    {
      v77 = 0;
LABEL_74:
      v102 = v110 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      fsck_printf_debug("repair_overlapped_extents: remove source pext 0x%llx\n", v110);
      v41 = tree_remove(v103, 0, &v102, v99);
      if (v41)
      {
        v42 = v41;
        v43 = v110;
        v44 = v109;
        v45 = strerror(v41);
        fsck_printf_err("repair_overlapped_extents: unable to remove source pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v43, v44, v45);
        if (!v2)
        {
          LODWORD(v2) = v42;
        }

        fsck_fail_func(0x269, v42);
      }

      v111 = v109;
      v112 = v110;
      tree_remove(&overlap_info, 0, &v111, 32);
      v46 = sub_100090590(a1, v8, v107, v108);
      if (v2)
      {
        v47 = v2;
      }

      else
      {
        v47 = v46;
      }

      if (v46)
      {
        v2 = v47;
      }

      else
      {
        v2 = v2;
      }

      goto LABEL_84;
    }

    v77 = 0;
    v53 = 0;
    while (1)
    {
      v111 = 0uLL;
      *&v112 = 0;
      v87 = 24;
      v88 = 16;
      if (v94 != v109 || v95 != v110)
      {
        break;
      }

      v82 = v53 + 1;
      v78 = v53;
      v89[0] = v96 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v89[1] = v93;
      fsck_printf_debug("repair_overlapped_extents: load fext 0x%llx 0x%llx\n", v96, v93);
      v54 = tree_lookup(v104, 0, 0, v89, &v88, v88, &v111, &v87);
      if (v54)
      {
        v55 = v54;
        v79 = v96;
        v56 = v93;
        v57 = v109;
        v58 = strerror(v54);
        fsck_printf_err("repair_overlapped_extents: unable to load fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v79, v56, v57, v58);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v55;
        }

        v59 = 614;
      }

      else
      {
        *(&v111 + 1) = v97;
        fsck_printf_debug("repair_overlapped_extents: update fext 0x%llx 0x%llx\n", v96, v93);
        v60 = tree_insert(v104, 0, v89, v88, &v111, v87);
        if (!v60)
        {
          v64 = v78;
          ++v77;
          goto LABEL_106;
        }

        v55 = v60;
        v80 = v96;
        v61 = v93;
        v62 = v109;
        v63 = strerror(v60);
        fsck_printf_err("repair_overlapped_extents: unable to update fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v80, v61, v62, v63);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v55;
        }

        v59 = 615;
      }

      fsck_fail_func(v59, v55);
      v64 = v82;
LABEL_106:
      v85 = 16;
      v86 = 24;
      v65 = tree_lookup(&phys_ext_backref_tree, 0, 2, &v94, &v86, 24, &v92, &v85);
      v53 = v64;
      if (v65)
      {
        goto LABEL_116;
      }
    }

    v64 = v53;
LABEL_116:
    if (!v64)
    {
      goto LABEL_74;
    }

    if (v64 != v76)
    {
      v102 = v110 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v101 = v64;
      fsck_printf_debug("repair_overlapped_extents: update source pext 0x%llx\n", v110);
      v71 = tree_insert(v103, 0, &v102, v99, v100, v98);
      if (v71)
      {
        v72 = v71;
        v73 = v110;
        v74 = v109;
        v75 = strerror(v71);
        fsck_printf_err("repair_overlapped_extents: unable to update source pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v73, v74, v75);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v72;
        }

        fsck_fail_func(0x268, v72);
      }
    }

LABEL_84:
    if (v77)
    {
      if (v77 != v76)
      {
        v102 = v97 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        v101 = v77;
        fsck_printf_debug("repair_overlapped_extents: update target pext 0x%llx\n", v97);
        v48 = tree_insert(v103, 0, &v102, v99, v100, v98);
        if (v48)
        {
          v49 = v48;
          v50 = v97;
          v51 = v109;
          v52 = strerror(v48);
          fsck_printf_err("repair_overlapped_extents: unable to target update target pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v50, v51, v52);
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v49;
          }

          fsck_fail_func(0x26A, v49);
        }
      }

      v97 = 0;
    }

    else
    {
      v102 = v97 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      fsck_printf_debug("repair_overlapped_extents: remove target pext 0x%llx\n", v97);
      v66 = tree_remove(v103, 0, &v102, v99);
      if (v66)
      {
        v67 = v66;
        v68 = v97;
        v69 = v109;
        v70 = strerror(v66);
        fsck_printf_err("repair_overlapped_extents: unable to remove target pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v68, v69, v70);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v67;
        }

        fsck_fail_func(0x26B, v67);
      }
    }

    fsck_fail_add_repair();
LABEL_42:
    if (v97)
    {
      fsck_printf_debug("repair_overlapped_extents: free space for target_paddr 0x%llx block_count 0x%llx\n", v97, v108);
      v17 = fsck_free_range(a1, v8, v97, v108);
      if (v17)
      {
        v18 = v17;
        v19 = v97;
        v20 = v108;
        v21 = strerror(v17);
        fsck_printf_err("repair_overlapped_extents: unable to free space for target_paddr 0x%llx block_count 0x%llx: %s\n", v19, v20, v21);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v18;
        }

        fsck_fail_func(0x26C, v18);
      }
    }

    if (v8)
    {
      volume_crypto_close(v8);
    }

LABEL_50:
    v83 = 16;
    v84 = 32;
  }

  while (!tree_lookup(&overlap_info, 0, 2, &v109, &v84, 32, &v107, &v83));
  return v2;
}

uint64_t sub_100090590(uint64_t *a1, int8x16_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  memset(v32, 0, sizeof(v32));
  v30 = 0;
  v31 = 0;
  v8 = mark_range(&bitmap_store, a3, a4, 0);
  if (v8)
  {
    v9 = v8;
    v10 = strerror(v8);
    fsck_printf_warn("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v5, v4, v10);
    fsck_fail_func(0x26D, v9);
  }

  v29 = 0;
  v27 = 16;
  v28 = 32;
  if (!tree_lookup(&overlap_info, 0, 1, v32, &v28, 32, &v30, &v27))
  {
    v11 = v4 + v5;
    do
    {
      if (v11 > v30 && v31 + v30 > v5)
      {
        if (v5 <= v30)
        {
          v13 = v30;
        }

        else
        {
          v13 = v5;
        }

        if (v11 - v13 >= v30 - v13 + v31)
        {
          v14 = v30 - v13 + v31;
        }

        else
        {
          v14 = v11 - v13;
        }

        mark_range_allocated(v13, v14, WORD6(v32[0]), HIWORD(v32[0]), 0);
      }

      v25 = 16;
      v26 = 32;
    }

    while (!tree_lookup(&overlap_info, 0, 2, v32, &v26, 32, &v30, &v25));
  }

  v15 = 0;
  if (range_ffc(&bitmap_store, v5, v4, &v29))
  {
    do
    {
      v24 = 0;
      v16 = v4 + v5;
      v17 = v4 + v5 - v29;
      if (range_ffs(&bitmap_store, v29, v17, &v24))
      {
        v17 = v24 - v29;
      }

      fsck_printf_debug("free_overlapped_range: free space for source_paddr 0x%llx block_count 0x%llx\n", v29, v17);
      v18 = fsck_free_range(a1, a2, v29, v17);
      if (v18)
      {
        v19 = v18 == 17;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = v18;
        v21 = v29;
        v22 = strerror(v18);
        fsck_printf_err("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v21, v17, v22);
        if (v15)
        {
          v15 = v15;
        }

        else
        {
          v15 = v20;
        }

        fsck_fail_func(0x26E, v20);
      }

      v5 = v29 + v17;
      v4 = v16 - v5;
    }

    while ((range_ffc(&bitmap_store, v5, v16 - v5, &v29) & 1) != 0);
  }

  return v15;
}

uint64_t volume_alloc_count_get(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000930C0();
  }

  v2 = &qword_100103C78;
  v3 = 100;
  while (1)
  {
    v4 = *(v2 - 1);
    if (!v4)
    {
      return 2;
    }

    if (v4 == a1)
    {
      break;
    }

    v2 += 2;
    if (!--v3)
    {
      return 2;
    }
  }

  result = 0;
  *a2 = *v2;
  return result;
}

uint64_t mark_range_allocated(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v8 = 208;
  if (!a5)
  {
    v8 = 0;
  }

  result = mark_range(&bitmap_store + v8, a1, a2, 1);
  if (!result)
  {
    if (*(state + 43) == 1)
    {

      return sub_1000908D4(v6, v5, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000908D4(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (a1 || a2 != 15)
  {
    if (a1 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    if (a1 > 3)
    {
      v5 = a1;
    }

    if (v5 >= 0x25)
    {
      fsck_printf_warn("Invalid object type/subtype (type : %u) (subtype : %u)\n", a1, a2);
      v4 = 9;
    }

    else
    {
      v4 = dword_1000B3360[v5];
    }
  }

  else
  {
    v4 = 8;
  }

  *(&xmmword_1001042B0 + v4) += a3;
  return 0;
}

uint64_t mark_range_free(unint64_t a1, unint64_t a2, int a3)
{
  v3 = 208;
  if (!a3)
  {
    v3 = 0;
  }

  return mark_range(&bitmap_store + v3, a1, a2, 0);
}

uint64_t mark_object_allocated(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10)
{
  v10 = a8;
  if (*(state + 44) == 1)
  {

    return check_object_overlap(a2, a3, a4, a5, a6, a7, a8, a9, 1);
  }

  v18 = mark_range_allocated(a2, a3, a8, a9, (a10 >> 3) & 1);
  if (v18)
  {
    if (v18 != 12)
    {
      if (v18 == 17)
      {
        fsck_fail_func(0x451, 17);
        add_overlapped_extent(a2, a3, a4, a5, a6, a7, v10, a9);
        goto LABEL_11;
      }

      v19 = strerror(v18);
      fsck_printf_warn("object oid %llu/xid %llu/type 0x%x/subtype 0x%x: unable to mark range %llu+%llu allocated for space verification: %s\n", a6, a7, v10, a9, a2, a3, v19);
    }

    fsck_fail_func(0x437, -7);
    verify_overallocation = 0;
  }

LABEL_11:
  if (a4)
  {
    v20 = &qword_100103C78;
    v21 = 100;
    do
    {
      v22 = *(v20 - 1);
      if (!v22)
      {
        break;
      }

      if (v22 == a4)
      {
        *v20 += a3;
        goto LABEL_19;
      }

      v20 += 2;
      --v21;
    }

    while (v21);
    if ((a10 & 4) == 0)
    {
      fsck_printf_warn("unable to mark allocated blocks for volume oid %llu\n", a4);
    }
  }

LABEL_19:

  return fsck_progress_update(a3, a4 != 0);
}

char *mark_reserved_space_as_allocated(uint64_t a1)
{
  v2 = mark_object_allocated(a1, 0, 1uLL, 0, 0x40000000, 0, 0, 1, &_mh_execute_header, &_mh_execute_header >> 32);
  v19 = a1;
  v20 = 0xC00000000;
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = extent_list_tree_iterate(a1, v5, sub_100090DEC, &v19);
    if (v6)
    {
      verify_overallocation = 0;
      fsck_printf_warn("object (oid 0x%llx): Unable to mark nx checkpoint desc range (0x%llx + %u) allocated for space verification\n", 0, *(*(a1 + 8) + 112), *(*(a1 + 8) + 104));
      v6 = fsck_fail_func(0x1D1, -7);
    }
  }

  else
  {
    v6 = mark_object_allocated(v2, v5, v4, 0, 0x40000000, v5, 0, 0, 0xCu, 1u);
  }

  v7 = *(a1 + 8);
  v8 = *(v7 + 108);
  v9 = *(v7 + 120);
  if ((v8 & 0x80000000) != 0)
  {
    v10 = extent_list_tree_iterate(a1, v9, sub_100090DEC, &v19);
    if (v10)
    {
      verify_overallocation = 0;
      fsck_printf_warn("object (oid 0x%llx): Unable to mark nx checkpoint data range (0x%llx + %u) allocated for space verification\n", 0, *(*(a1 + 8) + 120), *(*(a1 + 8) + 108));
      v10 = fsck_fail_func(0x1D2, -7);
    }
  }

  else
  {
    v10 = mark_object_allocated(v6, v9, v8, 0, 0x40000000, v9, 0, v20, HIDWORD(v20), 1u);
  }

  v20 = 8;
  v11 = *(a1 + 24);
  v12 = *(v11 + 164);
  v13 = *(v11 + 168);
  if ((v12 & 0x80000000) != 0)
  {
    v14 = extent_list_tree_iterate(a1, v13, sub_100090DEC, &v19);
    if (v14)
    {
      verify_overallocation = 0;
      fsck_printf_warn("object (oid 0x%llx): Unable to mark spaceman ip bitmap range (0x%llx + %u) allocated for space verification\n", 0, *(*(a1 + 24) + 168), *(*(a1 + 24) + 164));
      v14 = fsck_fail_func(0x1D3, -7);
    }
  }

  else
  {
    v14 = mark_object_allocated(v10, v13, v12, 0, 0x40000000, v13, 0, 8, &_mh_execute_header, &_mh_execute_header >> 32);
  }

  v15 = *(a1 + 24);
  v16 = *(v15 + 152);
  v17 = *(v15 + 176);
  if ((v16 & 0x8000000000000000) == 0)
  {
    return mark_object_allocated(v14, v17, v16, 0, 0x40000000, v17, 0, v20, HIDWORD(v20), 1u);
  }

  result = extent_list_tree_iterate(a1, v17, sub_100090DEC, &v19);
  if (result)
  {
    verify_overallocation = 0;
    fsck_printf_warn("object (oid 0x%llx): Unable to mark spaceman ip range (0x%llx + %llu) allocated for space verification\n", 0, *(*(a1 + 24) + 176), *(*(a1 + 24) + 152));
    return fsck_fail_func(0x1D4, -7);
  }

  return result;
}

uint64_t sub_100090DEC(uint64_t a1, int a2, unint64_t *a3, int a4, uint64_t a5)
{
  if (a2 != 8 || a4 != 16)
  {
    sub_1000930EC();
  }

  mark_object_allocated(a1, *a3, a3[1], 0, 0x40000000, *a3, 0, *(a5 + 8), *(a5 + 12), 1u);
  return 0;
}

uint64_t repair_bitmap_maybe(uint64_t a1, int a2, uint64_t a3, uint64_t *__s1, uint64_t *__s2, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, _BYTE *a9, _DWORD *a10)
{
  v13 = __s2;
  v14 = __s1;
  v81 = a3;
  v79 = a2;
  v76 = a10;
  v16 = memcmp(__s1, __s2, (a6 + 7) >> 3);
  if (!v16)
  {
    v61 = 0;
    v26 = 0;
    v62 = 0;
    v32 = 0;
    if (a7)
    {
LABEL_87:
      v63 = v32;
      v64 = (a7)(a1, v61, v26, 1, a8);
      if (v64)
      {
        *v76 = v64;
      }

      (a7)(a1, v62, v63, 2, a8);
    }

    return 0;
  }

  v77 = a1;
  v71 = &v66;
  v17 = (a6 + 63) >> 6;
  __chkstk_darwin(v16);
  v18 = (8 * v17 + 15) & 0x3FFFFFFFFFFFFFF0;
  v19 = &v66 - v18;
  bzero(&v66 - v18, 8 * v17);
  __chkstk_darwin(v20);
  v72 = (&v66 - v18);
  bzero(&v66 - v18, 8 * v17);
  if (a6 + 63 >= 0x40)
  {
    v21 = (&v66 - v18);
    v22 = v72;
    do
    {
      v24 = *v14++;
      v23 = v24;
      v25 = *v13++;
      *v21++ = v23 & ~v25;
      *v22++ = v25 & ~v23;
      --v17;
    }

    while (v17);
  }

  *&v85 = 0;
  if (!a6)
  {
    if (verify_overallocation == 1)
    {
      v61 = 0;
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v61 = 0;
    }

    v62 = 0;
    v32 = 0;
    a1 = v77;
LABEL_86:
    if (a7)
    {
      goto LABEL_87;
    }

    return 0;
  }

  v26 = 0;
  v80 = 0;
  do
  {
    v27 = sub_100091510(v81, v19, &v85, a6);
    v29 = v27;
    v30 = v28;
    if (a9 && v28)
    {
      *a9 = 1;
    }

    if (a7)
    {
      if (v26)
      {
        if (v26 + v80 == v27)
        {
          v26 += v28;
          continue;
        }

        v31 = a7(v77);
        if (v31)
        {
          *v76 = v31;
        }
      }

      v80 = v29;
      v26 = v30;
    }
  }

  while (v85 < a6);
  if ((verify_overallocation & 1) == 0)
  {
    v62 = 0;
    v32 = 0;
    a1 = v77;
    v61 = v80;
    goto LABEL_86;
  }

  v32 = 0;
  v78 = 0;
  v82 = 0;
  v70 = xmmword_1000B33F8;
  v69 = 8;
  a1 = v77;
  v66 = a8;
  while (1)
  {
    v73 = v32;
    v33 = sub_100091510(v81, v72, &v82, a6);
    v35 = v34;
    v85 = v70;
    v86 = v69;
    v36 = malloc_type_calloc(8uLL, 0x18uLL, 0x100004057661CB1uLL);
    *&v85 = v36;
    if (!v36)
    {
      return 12;
    }

    *v36 = v33;
    v36[1] = v35;
    v37 = v79;
    *(v36 + 16) = v79;
    HIDWORD(v85) = 1;
    if ((v37 & 1) == 0)
    {
      v52 = *(a1 + 24);
      v53 = *(v52 + 152);
      if ((v53 & 0x8000000000000000) != 0)
      {
        v54 = extent_list_tree_iterate(a1, *(v52 + 176), sub_100092A1C, &v85);
      }

      else
      {
        v87 = *(v52 + 176);
        v88 = v53;
        v54 = sub_100092A1C(v36, 8, &v87, 16, &v85);
      }

      v46 = v54;
      v32 = v73;
      if (v54)
      {
        v39 = 0;
        v74 = 1;
        goto LABEL_54;
      }

      if (SHIDWORD(v85) < 1)
      {
        v39 = 0;
        v46 = 0;
        v74 = 1;
        v32 = v73;
        goto LABEL_54;
      }
    }

    v68 = v33;
    v67 = v35;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v74 = 1;
LABEL_23:
    v75 = v40;
    v41 = v85 + 24 * v38;
    v42 = *v41;
    v43 = *(v41 + 8);
    v87 = 0;
    v88 = v42;
    v84 = 0;
    v44 = *(v41 + 16);
    v45 = sub_100092AE4(v44 ^ 1u, &v87, &v84, 4294967294);
    if (v45 == 2)
    {
      v45 = sub_100092AE4(v44 ^ 1u, &v87, &v84, 1);
      if (v45 == 2)
      {
        goto LABEL_32;
      }
    }

    v46 = v45;
    if (v45)
    {
      goto LABEL_43;
    }

    v47 = v43 + v42;
    v48 = v88;
    if (v88 >= v47)
    {
      goto LABEL_32;
    }

    v49 = 0;
    while (1)
    {
      DWORD2(v85) = v38;
      BYTE5(v86) = v79;
      v83 = 0;
      v50 = split_range_maybe(*(v85 + 24 * v38), *(v85 + 24 * v38 + 8), v48, v84, &v83, sub_100092B84, &v85);
      if (v50)
      {
        return v50;
      }

      v49 |= v83;
      v51 = sub_100092AE4(v44 ^ 1u, &v87, &v84, 2);
      if (v51)
      {
        break;
      }

      v48 = v88;
      if (v88 >= v47)
      {
        if ((v49 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_38:
        v40 = v75;
LABEL_39:
        if (++v38 >= SHIDWORD(v85))
        {
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    v46 = v51;
    if (v51 == 2)
    {
      if (v49)
      {
        goto LABEL_38;
      }

LABEL_32:
      v40 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
      if (v40)
      {
        *v40 = *(v85 + 24 * v38);
        v40[2] = 0;
        v74 = 0;
        if (v39)
        {
          v75[2] = v40;
        }

        else
        {
          v39 = v40;
        }

        goto LABEL_39;
      }

      v74 = 0;
LABEL_52:
      v46 = 0;
      a8 = v66;
      a1 = v77;
      v32 = v73;
      v35 = v67;
LABEL_53:
      v33 = v68;
    }

    else
    {
LABEL_43:
      a1 = v77;
      v32 = v73;
      v35 = v67;
      v33 = v68;
      a8 = v66;
      if (v39)
      {
        do
        {
          v55 = *(v39 + 2);
          free(v39);
          v39 = v55;
        }

        while (v55);
        v32 = v73;
        goto LABEL_53;
      }
    }

LABEL_54:
    if (v85)
    {
      free(v85);
      v32 = v73;
    }

    if (v46)
    {
      return v46;
    }

    if ((v74 & 1) == 0)
    {
      *&v85 = v33;
      *(&v85 + 1) = v35;
      v86 = 0;
      if (!v39)
      {
        v39 = &v85;
      }

      while (1)
      {
        v56 = *(v39 + 2);
        if (a9 && *(v39 + 1))
        {
          *a9 = 1;
        }

        if (!a7)
        {
          goto LABEL_72;
        }

        v58 = *v39;
        v57 = *(v39 + 1);
        if (!v32)
        {
          goto LABEL_71;
        }

        if (v32 + v78 != v58)
        {
          break;
        }

        v32 += v57;
LABEL_72:
        if (v39 != &v85)
        {
          v59 = v39;
          v60 = v32;
          free(v59);
          v32 = v60;
        }

        v39 = v56;
        if (!v56)
        {
          goto LABEL_75;
        }
      }

      a7(a1);
LABEL_71:
      v78 = v58;
      v32 = v57;
      goto LABEL_72;
    }

    if ((v79 & 1) == 0 && byte_100103C6B == 1)
    {
      *(&xmmword_1001042B0 + 1) += v35;
    }

LABEL_75:
    if (v82 >= a6)
    {
      v61 = v80;
      v62 = v78;
      goto LABEL_86;
    }
  }
}

uint64_t sub_100091510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v14 = 0;
  v15 = v8;
  if (bitmap_range_find_first(1, a2, v8, a4 - v8, &v15))
  {
    v9 = v15;
  }

  else
  {
    v15 = a4;
    v9 = a4;
  }

  first = bitmap_range_find_first(0, a2, v9, a4 - v9, &v14);
  v11 = v14;
  v12 = v15;
  if (!first)
  {
    v11 = a4;
  }

  *a3 = v11;
  return v12 + a1;
}

uint64_t repair_ip_bitmap_maybe(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, _DWORD *a7)
{
  result = get_bitmap_for_range(&unk_1000E9B68, a2 & 0xFFFFFFFFFFFFFFC0, (a2 + a3 - (a2 & 0xFFFFFFFFFFFFFFC0) + 63) & 0xFFFFFFFFFFFFFFC0, a4);
  if (!result)
  {
    bitmap_shift_down(a4, (8 * dword_100103C60 + 128) >> 6, a2 & 0x3F);
    return repair_bitmap_maybe(a1, 1, a2, a4, a5, a3, sub_100091674, a6, 0, a7);
  }

  return result;
}

uint64_t sub_100091674(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *a5;
  if (a4 == 1)
  {
    v12 = "underallocation";
  }

  else
  {
    v12 = "overallocation";
  }

  if (a4 == 1)
  {
    fsck_printf_err("underallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, v11);
    fsck_fail_func(0x4F4, 92);
  }

  else
  {
    fsck_printf_warn("overallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, v11);
    v5 = 92;
    fsck_fail_func(0x4F5, 92);
    if (*(state + 45) != 1)
    {
      return v5;
    }
  }

  if (!fsckAskPrompt(fsck_apfs_ctx, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v13, v14, v15, v16, v17, v18, v12, a2, a3, *a5))
  {
    return 92;
  }

  v19 = malloc_type_calloc(1uLL, *(a1[1] + 36), 0x4921D8E2uLL);
  if (v19)
  {
    v20 = v19;
    v21 = dev_read(*a1);
    if (v21)
    {
      v5 = v21;
      fsck_printf_err("Failed to fix %s\n", v12);
      v22 = 1271;
    }

    else
    {
      v23 = a5[2] + a2;
      v24 = v23 - a5[1];
      if (a4 == 1)
      {
        bitmap_set_range(v20, v24, a3, v23);
      }

      else
      {
        bitmap_clear_range(v20, v24, a3);
      }

      v5 = dev_write(*a1);
      if (!v5)
      {
        free(v20);
        fsck_fail_add_repair();
        return v5;
      }

      fsck_printf_err("Failed to fix %s\n", v12);
      v22 = 1272;
    }

    fsck_fail_func(v22, v5);
    free(v20);
  }

  else
  {
    fsck_printf_warn("failed to allocate memory for the bitmap block\n");
    v5 = 12;
    fsck_fail_func(0x4F6, 12);
  }

  return v5;
}

uint64_t verify_ip_bitmap(uint64_t *a1)
{
  v49 = 0;
  v2 = a1[3];
  v3 = *(v2 + 328);
  v4 = dword_100103C60;
  LODWORD(v5) = *(v2 + 160);
  v48 = 0;
  v6 = malloc_type_calloc(1uLL, dword_100103C60, 0x32792C78uLL);
  v7 = malloc_type_calloc(1uLL, dword_100103C60 + 16, 0x100004000313F17uLL);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    fsck_printf_warn("failed to allocate memory for the bitmap block\n");
    v5 = 12;
    v9 = 1273;
    v10 = 12;
    goto LABEL_7;
  }

  v11 = v7;
  if (!v5)
  {
    goto LABEL_49;
  }

  v12 = 0;
  v41 = v2 + v3;
  v39 = v5;
  v40 = 8 * v4;
  v42 = (8 * v4) >> 6;
  while (1)
  {
    v13 = *(v41 + 2 * v12);
    v14 = a1[3];
    v15 = *(v14 + 164);
    if ((v15 & 0x7FFFFFFFu) <= v13)
    {
      LODWORD(v5) = 22;
LABEL_48:
      fsck_printf_err("error (%d) looking up spaceman IP bitmap block at index %u\n", v5, v12);
      fsck_fail_func(0x4FA, v5);
LABEL_49:
      free(v6);
      free(v11);
      if (v49)
      {
        return v49;
      }

      else
      {
        return v5;
      }
    }

    v16 = *(v14 + 168);
    if ((v15 & 0x80000000) == 0)
    {
      v48 = v16 + v13;
      goto LABEL_14;
    }

    v17 = nx_metadata_fragmented_block_address_lookup(a1, v16, v13, &v48, 0);
    if (v17)
    {
      LODWORD(v5) = v17;
      goto LABEL_48;
    }

LABEL_14:
    v18 = dev_read(*a1);
    if (v18)
    {
      LODWORD(v5) = v18;
      fsck_printf_err("error (%d) reading spaceman IP bitmap block at index %u, addr 0x%llx\n", v18, v12, v48);
      fsck_fail_func(0x4FB, v5);
      goto LABEL_49;
    }

    bzero(v11, *(a1[1] + 36));
    if (v12 == *(v2 + 160) - 1)
    {
      v19 = *(v2 + 152);
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v2 + 32));
    }

    else
    {
      v20 = (8 * *(v2 + 32));
      v19 = *(v2 + 152);
    }

    v46 = 0;
    v47 = 0;
    v43 = v48;
    v44 = 0;
    v45 = 0;
    if (v19 < 0)
    {
      break;
    }

    v21 = v12 * v40;
    v22 = a1[3];
    v23 = *(v22 + 152);
    if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) <= v21)
    {
      v37 = 22;
LABEL_54:
      fsck_printf_err("error (%d) looking up spaceman IP block address at index %u\n", v37, v21);
      fsck_fail_func(0x500, v37);
      return v37;
    }

    v24 = *(v22 + 176);
    if (v23 < 0)
    {
      v36 = nx_metadata_fragmented_block_address_lookup(a1, v24, v12 * v40, &v47, &v46);
      if (v36)
      {
        v37 = v36;
        goto LABEL_54;
      }

      v25 = v47;
    }

    else
    {
      v25 = v24 + v21;
      v47 = v25;
    }

    v44 = v25;
    v35 = repair_ip_bitmap_maybe(a1, v25, v20, v11, v6, &v43, &v49);
    if (v35)
    {
LABEL_40:
      LODWORD(v5) = v35;
      goto LABEL_49;
    }

LABEL_38:
    if (++v12 == v39)
    {
      LODWORD(v5) = 0;
      goto LABEL_49;
    }
  }

  if (!v20)
  {
    goto LABEL_38;
  }

  v26 = 0;
  v27 = 0;
  v28 = v12 * v40;
  while (2)
  {
    v29 = a1[3];
    v30 = *(v29 + 152);
    if ((v30 & 0x7FFFFFFFFFFFFFFFuLL) <= v27 + v28)
    {
      v5 = 22;
      goto LABEL_45;
    }

    v31 = *(v29 + 176);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v32 = v31 + v27 + v28;
      v47 = v32;
LABEL_29:
      if (v26 >= v20 - v27)
      {
        v34 = v20 - v27;
      }

      else
      {
        v34 = v26;
      }

      v45 = v27;
      v46 = v34;
      v44 = v32;
      v35 = repair_ip_bitmap_maybe(a1, v32, v34, v11, v6, &v43, &v49);
      if (v35)
      {
        goto LABEL_40;
      }

      bitmap_shift_down(v6, v42, v46);
      v26 = v46;
      v27 += v46;
      if (v27 >= v20)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v33 = nx_metadata_fragmented_block_address_lookup(a1, v31, v27 + v28, &v47, &v46);
  if (!v33)
  {
    v26 = v46;
    v32 = v47;
    goto LABEL_29;
  }

  v5 = v33;
LABEL_45:
  fsck_printf_err("error (%d) looking up spaceman IP block address at index %llu\n", v5, v27 + v28);
  v9 = 1276;
  v10 = v5;
LABEL_7:
  fsck_fail_func(v9, v10);
  return v5;
}

uint64_t verify_bitmap(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t), void *a4, int a5)
{
  v5 = a1[3];
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v6 = *(v5 + 36);
  if ((v6 & 0x3F) != 0)
  {
    sub_100093118();
  }

  v12 = *(v5 + 48);
  v71 = 0u;
  memset(v70, 0, sizeof(v70));
  if (byte_1000E9AE8 == 1)
  {
    verify_overallocation = 0;
  }

  if (!a3 && !a5)
  {
    return 0;
  }

  v14 = sub_1000921C8(a1);
  if (v14)
  {
    v13 = v14;
    v15 = strerror(v14);
    fsck_printf_err("error (%s) failed to populate free queue trees \n", v15);
    fsck_fail_func(0x4FE, v13);
    return v13;
  }

  v16 = malloc_type_malloc(*(a1[1] + 36), 0xA326E274uLL);
  v17 = malloc_type_malloc(*(a1[1] + 36), 0xCE3BE2C4uLL);
  v73 = v17;
  v68 = v16;
  if (!v16 || !v17)
  {
    fsck_printf_warn("Space Verification: failed to allocate memory for the bitmap block\n");
    v52 = 12;
    fsck_fail_func(0x1D9, 12);
    v22 = v16;
    goto LABEL_60;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v63 = a5;
  if (v12)
  {
    v64 = a2;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v69;
    if (a4)
    {
      v21 = a4;
    }

    v65 = v21;
    v66 = v12;
    v22 = v68;
    while (1)
    {
      if (!v18 || BYTE8(v71) == 1)
      {
        v23 = v20 / *(v5 + 36);
        cib_for_chunk = get_cib_for_chunk(a1, v23, &v73);
        if (cib_for_chunk)
        {
          v52 = cib_for_chunk;
          v57 = strerror(cib_for_chunk);
          fsck_printf_err("error (%s) failed to get cib for chunk index %llu \n", v57, v23);
          goto LABEL_60;
        }

        bitmap_for_range = fsck_disk_bitmap_iter_init(v70, a1, v73, &v74, &v72);
        v12 = v66;
        if (bitmap_for_range)
        {
          goto LABEL_48;
        }
      }

      if (v20 != v73[4 * v72 + 6])
      {
        sub_100093144();
      }

      bzero(v22, *(a1[1] + 36));
      if (v12 + v18 >= v6)
      {
        v26 = v6;
      }

      else
      {
        v26 = v12 + v18;
      }

      bitmap_for_range = get_bitmap_for_range(&bitmap_store, v20, (v26 + 63) & 0x1FFFFFFC0, v22);
      if (bitmap_for_range || (v69[0] = v74, v69[1] = v72, v69[2] = v73, (bitmap_for_range = repair_bitmap_maybe(a1, 0, v20, v22, v74, v26, a3, v65, &byte_100103C6A, &v75)) != 0))
      {
LABEL_48:
        v52 = bitmap_for_range;
        goto LABEL_60;
      }

      v27 = bitmap_count_bits(v74, 0, 0, v26);
      v28 = v27;
      if (v64)
      {
        *v64 += v26 - v27;
      }

      v29 = a1[1];
      v30 = *(v29 + 1248);
      if (v30)
      {
        v76[0] = 0;
        v31 = calc_overlap_range(v20, v26, *(v29 + 1240), v30, v76);
        v32 = v28;
        if (v31)
        {
          v32 = v28 - bitmap_count_bits(v74, 0, v18 + v76[0], v18 + v76[0] + v31);
        }

        v67 = v32;
      }

      else
      {
        v67 = v27;
      }

      v33 = v73;
      v34 = &v73[4 * v72];
      v36 = *(v34 + 15);
      v35 = v34 + 60;
      v37 = v36 & 0xFFFFF;
      v38 = v28 & 0xFFFFF;
      if (v38 != v37)
      {
        byte_100103C6A = 1;
        if (v63)
        {
          fsck_printf_err("cib: ci_free_count (%u) is not valid (%llu) (ci_addr 0x%llx)\n", v37, v38, v20);
          if (!fsckAskPrompt(fsck_apfs_ctx, "Fix ci_free_count (%u)? ", v39, v40, v41, v42, v43, v44, *v35 & 0xFFFFF))
          {
            v49 = 92;
            v50 = 676;
            v51 = 92;
            goto LABEL_40;
          }

          *v35 = v38 | (*v35 >> 20);
          v47 = *(a1[1] + 36);
          v76[0] = v33[1];
          v76[1] = v47;
          v76[2] = 0;
          v48 = write_obj(a1, 0, v33, v76, v45, v46);
          if (v48)
          {
            v49 = v48;
            v50 = 675;
            v51 = v49;
LABEL_40:
            fsck_fail_func(v50, v51);
            v75 = v49;
            goto LABEL_42;
          }

          fsck_fail_add_repair();
        }
      }

LABEL_42:
      v22 = v68;
      if (v74)
      {
        free(v74);
        v74 = 0;
      }

      bitmap_for_range = fsck_disk_bitmap_iter_next(v70, &v74, &v72);
      v12 = v66;
      if (bitmap_for_range)
      {
        goto LABEL_48;
      }

      v19 += v67;
      v20 += v6;
      v18 -= v6;
      if (v20 >= v66)
      {
        goto LABEL_50;
      }
    }
  }

  v19 = 0;
  v22 = v16;
LABEL_50:
  if (*(v5 + 72) == v19)
  {
    v52 = 0;
    v53 = v63;
  }

  else
  {
    byte_100103C6A = 1;
    v53 = v63;
    if (!v63)
    {
      v52 = 0;
      goto LABEL_60;
    }

    v54 = sub_1000924F4(a1, v19);
    v52 = v54;
    if (v54)
    {
      v75 = v54;
    }
  }

  v55 = *(v5 + 48) - v19;
  v56 = *(v5 + 240);
  if (v56 > v55)
  {
    byte_100103C6A = 1;
    if (v53)
    {
      fsck_printf_err("sm : free queue tree has sfq_count (%llu) greater than available block count (%llu)\n", v56, v55);
      fsck_fail_func(0x307, 92);
      v75 = 92;
    }
  }

LABEL_60:
  if (v75)
  {
    v58 = 1;
  }

  else
  {
    v58 = v52 == 0;
  }

  if (v58)
  {
    LODWORD(v13) = v75;
  }

  else
  {
    LODWORD(v13) = v52;
  }

  v59 = fsck_disk_bitmap_iter_finish(v70);
  v60 = v59;
  if (v59)
  {
    v61 = strerror(v59);
    fsck_printf_err("failed to finish pending reads from the bitmap iterator: %d (%s)", v60, v61);
    fsck_fail_func(0x5E4, v60);
  }

  if (v74)
  {
    free(v74);
    v74 = 0;
  }

  if (v22)
  {
    free(v22);
  }

  if (v73)
  {
    free(v73);
  }

  byte_100103C6B = 0;
  if (v13)
  {
    return v13;
  }

  else
  {
    return v60;
  }
}

uint64_t sub_1000921C8(uint64_t *a1)
{
  if (byte_100103C69 != 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 49;
  v4 = 208;
  for (i = &spaceman_free_tree; ; i += 64)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v20 = v2 == 0;
    spaceman_fq_tree = get_spaceman_fq_tree(a1, v2, &v22);
    if (spaceman_fq_tree)
    {
      return spaceman_fq_tree;
    }

    if (*(v22 + 56))
    {
      v7 = path_iterator_init(v21, v22, 0, 0, 0);
      if (v7 || (v7 = fsck_iterate(v21, sub_100092C88, &v20, 0), v7))
      {
        v13 = v7;
        v14 = strerror(v7);
        fsck_printf_err("failed to iterate the spaceman free queue tree: %s\n", v14);
        fsck_fail_func(0x314, v13);
        return v13;
      }

      if ((v20 & 2) != 0)
      {
        break;
      }
    }

LABEL_17:
    ++v2;
    v4 += 40;
    if (v2 == 3)
    {
      v13 = 0;
      byte_100103C69 = 0;
      return v13;
    }
  }

  v8 = v22;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  if (*(a1[3] + v4) != *(v22 + 56))
  {
    sub_100093170();
  }

  if (!tree_init_ext(v27, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_10008F764))
  {
    tree_create(v27, 0, 64);
  }

  v9 = path_iterator_init(v26, v8, 0, 0, 0);
  if (v9 || (v9 = fsck_iterate(v26, sub_100092ED0, v27, 0), v9))
  {
    v13 = v9;
    v15 = strerror(v9);
    fsck_printf_err("error copying on-disk free queue tree into reordered tree in memory: %s\n", v15);
    v16 = 923;
    goto LABEL_28;
  }

  v23[0] = v3;
  v23[1] = v2;
  v10 = path_iterator_init(v25, v27, 0, 0, 0);
  if (v10)
  {
    v13 = v10;
LABEL_26:
    v17 = strerror(v13);
    fsck_printf_err("unable to init iterators for free queue tree repair: %s\n", v17);
    v16 = 924;
    goto LABEL_28;
  }

  v11 = path_iterator_init(v24, i, 0, 0, 0);
  if (v11)
  {
    v13 = v11;
    if (v25[0])
    {
      v25[0](v25);
    }

    goto LABEL_26;
  }

  v12 = fsck_iterate_compare(v25, v24, sub_100092F3C, v23);
  if (!v12)
  {
    tree_destroy(v27, 0);
    goto LABEL_17;
  }

  v13 = v12;
  v18 = strerror(v12);
  fsck_printf_err("error iterating trees during free queue tree repair: %s\n", v18);
  v16 = 925;
LABEL_28:
  fsck_fail_func(v16, v13);
  tree_destroy(v27, 0);
  return v13;
}

uint64_t sub_1000924F4(uint64_t a1, uint64_t a2)
{
  fsck_printf_err("sm: sm_free_count (%llu) is not valid (%llu) (sm_dev %d)\n", *(*(a1 + 24) + 72), a2, 0);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix sm_free_count (%llu)? ", v4, v5, v6, v7, v8, v9, *(*(a1 + 24) + 72)))
  {
    v11 = *(a1 + 24);
    *(v11 + 72) = a2;
    v16 = *(a1 + 88);
    v17 = *(a1 + 104);
    v12 = write_obj(a1, 0, v11, &v16, v16, v10);
    if (!v12)
    {
      fsck_fail_add_repair();
      return v12;
    }

    v13 = 677;
    v14 = v12;
  }

  else
  {
    v12 = 92;
    v13 = 678;
    v14 = 92;
  }

  fsck_fail_func(v13, v14);
  return v12;
}

uint64_t fsck_verify_space(uint64_t *a1)
{
  v12 = 0;
  v2 = sub_1000921C8(a1);
  if (v2)
  {
    v3 = v2;
    v4 = strerror(v2);
    fsck_printf_err("error (%s) failed to populate free queue trees \n", v4);
    fsck_fail_func(0x4FF, v3);
  }

  else
  {
    LODWORD(v3) = verify_ip_bitmap(a1);
    if ((byte_100103C6B & 1) != 0 || (byte_100103C6A & 1) != 0 || (v5 = state, *(state + 44) == 1))
    {
      v6 = verify_bitmap(a1, &v12, sub_100092770, 0, 1);
      v5 = state;
    }

    else
    {
      v6 = 0;
    }

    if (*(v5 + 43) == 1)
    {
      v7 = v12;
      fsck_printf("\nSpace allocation summary:\n\n");
      fsck_printf("%-20s%-15s\n", "category", "block count");
      fsck_printf("%-20s%-15s\n", "--------", "-----------");
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(&xmmword_1001042B0 + v8 * 8);
        if (v10)
        {
          v9 += v10;
          fsck_printf("%-20s%-15llu\n", off_1000E53A0[v8], v10);
        }

        ++v8;
      }

      while (v8 != 10);
      fsck_printf("\nTotal blocks marked by fsck: %llu\n", v9);
      fsck_printf("Total blocks allocated by spaceman: %llu\n\n", v7);
    }

    if (v3)
    {
      return v3;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t sub_100092770(uint64_t *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
  if (a4 == 1)
  {
    v12 = "underallocation";
  }

  else
  {
    v12 = "overallocation";
  }

  if (a4 == 1)
  {
    fsck_printf_err("underallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", "Main", a2, a3, v11);
    fsck_fail_func(0x1DA, 92);
  }

  else
  {
    fsck_printf_warn("overallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", "Main", a2, a3, v11);
    fsck_fail_func(0x1DB, 92);
    if ((*(state + 45) & 1) == 0)
    {
      if (a2 != 1)
      {
        return 92;
      }

      v19 = a1[1];
      if (*(v19 + 36) != 4096 || !(*(v19 + 40) >> 29))
      {
        return 92;
      }
    }
  }

  if (!fsckAskPrompt(fsck_apfs_ctx, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v13, v14, v15, v16, v17, v18, v12, a2, a3, v11))
  {
    return 92;
  }

  v5 = modify_spaceman_bitmap(a1, 0, a2, a3, v11, *a5, *(a5 + 16), a4, 0, 0);
  if (v5)
  {
    fsck_printf_err("Failed to fix %s\n", v12);
    fsck_fail_func(0x316, v5);
  }

  else
  {
    fsck_fail_add_repair();
  }

  return v5;
}

uint64_t iterate_free_blocks_in_range(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t), uint64_t a5)
{
  if (bitmap_store_inited(&bitmap_store))
  {
    v9 = a3 + a2;
    v14 = 0;
    v15 = 0;
    while (v9 > a2 && range_ffc(&bitmap_store, a2, v9 - a2, &v15))
    {
      if (range_ffs(&bitmap_store, v15, v9 - v15, &v14))
      {
        v10 = v14;
      }

      else
      {
        v14 = v9;
        v10 = v9;
      }

      v11 = a4(v15, v10 - v15, a5);
      a2 = v14;
      if (v11)
      {
        return v11;
      }
    }

    return 0;
  }

  else
  {
    fsck_printf_err("unexpected: space verification data structure not initialized");
    v12 = 22;
    fsck_fail_func(0x434, 22);
  }

  return v12;
}

uint64_t sub_100092A1C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a2 != 8 || a4 != 16)
  {
    sub_10009319C();
  }

  *(a5 + 8) = 0;
  *(a5 + 21) = 1;
  v10 = 0;
  if (*(a5 + 12) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *a5 + 24 * v7;
      if ((*(v8 + 16) & 1) == 0)
      {
        result = split_range_maybe(*v8, *(v8 + 8), *a3, *(a3 + 8), &v10, sub_100092B84, a5);
        if (result)
        {
          return result;
        }

        v7 = *(a5 + 8);
        if ((v10 & 1) == 0)
        {
          *(a5 + 8) = ++v7;
        }
      }
    }

    while (v7 < *(a5 + 12));
  }

  return 0;
}

uint64_t sub_100092AE4(unsigned int a1, void *a2, void *a3, uint64_t a4)
{
  v11 = 16;
  v10 = 8;
  v5 = tree_lookup(&spaceman_free_tree + 64 * a1, 0, a4, a2, &v11, 16, a3, &v10);
  v6 = v5;
  if ((v5 & 0xFFFFFFFD) != 0)
  {
    v7 = a2[1];
    v8 = strerror(v5);
    fsck_printf_err("Space Verification: failed to lookup paddr (%llu) : error %s\n", v7, v8);
    fsck_fail_func(0x364, v6);
  }

  return v6;
}

uint64_t sub_100092B84(uint64_t a1, uint64_t a2, int a3, char **a4)
{
  v7 = *(a4 + 2);
  v8 = v7;
  if (a3)
  {
    v9 = *a4;
    *(a4 + 20) = (*a4)[24 * v7 + 16];
    v10 = 21;
LABEL_7:
    result = 0;
    v14 = v9 + 24 * v8;
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = *(a4 + v10);
    *(a4 + 2) = v7 + 1;
    return result;
  }

  v11 = *(a4 + 3);
  v12 = *a4;
  if (v11 != *(a4 + 4))
  {
LABEL_6:
    memmove(&v12[24 * v7 + 24], &v12[24 * v7], 24 * (v11 - v7));
    v7 = *(a4 + 2);
    ++*(a4 + 3);
    v9 = *a4;
    v10 = 20;
    goto LABEL_7;
  }

  *(a4 + 4) = 2 * v11;
  v12 = malloc_type_realloc(v12, 48 * v11, 0x100004057661CB1uLL);
  if (v12)
  {
    *a4 = v12;
    v11 = *(a4 + 3);
    goto LABEL_6;
  }

  free(*a4);
  *a4 = 0;
  return 12;
}

uint64_t sub_100092C88(__int128 *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 22;
  if (a2 == 16 && (a4 & 0xFFFFFFF7) == 0)
  {
    v7 = *a5 & 1;
    v29 = *a1;
    v8 = 1;
    if (a3 && a4)
    {
      v8 = *a3;
    }

    v28 = v8;
    v9 = v29;
    v27 = *a1;
    v26 = 0;
    v10 = v7 ^ 1;
    v11 = sub_100092AE4(v7 ^ 1, &v27, &v26, 4294967294);
    if (v11 == 2 && (v11 = sub_100092AE4(v10, &v27, &v26, 1), v12 = v10, v11 == 2))
    {
LABEL_27:
      v22 = tree_insert(&spaceman_free_tree + 64 * v12, 0, &v29, 16, &v28, 8);
      v5 = v22;
      if (v22)
      {
        v23 = *(&v29 + 1);
        v24 = strerror(v22);
        fsck_printf_err("Space Verification: failed to insert paddr (%llu) error : %s\n", v23, v24);
        fsck_fail_func(0x365, v5);
      }
    }

    else
    {
      v5 = v11;
      if (!v11)
      {
        v13 = v9;
        v14 = v8;
        v15 = *(&v9 + 1);
        do
        {
          if (*(&v27 + 1) >= (v14 + v15))
          {
            v12 = v10;
            goto LABEL_27;
          }

          if (v26 + *(&v27 + 1) > v15)
          {
            fsck_printf_warn("found spaceman free queue tree entry (0x%llx+%llu, xid %llu) which overlaps with existing range (0x%llx+%llu)\n", *(&v9 + 1), v8, v9, *(&v27 + 1), v26);
            fsck_fail_func(0x1CE, -7);
            *a5 |= 2u;
            if (v15 >= *(&v27 + 1))
            {
              v16 = *(&v27 + 1);
            }

            else
            {
              v16 = v15;
            }

            if (v15 - v16 + v14 <= (*(&v27 + 1) - v16 + v26))
            {
              v14 = *(&v27 + 1) - v16 + v26;
            }

            else
            {
              v14 += v15 - v16;
            }

            if (v13 <= v27)
            {
              v13 = v27;
            }

            v17 = tree_remove(&spaceman_free_tree + 64 * v10, 0, &v27, 16);
            if (v17)
            {
              v18 = v17;
              v19 = *(&v27 + 1);
              v20 = strerror(v17);
              fsck_printf_err("Space Verification: failed to remove paddr (%llu) error : %s\n", v19, v20);
              fsck_fail_func(0x366, v18);
            }

            *&v29 = v13;
            *(&v29 + 1) = v16;
            v15 = v16;
            v28 = v14;
          }

          v21 = sub_100092AE4(v10, &v27, &v26, 2);
        }

        while (!v21);
        v5 = v21;
        v12 = v10;
        if (v21 == 2)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_100092ED0(const void *a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5)
{
  if ((a4 & 0xFFFFFFF7) != 0)
  {
    return 22;
  }

  v8 = 1;
  if (a3)
  {
    if (a4)
    {
      v8 = *a3;
    }
  }

  v9[1] = v5;
  v9[2] = v6;
  v9[0] = v8;
  return tree_insert(a5, 0, a1, a2, v9, 8);
}

uint64_t sub_100092F3C(uint64_t *a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a1 + 4);
  if (v9 == 16)
  {
    if (*(a1 + 5) != 8)
    {
      goto LABEL_16;
    }
  }

  else if (v9 || *(a1 + 5))
  {
    goto LABEL_16;
  }

  v10 = *(a2 + 4);
  if (v10 != 16)
  {
    if (!v10 && !*(a2 + 5))
    {
      goto LABEL_9;
    }

LABEL_16:
    sub_1000931C8();
  }

  if (*(a2 + 5) != 8)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (!v5)
  {
    fsck_printf_err("unexpected end of iteration while repairing free queue tree\n");
    return 22;
  }

  if (!v8)
  {
LABEL_21:
    v15 = 1;
    result = fsck_repairs_add(*a4, *(a4 + 8), 0, 0, 1, v5, 0x10u, v6, 8u);
    goto LABEL_25;
  }

  v11 = *(v8 + 8);
  v12 = *(v5 + 8);
  if (v11 != v12)
  {
    v14 = *v6;
LABEL_19:
    if (v11 > v12 && v11 - v12 >= v14)
    {
      goto LABEL_21;
    }

    fsck_printf_err("unexpected on-disk range 0x%llx+%llu xid %llu and in-memory range 0x%llx+%llu xid %llu while repairing free queue tree\n");
    return 22;
  }

  if (*v8 == *v5 && *v7 == *v6)
  {
    return 0;
  }

  if (*v8 <= *v5)
  {
    v14 = *v6;
    if (*v7 <= *v6)
    {
      goto LABEL_19;
    }
  }

  v15 = 2;
  result = fsck_repairs_add(*a4, *(a4 + 8), 2, 0, 1, v8, 0x10u, v7, 8u);
LABEL_25:
  if (!result)
  {
    *a3 = v15;
  }

  return result;
}

uint64_t get_cib_for_chunk(uint64_t *a1, unint64_t a2, void **a3)
{
  v6 = a1[3];
  v7 = v6[20];
  v8 = *a3;
  if (!*a3)
  {
    v8 = malloc_type_malloc(v6[8], 0xFF691DB1uLL);
    if (!v8)
    {
      v17 = 526;
      fsck_printf_err("Failed to allocate memory\n");
      goto LABEL_10;
    }
  }

  v9 = v6 + v7;
  v10 = a2 / v6[10];
  if (!v6[17])
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = malloc_type_malloc(v6[8], 0x74CB18D2uLL);
  if (!v11)
  {
    v17 = 527;
    fsck_printf_err("Failed to allocate memory for cab\n");
LABEL_10:
    v16 = 12;
    fsck_fail_func(v17, 12);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = v10 / v6[11];
  v14 = *&v9[8 * v13];
  v15 = dev_read(*a1);
  if (v15)
  {
    v16 = v15;
    fsck_printf_err("error (%d) getting cab %u @ %lld\n", v15, v13, v14);
    fsck_fail_func(0x1D6, v16);
LABEL_15:
    free(v12);
    goto LABEL_16;
  }

  v9 = v12 + 40;
  LODWORD(v10) = v10 - v6[11] * v13;
LABEL_12:
  v18 = *&v9[8 * v10];
  v19 = dev_read(*a1);
  v16 = v19;
  if (v19)
  {
    fsck_printf_err("error (%d) getting cib %u @ %lld\n", v19, v10, v18);
    fsck_fail_func(0x1D7, v16);
  }

  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (!v16)
  {
LABEL_19:
    *a3 = v8;
    return v16;
  }

LABEL_17:
  if (v8 == *a3)
  {
    goto LABEL_19;
  }

  free(v8);
  return v16;
}

uint64_t get_disk_bitmap(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, _DWORD *a6, int a7)
{
  v56 = 0;
  v12 = a1[3];
  v13 = a2 / *(v12 + 36);
  if (a5)
  {
    v56 = *a5;
  }

  cib_for_chunk = get_cib_for_chunk(a1, v13, &v56);
  if (cib_for_chunk)
  {
    v15 = cib_for_chunk;
    v56 = 0;
    v16 = strerror(cib_for_chunk);
    fsck_printf_err("failed to get cib for chunk index %llu: %s\n", v13, v16);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  v17 = v56;
  v21 = v56 + 40;
  v53 = v13 % *(v12 + 40);
  v22 = &v56[32 * v53 + 40];
  v24 = *(v22 + 3);
  v23 = v22 + 24;
  v18 = v24;
  if (v24)
  {
    v25 = dev_read(*a1);
    v15 = v25;
    if (v25)
    {
      v26 = v13 / *(v12 + 40);
      v19 = v53;
      fsck_printf_err("error (%d) getting cib %d bitmap %d @ %lld\n", v25, v26, v53, v18);
      fsck_fail_func(0x1D8, v15);
      goto LABEL_5;
    }

LABEL_39:
    v20 = a4;
    v19 = v53;
LABEL_40:
    if (!a6)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v52 = v23;
  bitmap_clear_range(a3, 0, *(v12 + 36));
  if (!a7)
  {
    v18 = 0;
    v15 = 2;
    goto LABEL_39;
  }

  v59 = 0;
  v27 = a1[3];
  v28 = v27[8];
  v57 = 0;
  v58 = 0;
  v29 = malloc_type_malloc(v28, 0xCF3215BFuLL);
  if (!v29)
  {
    fsck_printf_err("Failed to allocate memory\n");
    fsck_fail_func(0x20C, 12);
    goto LABEL_52;
  }

  v30 = v29;
  v50 = v21;
  if (!v27[40])
  {
LABEL_50:
    free(v30);
LABEL_52:
    v18 = 0;
    v15 = 28;
LABEL_53:
    fsck_fail_func(0x210, v15);
    v19 = v53;
LABEL_5:
    v20 = a4;
    if ((v15 & 0xFFFFFFFD) != 0)
    {
      if (a6)
      {
        *a6 = 0;
      }

      if (a4)
      {
        v18 = 0;
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v31 = 0;
  v32 = 0;
  v33 = (8 * v28);
  v54 = v27 + v27[82];
  v51 = v29;
  while (1)
  {
    v34 = *&v54[2 * v32];
    v35 = a1[3];
    v36 = *(v35 + 164);
    if ((v36 & 0x7FFFFFFFu) <= v34)
    {
LABEL_22:
      fsck_printf_err("error (%d) looking up spaceman IP bitmap block %u\n");
      goto LABEL_23;
    }

    v37 = *(v35 + 168);
    if (v36 < 0)
    {
      if (nx_metadata_fragmented_block_address_lookup(a1, v37, v34, &v59, 0))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v59 = v37 + v34;
    }

    if (!dev_read(*a1))
    {
      break;
    }

    fsck_printf_err("error (%d) getting spaceman IP bitmap block %u @ %lld\n");
LABEL_23:
    ++v32;
    v31 += v33;
    if (v32 >= v27[40])
    {
      goto LABEL_50;
    }
  }

  if (!bitmap_range_find_first(0, v30, 0, v33, &v58))
  {
    goto LABEL_23;
  }

  v38 = v58;
  v39 = v58 + v31;
  v40 = a1[3];
  v41 = *(v40 + 152);
  if ((v41 & 0x7FFFFFFFFFFFFFFFuLL) <= v39)
  {
    LODWORD(v43) = 22;
LABEL_34:
    v49 = v39;
    v45 = v43;
    fsck_printf_err("error (%d) looking up spaceman IP block %llu\n", v43, v49);
    v46 = 543;
    goto LABEL_35;
  }

  v42 = *(v40 + 176);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v43 = v42 + v39;
    v57 = v43;
    goto LABEL_31;
  }

  v43 = nx_metadata_fragmented_block_address_lookup(a1, v42, v58 + v31, &v57, 0);
  if (v43)
  {
    goto LABEL_34;
  }

  v38 = v58;
LABEL_31:
  bitmap_set_range(v51, v38, 1, v43);
  v44 = dev_write(*a1);
  if (v44)
  {
    v45 = v44;
    fsck_printf_err("error (%d) writing spaceman IP bitmap %d @ %lld\n", v44, v32, v59);
    v46 = 525;
LABEL_35:
    fsck_fail_func(v46, v45);
    v30 = v51;
    goto LABEL_23;
  }

  v18 = v57;
  free(v51);
  if (!v18)
  {
    v15 = 92;
    goto LABEL_53;
  }

  v15 = 0;
  *v52 = v18;
  v48 = *(v12 + 16);
  v19 = v53;
  *&v50[32 * v53] = v48;
  v20 = a4;
  if (a6)
  {
LABEL_41:
    *a6 = v19;
  }

LABEL_42:
  if (v20)
  {
LABEL_43:
    *v20 = v18;
  }

LABEL_44:
  if (a5 && (!v15 || v17 == *a5))
  {
    *a5 = v17;
  }

  else
  {
    free(v17);
  }

  return v15;
}

uint64_t fsck_disk_bitmap_iter_next(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(v5 + 36);
  if (v4 >= v6)
  {
    v12 = 0;
    *(a1 + 376) = 1;
  }

  else
  {
    v9 = v4 + 1;
    if (v9 < v6 && (v10 = v5 + 32 * v9, (v11 = *(v10 + 64)) != 0))
    {
      v12 = copy_obj_async(*a1, 0, 0x40000000, v11, *(v10 + 40), 0x20000000, 8, 0, a1 + 176 * (v9 & 1) + 24);
      if (v12)
      {
        fsck_fail_func(0x47A, v12);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a1;
    v14 = *(a1 + 8) + 40;
    v15 = *(a1 + 16);
    v16 = *(v14 + 32 * v15 + 24);
    *a3 = v15;
    if (v16)
    {
      v17 = copy_obj_finish(v13, 0, 0x40000000, v16, *(v14 + 32 * v15), 0x20000000, 8, 0, a1 + 176 * (v15 & 1) + 24, a2, 0, 0);
      if (v17)
      {
        v18 = v17;
        fsck_fail_func(0x47B, v17);
        if (v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = v18;
        }
      }
    }

    else
    {
      v19 = malloc_type_calloc(1uLL, *(v13[1] + 36), 0x5F4AE810uLL);
      *a2 = v19;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12 == 0;
      }

      if (v20)
      {
        v12 = 12;
      }

      else
      {
        v12 = v12;
      }
    }

    ++*(a1 + 16);
  }

  return v12;
}

uint64_t fsck_disk_bitmap_iter_init(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 22;
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 376) = 0;
  v8 = *(a3 + 64);
  if (v8)
  {
    v9 = copy_obj_async(a2, 0, 0x40000000, v8, *(a3 + 40), 0x20000000, 8, 0, a1 + 24);
    if (v9)
    {
      v10 = v9;
      fsck_fail_func(0x47C, v9);
      return v10;
    }
  }

  return fsck_disk_bitmap_iter_next(a1, a4, a5);
}

uint64_t fsck_disk_bitmap_iter_finish(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  if (v1 < *(v2 + 36))
  {
    v3 = *(v2 + 32 * v1 + 64);
    if (v3)
    {
      copy_obj_abort(*a1, 0, v3, a1 + 176 * (v1 & 1) + 24);
    }
  }

  return 0;
}

uint64_t iterate_reaper(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[2];
  v24 = 0;
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  LODWORD(v21) = 0;
  DWORD1(v21) = v7;
  *(&v21 + 1) = *(v6 + 72);
  v22 = *(v6 + 80);
  v23 = v8;
  v9 = sub_100093C08(a1, a2, &v21, a3);
  if (v9)
  {
    return v9;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  while (2)
  {
    if (v12)
    {
      free(v12);
      v24 = 0;
    }

    memset(v20, 0, sizeof(v20));
    v13 = copy_obj(a1, 0, 0x80000000, v11, 0, 0, 18, 0, &v24, v20, 0);
    if (!v13)
    {
      v12 = v24;
      for (i = *(v24 + 52); i != -1; i = *(v24 + 40 * i + 64))
      {
        v15 = &v12[5 * i];
        v16 = *(v15 + 19);
        v17 = v15[12];
        LODWORD(v21) = 0;
        *(&v21 + 4) = *(v15 + 68);
        HIDWORD(v21) = v16;
        v22 = *(v15 + 5);
        v23 = v17;
        v18 = sub_100093C08(a1, a2, &v21, v3);
        if (v18)
        {
          v9 = v18;
          goto LABEL_15;
        }

        v12 = v24;
      }

      v11 = v12[4];
      if (v11)
      {
        continue;
      }

      v9 = 0;
      goto LABEL_16;
    }

    break;
  }

  v9 = v13;
  v19 = strerror(v13);
  fsck_printf_err("Could not read nx_reaper_list object (oid (0x%llx)): %s\n", v11, v19);
LABEL_15:
  v12 = v24;
  if (v24)
  {
LABEL_16:
    free(v12);
  }

  return v9;
}

uint64_t sub_100093C08(uint64_t *a1, uint64_t a2, __int128 *a3, int a4)
{
  v32 = 0;
  v9 = *(a3 + 1);
  v8 = *(a3 + 2);
  if ((v9 & 0x10) == 0 || v8 != 11)
  {
    goto LABEL_12;
  }

  v10 = *(a3 + 2);
  if (!omap_info[0])
  {
    v15 = 0;
LABEL_11:
    ++omap_info[0];
    *&omap_info[8 * v15 + 8] = v10;
    goto LABEL_12;
  }

  if (qword_1000E9D18 != v10)
  {
    v11 = &qword_1000E9D20;
    v12 = 1;
    do
    {
      v13 = v12;
      if (omap_info[0] == v12)
      {
        break;
      }

      v14 = *v11++;
      ++v12;
    }

    while (v14 != v10);
    v15 = omap_info[0];
    if (v13 >= omap_info[0])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v30 = 0uLL;
  v31 = 0;
  v16 = *(a3 + 3);
  if ((v9 & 0x1A) != 0 || v16 == 0)
  {
    goto LABEL_17;
  }

  v20 = v8 & 0xC0000000;
  if (a4 == 1)
  {
    if (v20)
    {
      goto LABEL_17;
    }

    v22 = a2 ? *(*(a2 + 40) + 8) : 0;
    if (v22 != *(a3 + 2))
    {
      goto LABEL_17;
    }

    v21 = (v8 & 0xFFFE) == 2;
  }

  else
  {
    v21 = 1;
    if (!a4 && !v20 && v8 != 13)
    {
      goto LABEL_17;
    }
  }

  v23 = copy_obj(a1, a2, v8 & 0xC0000000, v16, 0, v8 & 0x3FFF0000, v8, 0, &v32, &v30, 0);
  if (v23)
  {
    v18 = v23;
    fsck_printf_err("failed to read object (oid (0x%llx)) being reaped from disk \n", *(a3 + 3));
    fsck_fail_func(0x22A, v18);
    goto LABEL_18;
  }

  if (v21)
  {
    v24 = *(v32 + 12);
    if (v24 > 0xC)
    {
      if (v24 == 13)
      {
        v29 = a3[1];
        v35 = *a3;
        v36 = v29;
        v37 = *(a3 + 4);
        v26 = sub_100094A94(a1, &v35, v32);
LABEL_44:
        v18 = v26;
        if (v26)
        {
          goto LABEL_18;
        }

        goto LABEL_45;
      }

      if (v24 == 25)
      {
        v27 = a3[1];
        v35 = *a3;
        v36 = v27;
        v37 = *(a3 + 4);
        v26 = sub_100094D64(a1, &v35, v32);
        goto LABEL_44;
      }
    }

    else
    {
      if (v24 - 2 < 2)
      {
        v25 = a3[1];
        v35 = *a3;
        v36 = v25;
        v37 = *(a3 + 4);
        v33 = v30;
        v34 = v31;
        v26 = sub_1000945D8(a1, a2, &v35, v32, &v33, a4);
        goto LABEL_44;
      }

      if (v24 == 11)
      {
        v28 = a3[1];
        v35 = *a3;
        v36 = v28;
        v37 = *(a3 + 4);
        v26 = sub_100094888(a1, &v35, v32);
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if (v20 == 0x40000000)
  {
    mark_object_allocated(a1, v30, (DWORD2(v30) / *(a1[1] + 36)), *(a3 + 2), 0x40000000, *(a3 + 3), 0, *(v32 + 12), *(v32 + 7), 5u);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 0;
  if (a4 == 1 && !v20)
  {
    omap_sv_mark_reaper_entry(*(a3 + 3), *(a3 + 2));
    goto LABEL_17;
  }

LABEL_18:
  if (v32)
  {
    free(v32);
  }

  return v18;
}

uint64_t fsck_reaper(uint64_t *a1)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v1 = a1[2];
  v40 = 0;
  v2 = *(v1 + 32);
  if (*(v1 + 40) >= v2)
  {
    fsck_printf_err("reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", *(v1 + 40), v2);
    v3 = 92;
    v4 = 96;
    goto LABEL_5;
  }

  if ((*(v1 + 64) & 1) == 0)
  {
    fsck_printf_err("reaper needs more cowbell, flags 0x%x\n", *(v1 + 64));
    v3 = 92;
    v4 = 97;
    goto LABEL_5;
  }

  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  if ((v7 == 0) == (v6 != 0))
  {
    fsck_printf_err("reaper head (0x%llx) and tail (0x%llx) should be both valid or both invalid\n", *(v1 + 48), v6);
    v3 = 92;
    v4 = 98;
    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_62:
    v3 = iterate_reaper(a1, 0, 0);
    goto LABEL_6;
  }

  v9 = 0;
  v10 = *(v1 + 68);
  while (1)
  {
    if (v9)
    {
      free(v9);
    }

    v11 = copy_obj(a1, 0, 0x80000000, v7, 0, 0, 18, 0, &v40, &v41, 0);
    if (v11)
    {
      v3 = v11;
      fsck_printf_err("verification/reading of the nx_reaper object failed\n");
      goto LABEL_6;
    }

    v12 = v40[11];
    v13 = (v42 - 64) / 0x28;
    if (v13 != v12)
    {
      fsck_printf_err("reap list object 0x%llx max record count %u different than expected %lu\n", v7, v40[11], v13);
      v3 = 92;
      v4 = 642;
      goto LABEL_5;
    }

    if (v40[12] > v12)
    {
      fsck_printf_err("reap list object 0x%llx record count %u larger than max %u\n", v7, v40[12], v12);
      v3 = 92;
      v4 = 99;
      goto LABEL_5;
    }

    v14 = v40[13];
    if (v14 != -1 && v14 > v12)
    {
      fsck_printf_err("reap list object 0x%llx first index %u larger than max %u\n", v7, v40[13], v12);
      v3 = 92;
      v4 = 100;
      goto LABEL_5;
    }

    v16 = v40[14];
    if (v16 != -1 && v16 > v12)
    {
      fsck_printf_err("reap list object 0x%llx last index %u larger than max %u\n", v7, v40[13], v12);
      v3 = 92;
      v4 = 101;
      goto LABEL_5;
    }

    v18 = v40[15];
    if (v18 != -1 && v18 > v12)
    {
      fsck_printf_err("reap list object 0x%llx free index %u larger than max %u\n", v7, v40[15], v12);
      v3 = 92;
      v4 = 102;
      goto LABEL_5;
    }

    v20 = *(v40 + 4);
    v21 = *(v1 + 56);
    if (v20)
    {
      if (v21 == v7)
      {
        fsck_printf_err("reap list tail 0x%llx is not last reap list object, next 0x%llx\n", v7, v20);
        v3 = 92;
        v4 = 104;
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (v21 != v7)
    {
      break;
    }

LABEL_33:
    if (*(v1 + 68))
    {
      --v10;
      if (v20 && !v10)
      {
        fsck_printf_err("reap list expected %u objects, but haven't seen last reap list object yet\n", *(v1 + 68));
        v3 = 92;
        v4 = 105;
        goto LABEL_5;
      }

      if (!v20 && v10)
      {
        fsck_printf_err("reap list expected %u objects, but got last reap list object with %u more objects left\n", *(v1 + 68), v10);
        v3 = 92;
        v4 = 106;
        goto LABEL_5;
      }
    }

    v39 = &v39;
    v22 = 2 * v12;
    __chkstk_darwin(v11);
    v23 = &v39 - ((v22 + 15) & 0x3FFFFFFF0);
    bzero(v23, v22);
    bzero(v23, v22);
    v24 = v40;
    v25 = v40[13];
    if (v25 != -1)
    {
      v26 = 0;
      while (1)
      {
        v27 = v24[11];
        if (v25 >= v27)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v25, v7, v27);
          v37 = 556;
          goto LABEL_72;
        }

        if (*&v23[2 * v25] == 1)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v25, v7);
          v37 = 643;
          goto LABEL_72;
        }

        *&v23[2 * v25] = 1;
        v28 = v24[10 * v25 + 17];
        if (v28 >= 0x20)
        {
          fsck_printf_warn("reaper list entry (index (%u) list oid (0x%llx)) : invalid flags (0x%x) set\n", v25, v7, v28);
          fsck_fail_func(0x22D, -3);
          v24 = v40;
        }

        v29 = &v24[10 * v25];
        v30 = v29[17];
        if ((v30 & 1) == 0)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : is not valid as per flags(0x%x)\n", v25, v7, v30);
          v37 = 572;
          goto LABEL_72;
        }

        v31 = *(v29 + 10);
        if ((v31 - 1) <= 0x3FE)
        {
          break;
        }

        ++v26;
        v25 = v29[16];
        if (v25 == -1)
        {
          goto LABEL_49;
        }
      }

      fsck_printf_warn("reaper list entry (index (%u) list oid (0x%llx)) : invalid nrle_fs_oid (0x%llx)\n", v25, v7, v31);
      v37 = 558;
      v38 = -2;
      goto LABEL_73;
    }

    v26 = 0;
LABEL_49:
    if (v26 != v24[12])
    {
      fsck_printf_err("reap list object (oid 0x%llx) expected %u entries, found %u\n", v7, v24[12], v26);
      v37 = 644;
      goto LABEL_72;
    }

    v32 = v24[15];
    v33 = v24[11];
    if (v32 != -1)
    {
      v34 = v24 + 16;
      while (1)
      {
        if (v32 >= v33)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v32, v7, v33);
          v37 = 645;
          goto LABEL_72;
        }

        v35 = *&v23[2 * v32];
        if (v35 == 2)
        {
          break;
        }

        if (v35 == 1)
        {
          fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : entry is both occupied and free!\n", v32, v7);
          v37 = 646;
          goto LABEL_72;
        }

        *&v23[2 * v32] = 2;
        v32 = v34[10 * v32];
        if (v32 == -1)
        {
          goto LABEL_58;
        }
      }

      fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v32, v7);
      v37 = 647;
LABEL_72:
      v38 = 92;
LABEL_73:
      fsck_fail_func(v37, v38);
      v3 = 92;
      goto LABEL_6;
    }

    if (v33)
    {
LABEL_58:
      v36 = 0;
      while (*&v23[2 * v36])
      {
        if (v33 == ++v36)
        {
          goto LABEL_61;
        }
      }

      fsck_printf_err("reaper list entry (index (%u) list oid (0x%llx)) : entry is not referenced\n", v36, v7);
      v37 = 648;
      goto LABEL_72;
    }

LABEL_61:
    v9 = v40;
    v7 = *(v40 + 4);
    if (!v7)
    {
      goto LABEL_62;
    }
  }

  fsck_printf_err("last reap list object 0x%llx doesn't match tail 0x%llx\n", v7, v21);
  v3 = 92;
  v4 = 103;
LABEL_5:
  fsck_fail_func(v4, 92);
LABEL_6:
  if (v40)
  {
    free(v40);
  }

  return v3;
}

BOOL omap_in_reaper(uint64_t a1)
{
  if (!omap_info[0])
  {
    return 0;
  }

  if (qword_1000E9D18 == a1)
  {
    return 1;
  }

  v2 = &qword_1000E9D20;
  v3 = 1;
  do
  {
    v4 = v3;
    if (omap_info[0] == v3)
    {
      break;
    }

    v5 = *v2++;
    ++v3;
  }

  while (v5 != a1);
  return v4 < omap_info[0];
}

uint64_t sub_1000945D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0;
  v41 = 0;
  v6 = *(a4 + 32);
  if ((v6 & 2) != 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  if ((v6 & 8) == 0)
  {
    v36 = *(*(a1 + 8) + 36);
    v13 = *(a3 + 8);
    if (v6)
    {
      v19 = a4 + *(a5 + 8);
      v20 = *(v19 - 24);
      v42 = *(v19 - 40);
      v43 = v20;
      *&v44 = *(v19 - 8);
    }

    else
    {
      v14 = *(a4 + 28);
      if (v14 > 0x24 || ((0x87BF631FFuLL >> v14) & 1) != 0)
      {
        fsck_printf_warn("object (oid (0%llx)) being reaped : Invalid tree subtype (%u)\n", v8, v14);
        fsck_fail_func(0x233, -5);
        return 22;
      }

      if ((0x100001C000uLL >> v14))
      {
        v15 = 0;
      }

      else
      {
        v15 = dword_1000B3410[v14];
      }

      DWORD1(v42) = *(*(a1 + 8) + 36);
      DWORD2(v42) = v15;
    }

    if (*(a4 + 36))
    {
      v21 = 0;
      v22 = v13 & 0xC0000000;
      v39 = 0;
      v23 = v13 & 0xC0000000 | 3;
      v25 = a6 == 1 && v22 == 0;
      v35 = v25;
      while (1)
      {
        get_key_and_value_at_index(a4, &v42, v21, &v41, &v39 + 1, &v40, &v39);
        if (v39 != 8)
        {
          break;
        }

        v26 = *v40;
        *(a3 + 24) = *v40;
        *(a3 + 8) = v23;
        if (*(a4 + 34) < 2u)
        {
          if (v22 == 0x40000000)
          {
            v29 = DWORD1(v42) / v36;
            v30 = *(*(a1 + 8) + 40);
            if (v30 <= v29 || v26 < 1 || v30 <= v26 || v30 - v29 < v26)
            {
              fsck_printf_err("invalid btree node address range (0x%llx+%llu)\n", v26, DWORD1(v42) / v36);
              v16 = 92;
              v17 = 1238;
              goto LABEL_45;
            }

            mark_object_allocated(a1, v26, v29, *(a3 + 16), 0x40000000, v26, 0, 3, *(a4 + 28), 5u);
          }

          else if (v35)
          {
            omap_sv_mark_reaper_entry(v26, v22 | 3);
          }
        }

        else
        {
          v27 = *(a3 + 16);
          v37[0] = *a3;
          v37[1] = v27;
          v38 = *(a3 + 32);
          v28 = sub_100093C08(a1, a2, v37, a6);
          if (v28)
          {
            return v28;
          }
        }

        v21 = (v21 + 1);
        if (v21 >= *(a4 + 36))
        {
          return 0;
        }
      }

      fsck_printf_err("btree node (oid (0%llx)) being reaped has invalid val_len (%u) at index (%d) \n", v8, v39, v21);
      v16 = 92;
      v17 = 559;
LABEL_45:
      v18 = 92;
      goto LABEL_11;
    }

    return 0;
  }

  fsck_printf_err("btree node (oid (0%llx)) being reaped is hashed\n", *(a3 + 24));
  v16 = 22;
  v17 = 916;
  v18 = 22;
LABEL_11:
  fsck_fail_func(v17, v18);
  return v16;
}

uint64_t sub_100094888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v32, 0, sizeof(v32));
  memset(v30, 0, sizeof(v30));
  v6 = *(a2 + 16);
  v24 = *a2;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = a1;
  v25 = v6;
  v26 = *(a2 + 32);
  if (!*(a3 + 48))
  {
    goto LABEL_9;
  }

  inited = tree_init_ext(v32, a1, 0, *(a3 + 40) & 0xC0000000, *(a3 + 40), 11, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a3 + 48), omap_key_compare);
  if (!inited)
  {
    v28 = 0;
    v29 = 0;
    v12 = tree_iterator_init(v30, v32, 0, &v28, 0x10u, 0x10u, v27, 16);
    if (v12 || (v12 = fsck_iterate(v30, sub_100094F1C, v23, 0), v12))
    {
      v8 = v12;
      v13 = *(a3 + 48);
      v14 = strerror(v12);
      fsck_printf_err("Could not iterate omap tree to read reaper objects (oid 0x%llx): %s\n", v13, v14);
      v11 = 567;
      goto LABEL_7;
    }

    *(a2 + 8) = *(a3 + 40);
    *(a2 + 12) = *(*(a1 + 8) + 36);
    *(a2 + 24) = *(a3 + 48);
    *(a2 + 32) = 0;
    v15 = *(a2 + 16);
    v20 = *a2;
    v21 = v15;
    v22 = 0;
    v16 = sub_100093C08(a1, 0, &v20, 0);
    if (v16)
    {
      return v16;
    }

LABEL_9:
    v17 = *(a3 + 56);
    if (!v17)
    {
      return 0;
    }

    *(a2 + 8) = *(a3 + 44);
    *(a2 + 12) = *(*(a1 + 8) + 36);
    *(a2 + 24) = v17;
    *(a2 + 32) = 0;
    v18 = *(a2 + 16);
    v20 = *a2;
    v21 = v18;
    v22 = 0;
    v16 = sub_100093C08(a1, 0, &v20, 0);
    if (!v16)
    {
      return 0;
    }

    return v16;
  }

  v8 = inited;
  v9 = *(a3 + 48);
  v10 = strerror(inited);
  fsck_printf_err("Could not initialize omap tree (oid 0x%llx): %s\n", v9, v10);
  v11 = 566;
LABEL_7:
  fsck_fail_func(v11, v8);
  return v8;
}

uint64_t sub_100094A94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  bzero(v26, 0x400uLL);
  v27 = a3;
  v6 = *(a3 + 152);
  if (!v6)
  {
LABEL_16:
    v18 = *(a3 + 144);
    v19 = *(a3 + 120);
    v20 = *(a2 + 1);
    v34 = *a2;
    v35 = v20;
    *&v36 = a2[4];
    v9 = sub_100095000(a1, v26, &v34, 0, v18, v19);
    if (!v9)
    {
      *(a2 + 2) = 1073741835;
      *(a2 + 3) = *(*(a1 + 8) + 36);
      a2[3] = *(a3 + 128);
      a2[4] = 0;
      v21 = *(a2 + 1);
      v34 = *a2;
      v35 = v21;
      *&v36 = 0;
      return sub_100093C08(a1, 0, &v34, 0);
    }

    return v9;
  }

  v7 = *a2;
  v8 = a2[2];
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32[0] = a1;
  v32[1] = v26;
  v32[2] = 0;
  v32[3] = v7;
  v32[4] = a2[1];
  v32[5] = v8;
  v33 = *(a2 + 3);
  LODWORD(v9) = tree_init_ext(v39, a1, v26, *(a3 + 124) & 0xC0000000, *(a3 + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, v6, jkey_compare);
  v10 = malloc_type_calloc(1uLL, 0x340uLL, 0xC893D30DuLL);
  v11 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xE7670BF5uLL);
  v12 = v11;
  if (!v9 && v10 && v11)
  {
    v13 = tree_iterator_init(&v34, v39, 0, v10, 8u, 0x340u, v11, 3808);
    if (v13 || (v13 = fsck_iterate(&v34, sub_100095198, v32, 0), v13))
    {
      v9 = v13;
      v14 = *(v27 + 152);
      v15 = strerror(v13);
      fsck_printf_err("Could not iterate snap meta tree to read reaper objects (oid 0x%llx): %s\n", v14, v15);
      fsck_fail_func(0x23A, v9);
    }

    else
    {
      v23 = *(v27 + 124);
      v24 = *(*(a1 + 8) + 36);
      v25 = *(v27 + 152);
      *&v28 = v7;
      *(&v28 + 1) = __PAIR64__(v24, v23);
      v29 = v8;
      v30 = v25;
      v31 = 0;
      v9 = sub_100093C08(a1, 0, &v28, 0);
    }

LABEL_12:
    free(v10);
    goto LABEL_13;
  }

  if (v9)
  {
    v9 = v9;
  }

  else
  {
    v9 = 12;
  }

  v16 = *(v27 + 152);
  v17 = strerror(v9);
  fsck_printf_err("Could not initialize snap meta tree (oid 0x%llx): %s\n", v16, v17);
  fsck_fail_func(0x239, v9);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v12)
  {
    free(v12);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  return v9;
}

uint64_t sub_100094D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v21 = *a2;
  v24 = 0;
  v25 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = a1;
  v22 = v3;
  v23 = *(a2 + 32);
  if ((*(a3 + 27) & 0x40) != 0)
  {
    memset(v28, 0, sizeof(v28));
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    inited = tree_init_ext(v28, a1, 0, 0x40000000, 2, 26, 0, *(*(a1 + 8) + 36), 8, 8, 0, *(a3 + 32), uint64_key_compare);
    if (inited)
    {
      v4 = inited;
      v9 = *(a3 + 32);
      v10 = strerror(inited);
      fsck_printf_err("Could not initialize gbitmap tree (oid 0x%llx): %s\n", v9, v10);
      v11 = 553;
    }

    else
    {
      v12 = tree_iterator_init(v26, v28, 0, &v25, 8u, 8u, &v24, 8);
      if (!v12)
      {
        v12 = fsck_iterate(v26, sub_100095348, v20, 0);
        if (!v12)
        {
          v16 = *(*(a1 + 8) + 36);
          *(a2 + 8) = 0x40000000;
          *(a2 + 12) = v16;
          *(a2 + 24) = *(a3 + 32);
          v17 = *(a2 + 16);
          v18[0] = *a2;
          v18[1] = v17;
          v19 = *(a2 + 32);
          v4 = sub_100093C08(a1, 0, v18, 0);
          if (v4)
          {
            return v4;
          }

          return 0;
        }
      }

      v4 = v12;
      v13 = *(a3 + 32);
      v14 = strerror(v12);
      fsck_printf_err("Could not iterate gbitmap tree to read reaper objects (oid 0x%llx): %s\n", v13, v14);
      v11 = 571;
    }

    fsck_fail_func(v11, v4);
    return v4;
  }

  return 0;
}

uint64_t sub_100094F1C(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a3;
  if (*a3)
  {
    return 0;
  }

  v7 = *(*a5 + 8);
  v8 = *(v7 + 36);
  v9 = v8 + a3[1] - 1;
  v10 = v9 / v8;
  v11 = *(a3 + 1);
  v12 = *(v7 + 40);
  if (v12 - v10 >= v11 && v12 > v10 && v11 >= 1 && v12 > v11)
  {
    if ((v5 & 0xE0) == 0x20)
    {
      v16 = 36;
    }

    else
    {
      v16 = 14;
    }

    v17 = a5[5];
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 13;
    }

    if (v17)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    mark_object_allocated(*a5, v11, v10, v17, 0, *a1, a1[1], v18, v19, 5u);
    return 0;
  }

  fsck_printf_err("omap entry (oid 0x%llx): invalid ov_range (0x%llx+%llu)\n", *a1, v11, v9 / v8);
  v20 = 92;
  fsck_fail_func(0x4D7, 92);
  return v20;
}

uint64_t sub_100095000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  memset(v31, 0, sizeof(v31));
  memset(v29, 0, sizeof(v29));
  v10 = *(a3 + 16);
  v23 = *a3;
  v30 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a4;
  v24 = v10;
  v25 = *(a3 + 32);
  inited = tree_init_ext(v31, a1, a2, a6 & 0xC0000000, a6, 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, a5, jkey_compare);
  if (inited)
  {
    v12 = inited;
    v13 = strerror(inited);
    fsck_printf_err("Could not initialize extentref tree (oid 0x%llx): %s\n", a5, v13);
    v14 = 548;
  }

  else
  {
    v28 = 0;
    v15 = tree_iterator_init(v29, v31, 0, &v28, 8u, 0x340u, v26, 20);
    if (!v15)
    {
      v15 = fsck_iterate(v29, sub_100095290, v22, 0);
      if (!v15)
      {
        v18 = *(*(a1 + 8) + 36);
        *(a3 + 8) = a6;
        *(a3 + 12) = v18;
        *(a3 + 24) = a5;
        *(a3 + 32) = 0;
        v19 = *(a3 + 16);
        v20[0] = *a3;
        v20[1] = v19;
        v21 = 0;
        return sub_100093C08(a1, 0, v20, 0);
      }
    }

    v12 = v15;
    v16 = strerror(v15);
    fsck_printf_err("Could not iterate extentref tree to read reaper objects(oid 0x%llx): %s\n", a5, v16);
    v14 = 568;
  }

  fsck_fail_func(v14, v12);
  return v12;
}

uint64_t sub_100095198(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1 >> 60 != 1)
  {
    return 0;
  }

  v9 = *a5;
  v10 = *(a5 + 8);
  v11 = *a3;
  v12 = *(a3 + 40);
  v13 = *(a5 + 40);
  v21[0] = *(a5 + 24);
  v21[1] = v13;
  v22 = *(a5 + 56);
  v14 = sub_100095000(v9, v10, v21, v5 & 0xFFFFFFFFFFFFFFFLL, v11, v12);
  if (!v14)
  {
    v15 = *(a3 + 8);
    v16 = *(*(*a5 + 8) + 40);
    if (v16 - 1 < v15 || v16 < 2 || v15 < 1 || v16 <= v15)
    {
      fsck_printf_err("invalid sblock_oid (%llu)\n", *(a3 + 8));
      v14 = 92;
      fsck_fail_func(0x4D9, 92);
      return v14;
    }

    mark_object_allocated(*a5, v15, 1uLL, *(a5 + 40), 0x40000000, v15, *a1 & 0xFFFFFFFFFFFFFFFLL, 13, 0, 5u);
    return 0;
  }

  return v14;
}

uint64_t sub_100095290(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if (*a3 >> 60 != 1)
  {
    return 0;
  }

  v6 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v7 = v5 & 0xFFFFFFFFFFFFFFFLL;
  v8 = *(*(*a5 + 8) + 40);
  if (v8 - (v5 & 0xFFFFFFFFFFFFFFFLL) >= v6 && v8 > v7 && v6 != 0 && v8 > v6)
  {
    mark_object_allocated(*a5, v6, v7, *(a5 + 40), 0x40000000, v6, *(a5 + 16), 0, 0xFu, 6u);
    return 0;
  }

  fsck_printf_err("invalid extent address range (0x%llx+%llu)\n", v6, v7);
  v12 = 92;
  fsck_fail_func(0x4D8, 92);
  return v12;
}

uint64_t sub_100095348(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = *(*(*a5 + 8) + 40);
  if (v6 - 1 >= v5 && v6 >= 2 && v5 != 0 && v6 > v5)
  {
    mark_object_allocated(*a5, v5, 1uLL, *(a5 + 40), 0x40000000, v5, 0, 27, 0, 5u);
    return 0;
  }

  else
  {
    fsck_printf_err("invalid gbitmap block oid 0x%llx\n", *a3 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 92;
    fsck_fail_func(0x4DA, 92);
  }

  return v10;
}

char *phys_extent_init(char *result)
{
  if (result[10] == 1 && qword_100104338 == 0)
  {
    if (!tree_init_ext(&xmmword_100104300, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 21, 0, 0, uint64_key_compare))
    {
      tree_create(&xmmword_100104300, 0, 64);
    }

    result = memory_storage_register_tree(&xmmword_100104300, "phys extent", phys_extent_cleanup);
    if (result)
    {
      fsck_printf_warn("failed to register the phys extent tree in the fsck memory storage\n");

      return fsck_fail_func(0x587, 12);
    }
  }

  return result;
}

uint64_t phys_extent_cleanup()
{
  xmmword_1000E94F8 = 0u;
  unk_1000E9508 = 0u;
  xmmword_1000E94D8 = 0u;
  unk_1000E94E8 = 0u;
  xmmword_1000E94B8 = 0u;
  unk_1000E94C8 = 0u;
  xmmword_1000E9498 = 0u;
  unk_1000E94A8 = 0u;
  xmmword_1000E9478 = 0u;
  unk_1000E9488 = 0u;
  xmmword_1000E9458 = 0u;
  unk_1000E9468 = 0u;
  xmmword_1000E9438 = 0u;
  unk_1000E9448 = 0u;
  xmmword_1000E9418 = 0u;
  unk_1000E9428 = 0u;
  xmmword_1000E93F8 = 0u;
  unk_1000E9408 = 0u;
  xmmword_1000E93D8 = 0u;
  *&qword_1000E93E8 = 0u;
  BYTE8(xmmword_1000E93F8) = 1;
  tree_destroy(&xmmword_100104300, 0);

  return tree_destroy(&xmmword_100104340, 0);
}

uint64_t file_extent_register(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6[0] = a4;
  v6[1] = a5;
  return sub_100095590(a1, a2, a3, 1, sub_100095908, v6);
}

uint64_t sub_100095590(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(_BYTE *, uint64_t), uint64_t a6)
{
  if (!qword_100104338)
  {
    return 0;
  }

  v10 = a2;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = a2;
  memset(v26, 0, sizeof(v26));
  result = sub_1000966D0(&v27, v26, 4294967294);
  if (result == 2 && (result = sub_1000966D0(&v27, v26, 1), result == 2) && a4)
  {
    v27 = -1;
  }

  else
  {
    if (result == 2)
    {
      return 0;
    }

    if (result)
    {
LABEL_59:
      if (result == 12)
      {
        xmmword_1000E94F8 = 0u;
        unk_1000E9508 = 0u;
        xmmword_1000E94D8 = 0u;
        unk_1000E94E8 = 0u;
        xmmword_1000E94B8 = 0u;
        unk_1000E94C8 = 0u;
        xmmword_1000E9498 = 0u;
        unk_1000E94A8 = 0u;
        xmmword_1000E9478 = 0u;
        unk_1000E9488 = 0u;
        xmmword_1000E9458 = 0u;
        unk_1000E9468 = 0u;
        xmmword_1000E9438 = 0u;
        unk_1000E9448 = 0u;
        xmmword_1000E9418 = 0u;
        unk_1000E9428 = 0u;
        xmmword_1000E93F8 = 0u;
        unk_1000E9408 = 0u;
        xmmword_1000E93D8 = 0u;
        *&qword_1000E93E8 = 0u;
        BYTE8(xmmword_1000E93F8) = 1;
        tree_destroy(&xmmword_100104300, 0);
        tree_destroy(&xmmword_100104340, 0);
        result = 0;
        *(a1 + 10) = 0;
      }

      return result;
    }
  }

  v13 = a3 + v10;
  if (a3 + v10 < v10)
  {
    return 0;
  }

  while (1)
  {
    v14 = v27;
    if (a4)
    {
      v15 = v27 - v10;
      if (v27 > v10)
      {
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
        *v26 = v16;
        v17 = v15 & 0xFFFFFFFFFFFFFFFLL;
        *&v26[16] = 0;
        v27 = v10;
        v14 = v10;
LABEL_17:
        v20 = v13 <= v14 || v13 - v14 >= v17;
        v19 = v13;
        if (v20)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    v16 = *v26;
    v17 = *v26 & 0xFFFFFFFFFFFFFFFLL;
    v18 = v10 <= v27 || v10 - v27 >= v17;
    v19 = v10;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = v19;
    v30[1] = *&v26[8];
    *(&v30[1] + 5) = *&v26[13];
    v21 = (v14 + v16 - v19) & 0xFFFFFFFFFFFFFFFLL;
    v30[0] = v16 & 0xF000000000000000 | v21;
    *v26 = (v17 - v21) | v16 & 0xF000000000000000;
    if (*&v26[16])
    {
      result = sub_1000967E8(&xmmword_100104300, &v27, v26);
      if (result)
      {
        goto LABEL_59;
      }

      result = sub_1000967E8(&xmmword_100104300, &v31, v30);
      if (result)
      {
        goto LABEL_59;
      }

      v14 = v27;
    }

LABEL_25:
    v22 = v14 - v10;
    if (v14 >= v10)
    {
      v23 = v22 < v13 - v10 && v13 - v10 >= (*v26 & 0xFFFFFFFFFFFFFFFuLL);
      if (v23 && v22 <= v13 - v10 - (*v26 & 0xFFFFFFFFFFFFFFFLL))
      {
        a5(v26, a6);
        if ((a4 & 1) != 0 || *&v26[16])
        {
          result = sub_1000967E8(&xmmword_100104300, &v27, v26);
        }

        else
        {
          result = sub_100096778(&xmmword_100104300, &v27);
        }

        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    if (v29 && (*v28 & 0xFFFFFFFFFFFFFFFLL) + v29 == v14 && *&v28[16] == *&v26[16] && v28[20] == v26[20])
    {
      *v28 = ((*v26 & 0xFFFFFFFFFFFFFFFLL) + (*v28 & 0xFFFFFFFFFFFFFFFLL)) | *v28 & 0xF000000000000000;
      if (*&v28[16])
      {
        if (sub_100096778(&xmmword_100104300, &v27))
        {
          return 1;
        }

        result = sub_1000967E8(&xmmword_100104300, &v29, v28);
        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    else
    {
      v29 = v14;
      *v28 = *v26;
      *&v28[13] = *&v26[13];
    }

    v25 = (*v26 & 0xFFFFFFFFFFFFFFFLL) + v14;
    if (v25 > v10)
    {
      v10 = v25;
    }

    result = sub_1000966D0(&v27, v26, 2);
    if (result != 2 || (a4 & 1) == 0)
    {
      break;
    }

    v27 = -1;
LABEL_54:
    if (v10 > v13)
    {
      return 0;
    }
  }

  if (!result)
  {
    goto LABEL_54;
  }

  if (result != 2)
  {
    goto LABEL_59;
  }

  return 0;
}

uint64_t sub_100095908(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_1000968E8();
  }

  *(result + 8) = *a2;
  ++*(result + 16);
  if ((*(result + 20) & 1) == 0)
  {
    *(result + 20) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_100095960(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_100096914();
  }

  *(result + 20) = 1;
  return result;
}

uint64_t sub_10009599C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_100096940();
  }

  --*(result + 16);
  return result;
}

uint64_t phys_extent_diff_iterator_init(uint64_t a1)
{
  v2 = sub_100095A8C(a1 + 48, &xmmword_100104300);
  if (v2 || (v2 = sub_100095A8C(a1 + 168, &xmmword_100104340), v2))
  {
    v3 = v2;
    v4 = strerror(v2);
    fsck_printf_err("unable to init physical extent tree iterator for repairs: %s\n", v4);
    fsck_fail_func(0x461, v3);
    return v3;
  }

  else
  {
    *(a1 + 8) = sub_100095B50;
    *(a1 + 16) = a1 + 288;
    *(a1 + 24) = a1 + 296;
    *(a1 + 32) = 0x1500000008;
    *(a1 + 317) = 1;

    return sub_100095B50(a1);
  }
}

uint64_t sub_100095A8C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = tree_iterator_init(a1, a2, 0, (a1 + 72), 8u, 8u, (a1 + 80), 21);
  if (v3)
  {
    v4 = v3;
    v5 = strerror(v3);
    fsck_printf_err("unable to init physical extent tree iterator for repairs: %s\n", v5);
    fsck_fail_func(0x460, v4);
LABEL_5:
    *(a1 + 40) = 1;
    goto LABEL_6;
  }

  if (a1 && (*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    v8 = *(a1 + 80);
    *(a1 + 104) = *(a1 + 72);
    v6 = v8 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_6:
  v6 = 0;
  *(a1 + 104) = -1;
LABEL_7:
  *(a1 + 112) = v6;
  return v4;
}

uint64_t sub_100095B50(uint64_t a1)
{
  result = sub_100096874(a1 + 48);
  if (!result)
  {
    result = sub_100096874(a1 + 168);
    if (!result)
    {
      if (*(a1 + 208) == 1)
      {
        v3 = *(a1 + 88);
        *(a1 + 40) = v3;
        if (v3)
        {
          return 0;
        }

        v5 = 0;
        v4 = *(a1 + 72);
      }

      else
      {
        *(a1 + 40) = 0;
        if (*(a1 + 88))
        {
          v4 = 0;
        }

        else
        {
          v4 = *(a1 + 72);
        }

        v5 = *(a1 + 192);
      }

      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = *(a1 + 152);
      v9 = *(a1 + 272);
      v10 = v8 - v9;
      if (v8 >= v9)
      {
        v11 = *(a1 + 272);
      }

      else
      {
        v11 = *(a1 + 152);
      }

      if (v8 >= v9)
      {
        if (v8 <= v9)
        {
          v16 = *(a1 + 160);
          v17 = *(a1 + 280);
          if (v16 >= v17)
          {
            v10 = *(a1 + 280);
          }

          else
          {
            v10 = *(a1 + 160);
          }

          *(a1 + 152) = v10 + v8;
          *(a1 + 160) = v16 - v10;
          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v17 - v10;
          *(v6 + 8) = -1;
          v13 = *(v4 + 16) - *(v5 + 16);
          v14 = 0x2000000000000000;
        }

        else
        {
          v15 = *(a1 + 280);
          if (v15 < v10)
          {
            v10 = *(a1 + 280);
          }

          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v15 - v10;
          *(v6 + 8) = -1;
          v13 = -*(v5 + 16);
          v14 = 0x2000000000000000;
          v4 = v5;
        }
      }

      else
      {
        v12 = *(a1 + 160);
        v10 = v9 - v8;
        if (v12 < v9 - v8)
        {
          v10 = *(a1 + 160);
        }

        *(a1 + 152) = v10 + v8;
        *(a1 + 160) = v12 - v10;
        *(v6 + 8) = *(v4 + 8);
        v13 = *(v4 + 16);
        v14 = 0x1000000000000000;
      }

      result = 0;
      *(v6 + 16) = v13;
      *(v6 + 20) = *(v4 + 20);
      *v7 = v11;
      *v6 = v10 & 0xFFFFFFFFFFFFFFFLL | v14;
    }
  }

  return result;
}

uint64_t mark_extent_maybe(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a5 == 1)
  {
    if (a2)
    {
      v5 = *(*(a2 + 40) + 8);
    }

    else
    {
      v5 = 0;
    }

    return mark_object_allocated(result, a3, a4, v5, 0x40000000, a3, *(a2 + 56), 0, 0xFu, 2u);
  }

  return result;
}

uint64_t phys_extent_register(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, char a5)
{
  v8 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v9 = *a4;
  v10 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v47 = *a4 >> 60;
  if (!qword_100104338 || *(a2 + 14) == 1)
  {
    if ((a5 & 3) != 0)
    {
      return 92;
    }

    mark_extent_maybe(a1, a2, v8, v10, v47);
    return 0;
  }

  v12 = a4;
  if (byte_1000E9515)
  {
    v44 = a5;
    v43 = a3;
    v14 = qword_1000E93F0;
    v41 = a1;
    v42 = qword_1000E93E8;
    v15 = *qword_1000E93E8;
    v16 = *qword_1000E93F0 & 0xFFFFFFFFFFFFFFFLL;
    v46 = *qword_1000E93F0 >> 60;
  }

  else
  {
    v11 = phys_extent_diff_iterator_init(&xmmword_1000E93D8);
    if (v11)
    {
      return v11;
    }

    v44 = a5;
    v43 = a3;
    v14 = qword_1000E93F0;
    v41 = a1;
    v42 = qword_1000E93E8;
    v15 = *qword_1000E93E8;
    v16 = *qword_1000E93F0 & 0xFFFFFFFFFFFFFFFLL;
    v36 = *qword_1000E93F0 >> 60;
    LOBYTE(v46) = v36;
    if ((BYTE8(xmmword_1000E93F8) & 1) == 0)
    {
      mark_extent_maybe(v41, a2, v15, v16, v36);
    }
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (v44)
  {
    return sub_1000963E4(a2 + 768, v43, 0, *(a2 + 56), 0, 0);
  }

  if (!v10)
  {
    v11 = 0;
    v37 = v46;
    goto LABEL_115;
  }

  v48 = 0;
  v40 = v9 & 0xF000000000000000;
  v45 = v12;
  do
  {
    while (1)
    {
      if (BYTE8(xmmword_1000E93F8))
      {
        v15 = -1;
      }

      v17 = v15 >= v8 ? v8 : v15;
      if (*(v14 + 20) == 1)
      {
        v18 = *(a2 + 56);
        if (v15 < v8)
        {
          if (v16 >= v8 - v15)
          {
            v19 = v8 - v15;
          }

          else
          {
            v19 = v16;
          }

          v15 += v19;
          v16 -= v19;
          if (v18)
          {
            goto LABEL_88;
          }

          goto LABEL_27;
        }

        if (v8 < v15)
        {
          if (v10 >= v15 - v8)
          {
            v19 = v15 - v8;
          }

          else
          {
            v19 = v10;
          }

          v8 += v19;
          v10 -= v19;
          if (v18)
          {
            goto LABEL_88;
          }

          goto LABEL_42;
        }

        if (v10 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v10;
        }

        v15 += v19;
        v16 -= v19;
        v8 += v19;
        v10 -= v19;
        if (v18)
        {
LABEL_56:
          v24 = -1;
          goto LABEL_64;
        }
      }

      else
      {
        if (v15 < v8)
        {
          if (v16 >= v8 - v15)
          {
            v19 = v8 - v15;
          }

          else
          {
            v19 = v16;
          }

          v15 += v19;
          v16 -= v19;
LABEL_27:
          if (!*(v14 + 4))
          {
            goto LABEL_88;
          }

          fsck_fail_func(0x462, 92);
          v20 = *(v14 + 4);
          HIDWORD(v48) |= v20 > 0;
          v21 = fsck_printf_warn;
          if ((v48 & 0x100000000) != 0)
          {
            v21 = fsck_printf_err;
          }

          v21("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v20, v17, v19);
          goto LABEL_78;
        }

        if (v8 < v15)
        {
          if (v10 >= v15 - v8)
          {
            v19 = v15 - v8;
          }

          else
          {
            v19 = v10;
          }

          v8 += v19;
          v10 -= v19;
LABEL_42:
          fsck_fail_func(0x463, 92);
          v22 = *(v12 + 4);
          if (v22)
          {
            HIDWORD(v48) |= v22 < 0;
            v23 = fsck_printf_warn;
            if ((v48 & 0x100000000) != 0)
            {
              v23 = fsck_printf_err;
            }

            v23("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (0) for extent (%llu + %llu)\n", v22, v17, v19);
          }

          else
          {
            fsck_printf_warn("invalid extent (%llu + %llu) with reference count (0)\n", v17, v19);
          }

LABEL_73:
          v24 = 0;
          goto LABEL_79;
        }

        v19 = v10 >= v16 ? v16 : v10;
        v15 += v19;
        v16 -= v19;
        v8 += v19;
        v10 -= v19;
      }

      if (*(v14 + 4) == *(v12 + 4))
      {
        goto LABEL_56;
      }

      fsck_fail_func(0x464, 92);
      v25 = *(v12 + 4);
      v26 = *(v14 + 4);
      if ((v48 & 0x100000000) != 0 || v25 < v26)
      {
        HIDWORD(v48) = 1;
        fsck_printf_err("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v25, v26, v17, v19);
      }

      else
      {
        HIDWORD(v48) = 0;
        fsck_printf_warn("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v25, v26, v17, v19);
      }

      if (!*(v14 + 4))
      {
        goto LABEL_73;
      }

      v24 = 2;
LABEL_64:
      if (v46 != v47)
      {
        if ((v44 & 2) == 0)
        {
          fsck_fail_func(0x465, 92);
        }

        fsck_printf_err("invalid kind (expected %u, actual %u) for extent (%llu + %llu)\n", v46, v47, v17, v19);
        v24 = 2;
        HIDWORD(v48) = 1;
      }

      if ((v44 & 4) != 0)
      {
LABEL_77:
        HIDWORD(v48) = 1;
LABEL_78:
        v24 = 2;
        goto LABEL_79;
      }

      if (v46 == 1)
      {
        v27 = v45[1];
        HIDWORD(v48) |= v27 > 0xFFFFFFFFFFFFFFFDLL;
        if (v27 > 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = 2;
        }
      }

      else if (v46 == 2 && v45[1] != -1)
      {
        goto LABEL_77;
      }

      if ((v48 & (v24 == -1)) != 0)
      {
        goto LABEL_77;
      }

      if (v24 == -1)
      {
LABEL_81:
        v12 = v45;
        goto LABEL_88;
      }

LABEL_79:
      if (v48)
      {
        goto LABEL_80;
      }

      v28 = *v43;
      v29 = *v43 & 0xFFFFFFFFFFFFFFFLL;
      if (v17 >= v29)
      {
        if (v17 == v29)
        {
          if (v19 == (*v45 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_83;
          }

          HIDWORD(v48) = 1;
        }

        else
        {
          v52 = *v43;
          v35 = v45[1];
          v49 = (v17 - v28) & 0xFFFFFFFFFFFFFFFLL | v40;
          v50 = v35;
          v51 = *(v45 + 4);
          HIDWORD(v48) = 1;
          v32 = sub_1000963E4(a2 + 768, &v52, &v49, *(a2 + 56), 2, 1);
          if (v32)
          {
            return v32;
          }
        }

LABEL_80:
        LOBYTE(v48) = 1;
        if (v24 != 2)
        {
          goto LABEL_81;
        }

        goto LABEL_84;
      }

LABEL_83:
      LOBYTE(v48) = 0;
LABEL_84:
      v52 = v17 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v30 = v14[1];
      v49 = v19 & 0xFFFFFFFFFFFFFFFLL | (v46 << 60);
      v50 = v30;
      v51 = *(v14 + 4);
      if (v24)
      {
        v31 = &v49;
      }

      else
      {
        v31 = 0;
      }

      v32 = sub_1000963E4(a2 + 768, &v52, v31, *(a2 + 56), v24, BYTE4(v48) & 1);
      v12 = v45;
      if (v32)
      {
        return v32;
      }

LABEL_88:
      if (!v16)
      {
        break;
      }

LABEL_93:
      if (!v10)
      {
        goto LABEL_112;
      }
    }

    if (BYTE8(xmmword_1000E93F8))
    {
      goto LABEL_92;
    }

    v33 = (*(&xmmword_1000E93D8 + 1))(&xmmword_1000E93D8);
    if (v33)
    {
      v11 = v33;
      v39 = strerror(v33);
      fsck_printf_err("error iterating physical extent tree: %s\n", v39);
      fsck_fail_func(0x466, v11);
      return v11;
    }

    if (BYTE8(xmmword_1000E93F8))
    {
LABEL_92:
      v16 = 0;
      goto LABEL_93;
    }

    v14 = qword_1000E93F0;
    v42 = qword_1000E93E8;
    v15 = *qword_1000E93E8;
    v16 = *qword_1000E93F0 & 0xFFFFFFFFFFFFFFFLL;
    v34 = *qword_1000E93F0 >> 60;
    mark_extent_maybe(v41, a2, *qword_1000E93E8, v16, v34);
    LOBYTE(v46) = v34;
  }

  while (v10);
LABEL_112:
  v37 = v46;
  if (v48)
  {
    v52 = *v43;
    v11 = sub_1000963E4(a2 + 768, &v52, 0, *(a2 + 56), 0, BYTE4(v48) & 1);
  }

  else
  {
    v11 = 0;
  }

LABEL_115:
  *v42 = v15;
  *v14 = v16 & 0xFFFFFFFFFFFFFFFLL | (v37 << 60);
  return v11;
}

uint64_t sub_1000963E4(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, int a5, char a6)
{
  v6 = *a2;
  v13 = a4;
  v14 = v6;
  if (a3)
  {
    v7 = 20;
  }

  else
  {
    v7 = 0;
  }

  v8 = fsck_repairs_add(a1, 5u, a5, 0, a6, &v13, 0x10u, a3, v7);
  v9 = v8;
  if (v8)
  {
    v10 = v14 & 0xFFFFFFFFFFFFFFFLL;
    v11 = strerror(v8);
    fsck_printf_err("could not cache physical extent repair at %llu error: %s\n", v10, v11);
    fsck_fail_func(0x336, v9);
  }

  return v9;
}

uint64_t phys_extent_finalize(uint64_t a1, uint64_t a2)
{
  if (!qword_100104338)
  {
    return 0;
  }

  while ((BYTE8(xmmword_1000E93F8) & 1) == 0)
  {
    v5 = qword_1000E93E8;
    v4 = qword_1000E93F0;
    if ((*(qword_1000E93F0 + 20) != 1 || !*(a1 + 56)) && *(qword_1000E93F0 + 4))
    {
      fsck_fail_func(0x47D, 92);
      v6 = *(v4 + 4);
      v7 = v6 > 0;
      v8 = fsck_printf_warn;
      if (v6 > 0)
      {
        v8 = fsck_printf_err;
      }

      v8("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v6, *v5, *v4 & 0xFFFFFFFFFFFFFFFLL);
      v17 = *v5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v15 = 0uLL;
      v16 = 0;
      v9 = *v4;
      v16 = *(v4 + 4);
      v15 = v9;
      v10 = sub_1000963E4(a1 + 768, &v17, &v15, *(a1 + 56), 2, v7);
      if (v10)
      {
        return v10;
      }
    }

    v11 = (*(&xmmword_1000E93D8 + 1))(&xmmword_1000E93D8);
    if (v11)
    {
      v12 = v11;
      v13 = strerror(v11);
      fsck_printf_err("error iterating physical extent tree: %s\n", v13);
      fsck_fail_func(0x47E, v12);
      return v12;
    }
  }

  xmmword_1000E94F8 = 0u;
  unk_1000E9508 = 0u;
  xmmword_1000E94D8 = 0u;
  unk_1000E94E8 = 0u;
  xmmword_1000E94B8 = 0u;
  unk_1000E94C8 = 0u;
  xmmword_1000E9498 = 0u;
  unk_1000E94A8 = 0u;
  xmmword_1000E9478 = 0u;
  unk_1000E9488 = 0u;
  xmmword_1000E9458 = 0u;
  unk_1000E9468 = 0u;
  xmmword_1000E9438 = 0u;
  unk_1000E9448 = 0u;
  xmmword_1000E9418 = 0u;
  unk_1000E9428 = 0u;
  xmmword_1000E93F8 = 0u;
  unk_1000E9408 = 0u;
  xmmword_1000E93D8 = 0u;
  *&qword_1000E93E8 = 0u;
  BYTE8(xmmword_1000E93F8) = 1;
  if (!a2)
  {
    tree_destroy(&xmmword_100104300, 0);
    tree_destroy(&xmmword_100104340, 0);
    return 0;
  }

  tree_destroy(&xmmword_100104340, 0);
  xmmword_100104340 = xmmword_100104300;
  *algn_100104350 = *algn_100104310;
  xmmword_100104360 = xmmword_100104320;
  unk_100104370 = unk_100104330;
  if (memory_storage_register_tree(&xmmword_100104340, "prev phys extent", phys_extent_cleanup))
  {
    fsck_printf_warn("failed to register the prev phys extent tree in the fsck memory storage\n");
    fsck_fail_func(0x588, 12);
  }

  v12 = 0;
  xmmword_100104320 = 0u;
  unk_100104330 = 0u;
  xmmword_100104300 = 0u;
  *algn_100104310 = 0u;
  return v12;
}

uint64_t sub_1000966D0(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!qword_100104338)
  {
    return 2;
  }

  v10 = 8;
  v9 = 21;
  v4 = tree_lookup(&xmmword_100104300, 0, a3, a1, &v10, 8, a2, &v9);
  v5 = v4;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = *a1;
    v7 = strerror(v4);
    fsck_printf_err("could not lookup extent at %llu for physical extent repair: %s\n", v6, v7);
    fsck_fail_func(0x335, v5);
  }

  return v5;
}

BOOL sub_100096778(uint64_t a1, uint64_t *a2)
{
  v3 = tree_remove(a1, 0, a2, 8);
  v4 = v3 != 0;
  if (v3)
  {
    v5 = *a2;
    v6 = strerror(v3 != 0);
    fsck_printf_err("could not remove extent at %llu for physical extent repair: %s\n", v5, v6);
    fsck_fail_func(0x2B1, v4);
  }

  return v4;
}

uint64_t sub_1000967E8(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = tree_insert(a1, 0, a2, 8, a3, 21);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    v8 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v9 = strerror(v5);
    fsck_printf_err("could not insert extent with range (%llu + %llu) for physical extent repair: %s\n", v7, v8, v9);
    fsck_fail_func(0x34F, v6);
  }

  return v6;
}

uint64_t sub_100096874(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 40) & 1) != 0 || *(result + 112))
    {
      return 0;
    }

    else
    {
      result = (*(result + 8))(result);
      if (!result)
      {
        if (*(v1 + 40))
        {
          v2 = 0;
          v3 = -1;
        }

        else
        {
          v3 = *(v1 + 72);
          v2 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFLL;
        }

        result = 0;
        *(v1 + 104) = v3;
        *(v1 + 112) = v2;
      }
    }
  }

  return result;
}

uint64_t fsck_is_seal_intact(uint64_t *a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5, void *a6, void *a7, unsigned int a8)
{
  v18 = 0;
  v13 = sub_100096A4C(a1, a2, a3, &v18);
  if (!v13)
  {
    v14 = v18;
    v15 = *(v18 + 9) & 1;
    *a4 = !(*(v18 + 36) & 1);
    if (a5)
    {
      *a5 = v14[2];
    }

    if (a6)
    {
      *a6 = v14[6];
    }

    v13 = 0;
    if (a7 && !v15)
    {
      v16 = sub_100096ADC(*(v14 + 10));
      if (!v16)
      {
        sub_100096E40();
      }

      if (v16 <= a8)
      {
        memcpy(a7, v14 + *(v14 + 11), v16);
        v13 = 0;
      }

      else
      {
        v13 = 34;
      }
    }

    free(v14);
  }

  return v13;
}

uint64_t sub_100096A4C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a2 + 48);
  if (!v5)
  {
    v5 = *(a2 + 40);
  }

  v6 = copy_obj(a1, a2, 0, *(v5 + 1024), a3, 0, 30, 0, a4, 0, 0);
  if (v6)
  {
    fsck_printf_err("integrity_meta: failed to copy object (0x%llx:0x%llx)\n", *(v5 + 1024), a3);
    fsck_fail_func(0x376, v6);
  }

  return v6;
}

uint64_t sub_100096ADC(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_1000B34B0[(a1 - 1)];
  }
}

uint64_t fsck_integrity_meta(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v5 = *(a1[1] + 36);
  v6 = sub_100096A4C(a1, a2, a3, &v21);
  if (v6)
  {
    return v6;
  }

  v7 = v21;
  v8 = *(v21 + 1);
  v9 = *(v21 + 8);
  if (v9)
  {
    v10 = *(v21 + 9);
    if (v10 >= 4)
    {
      fsck_printf_warn("integrity_meta: (0x%llx:0x%llx): unknown flags (0x%x)\n", v8, a3, v10);
      fsck_fail_func(0x378, -3);
      v7 = v21;
    }

    v11 = v7[10];
    if ((v11 & 0xFFFFFF00) > 0xF00 || (v7[10] & 0xFD) == 0 || v7[10] >= 9u)
    {
      fsck_printf_err("integrity_meta: (0x%llx:0x%llx): unknown hash type (%u)\n", v8, a3, v11);
      v6 = 92;
      v14 = 889;
    }

    else
    {
      v15 = sub_100096ADC(v11);
      v16 = v15;
      v17 = v7[11];
      if (v17 + v15 > v5)
      {
        goto LABEL_22;
      }

      if (v9 > 2)
      {
        v18 = 48;
      }

      else
      {
        v18 = 128;
        if (v7[8] == 1)
        {
          v18 = 48;
        }
      }

      if (v18 <= v17)
      {
        if (!bitmap_range_is_clear(v7 + v17, 0, (8 * v15), v17))
        {
          if (*(v21 + 8) < 2u || (v20 = *(v21 + 6), (v20 != 0) == (*(v21 + 9) & 1)))
          {
            v6 = 0;
            *(a2 + 16) = *(v21 + 10);
            *(a2 + 20) = v16;
          }

          else
          {
            fsck_printf_err("integrity_meta: (0x%llx:0x%llx): unexpected flags (0x%x) for xid (%llu)\n", v8, a3, *(v21 + 9), v20);
            fsck_fail_func(0x3B3, 92);
            v6 = 0;
          }

          goto LABEL_24;
        }

        fsck_printf_err("integrity_meta: (0x%llx:0x%llx): invalid root hash\n", v8, a3);
        v6 = 92;
        v14 = 891;
      }

      else
      {
LABEL_22:
        fsck_printf_err("integrity_meta: (0x%llx:0x%llx): invalid root hash offset (%u+%u) > %u\n", v8, a3, v17, v15, v5);
        v6 = 92;
        v14 = 890;
      }
    }
  }

  else
  {
    fsck_printf_err("integrity_meta: (0x%llx:0x%llx): invalid version\n", *(v21 + 1), a3);
    v6 = 92;
    v14 = 887;
  }

  fsck_fail_func(v14, 92);
LABEL_24:
  if (v21)
  {
    free(v21);
  }

  return v6;
}

uint64_t fsck_validate_node_hash(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    sub_100096E98();
  }

  if (!*(a1 + 44))
  {
    sub_100096E6C();
  }

  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  if ((*(a2 + 32) & 8) != 0)
  {
    hash_info = authapfs_get_hash_info(v5);
    memset(__s2, 0, sizeof(__s2));
    authapfs_digest(hash_info, v12, a4, a2, __s2);
    if (memcmp(a3 + 1, __s2, *(a1 + 44)))
    {
      fsck_printf_err("hash validation: invalid node hash for node %llu (root oid: %llu, seal xid: %lld, broken xid: %lld)\n", *a3, *(a1 + 64), *(a1 + 48), *(a1 + 56));
      v8 = 92;
      v9 = 928;
      goto LABEL_8;
    }

    return 0;
  }

  fsck_printf_err("hash validation: invalid node %llu (root %llu)\n", *a3, *(a1 + 64));
  v8 = 92;
  v9 = 927;
LABEL_8:
  fsck_fail_func(v9, 92);
  return v8;
}

void omap_sv_init(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 52428800;
  }

  else
  {
    v4 = 10485760;
  }

  if (a1)
  {
    v5 = &unk_100104400;
  }

  else
  {
    v5 = &unk_100104380;
  }

  bitmap_store_init(v5, a2, v4);
  v5[14] = a3;
  *(v5 + 120) = 1;
}
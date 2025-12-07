uint64_t sub_10007BA8C(unint64_t a1)
{
  if ((a1 & 3) == 3 || (a1 & 3) == 0)
  {
    fsck_printf_err("invalid ersb_flags (0x%llx), exactly one of ERSB_FLAG_ENCRYPTING and ERSB_FLAG_DECRYPTING bits must be set\n", a1);
    v3 = 519;
  }

  else
  {
    if (sub_10007BCD8(a1))
    {
      return 0;
    }

    fsck_printf_err("invalid checksum block size, enum: %llu\n", (a1 >> 8) & 0xF);
    v3 = 715;
  }

  v4 = 92;
  fsck_fail_func(v3, 92);
  return v4;
}

uint64_t sub_10007BB18(uint64_t a1, unint64_t a2)
{
  v2 = *(*(a1 + 8) + 96);
  if (v2 > a2)
  {
    return 0;
  }

  fsck_printf_err("ersb_snap_xid (%llu) is greater than or equal to container next xid (%llu)\n", a2, v2);
  v3 = 92;
  fsck_fail_func(0x209, 92);
  return v3;
}

uint64_t sub_10007BB78(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v7 = copy_obj(a1, a2, 0x40000000, a3, 0, 0, 25, 0, &v14, 0, 1);
  if (v7)
  {
    v8 = v7;
    fsck_printf_err("could not retrieve gbitmap from er_state_phys_t\n");
    v9 = 546;
LABEL_3:
    v10 = v8;
LABEL_6:
    fsck_fail_func(v9, v10);
    goto LABEL_7;
  }

  v11 = v14[5];
  if (v11 < a4)
  {
    fsck_printf_err("ersb_total_blk_to_encrypt (%llu) exceeds bm_bit_count (%llu)\n", a4, v11);
    v8 = 92;
    v9 = 740;
    v10 = 92;
    goto LABEL_6;
  }

  tree_init_ext(v13, a1, a2, 0x40000000, 2, 26, 0, *(a1[1] + 36), 8, 8, 0, v14[4], uint64_key_compare);
  v8 = fsck_tree(v13, 0, sub_10007BCFC, 0, 0, 1);
  if (v8)
  {
    fsck_printf_err("encryption rolling gbitmap tree is invalid\n");
    v9 = 494;
    goto LABEL_3;
  }

LABEL_7:
  if (v14)
  {
    free(v14);
  }

  return v8;
}

uint64_t sub_10007BCD8(unsigned int a1)
{
  v1 = (a1 >> 8) & 0xF;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1000B3268[v1];
  }
}

uint64_t sub_10007BCFC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = 0;
  v5 = *a5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a5 & 0x8000000000000000) != 0)
  {
    if (v5)
    {
      v7 = *(a1[1] + 40) > v5;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      if (a2)
      {
        v8 = *(*(a2 + 40) + 8);
      }

      else
      {
        v8 = 0;
      }

      mark_object_allocated(a1, v5, 1uLL, v8, 0x40000000, v5, 0, 27, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    else
    {
      fsck_printf_err("invalid gbitmap block oid 0x%llx for key 0x%llx\n", *a5 & 0x7FFFFFFFFFFFFFFFLL, *a3);
      v6 = 92;
      fsck_fail_func(0x30F, 92);
    }
  }

  else
  {
    v6 = copy_obj(a1, a2, 0x40000000, v5, 0, 0, 27, 0, &v10, 0, 1);
    if (v10)
    {
      free(v10);
    }
  }

  return v6;
}

uint64_t sub_10007BDE8(uint64_t *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v40 = 0;
  if (!a3[14])
  {
    fsck_printf_err("ersb_recovery_extents_count is non-zero (%llu), but ersb_recovery_list_oid == 0\n", a3[13]);
    v13 = 92;
    v16 = 720;
LABEL_12:
    fsck_fail_func(v16, 92);
    v12 = 0;
    goto LABEL_13;
  }

  v5 = a3[15];
  if (!v5)
  {
    fsck_printf_err("ersb_recovery_extents_count is non-zero (%llu), but ersb_recovery_length == 0\n", a3[13]);
    v13 = 92;
    v16 = 721;
    goto LABEL_12;
  }

  if (v5 > 0x1400000)
  {
    fsck_printf_warn("ersb_recovery_length (%llu) exceeds recovery length limit (%llu), some checks will be disabled\n", a3[15], 20971520);
    v10 = a3 + 13;
    v9 = a3[13];
    v11 = 48 * v9;
    if ((48 * v9) <= a3[15])
    {
      v12 = 0;
      goto LABEL_19;
    }

    v5 = a3[15];
    goto LABEL_11;
  }

  v10 = a3 + 13;
  v9 = a3[13];
  v11 = 48 * v9;
  if (48 * v9 > v5)
  {
LABEL_11:
    fsck_printf_err("ersb_recovery_extents_count is %llu, extent descriptor size is %zu, expected descriptors length is %llu > ersb_recovery_length %llu\n", v9, 0x30uLL, v11, v5);
    v13 = 92;
    v16 = 722;
    goto LABEL_12;
  }

  v12 = malloc_type_calloc(1uLL, a3[15], 0x151381A2uLL);
  if (!v12)
  {
    fsck_printf_err("error allocating encryption rolling recovery data buffer, ersb_recovery_length %llu\n", a3[15]);
    v13 = 12;
    v14 = 723;
    v15 = 12;
    goto LABEL_57;
  }

LABEL_19:
  v39 = a4;
  v18 = a3[14];
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      if (v19 >= a3[15])
      {
        fsck_printf_err("encryption rolling recovery data extends past recovery length, oid 0x%llx, ersb_recovery_length %llu, accumulated length %llu\n", v18, a3[15], v19);
        v13 = 92;
        v14 = 728;
        goto LABEL_56;
      }

      v20 = copy_obj(a1, a2, 0x40000000, v18, 0, 0, 28, 0, &v40, 0, 1);
      if (v20)
      {
        v13 = v20;
        fsck_printf_err("could not retrieve erb, oid 0x%llx\n", v18);
        v14 = 724;
        v15 = 2;
        goto LABEL_57;
      }

      v21 = v40;
      v22 = *(v40 + 4);
      if (v19 != v22)
      {
        fsck_printf_err("encryption rolling recovery block offset mismatch, oid 0x%llx, expected %llu, actual %llu\n", v18, v19, v22);
        v13 = 92;
        v14 = 725;
        goto LABEL_56;
      }

      v23 = *(a1[1] + 36);
      v24 = v23 - 48 >= a3[15] - v19 ? a3[15] - v19 : v23 - 48;
      if (!v24)
      {
        break;
      }

      if (v5 <= 0x1400000)
      {
        memcpy(v12 + v19, v40 + 48, v24);
        v21 = v40;
      }

      v18 = v21[5];
      v19 += v24;
      free(v21);
      v40 = 0;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    fsck_printf_err("encryption rolling recovery block with data size 0, oid 0x%llx, nx_block_size %u, recovery length %llu\n", v18, *(a1[1] + 36), v19);
    v13 = 92;
    v14 = 726;
  }

  else
  {
    v19 = 0;
LABEL_33:
    v25 = a3[15];
    if (v19 >= v25)
    {
      v26 = a3[5];
      v27 = sub_10007BCD8(v26);
      if (v27)
      {
        if (v5 > 0x1400000 || !*v10)
        {
LABEL_50:
          v13 = 0;
          goto LABEL_13;
        }

        v28 = 0;
        v29 = a1[1];
        v30 = *(v29 + 36);
        v31 = *(v29 + 40);
        v32 = v12 + 5;
        while (1)
        {
          v33 = *(v32 - 2);
          if (v33 < 1 || v31 <= v33)
          {
            fsck_printf_err("recovery extent #%llu: invalid fext_pbn (0x%llx)\n", v28, v33);
            v13 = 92;
            v14 = 730;
            goto LABEL_56;
          }

          v35 = *(v32 - 5);
          v34 = *(v32 - 4);
          if (!v35 || (v36 = v31 * (v30 / v39), v36 <= v35) || v36 <= v34 || v36 - v34 < v35)
          {
            fsck_printf_err("recovery extent #%llu: invalid prange (0x%llx+%llu), dev_bsize %u\n", v28, v35, *(v32 - 4), v39);
            v13 = 92;
            v14 = 732;
            goto LABEL_56;
          }

          v37 = *(v32 - 1);
          if (v37 / v30 >= v31)
          {
            fsck_printf_err("recovery extent #%llu: fext_laddr (0x%llx) exceeds nx_block_count (%llu), fs_bsize %u\n", v28, v37, v31, v30);
            v13 = 92;
            v14 = 733;
            goto LABEL_56;
          }

          v38 = 8 * (v34 * v39 / v27);
          if (v38 + v11 > v25)
          {
            fsck_printf_err("recovery extent #%llu: checksums at offset %llu, length %llu exceed ersb_recovery_length %llu\n", v28, v11, v38, v25);
            v13 = 92;
            v14 = 734;
            goto LABEL_56;
          }

          if ((v26 & 0x20) != 0 && !*v32)
          {
            break;
          }

          ++v28;
          v32 += 6;
          v11 += v38;
          if (*v10 == v28)
          {
            goto LABEL_50;
          }
        }

        fsck_printf_err("recovery extent #%llu: invalid ersb_flags (0x%llx), ERSB_FLAG_CID_IS_TWEAK is set but fext_cid == 0\n", v28, v26);
        v13 = 92;
        v14 = 735;
      }

      else
      {
        fsck_printf_err("checksum block size is invalid, checksum_block_size enum: %llu\n", (v26 >> 8) & 0xF);
        v13 = 92;
        v14 = 729;
      }
    }

    else
    {
      fsck_printf_err("missing encryption rolling recovery data, actual length %llu, ersb_recovery_length %llu\n", v19, v25);
      v13 = 92;
      v14 = 727;
    }
  }

LABEL_56:
  v15 = 92;
LABEL_57:
  fsck_fail_func(v14, v15);
LABEL_13:
  if (v40)
  {
    free(v40);
  }

  if (v12)
  {
    free(v12);
  }

  return v13;
}

uint64_t fsck_ios_encryption_rolling(uint64_t a1, uint64_t a2)
{
  if (((*(*(a2 + 40) + 264) | 0x100u) & 0x109) == 0x100)
  {
    v27 = 0;
    v28 = 0;
    v3 = sub_10007C638(a1, a2, &v28, &v27);
    if (v3)
    {
      v4 = v3;
      if (v3 != 2)
      {
        fsck_printf_err("iOS encryption rolling state object: cannot get ierso xattr\n");
        v5 = 1143;
LABEL_16:
        fsck_fail_func(v5, v4);
        return v4;
      }

      return 0;
    }

    v7 = v28;
    if (v27 <= 4)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr record too small (%zu)\n", v27);
      v4 = 92;
      v8 = 1136;
LABEL_19:
      v11 = 92;
LABEL_20:
      fsck_fail_func(v8, v11);
LABEL_21:
      v9 = v7;
      goto LABEL_22;
    }

    if ((*v28 & 3) != 2)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr invalid storage type, flags (%hu)\n", *v28);
      v4 = 92;
      v8 = 1137;
      goto LABEL_19;
    }

    v10 = v28[1];
    if (v10 + 4 != v27)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr payload (%hu) does not match record size (%zu)\n", v28[1], v27);
      v4 = 92;
      v8 = 1138;
      goto LABEL_19;
    }

    if (v10 <= 3)
    {
      fsck_printf_err("iOS encryption rolling state object: xattr payload (%hu) is too small\n", v28[1]);
      v4 = 92;
      v8 = 1139;
      goto LABEL_19;
    }

    v13 = *(v28 + 1);
    if (v13 > 2)
    {
      fsck_printf_warn("iOS encryption rolling state object: ierso version (%u) unrecognized\n", *(v28 + 1));
      fsck_fail_func(0x474, -6);
      v4 = 0;
      goto LABEL_21;
    }

    v14 = qword_1000B3288[v13];
    if (v14 != v10)
    {
      fsck_printf_err("iOS encryption rolling state object: size (%u), version (%u) does not match expected size (%zu)\n", v10, *(v28 + 1), v14);
      v4 = 92;
      v8 = 1141;
      goto LABEL_19;
    }

    v15 = malloc_type_calloc(1uLL, 0x170uLL, 0x1000040BCF37258uLL);
    if (!v15)
    {
      fsck_printf_err("iOS encryption rolling state object: failed to allocate ierso\n");
      v4 = 12;
      v8 = 1142;
      v11 = 12;
      goto LABEL_20;
    }

    v16 = v15;
    __memcpy_chk();
    v17 = *v16;
    if (!*v16)
    {
      *(v16 + 32) = 1;
    }

    v18 = 48;
    if (!*(a2 + 56))
    {
      v18 = 40;
    }

    v19 = *(a2 + v18);
    v21 = *(v16 + 8);
    v20 = *(v16 + 16);
    v22 = *(v19 + 176);
    if (v20 > v21 || (v21 < v22 ? (v23 = v22 >> 60 == 0) : (v23 = 0), !v23))
    {
      fsck_printf_err("iOS encryption rolling state object: epoch unordered: current_id (%llu) <= epoch (%llu) < apfs_next_obj_id (%llu) <= MAX_JOBJ_ID (%llu)\n", v20, v21, v22, 0xFFFFFFFFFFFFFFFLL);
      v4 = 92;
      v24 = 1128;
LABEL_38:
      fsck_fail_func(v24, 92);
LABEL_39:
      free(v16);
      goto LABEL_21;
    }

    if (*(v16 + 24) >> 55)
    {
      fsck_printf_err("iOS encryption rolling state object: current_offset (%llu) too large\n", *(v16 + 24));
      v4 = 92;
      v24 = 1129;
      goto LABEL_38;
    }

    v25 = *(v16 + 32);
    if ((v25 - 1) >= 2)
    {
      fsck_printf_err("iOS encryption rolling state object: (version %u) invalid policy (%u)\n", v17, v25);
      v4 = 92;
      v24 = 1130;
      goto LABEL_38;
    }

    v26 = *(v16 + 36);
    if (v25 == 1)
    {
      if (v26 >= 2)
      {
        fsck_printf_err("iOS encryption rolling state object: (version %u) lite rolling has invalid current_state (%u)\n", v17, v26);
        v24 = 1131;
LABEL_56:
        v4 = 92;
        goto LABEL_38;
      }
    }

    else if (v26 - 1 >= 2)
    {
      if (v26)
      {
        fsck_printf_err("iOS encryption rolling state object: (version %u) full rolling has unrecognized current_state (%u)\n", v17, v26);
        v24 = 1133;
        goto LABEL_56;
      }

      if (v20)
      {
        fsck_printf_err("iOS encryption rolling state object: (version %u) current_state unset, yet non-zero current_id (%llu)", v17, v20);
        v24 = 1132;
        goto LABEL_56;
      }
    }

    v4 = sub_10007C7FC(v16);
    if (!v4)
    {
      sub_10007C86C(v16);
    }

    goto LABEL_39;
  }

  v28 = 0;
  v6 = sub_10007C638(a1, a2, &v28, &v27);
  if (!v6)
  {
    fsck_printf_err("iOS encryption rolling state object: non-iOS content protected volume unexpectedly has ierso\n");
    v4 = 92;
    fsck_fail_func(0x479, 92);
    v9 = v28;
LABEL_22:
    free(v9);
    return v4;
  }

  v4 = v6;
  if (v6 != 2)
  {
    fsck_printf_err("iOS encryption rolling state object: cannot determine absence of ierso xattr\n");
    v5 = 1144;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10007C638(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = 38;
  v22 = 3804;
  v24 = 0x4000000000000003;
  v25 = 28;
  strcpy(v26, "com.apple.system.apfs.ierso");
  v8 = malloc_type_malloc(0xEDCuLL, 0xBC85CF50uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = *(a2 + 48);
  v11 = 48;
  if (!*(a2 + 56))
  {
    v11 = 40;
  }

  v12 = *(a2 + v11);
  v13 = *(a2 + 48);
  if (!v10)
  {
    v13 = *(a2 + 40);
  }

  v14 = *(v12 + 116);
  v15 = *(v12 + 136);
  memset(v21, 0, sizeof(v21));
  if ((*(v13 + 56) & 0x20) != 0)
  {
    v16 = *(a2 + 16);
  }

  else
  {
    v16 = 0;
  }

  if (!v10)
  {
    v10 = *(a2 + 40);
  }

  if ((*(v10 + 56) & 0x20) != 0)
  {
    v18 = *(a2 + 20);
  }

  else
  {
    v18 = 0;
  }

  inited = tree_init_ext(v21, a1, a2, v14 & 0xC0000000, v14, 14, v16, *(*(a1 + 8) + 36), 0, 0, v18, v15, jkey_compare);
  if (inited)
  {
    v17 = inited;
  }

  else
  {
    v17 = tree_lookup(v21, *(a2 + 56), 0, &v24, &v23, 38, v9, &v22);
    if (!v17)
    {
      *a3 = v9;
      *a4 = v22;
      return v17;
    }
  }

  free(v9);
  return v17;
}

uint64_t sub_10007C7FC(_DWORD *a1)
{
  if (a1[8] != 2 || a1[9] != 2 || memchr(a1 + 10, 0, 0x80uLL))
  {
    return 0;
  }

  fsck_printf_err("iOS encryption rolling state object: current_xattr is unterminated\n");
  v1 = 92;
  fsck_fail_func(0x46E, 92);
  return v1;
}

char *sub_10007C86C(uint64_t a1)
{
  result = get_timestamp();
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  if (!v3)
  {
    v3 = result;
  }

  if (!v4)
  {
    v4 = result;
  }

  if (v3 > v4 || v4 > result)
  {
    fsck_printf_warn("iOS encryption rolling state object: (version %u) timestamps unordered: start_time (%llu) <= end_time (%llu) <= current_time (%llu)\n", *a1, v3, v4, result);

    return fsck_fail_func(0x46F, -4);
  }

  return result;
}

uint64_t validate_snap_name(uint64_t a1, uint64_t *a2, int a3, unint64_t *a4, int a5, int a6, _DWORD *a7)
{
  *a7 = 0;
  if ((a3 - 267) <= 0xFFFFFEFE)
  {
    if (a6)
    {
      v10 = _apfs_type_to_str(*a2 >> 60);
      fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v10, *a2 & 0xFFFFFFFFFFFFFFFLL, a3);
      v11 = 330;
LABEL_37:
      v27 = 92;
      fsck_fail_func(v11, 92);
      return v27;
    }

    return 92;
  }

  v12 = *a2;
  if ((~*a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    if (a6)
    {
      v28 = _apfs_type_to_str(v12 >> 60);
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v28, *a2 & 0xFFFFFFFFFFFFFFFLL);
      v11 = 331;
      goto LABEL_37;
    }

    return 92;
  }

  v17 = *(a2 + 4);
  if (v17 + 10 != a3 && a6 != 0)
  {
    v19 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name_len (%u), given key length (%u)\n", v19, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4), a3);
    fsck_fail_func(0x14D, -9);
    *a7 |= 2u;
    v17 = *(a2 + 4);
  }

  if ((v17 - 257) <= 0xFF00u && a6 != 0)
  {
    v21 = _apfs_type_to_str(*a2 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name_len (%u)\n", v21, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4));
    *a7 |= 2u;
    fsck_fail_func(0x14C, -9);
    v17 = *(a2 + 4);
  }

  if (*(a2 + v17 + 9))
  {
    v22 = a6 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = _apfs_type_to_str(*a2 >> 60);
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v23, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4), a2 + 10, *(a2 + 4));
    *a7 |= 1u;
    fsck_fail_func(0x14E, -9);
    v17 = *(a2 + 4);
  }

  if (sub_10007CC60(a2 + 10, v17) && a6)
  {
    v24 = _apfs_type_to_str(*a2 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v24, *a2 & 0xFFFFFFFFFFFFFFFLL, *(a2 + 4), a2 + 10);
    *a7 |= 1u;
    fsck_fail_func(0x14F, -9);
  }

  if (a5 != 8)
  {
    if (a6)
    {
      v29 = _apfs_type_to_str(*a2 >> 60);
      fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v29, *a2 & 0xFFFFFFFFFFFFFFFLL, a5);
      v11 = 336;
      goto LABEL_37;
    }

    return 92;
  }

  v25 = *a4;
  if (!*a4)
  {
    if (!a6)
    {
      return 92;
    }

LABEL_36:
    v30 = _apfs_type_to_str(*a2 >> 60);
    fsck_printf_err("%s (id %llu): invalid snap_xid (%llu)\n", v30, *a2 & 0xFFFFFFFFFFFFFFFLL, *a4);
    v11 = 337;
    goto LABEL_37;
  }

  v26 = *(*(a1 + 40) + 16);
  if (v25 <= v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = 92;
  }

  if (v25 > v26 && (a6 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v27;
}

uint64_t sub_10007CC60(UInt8 *bytes, CFIndex numBytes)
{
  v2 = CFStringCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, numBytes, 0x8000100u, 0, kCFAllocatorNull);
  if (v2)
  {
    CFRelease(v2);
    return 0;
  }

  else
  {
    v3 = 92;
    fsck_fail_func(0xB7, 92);
  }

  return v3;
}

uint64_t sub_10007CEB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 != 8)
  {
    v16 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v15 = 313;
    goto LABEL_6;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFLL) == 0 || (v13 & 0xFFFFFFFFFFFFFFFLL) > *(*(a2 + 40) + 16))
  {
    v14 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 314;
    goto LABEL_6;
  }

  if ((a6 - 307) <= 0xFFFFFEFE)
  {
    v19 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v15 = 315;
    goto LABEL_6;
  }

  if (!*(a5 + 8))
  {
    v22 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid sblock_oid (%llu)\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8));
    v15 = 317;
    goto LABEL_6;
  }

  v20 = *(a5 + 32);
  if (v20 <= 1)
  {
    v21 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid inum (%llu)\n", v21, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 32));
    v15 = 320;
    goto LABEL_6;
  }

  if (v20 <= 0xF && (v20 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_warn("%s (id %llu): invalid inum (%llu)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 32));
    fsck_fail_func(0x141, -2);
    v20 = *(a5 + 32);
  }

  if (*(a7 + 40) < v20 + 1)
  {
    *(a7 + 40) = v20 + 1;
  }

  if (!*(a5 + 40))
  {
    v36 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid extentref_tree_type (0x%x)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 40));
    v15 = 322;
    goto LABEL_6;
  }

  if (*(a5 + 44) >= 4u)
  {
    v27 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 44), 3);
    fsck_fail_func(0x143, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v28, v29, v30, v31, v32, v33, *(a5 + 44) & 0xFFFFFFFC))
      {
        *(a5 + 44) &= 3u;
        *a8 = 1;
      }
    }
  }

  v34 = *(a5 + 48);
  if (v34 + 50 == a6)
  {
    v35 = 0;
  }

  else
  {
    v37 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name_len (%u), given value length (%u)\n", v37, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48), a6);
    fsck_fail_func(0x145, 92);
    v34 = *(a5 + 48);
    v35 = 2 * (v34 + 50 > a6);
  }

  if ((v34 - 257) <= 0xFF00u)
  {
    v38 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid name_len (%u)\n", v38, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48));
    fsck_fail_func(0x144, 92);
    v34 = *(a5 + 48);
    v35 = 2;
  }

  if (*(a5 + 50 + v34 - 1))
  {
    v39 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v39, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48), (a5 + 50), *(a5 + 48));
    v35 |= 1u;
    fsck_fail_func(0x146, -9);
    v34 = *(a5 + 48);
  }

  if (sub_10007CC60((a5 + 50), v34))
  {
    v40 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v40, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 48), (a5 + 50));
    LOBYTE(v35) = v35 | 1;
    fsck_fail_func(0x147, -9);
  }

  else if (!v35)
  {
LABEL_41:
    v17 = snapshot_register_meta(a3, a5);
    if (v17)
    {
      goto LABEL_7;
    }

    ++*(a7 + 32);
    v41 = *(a5 + 8);
    v42 = *(*(a1 + 8) + 40);
    v43 = *a3;
    if (v42 - 1 >= v41 && v42 >= 2 && v41 >= 1 && v42 > v41)
    {
      mark_object_allocated(a1, v41, 1uLL, 0, 0x40000000, v41, v43 & 0xFFFFFFFFFFFFFFFLL, 13, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    v44 = _apfs_type_to_str(v43 >> 60);
    fsck_printf_err("%s (id %llu): invalid sblock_oid (%llu)\n", v44, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8));
    v15 = 1244;
LABEL_6:
    v17 = 92;
    fsck_fail_func(v15, 92);
LABEL_7:
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return v17;
  }

  if (a6 == 50)
  {
    v17 = 92;
  }

  else
  {
    v17 = snap_meta_repair_name(a1, a2, a3, a5, a6, v35, a8);
  }

  if ((v35 & 2) == 0 || !v17)
  {
    goto LABEL_41;
  }

  return v17;
}

uint64_t sub_10007D3EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v10 = *a3;
  if (a4 != 8)
  {
    v22 = _apfs_type_to_str(v10 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    v23 = 92;
    v24 = 205;
LABEL_16:
    v26 = 92;
    goto LABEL_17;
  }

  if (a6 != 20)
  {
    v25 = _apfs_type_to_str(v10 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    print_jobj_key_val_info(a2, a3, 8, a5, a6);
    v23 = 92;
    v24 = 206;
    goto LABEL_16;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFLL;
  v13 = *a5;
  v14 = *a5 & 0xFFFFFFFFFFFFFFFLL;
  v15 = *(*(a1 + 8) + 40);
  if (v15 > v14 && v12 != 0 && v15 > v12 && v15 - v14 >= v12)
  {
    v20 = 0;
  }

  else
  {
    v19 = _apfs_type_to_str(v10 >> 60);
    fsck_printf_err("%s (id %llu): Bad phys_block_num + len (%llu) for physical extent record\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, v14);
    fsck_fail_func(0x467, 92);
    v20 = 1;
  }

  v28 = v13 >> 60;
  if (!v14)
  {
    v29 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): length is 0\n", v29, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0xCF, 92);
    v20 = 1;
  }

  if (v28 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): unknown kind (%u)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, v28);
    fsck_fail_func(0x33A, 92);
    v20 |= 2u;
  }

  v31 = *(a5 + 1);
  if (!v31)
  {
    v35 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): owning_obj_id is 0\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0xD0, 92);
    LOBYTE(v20) = v20 | 4;
LABEL_37:
    print_jobj_key_val_info(a2, a3, 8, a5, 20);
    goto LABEL_38;
  }

  if (v28 == 2 && v31 != -1)
  {
    v32 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid owning_obj_id (%llu) for update extent\n", v32, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 1));
    v33 = 1230;
    v34 = 92;
LABEL_35:
    fsck_fail_func(v33, v34);
    goto LABEL_36;
  }

  if (v28 == 1 && v31 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v36 = _apfs_type_to_str(*a3 >> 60);
    if (*(a5 + 1) == -1)
    {
      v37 = "invalid";
    }

    else
    {
      v37 = "unknown";
    }

    fsck_printf_warn("%s (id %llu): owning_obj_id is '%s'\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, v37);
    v33 = 988;
    v34 = -2;
    goto LABEL_35;
  }

LABEL_36:
  if (v20)
  {
    goto LABEL_37;
  }

LABEL_38:
  v23 = phys_extent_register(a1, a2, a3, a5, v20);
  if (!v23)
  {
    return v23;
  }

  v24 = 827;
  v26 = v23;
LABEL_17:
  fsck_fail_func(v24, v26);
  return v23;
}

uint64_t sub_10007D704(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 != 8)
  {
    v18 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v16 = 92;
    v17 = 218;
    goto LABEL_5;
  }

  v14 = (v13 & 0xFFFFFFFFFFFFFFFLL);
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v15 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v15, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v16 = 92;
    v17 = 219;
LABEL_5:
    v19 = 92;
LABEL_6:
    fsck_fail_func(v17, v19);
LABEL_7:
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return v16;
  }

  v24 = (v14 - 4);
  if (v14 <= 0xF && (v14 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0xDC, -2);
  }

  if (a7[5] <= v14)
  {
    a7[5] = v14 + 1;
  }

  if (a6 <= 0x5B)
  {
    v27 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v16 = 92;
    v17 = 221;
    goto LABEL_5;
  }

  v28 = *(a5 + 40) >> 12;
  if (v28 <= 0xE)
  {
    v29 = 1 << v28;
    if ((v29 & 0x1556) != 0)
    {
      goto LABEL_20;
    }

    if ((v29 & 0x4001) != 0)
    {
      v42 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid type (0%o)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[10] & 0xF000);
      v16 = 92;
      v17 = 222;
      goto LABEL_5;
    }
  }

  v56 = _apfs_type_to_str(*a3 >> 60);
  fsck_printf_warn("%s (id %llu): invalid type (0%o)\n", v56, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[10] & 0xF000);
  fsck_fail_func(0xDF, -5);
LABEL_20:
  if (!*a5)
  {
    v41 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid parent_id (%llu)\n", v41, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v16 = 92;
    v17 = 224;
    goto LABEL_5;
  }

  if ((*a5 - 16) >= 0xFFFFFFFFFFFFFFF4)
  {
    v30 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid parent_id (%llu)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    fsck_fail_func(0xE1, -2);
  }

  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && *a5 == 1)
  {
    v31 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid parent_id (%llu) for regular directory\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    fsck_fail_func(0xE2, 92);
    v135 = 0;
    v134 = 0;
    xfield = get_xfield(a5 + 46, a6 - 92, 4, &v135, &v134, 0, 0);
    if ((a5[10] & 0xF000) == 0x4000 && !xfield && !strncmp(v135, ".DocumentRevisions-V100", v134) && fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: parent_id (%llu)? ", v33, v34, v35, v36, v37, v38, *a5))
    {
      *a5 = 2;
      *a8 = 1;
    }

    else
    {
      *(a2 + 13) = 1;
    }
  }

  v39 = *a5;
  if (v14 == 2)
  {
    if (v39 != 1)
    {
      v57 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid parent_id (%llu) for root directory\n", v57, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
      v16 = 92;
      v17 = 227;
      goto LABEL_5;
    }

LABEL_37:
    v43 = 2;
    goto LABEL_39;
  }

  if (v14 == 3)
  {
    if (v39 != 1)
    {
      v40 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid parent_id (%llu) for private directory\n", v40, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
      v16 = 92;
      v17 = 228;
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v43 = v39 + 1;
LABEL_39:
  if (a7[5] < v43)
  {
    a7[5] = v43;
  }

  v44 = a5[1];
  if (!v44)
  {
    LOBYTE(v135) = 0;
    v46 = is_file_in_purgatory(a1, a2, a7[8], *a3 & 0xFFFFFFFFFFFFFFFLL, &v135);
    if (v46)
    {
      v16 = v46;
      v17 = 1263;
      v19 = v16;
      goto LABEL_6;
    }

    if ((v135 & 1) == 0)
    {
      v74 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid private_id (%llu)\n", v74, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1]);
      v16 = 92;
      v17 = 229;
      goto LABEL_5;
    }

    v44 = a5[1];
    v24 = (v14 - 4);
  }

  if (v44 == 1)
  {
    v45 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid private_id (%llu)\n", v45, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1]);
    v16 = 92;
    v17 = 1264;
    goto LABEL_5;
  }

  if (v44 <= 0xF && (v44 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v47 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid private_id (%llu)\n", v47, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1]);
    fsck_fail_func(0xE6, -2);
    v44 = a5[1];
  }

  v48 = v44 + 1;
  if (a7[5] < v48)
  {
    a7[5] = v48;
  }

  v129 = v24;
  if ((a5[10] & 0xF000) != 0x4000)
  {
    if ((a5[7] & 0x80000000) != 0)
    {
      v75 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid nlink (%d)\n", v75, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 14));
      v16 = 92;
      v17 = 236;
      goto LABEL_5;
    }

LABEL_67:
    v58 = a5[6];
    if (v58 >> 31)
    {
      v59 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): unknown internal_flags (0x%llx / known flags are: 0x%llx)\n", v59, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], 0x7FFFFFFFLL);
      fsck_fail_func(0xED, -3);
      v58 = a5[6];
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        v66 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v60, v61, v62, v63, v64, v65, v58 & 0xFFFFFFFF80000000);
        v58 = a5[6];
        if (v66)
        {
          v58 = a5[6] & 0x7FFFFFFFLL;
          a5[6] = v58;
          *a8 = 1;
        }
      }
    }

    if ((v58 & 0x800000) != 0)
    {
      if ((*(*(a2 + 40) + 56) & 0x40) != 0)
      {
        v67 = v58 & 8;
        if ((v58 & 8) != 0 && (a5[10] & 0xF000) == 0x8000)
        {
          pfkur_register_file_id(v14);
          v58 = a5[6];
          goto LABEL_88;
        }
      }

      else
      {
        v67 = v58 & 8;
      }

      _apfs_type_to_str(*a3 >> 60);
      if (v67)
      {
        fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n");
      }

      else
      {
        fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx), inconsistent protection class\n");
      }

      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v68, v69, v70, v71, v72, v73, a5[6]))
      {
        v16 = 92;
        v17 = 972;
        goto LABEL_5;
      }

      v58 = a5[6] & 0xFFFFFFFFFF7FFFFFLL;
      a5[6] = v58;
      *a8 = 1;
    }

LABEL_88:
    if ((a5[10] & 0xF000) != 0x4000 && (v58 & 4) != 0)
    {
      v76 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx), given type (0%o)\n", v76, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], a5[10] & 0xF000);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v77, v78, v79, v80, v81, v82, a5[6]))
      {
        v16 = 92;
        v17 = 238;
        goto LABEL_5;
      }

      v58 = a5[6] & 0xFFFFFFFFFFFFFFFBLL;
      a5[6] = v58;
      *a8 = 1;
    }

    if ((v58 & 0x800000) != 0 && (*(*(a2 + 40) + 264) & 0x109) != 0x100)
    {
      v83 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx) given apfs_fs_flags (0x%llx) PFK bit\n", v83, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], *(*(a2 + 40) + 264));
      fsck_fail_func(0x5E5, -3);
      v90 = fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v84, v85, v86, v87, v88, v89, a5[6]);
      v58 = a5[6];
      if (v90)
      {
        v58 &= ~0x800000uLL;
        a5[6] = v58;
        *a8 = 1;
      }
    }

    if ((v58 & 0x70000000) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
    {
      v91 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx) given volume readonly compatible features (0x%llx)\n", v91, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6], *(*(a2 + 40) + 48));
      fsck_fail_func(0x5E6, -3);
      v98 = fsckAskPrompt(fsck_apfs_ctx, "Fix inode_val: internal_flags (0x%llx)? ", v92, v93, v94, v95, v96, v97, a5[6]);
      v58 = a5[6];
      if (v98)
      {
        v58 &= 0xFFFFFFFF8FFFFFFFLL;
        a5[6] = v58;
        *a8 = 1;
      }
    }

    if ((v58 & 6) == 4)
    {
      v99 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats origin but not dir-stats maintained)\n", v99, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6]);
      fsck_fail_func(0x532, -3);
      v58 = a5[6];
    }

    if ((v58 & 0x20000002) == 0x20000000)
    {
      v100 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid internal_flags (0x%llx), (dir-stats SAF but not dir-stats maintained)\n", v100, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[6]);
      fsck_fail_func(0x533, -3);
    }

    if (*(a5 + 15) >= 8u)
    {
      v101 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid default_protection_class (%u)\n", v101, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 15));
      v16 = 92;
      v17 = 239;
      goto LABEL_5;
    }

    if ((*(a5 + 35) & 0xBF60) != 0)
    {
      v102 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid bsd_flags (0x%x)\n", v102, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 17));
      fsck_fail_func(0xF0, -3);
    }

    if (*(a5 + 41))
    {
      v103 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid pad1 (0x%hx)\n", v103, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 41));
      fsck_fail_func(0xF1, -10);
    }

    if ((*(*(a2 + 40) + 57) & 2) != 0 && (a5[10] & 0xB000 | 0x4000) == 0x6000 && !*(a5 + 21))
    {
      v104 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): zero rdev on char/block device (mode %u)\n", v104, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 40));
      fsck_fail_func(0x4C0, 92);
    }

    if (*(a5 + 84) && (*(a5 + 50) & 4) == 0)
    {
      if ((*(*(a2 + 40) + 57) & 2) != 0)
      {
        v112 = a5[10] & 0xF000;
        if (v112 != 0x2000 && v112 != 0x4000 && v112 != 24576)
        {
          v113 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): uncompressed_size/rdev/dir_nlink union field is set (%llu) but inode flags and mode do not indicate it should (flags: 0x%llx, mode %u)\n", v113, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 84), a5[6], *(a5 + 40));
          fsck_fail_func(0x4AC, 92);
          if (fsckAskPrompt(fsck_apfs_ctx, "Clear uncompressed size/rdev/dir_nlink? ", v114, v115, v116, v117, v118, v119))
          {
            *(a5 + 84) = 0;
            *a8 = 1;
          }
        }

        if (*(a5 + 22))
        {
          v120 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid pad2 (0x%x)\n", v120, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 22));
          fsck_fail_func(0x4C1, -10);
        }
      }

      else
      {
        v105 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_warn("%s (id %llu): uncompressed size is set (%llu) but has-uncompressed-size flag is not set (flags: 0x%llx)\n", v105, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 84), a5[6]);
        fsck_fail_func(0xF2, 92);
        if (fsckAskPrompt(fsck_apfs_ctx, "Clear uncompressed size? ", v106, v107, v108, v109, v110, v111))
        {
          *(a5 + 84) = 0;
          *a8 = 1;
        }
      }
    }

    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v133 = a5;
    v121 = sub_100082540(a1, a2, a3, a5 + 46, a6 - 92, sub_10008276C, a7, a8, &v130);
    if (v121 || (v121 = sub_100083848(a1, a2, a7, &v130, a3, a8), v121))
    {
      v16 = v121;
      v122 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid xfields\n", v122, *a3 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_7;
    }

    if (a7[8])
    {
      v123 = 0;
    }

    else
    {
      v123 = a2 + 768;
    }

    v124 = inode_register(a1, a2, v123, v14, a5, *(&v130 + 1), v132, *(&v132 + 1));
    if (v124 || (a5[6] & 0x10) != 0 && (a5[10] & 0xF000) == 0x8000 && (v131 >= *(&v131 + 1) ? (v125 = v131 - *(&v131 + 1)) : (v125 = 0), !BYTE5(v130) ? (v126 = 0) : (v126 = v132), !BYTE2(v130) ? (v127 = 0) : (v127 = *(&v130 + 1)), v124 = clone_mapping_register_inode(v14, a5, a6, v125, v126, v127), v124) || *(&v132 + 1) && (v124 = clonegroup_register_inode(v14, a5, a6), v124))
    {
      v16 = v124;
      goto LABEL_7;
    }

    if ((a5[6] & 1) == 0)
    {
      v128 = a5[10] & 0xF000;
      if (v128 == 40960)
      {
        a7 += 2;
      }

      else if (v128 != 0x8000)
      {
        if (v128 == 0x4000)
        {
          if (v129 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_159;
          }

          ++a7;
        }

        else
        {
          a7 += 3;
        }
      }

      ++*a7;
    }

LABEL_159:
    if ((*(*(a2 + 40) + 57) & 2) == 0 || (*(a5 + 50) & 8) == 0)
    {
      return 0;
    }

    v16 = purgeable_register_inode(a2, v14);
    if (!v16)
    {
      return v16;
    }

    goto LABEL_7;
  }

  v49 = a7[8];
  if (v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = a2 + 768;
  }

  v16 = dir_register(a1, a2, v49, v14, v50);
  if (!v16)
  {
    v51 = *(a5 + 14);
    if ((v51 & 0x80000000) != 0)
    {
      v52 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid nchildren (%d)\n", v52, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 14));
      fsck_fail_func(0x4BE, -8);
      v51 = *(a5 + 14);
    }

    dir_register_nchildren(v14, v51);
    if ((*(*(a2 + 40) + 57) & 2) != 0)
    {
      v53 = *(a5 + 21);
      if ((v53 & 0x80000000) != 0)
      {
        v54 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_warn("%s (id %llu): invalid dir_nlink (%d)\n", v54, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 21));
        fsck_fail_func(0x4BF, -8);
        v53 = *(a5 + 21);
      }

      if (*(a5 + 14) < v53)
      {
        v55 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_warn("%s (id %llu): directory nlink value %d is greater than nchildren (%d)\n", v55, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 21), *(a5 + 14));
        fsck_fail_func(0x483, -8);
        v53 = *(a5 + 21);
      }

      dir_register_nlink(v14, v53);
    }

    goto LABEL_67;
  }

  return v16;
}

uint64_t sub_10007E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v13 = *a3;
  v70 = 0;
  if ((a4 - 777) <= 0xFFFFFD00)
  {
    v14 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    updated = 92;
    v16 = 257;
LABEL_20:
    v28 = 92;
LABEL_21:
    fsck_fail_func(v16, v28);
LABEL_22:
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return updated;
  }

  v17 = (v13 & 0xFFFFFFFFFFFFFFFLL);
  if ((v13 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v18 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL);
    updated = 92;
    v16 = 258;
    goto LABEL_20;
  }

  if (v17 <= 0xF && (v17 > 7 || ((1 << v13) & 0x8C) == 0))
  {
    v23 = _apfs_type_to_str(v13 >> 60);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v23, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x103, -2);
  }

  if (a7[5] <= v17)
  {
    a7[5] = v17 + 1;
  }

  v24 = *(a3 + 8);
  if ((v24 - 767) <= 0xFD02u)
  {
    v25 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid name_len (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 8));
    updated = 92;
    v16 = 260;
    goto LABEL_20;
  }

  if (a4 != (v24 + 10))
  {
    v27 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, a4, *(a3 + 8));
    updated = 92;
    v16 = 261;
    goto LABEL_20;
  }

  if (*(a3 + 10 + (v24 - 1)))
  {
    v26 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 8), (a3 + 10), *(a3 + 8));
    updated = 92;
    v16 = 262;
    goto LABEL_20;
  }

  if (sub_10007CC60((a3 + 10), v24))
  {
    v30 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 8), (a3 + 10));
    fsck_fail_func(0x107, -9);
  }

  if (a6 <= 3)
  {
    v31 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    updated = 92;
    v16 = 264;
    goto LABEL_20;
  }

  __s1 = (a3 + 10);
  v32 = *a5;
  if ((v32 & 0xFFE8) != 0)
  {
    v33 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, 23);
    fsck_fail_func(0x109, -3);
    v32 = *a5;
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v40 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v34, v35, v36, v37, v38, v39, v32 & 0xFFE8);
      v32 = *a5;
      if (v40)
      {
        v32 &= 0x17u;
        *a5 = v32;
        *a8 = 1;
      }
    }
  }

  if ((~v32 & 3) == 0)
  {
    v41 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid flags (0x%x)\n", v41, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    updated = 92;
    v16 = 266;
    goto LABEL_20;
  }

  if ((v32 & 4) != 0)
  {
    v65 = *(a3 + 8);
    if (strncmp(__s1, "com.apple.fs.symlink", v65))
    {
      if (strncmp(__s1, "com.apple.fs.altlink", v65) && strncmp(__s1, "com.apple.fs.firmlink", v65) && strncmp(__s1, "com.apple.fs.cow-exempt-file-count", v65) && strncmp(__s1, "com.apple.fs.graft-vol-uuid", v65) && strncmp(__s1, "com.apple.fs.graft-jobj-id-base", v65) && strncmp(__s1, "com.apple.fs.graft-jobj-id-len", v65) && strncmp(__s1, "com.apple.system.fs.speculative_telemetry", v65))
      {
        v42 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_warn("%s (id %llu): invalid flags (0x%x), given name (<%.*s> ; name_len %d)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, *(a3 + 8), __s1, *(a3 + 8));
        fsck_fail_func(0x10B, -3);
        LOWORD(v32) = *a5;
      }
    }
  }

  if ((v32 & 1) != 0 && a5[1] != 48)
  {
    v47 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v47, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1], *a5);
    updated = 92;
    v16 = 268;
    goto LABEL_20;
  }

  v43 = a5[1];
  if ((v32 & 2) != 0 && v43 >= 0xEDD)
  {
    v44 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid xdata_len (%u), given flags (0x%x)\n", v44, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1], *a5);
    updated = 92;
    v16 = 269;
    goto LABEL_20;
  }

  if (v43 + 4 != a6)
  {
    v48 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid length (%u), given xdata_len (%u)\n", v48, *a3 & 0xFFFFFFFFFFFFFFFLL, a6, a5[1]);
    updated = 92;
    v16 = 270;
    goto LABEL_20;
  }

  if (a7[8])
  {
    v45 = 0;
  }

  else
  {
    v45 = a2 + 768;
  }

  inode_register_xattr(a1, v45, a8, a3, a5, &v70);
  if (v46)
  {
    updated = v46;
    v16 = 973;
LABEL_55:
    v28 = updated;
    goto LABEL_21;
  }

  v49 = *(a3 + 8);
  v50 = strncmp(__s1, "com.apple.ResourceFork", v49);
  v51 = *a5;
  if (!v50)
  {
    if ((v51 & 1) == 0)
    {
      v56 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): com.apple.ResourceFork is expected to be stream based\n", v56, *a3 & 0xFFFFFFFFFFFFFFFLL);
      updated = 92;
      v16 = 1453;
      goto LABEL_20;
    }

LABEL_70:
    v57 = *(a5 + 10);
    __src = *(a5 + 2);
    v68 = v57;
    v69 = *(a5 + 18);
    if (__src <= 1)
    {
      v58 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid xattr_obj_id (%llu)\n", v58, *a3 & 0xFFFFFFFFFFFFFFFLL, __src);
      updated = 92;
      v16 = 271;
      goto LABEL_20;
    }

    if (__src <= 0xF && (__src - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v59 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid xattr_obj_id (%llu)\n", v59, *a3 & 0xFFFFFFFFFFFFFFFLL, __src);
      fsck_fail_func(0x110, -2);
    }

    if (a7[5] < (__src + 1))
    {
      a7[5] = __src + 1;
    }

    v60 = sub_100083E40(a1, a2, a3, 0, &__src + 1, a7, a8);
    if (!v60)
    {
      v62 = *(a2 + 48);
      v63 = v62;
      if (!v62)
      {
        v63 = *(a2 + 40);
      }

      if ((*(v63 + 56) & 0x20) != 0)
      {
        v64 = __src;
        a7[9] = v17;
        a7[10] = v64;
      }

      if (!v70)
      {
        v60 = dstream_register(v17, __src, v68, 0, 0, 0);
        if (v60)
        {
          goto LABEL_78;
        }

        v62 = *(a2 + 48);
      }

      if (!v62)
      {
        v62 = *(a2 + 40);
      }

      if ((*(v62 + 56) & 0x20) != 0 || v70 || (crypto_register_dstream(v17, &__src + 8), !v60))
      {
        if (*a8)
        {
          memcpy(a5 + 2, &__src, a5[1]);
        }

        return 0;
      }
    }

LABEL_78:
    updated = v60;
    v61 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid dstream\n", v61, *a3 & 0xFFFFFFFFFFFFFFFLL);
    goto LABEL_22;
  }

  if (v51)
  {
    goto LABEL_70;
  }

  v52 = *(a2 + 48);
  if (!v52)
  {
    v52 = *(a2 + 40);
  }

  if ((*(v52 + 56) & 0x20) == 0)
  {
    return 0;
  }

  v53 = v49;
  updated = 0;
  if (a6 == 20 && v17 == a7[9])
  {
    if (!strncmp(__s1, "com.apple.decmpfs", v53))
    {
      v54 = *(*(a1 + 8) + 36);
      updated = dstream_update_uncompressed_size(a7[10], (*(a5 + 6) + v54 - 1) / v54 * v54);
      if (!updated)
      {
        return updated;
      }

      v55 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): failed to update dstream (%llu)\n", v55, *a3 & 0xFFFFFFFFFFFFFFFLL, a7[10]);
      v16 = 953;
      goto LABEL_55;
    }

    return 0;
  }

  return updated;
}

uint64_t sub_10007EE44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  if (a4 != 16)
  {
    v16 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v15 = 293;
    goto LABEL_5;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 294;
LABEL_5:
    v17 = 92;
    fsck_fail_func(v15, 92);
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return v17;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v21, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x127, -2);
  }

  v22 = *(a7 + 40);
  if (v22 <= v13)
  {
    v22 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v23 = a3[1];
  if (v23 <= 1)
  {
    v24 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid sibling_id (%llu)\n", v24, *a3 & 0xFFFFFFFFFFFFFFFLL, a3[1]);
    v15 = 296;
    goto LABEL_5;
  }

  if (v23 <= 0xF && (v23 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v25 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid sibling_id (%llu)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, a3[1]);
    fsck_fail_func(0x129, -2);
    v23 = a3[1];
    v22 = *(a7 + 40);
  }

  v26 = v23 + 1;
  if (v22 < v26)
  {
    *(a7 + 40) = v26;
    v22 = v26;
  }

  if ((a6 - 777) <= 0xFFFFFD00)
  {
    v27 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v15 = 298;
    goto LABEL_5;
  }

  v28 = *a5;
  if (*a5 <= 1uLL)
  {
    v29 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid parent_id (%llu)\n", v29, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v15 = 299;
    goto LABEL_5;
  }

  if (v28 <= 0xF && (v28 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v30 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid parent_id (%llu)\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    fsck_fail_func(0x12C, -2);
    v28 = *a5;
    v22 = *(a7 + 40);
  }

  v31 = v28 + 1;
  if (v22 < v31)
  {
    *(a7 + 40) = v31;
  }

  v32 = *(a5 + 4);
  if ((v32 - 767) <= 0xFD02u)
  {
    v33 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v15 = 301;
    goto LABEL_5;
  }

  if (a6 != (v32 + 10))
  {
    v35 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u), given name_len (%u)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, a6, *(a5 + 4));
    v15 = 302;
    goto LABEL_5;
  }

  if (*(a5 + (v32 - 1) + 10))
  {
    v34 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 4), a5 + 10, *(a5 + 4));
    v15 = 303;
    goto LABEL_5;
  }

  if (sub_10007CC60(a5 + 10, v32))
  {
    v36 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 4), a5 + 10);
    fsck_fail_func(0x130, -9);
  }

  return 0;
}

void sub_10007F218(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a3;
  if (a4 != 8)
  {
    v16 = _apfs_type_to_str(v11 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    v14 = 210;
    goto LABEL_5;
  }

  v12 = v11 & 0xFFFFFFFFFFFFFFFLL;
  if ((v11 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v13 = _apfs_type_to_str(v11 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v13, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v14 = 625;
LABEL_5:
    fsck_fail_func(v14, 92);
    return;
  }

  if (v12 <= 0xF && (v12 > 7 || ((1 << v11) & 0x8C) == 0))
  {
    v19 = _apfs_type_to_str(v11 >> 60);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x272, -2);
  }

  if (*(a7 + 40) <= v12)
  {
    *(a7 + 40) = v12 + 1;
  }

  if (a6 != 4)
  {
    v20 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    print_jobj_key_val_info(a2, a3, 8, a5, a6);
    v14 = 211;
    goto LABEL_5;
  }

  dstream_register_dstream_id(a3, a5);
}

uint64_t sub_10007F3D4(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a2 + 48);
  if (!v14)
  {
    v14 = *(a2 + 40);
  }

  v15 = *a3;
  if ((*(v14 + 56) & 0x20) != 0)
  {
    v19 = _apfs_type_to_str(v15 >> 60);
    fsck_printf_err("%s (id %llu): present on sealed volume\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v18 = 922;
  }

  else if (a4 == 8)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFLL;
    if ((v15 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v16 <= 0xF && v16 - 6 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v24 = _apfs_type_to_str(v15 >> 60);
        fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v24, *a3 & 0xFFFFFFFFFFFFFFFLL);
        fsck_fail_func(0xF6, -2);
      }

      if (*(a7 + 40) <= v16)
      {
        *(a7 + 40) = v16 + 1;
      }

      if (a6 > 0x17)
      {
        if (*(a5 + 6) == 1)
        {
          v26 = 336;
        }

        else
        {
          v26 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v27 = 168;
        }

        else
        {
          v27 = 128;
        }

        if (*(a5 + 4) != 6)
        {
          v26 = v27;
        }

        if (v26 + 24 < a6)
        {
          v28 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid value length (%u)\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
        }

        if (*(a7 + 64))
        {
          v29 = 0;
        }

        else
        {
          v29 = a2 + 768;
        }

        crypto_register(a2, a3, a5, v29);
        v21 = v30;
        if (v30 || v16 == 4)
        {
          if (!v30)
          {
            return v21;
          }

          goto LABEL_10;
        }

        if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
        {
          v31 = 6;
        }

        else
        {
          v31 = 5;
        }

        if (v31 != *(a5 + 4) && (*(a5 + 4) || container_is_internal_embedded(a1)))
        {
          v32 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.major_version (%u)\n", v32, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 4));
          fsck_fail_func(0xF9, -6);
        }

        if (*(a5 + 6) >= 2u)
        {
          v33 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.minor_version (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 6));
          fsck_fail_func(0xFA, -6);
        }

        if (*(a5 + 8))
        {
          v34 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.cpflags (%u)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 8));
          fsck_fail_func(0xFB, -3);
        }

        if ((*(a5 + 12) & 0x18) != 0)
        {
          v35 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.persistent_class (%u)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 12));
          fsck_fail_func(0xFC, -6);
        }

        if (!*(a5 + 16) && *(a5 + 4) != 6 && container_is_internal_embedded(a1))
        {
          v36 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.key_os_version (%u)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 16));
          fsck_fail_func(0xFD, -6);
        }

        if (*(a5 + 20) >= 2u)
        {
          v37 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.key_revision (%u)\n", v37, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 20));
          fsck_fail_func(0xFE, -6);
        }

        LODWORD(v38) = *(a5 + 22);
        v39 = *(a5 + 4);
        v40 = (v38 >> 8) + v38;
        if (*(a5 + 6) == 1)
        {
          v41 = 336;
        }

        else
        {
          v41 = 256;
        }

        if (*(a5 + 6) == 1)
        {
          v42 = 168;
        }

        else
        {
          v42 = 128;
        }

        if (v39 == 6)
        {
          v43 = (v38 >> 8) + v38;
        }

        else
        {
          v43 = *(a5 + 22);
        }

        if (v39 != 6)
        {
          v41 = v42;
        }

        if (v43 > v41)
        {
          v44 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_warn("%s (id %llu): invalid state.key_len (%u)\n", v44, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 22));
          fsck_fail_func(0xFF, -11);
          LODWORD(v38) = *(a5 + 22);
          v39 = *(a5 + 4);
          v40 = (v38 >> 8) + v38;
        }

        if (v39 == 6)
        {
          v38 = v40;
        }

        else
        {
          v38 = v38;
        }

        if (v38 + 24 == a6)
        {
          return 0;
        }

        v45 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_err("%s (id %llu): invalid length (%u), given state.key_len (%u)\n", v45, *a3 & 0xFFFFFFFFFFFFFFFLL, a6, *(a5 + 22));
        v18 = 256;
      }

      else
      {
        v25 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
        v18 = 247;
      }
    }

    else
    {
      v17 = _apfs_type_to_str(v15 >> 60);
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL);
      v18 = 245;
    }
  }

  else
  {
    v20 = _apfs_type_to_str(v15 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v18 = 244;
  }

  v21 = 92;
  fsck_fail_func(v18, 92);
LABEL_10:
  print_jobj_key_val_info(a2, a3, a4, a5, a6);
  return v21;
}

uint64_t sub_10007F8D4(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v15 = a2[6];
  if (!v15)
  {
    v15 = a2[5];
  }

  if ((*(v15 + 56) & 0x20) != 0)
  {
    v18 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): file extent record present on sealed volume\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v19 = 921;
LABEL_12:
    v17 = 92;
    fsck_fail_func(v19, 92);
    goto LABEL_13;
  }

  if (a4 != 16)
  {
    v20 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v19 = 212;
    goto LABEL_12;
  }

  if (a6 != 24)
  {
    v21 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v21, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v19 = 213;
    goto LABEL_12;
  }

  v16 = sub_100084668(a1, a2, a3, a5, a7, a8);
  if (v16 || (dstream_register_fext(a3, a5), v16))
  {
    v17 = v16;
  }

  else
  {
    sub_100084C90(a2, a3, a5, a7, a8);
    v17 = v23;
    if (!v23)
    {
      return v17;
    }
  }

LABEL_13:
  print_jobj_key_val_info(a2, a3, a4, a5, a6);
  return v17;
}

uint64_t sub_10007FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v9 = a5;
  v13 = *(*(a2 + 40) + 56);
  if ((v13 & 9) != 0)
  {
    v14 = 12;
  }

  else
  {
    v14 = 10;
  }

  v15 = *a3;
  v16 = a4;
  if (v14 > a4 || v14 + 766 < a4)
  {
    v18 = _apfs_type_to_str(v15 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v19 = 92;
    v20 = 275;
LABEL_9:
    fsck_fail_func(v20, 92);
LABEL_27:
    print_jobj_key_val_info(a2, a3, a4, v9, a6);
    return v19;
  }

  v21 = a1;
  v22 = v15 & 0xFFFFFFFFFFFFFFFLL;
  if ((v13 & 9) == 0)
  {
    v23 = (a3 + 10);
    v25 = *(a3 + 8);
    v26 = -1;
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_20:
    v30 = _apfs_type_to_str(v15 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v30, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v19 = 92;
    v29 = 276;
    goto LABEL_25;
  }

  v23 = (a3 + 12);
  v24 = *(a3 + 8);
  v25 = v24 & 0x3FF;
  v26 = v24 >> 10;
  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v22 <= 0xF && (v22 > 7 || ((1 << v15) & 0x8E) == 0))
  {
    v72 = v23;
    v74 = a8;
    v78 = a7;
    v80 = v25;
    v37 = _apfs_type_to_str(v15 >> 60);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v37, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x115, -2);
    v23 = v72;
    a8 = v74;
    a7 = v78;
    v25 = v80;
    v21 = a1;
  }

  if (a7[5] <= v22)
  {
    a7[5] = v22 + 1;
  }

  if ((v25 - 767) <= 0xFD02u)
  {
    v27 = v25;
    v28 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid name_len (%u)\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL, v27);
    v19 = 92;
    v29 = 278;
LABEL_25:
    fsck_fail_func(v29, 92);
LABEL_26:
    v9 = a5;
    goto LABEL_27;
  }

  if (v14 + v25 != v16)
  {
    v34 = v25;
    v35 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u), given name_len (%u)\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL, a4, v34);
    v19 = 92;
    v29 = 279;
    goto LABEL_25;
  }

  if (v23[(v25 - 1)])
  {
    v31 = v23;
    v32 = v25;
    v33 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid name (%.*s), given name_len (%u)\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL, v32, v31, v32);
    v19 = 92;
    v29 = 280;
    goto LABEL_25;
  }

  v73 = (v25 - 1);
  v75 = a8;
  v77 = v21;
  v79 = a7;
  v38 = v23;
  v39 = v25;
  if (sub_10007CC60(v23, v25))
  {
    v40 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid name (%.*s)\n", v40, *a3 & 0xFFFFFFFFFFFFFFFLL, v39, v38);
    fsck_fail_func(0x119, -9);
  }

  v81 = v39;
  if ((v13 & 9) != 0)
  {
    v83 = -1;
    if (!utf8_normalizeOptCaseFoldAndHash(v38, v73, (v13 >> 3) & 1, sub_1000850BC, &v83))
    {
      v41 = v83 & 0x3FFFFF;
      if ((v83 & 0x3FFFFF) != v26)
      {
        v42 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_err("%s (id %llu): invalid hash (0x%x, expected 0x%x) of name (%.*s)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, v26, v41, v39, v38);
        fsck_fail_func(0x11A, 92);
        v43 = dir_repair_drec_hash(a3, a4, v41, a2 + 768);
        if (v43)
        {
          v19 = v43;
          goto LABEL_26;
        }
      }
    }
  }

  if (a6 <= 0x11)
  {
    v44 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v44, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v19 = 92;
    v29 = 283;
    goto LABEL_25;
  }

  v9 = a5;
  v45 = *a5;
  if (*a5 <= 1uLL)
  {
    v46 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid file_id (%llu) (%s)\n", v46, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v38);
    v19 = 92;
    v20 = 284;
    goto LABEL_9;
  }

  if (v45 <= 0xF && (v45 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v47 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu) (%s)\n", v47, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v38);
    fsck_fail_func(0x11D, -2);
    v45 = *a5;
  }

  v48 = v39;
  if (v79[5] < v45 + 1)
  {
    v79[5] = v45 + 1;
    v45 = *a5;
  }

  if (v45 == 2)
  {
    if (v39 == 5 && v22 == 1 && !(*v38 ^ 0x746F6F72 | v38[4]))
    {
      goto LABEL_57;
    }

    v49 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for root directory\n", v49, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v39, v38);
    fsck_fail_func(0x11E, -9);
    v48 = v39;
    v45 = *a5;
  }

  if (v45 == 3)
  {
    if (v48 == 12 && v22 == 1 && !(*v38 ^ 0x2D65746176697270 | *(v38 + 2) ^ 0x726964))
    {
      goto LABEL_57;
    }

    v50 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): file_id (%llu) and name (%.*s) mismatch for private directory\n", v50, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5, v39, v38);
    fsck_fail_func(0x11F, -9);
  }

  if (v22 == 7)
  {
    goto LABEL_63;
  }

LABEL_57:
  v51 = a5[8];
  if (v51 >= 0x10)
  {
    v52 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%hx / known flags are: 0x%hx)\n", v52, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[8], 15);
    fsck_fail_func(0x121, -3);
    LOWORD(v51) = a5[8];
    if (*(*(v77 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v59 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v53, v54, v55, v56, v57, v58, v51 & 0xFFF0);
      LOWORD(v51) = a5[8];
      if (v59)
      {
        LOWORD(v51) = a5[8] & 0xF;
        a5[8] = v51;
        *v75 = 1;
      }
    }
  }

  v60 = v51 & 0xF;
  if (v60 <= 0xE)
  {
    v61 = 1 << v60;
    if ((v61 & 0x1556) != 0)
    {
      goto LABEL_63;
    }

    if ((v61 & 0x4001) != 0)
    {
      v68 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid type (%u)\n", v68, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[8] & 0xF);
      v19 = 92;
      v20 = 290;
      goto LABEL_9;
    }
  }

  v69 = _apfs_type_to_str(*a3 >> 60);
  fsck_printf_warn("%s (id %llu): invalid type (%u)\n", v69, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[8] & 0xF);
  fsck_fail_func(0x123, -5);
LABEL_63:
  v62 = v77;
  v63 = v79;
  v64 = sub_100082540(v77, a2, a3, a5 + 9, a6 - 18, sub_1000850FC, v79, v75, 0);
  if (v64)
  {
    v19 = v64;
    v65 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid xfields\n", v65, *a3 & 0xFFFFFFFFFFFFFFFLL);
    goto LABEL_27;
  }

  if (v22 == 3)
  {
    if (v81 < 0xE || (v62 = v77, v63 = v79, strncmp("tmp-ino-clone-", v38, 0xEuLL)))
    {
      v66 = a5[8] & 0xF;
      if (v66 == 10)
      {
        v67 = v63 + 2;
        goto LABEL_78;
      }

      v67 = v63;
      if (v66 == 8)
      {
LABEL_78:
        --*v67;
        goto LABEL_79;
      }

      if (v66 != 4)
      {
        v67 = v63 + 3;
        goto LABEL_78;
      }

      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) != 2)
      {
        v67 = v63 + 1;
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  v70 = v63[8];
  if (v70)
  {
    v71 = 0;
  }

  else
  {
    v71 = a2 + 768;
  }

  return dir_increment_drec_count(v62, a2, v70, a3, a4, a5, a6, v71);
}

uint64_t sub_10008026C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + 48);
  if (!v13)
  {
    v13 = *(a2 + 40);
  }

  v14 = *a3;
  if ((*(v13 + 57) & 2) != 0)
  {
    v18 = _apfs_type_to_str(v14 >> 60);
    fsck_printf_err("%s (id %llu): invalid key on expanded-records volume\n", v18, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v17 = 1399;
  }

  else if (a4 == 8)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
    if ((v14 & 0xFFFFFFFFFFFFFFFLL) > 1)
    {
      if (v15 <= 0xF && v15 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = _apfs_type_to_str(v14 >> 60);
        fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v23, *a3 & 0xFFFFFFFFFFFFFFFLL);
        fsck_fail_func(0x133, -2);
      }

      v24 = *(a7 + 40);
      if (v24 <= v15)
      {
        v24 = v15 + 1;
        *(a7 + 40) = v15 + 1;
      }

      if (a6 == 32)
      {
        v25 = a5[2];
        if (v25 == 1)
        {
          v26 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_err("%s (id %llu): invalid chained_key (%llu)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
          v17 = 310;
        }

        else
        {
          if (v25 <= 0xF && v25 > 3)
          {
            v28 = _apfs_type_to_str(*a3 >> 60);
            fsck_printf_warn("%s (id %llu): invalid chained_key (%llu)\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
            fsck_fail_func(0x137, -2);
            v25 = a5[2];
            v24 = *(a7 + 40);
          }

          v29 = v25 + 1;
          if (v24 < v29)
          {
            *(a7 + 40) = v29;
          }

          if (a5[3])
          {
            dir_stats_register_dir_stats(v15, a5);
            v20 = v30;
            if (!v30)
            {
              return v20;
            }

            goto LABEL_10;
          }

          v31 = _apfs_type_to_str(*a3 >> 60);
          fsck_printf_err("%s (id %llu): invalid gen_count (%llu)\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[3]);
          v17 = 312;
        }
      }

      else
      {
        v27 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
        v17 = 308;
      }
    }

    else
    {
      v16 = _apfs_type_to_str(v14 >> 60);
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL);
      v17 = 306;
    }
  }

  else
  {
    v19 = _apfs_type_to_str(v14 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v17 = 305;
  }

  v20 = 92;
  fsck_fail_func(v17, 92);
LABEL_10:
  print_jobj_key_val_info(a2, a3, a4, a5, a6);
  return v20;
}

uint64_t sub_100080510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v14 = 0;
  v11 = validate_snap_name(a2, a3, a4, a5, a6, 1, &v14);
  if (v11)
  {
    v12 = v11;
LABEL_4:
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return v12;
  }

  v12 = snapshot_register_name(a3, a5);
  if (v12)
  {
    goto LABEL_4;
  }

  return v12;
}

uint64_t sub_1000805B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  v12 = *a3;
  if (a4 != 8)
  {
    v16 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v16, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
    v15 = 530;
    goto LABEL_7;
  }

  if (a6 != 8)
  {
    v17 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
    v15 = 531;
    goto LABEL_7;
  }

  v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
  if ((v12 & 0xFFFFFFFFFFFFFFFLL) <= 1)
  {
    v14 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v14, *a3 & 0xFFFFFFFFFFFFFFFLL);
    v15 = 532;
LABEL_7:
    v18 = 92;
    fsck_fail_func(v15, 92);
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return v18;
  }

  if (v13 <= 0xF && v13 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = _apfs_type_to_str(v12 >> 60);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x215, -2);
  }

  v23 = *(a7 + 40);
  if (v23 <= v13)
  {
    v23 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v24 = *a5;
  if (*a5 <= 1uLL)
  {
    v25 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): invalid file_id (%llu)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    v15 = 534;
    goto LABEL_7;
  }

  if (v24 <= 0xF)
  {
    v26 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, *a5);
    fsck_fail_func(0x217, -2);
    v24 = *a5;
    v23 = *(a7 + 40);
  }

  v27 = v24 + 1;
  v18 = 0;
  if (v23 < v27)
  {
    *(a7 + 40) = v27;
  }

  return v18;
}

uint64_t sub_1000807C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = *a3;
  if (a4 == 16)
  {
    v16 = v13 & 0xFFFFFFFFFFFFFFFLL;
    v17 = *(a3 + 8);
    v18 = HIBYTE(v17);
    if (HIBYTE(v17) != 2)
    {
      if (v18 != 1)
      {
        v19 = v13 >> 60;
        if (v18)
        {
          v27 = _apfs_type_to_str(v19);
          fsck_printf_warn("%s (id %llu): Unknown type (0x%x)\n", v27, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 15));
          fsck_fail_func(0x3AF, -5);
          return 0;
        }

        v20 = _apfs_type_to_str(v19);
        fsck_printf_err("%s (id %llu): Invalid type (0x%x)\n", v20, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 15));
        v21 = 942;
        goto LABEL_7;
      }

      if (a6 <= 2)
      {
        v25 = _apfs_type_to_str(v13 >> 60);
        fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v25, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
        v21 = 938;
        goto LABEL_7;
      }

      if (v16 <= 1)
      {
        v28 = _apfs_type_to_str(v13 >> 60);
        fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v28, *a3 & 0xFFFFFFFFFFFFFFFLL);
        v21 = 939;
        goto LABEL_7;
      }

      v32 = *(*(a1 + 8) + 36);
      if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v33 = _apfs_type_to_str(v13 >> 60);
        fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v33, *a3 & 0xFFFFFFFFFFFFFFFLL);
        fsck_fail_func(0x3AC, -2);
      }

      if (*(a7 + 40) <= v16)
      {
        *(a7 + 40) = v16 + 1;
      }

      if ((*(a3 + 8) & 0xFFFFFFFFFFFFFFuLL) % v32)
      {
        v34 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_err("%s (id %llu): Logical address %llu not a multiple of the block size (%u)\n", v34, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFLL, v32);
        v21 = 941;
        goto LABEL_7;
      }

      v52 = sub_1000852D4(a1, a2, a3, a5);
      goto LABEL_54;
    }

    if (a6 <= 0x19)
    {
      v26 = _apfs_type_to_str(v13 >> 60);
      fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v26, *a3 & 0xFFFFFFFFFFFFFFFLL, a6);
      v21 = 1319;
      goto LABEL_7;
    }

    v30 = v17 & 0x1FFFFFFFFFFFFFLL;
    if ((*(*(a2 + 40) + 48) & 8) == 0)
    {
      v31 = _apfs_type_to_str(v13 >> 60);
      fsck_printf_warn("%s (id %llu): found attribution tag on a volume that doesn't support them\n", v31, *a3 & 0xFFFFFFFFFFFFFFFLL);
      fsck_fail_func(0x528, -5);
    }

    if (v16 == 9)
    {
      if (*(a7 + 40) > 9uLL)
      {
        v59 = 0;
        if (v30)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v59 = 0;
      *(a7 + 40) = 10;
      if (!v30)
      {
LABEL_31:
        v36 = _apfs_type_to_str(*a3 >> 60);
        fsck_printf_warn("%s (id %llu): invalid hash (0)\n", v36, *a3 & 0xFFFFFFFFFFFFFFFLL);
        fsck_fail_func(0x52A, -7);
      }
    }

    else
    {
      v35 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v35, *a3 & 0xFFFFFFFFFFFFFFFLL);
      fsck_fail_func(0x529, 92);
      v59 = v16;
      if (!v30)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    v37 = *(*(a1 + 8) + 36);
    if (*(a5 + 1) % v37)
    {
      v38 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid physical size (%llu) for hash (%llu)\n", v38, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 1), v30);
      fsck_fail_func(0x52B, -11);
      v37 = *(*(a1 + 8) + 36);
    }

    v39 = *(a5 + 2);
    if (v39 % v37)
    {
      v40 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): invalid full clone size (%llu) for hash (%llu)\n", v40, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 2), v30);
      fsck_fail_func(0x53C, -11);
      v39 = *(a5 + 2);
    }

    if (*(a5 + 1) < v39)
    {
      v41 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): physical size (%llu) is less than full clone size (%llu) for hash (%llu)\n", v41, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a5 + 1), *(a5 + 2), v30);
      fsck_fail_func(0x53D, -11);
    }

    if (a5[12] >= 2u)
    {
      v42 = _apfs_type_to_str(*a3 >> 60);
      fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v42, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[12], 1);
      fsck_fail_func(0x52C, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v43, v44, v45, v46, v47, v48, a5[12] & 0xFFFE))
        {
          a5[12] &= 1u;
          *a8 = 1;
        }
      }
    }

    memset(v60, 0, sizeof(v60));
    v49 = sub_100082540(a1, a2, a3, a5 + 13, a6 - 26, sub_1000854B0, a7, a8, v60);
    if (v49)
    {
      v23 = v49;
      _apfs_type_to_str(*a3 >> 60);
      fsck_printf_err("%s (id %llu): invalid xfields\n");
      goto LABEL_55;
    }

    if (v60[0])
    {
      v50 = strlen(v60 + 1);
      v51 = compute_attr_tag_hash(v60 + 1, v50);
      if (v51 == v30)
      {
        v30 = 0;
      }

      else
      {
        v58 = _apfs_type_to_str(*a3 >> 60);
        v55 = strlen(v60 + 1);
        fsck_printf_warn("%s (id %llu): signing id hash (%llu) for signing id (%s) with length (%zu) does not match attribution tag hash (%llu)\n", v58, *a3 & 0xFFFFFFFFFFFFFFFLL, v51, v60 + 1, v55, v30);
        fsck_fail_func(0x52E, 92);
      }

      if (*(a7 + 64))
      {
        v56 = 0;
      }

      else
      {
        v56 = a2 + 768;
      }

      file_info_register(v56, v51, *a5, *(a5 + 1), *(a5 + 2), a5[12], v59, v30);
      v23 = v57;
      if (v57)
      {
        _apfs_type_to_str(*a3 >> 60);
        fsck_printf_err("%s (id %llu): failed to register file info (hash %llu): %d\n");
      }

LABEL_55:
      if (!v23)
      {
        return v23;
      }

      goto LABEL_8;
    }

    v53 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): signing id does not exist\n", v53, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x52D, 92);
    if (*(a7 + 64))
    {
      v54 = 0;
    }

    else
    {
      v54 = a2 + 768;
    }

    v52 = file_info_delete(v54, v16, v30, 1);
LABEL_54:
    v23 = v52;
    goto LABEL_55;
  }

  v22 = _apfs_type_to_str(v13 >> 60);
  fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v22, *a3 & 0xFFFFFFFFFFFFFFFLL, a4);
  v21 = 937;
LABEL_7:
  v23 = 92;
  fsck_fail_func(v21, 92);
LABEL_8:
  print_jobj_key_val_info(a2, a3, a4, a5, a6);
  return v23;
}

uint64_t sub_100080EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 28)
  {
    v21 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v21, v16, a4);
    v19 = 92;
    v20 = 1168;
    goto LABEL_7;
  }

  if (a6 <= 0x17)
  {
    v18 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v18, v16, a6);
    v19 = 92;
    v20 = 1169;
LABEL_7:
    fsck_fail_func(v20, 92);
    goto LABEL_8;
  }

  if (v16 <= 1)
  {
    v23 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v23, v16);
    v19 = 92;
    v20 = 1170;
    goto LABEL_7;
  }

  if (v16 <= 0xF && (v16 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v25 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v25, v16);
    fsck_fail_func(0x493, -2);
  }

  if (*(a7 + 40) <= v16)
  {
    *(a7 + 40) = v16 + 1;
  }

  if (!*(a3 + 12))
  {
    v26 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid atime (0)\n", v26, v16);
    fsck_fail_func(0x58E, -2);
  }

  v27 = *(a3 + 20);
  if (v27 <= 1)
  {
    v28 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid file_id (%llu)\n", v28, v16, *(a3 + 20));
    v19 = 92;
    v20 = 1172;
    goto LABEL_7;
  }

  if (v27 <= 0xF && (v27 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v29 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu)\n", v29, v16, *(a3 + 20));
    fsck_fail_func(0x495, -2);
    v27 = *(a3 + 20);
  }

  v30 = *(a7 + 40);
  v31 = v27 + 1;
  if (v30 < v31)
  {
    *(a7 + 40) = v31;
    v30 = v31;
  }

  v32 = *(a5 + 8);
  if (v32 <= 1)
  {
    v33 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid dstream_id (%llu)\n", v33, v16, *(a5 + 8));
    v19 = 92;
    v20 = 1175;
    goto LABEL_7;
  }

  if (v32 <= 0xF && (v32 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v34 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid dstream_id (%llu)\n", v34, v16, *(a5 + 8));
    fsck_fail_func(0x498, -2);
    v32 = *(a5 + 8);
    v30 = *(a7 + 40);
  }

  v35 = v32 + 1;
  if (v30 < v35)
  {
    *(a7 + 40) = v35;
  }

  if ((*(a5 + 18) & 0xFF43) != 0)
  {
    v36 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v36, v16, *(a5 + 16), 12386303);
    fsck_fail_func(0x499, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v37, v38, v39, v40, v41, v42, *(a5 + 16) & 0xFF430000))
      {
        *(a5 + 16) &= 0xBCFFFFu;
        *a8 = 1;
      }
    }
  }

  v43 = sub_100082540(a1, a2, a3, (a5 + 24), a6 - 24, sub_1000855FC, a7, a8, 0);
  if (v43)
  {
    v19 = v43;
    v44 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid xfields\n", v44, v16);
  }

  else
  {
    v45 = purgeable_register(*(a3 + 20));
    if (v45)
    {
      v19 = v45;
    }

    else
    {
      v19 = clonegroup_register_purgeable(*(a5 + 8), *(a3 + 20), *(a5 + 16));
      if (!v19)
      {
        return v19;
      }
    }
  }

LABEL_8:
  print_jobj_key_val_info(a2, a3, a4, a5, a6);
  return v19;
}

uint64_t sub_1000812C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v14 = *a3 >> 60;
  if (v14 == 14)
  {
    LODWORD(v14) = *(a3 + 8);
  }

  if (a4 != 20)
  {
    v17 = _apfs_type_to_str(v14);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v17, v13, a4);
    v16 = 1178;
    goto LABEL_9;
  }

  if (a6 != 8)
  {
    v18 = _apfs_type_to_str(v14);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v18, v13, a6);
    v16 = 1179;
    goto LABEL_9;
  }

  if (v13 <= 1)
  {
    v15 = _apfs_type_to_str(v14);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v15, v13);
    v16 = 1180;
LABEL_9:
    v19 = 92;
    fsck_fail_func(v16, 92);
    goto LABEL_10;
  }

  if (v13 <= 0xF && (v13 > 7 || ((1 << *a3) & 0x8C) == 0))
  {
    v22 = _apfs_type_to_str(v14);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v22, v13);
    fsck_fail_func(0x49D, -2);
  }

  v23 = *(a7 + 40);
  if (v23 <= v13)
  {
    v23 = v13 + 1;
    *(a7 + 40) = v13 + 1;
  }

  v24 = *(a3 + 12);
  if (v24 <= 1)
  {
    v25 = _apfs_type_to_str(v14);
    fsck_printf_err("%s (id %llu): invalid file_id (%llu)\n", v25, v13, *(a3 + 12));
    v16 = 1182;
    goto LABEL_9;
  }

  if (v24 <= 0xF && (v24 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v26 = _apfs_type_to_str(v14);
    fsck_printf_warn("%s (id %llu): invalid file_id (%llu)\n", v26, v13, *(a3 + 12));
    fsck_fail_func(0x49F, -2);
    v24 = *(a3 + 12);
    v23 = *(a7 + 40);
  }

  v27 = v24 + 1;
  if (v23 < v27)
  {
    *(a7 + 40) = v27;
    v23 = v27;
  }

  v28 = *a5;
  if (*a5 <= 1)
  {
    v29 = _apfs_type_to_str(v14);
    fsck_printf_err("%s (id %llu): invalid dstream_id (%llu)\n", v29, v13, *a5);
    v16 = 1184;
    goto LABEL_9;
  }

  if (v28 <= 0xF && (v28 > 7 || ((1 << v28) & 0x8C) == 0))
  {
    v30 = _apfs_type_to_str(v14);
    fsck_printf_warn("%s (id %llu): invalid dstream_id (%llu)\n", v30, v13, *a5);
    fsck_fail_func(0x4A1, -2);
    v28 = *a5;
    v23 = *(a7 + 40);
  }

  v31 = v28 + 1;
  if (v23 < v31)
  {
    *(a7 + 40) = v31;
  }

  v32 = dstream_register_purgeable_ts(a3, a5);
  if (v32)
  {
    v19 = v32;
  }

  else
  {
    v19 = purgeable_register_ts(*(a3 + 12));
    if (!v19)
    {
      return v19;
    }
  }

LABEL_10:
  print_jobj_key_val_info(a2, a3, a4, a5, a6);
  return v19;
}

uint64_t sub_100081584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  if (a4 != 12)
  {
    v21 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v21, v16, a4);
    v19 = 92;
    v20 = 1186;
    goto LABEL_7;
  }

  if (a6 <= 0x33)
  {
    v18 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v18, v16, a6);
    v19 = 92;
    v20 = 1187;
LABEL_7:
    fsck_fail_func(v20, 92);
LABEL_8:
    print_jobj_key_val_info(a2, a3, a4, a5, a6);
    return v19;
  }

  if (v16 <= 1)
  {
    v23 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v23, v16);
    v19 = 92;
    v20 = 1188;
    goto LABEL_7;
  }

  if (v16 <= 0xF && v16 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v25 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v25, v16);
    fsck_fail_func(0x4A5, -2);
  }

  v26 = *(a7 + 40);
  if (v26 <= v16)
  {
    v26 = v16 + 1;
    *(a7 + 40) = v16 + 1;
  }

  v27 = *(a5 + 32);
  if (v27 == 1)
  {
    v28 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid chained_key (%llu)\n", v28, v16, *(a5 + 32));
    v19 = 92;
    v20 = 1192;
    goto LABEL_7;
  }

  if (v27 <= 0xF && v27 > 3)
  {
    v29 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid chained_key (%llu)\n", v29, v16, *(a5 + 32));
    fsck_fail_func(0x4A9, -2);
    v27 = *(a5 + 32);
    v26 = *(a7 + 40);
  }

  v30 = v27 + 1;
  if (v26 < v30)
  {
    *(a7 + 40) = v30;
  }

  if (!*(a5 + 40))
  {
    v31 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid gen_count (%llu)\n", v31, v16, *(a5 + 40));
    fsck_fail_func(0x4AA, -8);
  }

  v32 = *(a5 + 48);
  if (v32 >= 0x1000)
  {
    v33 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", v33, v16, *(a5 + 48), 4095);
    fsck_fail_func(0x4AB, -3);
    v32 = *(a5 + 48);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      v40 = fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v34, v35, v36, v37, v38, v39, v32 & 0xFFFFF000);
      v32 = *(a5 + 48);
      if (v40)
      {
        *(a5 + 48) &= 0xFFFu;
        *a8 = 1;
        v32 = *(a5 + 48);
      }
    }
  }

  if ((v32 & 0x200) != 0)
  {
    v41 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): found dir-stats object (chained-key %llu) that is unexpectedly being moved\n", v41, v16, *(a5 + 32));
    fsck_fail_func(0x5A8, 92);
    v32 = *(a5 + 48);
  }

  if ((v32 & 2) != 0 && (*(*(a2 + 40) + 48) & 8) == 0)
  {
    v42 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): invalid dir-stats flags (0x%x) on volume without attribution tags\n", v42, v16, *(a5 + 48));
    fsck_fail_func(0x5E7, -3);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v43 = sub_100082540(a1, a2, a3, (a5 + 52), a6 - 52, sub_100085730, a7, a8, &v47);
  if (v43)
  {
    v19 = v43;
    v44 = _apfs_type_to_str(v17);
    fsck_printf_err("%s (id %llu): invalid xfields\n", v44, v16);
    goto LABEL_8;
  }

  if ((~*(a5 + 48) & 0x801) == 0 && v49 == 1 && *(&v49 + 1) > *(a5 + 16))
  {
    v45 = _apfs_type_to_str(v17);
    fsck_printf_warn("%s (id %llu): purgeable resource fork size (%llu) is larger than resource fork size (%llu)\n", v45, v16, *(&v49 + 1), *(a5 + 16));
    fsck_fail_func(0x5B4, -3);
  }

  dir_stats_register_expanded_dir_stats(v16, a5, a6, v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1));
  v19 = v46;
  if (v46)
  {
    goto LABEL_8;
  }

  return v19;
}

uint64_t sub_1000819D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v16 = *a3;
  v17 = *a3 >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 8);
  }

  v18 = *(a2 + 40);
  if ((*(v18 + 48) & 4) == 0)
  {
    fsck_printf_warn("found clone mapping in an unsupported volume format\n");
    fsck_fail_func(0x5F0, -2);
    v18 = *(a2 + 40);
  }

  if ((*(v18 + 1108) & 1) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFFFFLL;
    if (a4 != 28)
    {
      v23 = _apfs_type_to_str(v17);
      fsck_printf_err("%s (id %llu): invalid key length (%u)\n", v23, v19, a4);
      v21 = 92;
      v22 = 1299;
      goto LABEL_12;
    }

    if (a6 <= 7)
    {
      v20 = _apfs_type_to_str(v17);
      fsck_printf_err("%s (id %llu): invalid value length (%u)\n", v20, v19, a6);
      v21 = 92;
      v22 = 1300;
LABEL_12:
      fsck_fail_func(v22, 92);
LABEL_13:
      print_jobj_key_val_info(a2, a3, a4, a5, a6);
      return v21;
    }

    if (v19 != 9)
    {
      v27 = _apfs_type_to_str(v17);
      fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v27, v19);
      v21 = 92;
      v22 = 1301;
      goto LABEL_12;
    }

    v25 = *(a7 + 40);
    if (v25 <= 9)
    {
      v25 = 10;
      *(a7 + 40) = 10;
    }

    v26 = *(a3 + 12);
    if (v26 > 0xF)
    {
      v28 = v26 + 1;
      if (v25 < v28)
      {
        *(a7 + 40) = v28;
      }
    }

    else
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): invalid private_id\n", *(a3 + 12), *(a3 + 20));
      fsck_fail_func(0x516, -2);
    }

    v29 = *(a3 + 20);
    if (v29 > 0xF)
    {
      v30 = v29 + 1;
      if (*(a7 + 40) < v30)
      {
        *(a7 + 40) = v30;
      }
    }

    else
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): invalid file_id\n", *(a3 + 12), v29);
      fsck_fail_func(0x517, -2);
    }

    v31 = *a5;
    v32 = *a5 & 0xFFFFFFFFFFFFFFLL;
    v33 = *(a1 + 8);
    v34 = *(v33 + 36);
    if (v32 % v34 || v32 / v34 > *(v33 + 40))
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): invalid physical_size (%llu)\n", *(a3 + 12), *(a3 + 20), v32);
      fsck_fail_func(0x518, 92);
    }

    if (v31 >> 57)
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): unknown flags (0x%x / known flags are: 0x%x)\n", *(a3 + 12), *(a3 + 20), HIBYTE(v31), 1);
      fsck_fail_func(0x554, -3);
      if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
      {
        if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v35, v36, v37, v38, v39, v40, HIBYTE(v31) & 0xFE))
        {
          *a5 = v31 & 0x1FFFFFFFFFFFFFFLL;
          *a8 = 1;
        }
      }
    }

    v44 = 0;
    v45 = 0;
    v41 = sub_100082540(a1, a2, a3, a5 + 4, a6 - 8, sub_100085984, a7, a8, &v44);
    if (v41)
    {
      v21 = v41;
      fsck_printf_err("clone mapping (private_id %llu, file_id %llu): invalid xfields\n", *(a3 + 12), *(a3 + 20));
      goto LABEL_13;
    }

    if (!v45 || (v42 = file_info_register_clone(v45, v32), !v42))
    {
      if (v44)
      {
        v42 = dir_stats_register_clone(v44, v32);
        if (v42)
        {
          goto LABEL_42;
        }

        v43 = v44;
      }

      else
      {
        v43 = 0;
      }

      v21 = clone_mapping_register(*(a3 + 12), *(a3 + 20), a5, v45, v43);
      if (!v21)
      {
        return v21;
      }

      goto LABEL_13;
    }

LABEL_42:
    v21 = v42;
    goto LABEL_13;
  }

  fsck_printf_err("found clone mapping in a volume with initialized clonegroup tree\n");
  fsck_fail_func(0x612, 92);
  if (*(a7 + 64))
  {
    print_snapshot_warning();
  }

  else
  {
    fsck_repairs_add(a2 + 768, 7u, 0, 0, 0, a3, 0x1Cu, 0, 0);
  }

  return 0;
}

uint64_t fext_validate_repair_key_val(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v12 = a2[6];
  if (!v12)
  {
    v12 = a2[5];
  }

  if ((*(v12 + 56) & 0x20) != 0)
  {
    if (!(*a3 >> 60))
    {
      v16 = sub_100084668(a1, a2, a3, a5, a7, a8);
      if (!v16)
      {
        return v16;
      }

      goto LABEL_8;
    }

    v15 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): ID larger than MAX_JOBJ_ID (%llu)\n", v15, v11, 0xFFFFFFFFFFFFFFFLL);
    v14 = 920;
  }

  else
  {
    v13 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): fext tree record present on non-sealed volume\n", v13, v11);
    v14 = 919;
  }

  v16 = 92;
  fsck_fail_func(v14, 92);
LABEL_8:
  print_fext_tree_key_val_info(a2, a3, a5);
  return v16;
}

uint64_t clonegroup_validate_repair_key_val(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, void *a5, unsigned int a6, uint64_t a7, _DWORD *a8)
{
  if (a4 <= 8)
  {
    fsck_printf_err("clone group tree: invalid key length (%u)\n", a4);
    v8 = 92;
    v9 = 1531;
LABEL_3:
    v10 = 92;
LABEL_4:
    fsck_fail_func(v9, v10);
    return v8;
  }

  v15 = *(a3 + 8);
  if (v15 == 2)
  {
    if (a4 != 17)
    {
      fsck_printf_err("clone group tree: invalid cookie key length (%u)\n", a4);
      v8 = 92;
      v9 = 1559;
      goto LABEL_3;
    }

    if (a6 != 1)
    {
      fsck_printf_err("clone group tree (id %llu): invalid cookie val length (%u)\n", *(a3 + 9), a6);
      v8 = 92;
      v9 = 1560;
      goto LABEL_3;
    }

    v17 = *(a3 + 9);
    if (*a3 != 1 || v17 <= 0x3FF)
    {
      fsck_printf_err("clone group tree: cookie group_id (%llu) or cookie_group_id (%llu) is invalid\n", *a3, v17);
      v8 = 92;
      v9 = 1561;
      goto LABEL_3;
    }

    v18 = v17 + 1;
    if (*(a7 + 56) < v18)
    {
      v8 = 0;
      *(a7 + 56) = v18;
      return v8;
    }

    return 0;
  }

  if (v15 != 1)
  {
    fsck_printf_warn("clone group tree: unknown type (%u)\n", *(a3 + 8));
    return 0;
  }

  v16 = *a3;
  if (*a3 <= 0x3FF)
  {
    fsck_printf_err("clone group tree: mapping group_id (%llu) is invalid\n", *a3);
    v8 = 92;
    v9 = 1532;
    goto LABEL_3;
  }

  if (*(a7 + 56) < (v16 + 1))
  {
    *(a7 + 56) = v16 + 1;
  }

  if (a4 != 25)
  {
    fsck_printf_err("clone group tree (id %llu): invalid key length (%u)\n", v16, a4);
    v8 = 92;
    v9 = 1524;
    goto LABEL_3;
  }

  v23 = *(a3 + 9);
  if (v23 <= 0xF)
  {
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): private_id is invalid\n", v16, *(a3 + 9), *(a3 + 17));
    v8 = 92;
    v9 = 1525;
    goto LABEL_3;
  }

  v24 = *(a7 + 40);
  if (v24 < v23 + 1)
  {
    *(a7 + 40) = v23 + 1;
    v24 = v23 + 1;
  }

  v25 = *(a3 + 17);
  if (v25 <= 0xF)
  {
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): inum is invalid\n", v16, v23, v25);
    v8 = 92;
    v9 = 1526;
    goto LABEL_3;
  }

  if (v24 < v25 + 1)
  {
    *(a7 + 40) = v25 + 1;
  }

  if (a6 <= 0xB)
  {
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): invalid value length (%u)\n", v16, v23, v25, a6);
    v8 = 92;
    v9 = 1527;
    goto LABEL_3;
  }

  v26 = *(a1 + 8);
  v27 = *(v26 + 36);
  if (*a5 % v27 || *a5 / v27 > *(v26 + 40))
  {
    fsck_printf_warn("clonegroup (group id %llu, private_id %llu, file id %llu): invalid physical_size (%llu)\n", v16, v23, v25, *a5);
    fsck_fail_func(0x5F8, -11);
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if (*(a5 + 2) >= 0x20u)
  {
    fsck_printf_warn("clonegroup (group id %llu, private_id %llu, file id %llu): unknown flags (0x%x / known flags are: 0x%x)", *a3, *(a3 + 9), *(a3 + 17), *(a5 + 2), 31);
    fsck_fail_func(0x5F9, -3);
    if (*(*(a1 + 8) + 1384) <= 0x959D39220F1C2uLL)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v29, v30, v31, v32, v33, v34, a5[1] & 0xFFFFFFE0))
      {
        *(a5 + 2) &= 0x1Fu;
        *a8 = 1;
      }
    }
  }

  v35 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
  v44 = 0;
  v45 = v35;
  v46 = 20;
  v43 = 0;
  v36 = sub_100082540(a1, a2, &v45, a5 + 6, a6 - 12, sub_100085BD0, a7, a8, &v43);
  if (v36)
  {
    v8 = v36;
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): invalid xfields\n", *a3, *(a3 + 9), *(a3 + 17));
    return v8;
  }

  if ((a5[1] & 0x10) != 0)
  {
    if (v44)
    {
      v42 = file_info_register_clone(v44, *a5);
      if (v42)
      {
        return v42;
      }
    }

    if (v43)
    {
      v42 = dir_stats_register_clone(v43, *a5);
      if (v42)
      {
        return v42;
      }
    }
  }

  v37 = clonegroup_register(a3, v43, v44, *(a5 + 2), v28);
  v8 = v37;
  if (v37)
  {
    v38 = *a3;
    v39 = *(a3 + 9);
    v40 = *(a3 + 17);
    v41 = strerror(v37);
    fsck_printf_err("clonegroup (group id %llu, private_id %llu, file id %llu): can't register for cross checks: %d (%s)\n", v38, v39, v40, v8, v41);
    v9 = 1530;
    v10 = v8;
    goto LABEL_4;
  }

  return v8;
}

char *fsroot_jobj_init(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    fsck_tree_node_repair_init(a1);
  }

  dstream_init(a2);
  crypto_init(a2);
  inode_init(a2);
  dir_stats_init(a2);
  file_info_init();
  result = clone_mapping_init();
  if (a1)
  {
    v5 = *(a1 + 8);

    return purgeable_init(v5);
  }

  return result;
}

uint64_t fsroot_jobj_abort(uint64_t a1)
{
  dstream_abort();
  crypto_abort();
  dir_abort();
  dir_stats_abort();
  file_info_abort();
  clone_mapping_abort();
  purgeable_abort();
  clonegroup_abort();
  result = phys_extent_cleanup();
  *(a1 + 10) = 0;
  return result;
}

uint64_t fsroot_jobj_advance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dstream_reset(0xFFFFFFFFFFFFFFFFLL);
  LODWORD(result) = inode_finalize(a1, a2, a3);
  if (result)
  {
    return result;
  }

  else
  {
    return v6;
  }
}

uint64_t fsroot_jobj_finalize(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = fsck_tree_node_repair_volume(a1, a2, a4);
  }

  v9 = dstream_finalize(a1, a2, a4);
  if (v9)
  {
    v8 = v9;
  }

  v10 = crypto_finalize(a1, a2, a4);
  if (v10)
  {
    v8 = v10;
  }

  v11 = inode_finalize(a1, a2, a4);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8;
  }

  v13 = dir_finalize(a1, a2, a3, a4);
  if (!(clone_mapping_finalize(a1, a2, a4) | v13))
  {
    v13 = v12;
  }

  v14 = dir_stats_finalize(a1, a2, a4);
  if (v14)
  {
    v13 = v14;
  }

  v15 = file_info_finalize(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v17 = purgeable_finalize(a1, a2, a4);
  if (v17)
  {
    v16 = v17;
  }

  LODWORD(result) = clonegroup_finalize(a1, a2, a4);
  if (result)
  {
    return result;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_100082540(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned int a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unsigned __int16 *, unint64_t, uint64_t, uint64_t, _DWORD *, uint64_t), uint64_t a7, _DWORD *a8, uint64_t a9)
{
  if (a5 >= 4)
  {
    v11 = *a4;
    v12 = a4[1];
    if (v12 + 4 * v11 + 4 <= a5)
    {
      if (!*a4)
      {
        v21 = 0;
LABEL_15:
        if (v21 < a4[1])
        {
          fsck_printf_warn("xf: xf_used_data (%u) is larger than expected (%u)\n", a4[1], v21);
          fsck_fail_func(0x44C, -11);
          if (fsckAskPrompt(fsck_apfs_ctx, "Fix xf_used_data? ", v26, v27, v28, v29, v30, v31))
          {
            v9 = 0;
            a4[1] = v21;
            *a8 = 1;
            return v9;
          }
        }

        return 0;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v37 = &a4[2 * v11 + 2];
      v22 = a4 + 3;
      do
      {
        if ((a4[1] - v20) < *v22)
        {
          v32 = *a3 >> 60;
          if (v32 == 14)
          {
            LODWORD(v32) = *(a3 + 8);
          }

          v33 = _apfs_type_to_str(v32);
          v34 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v35 = *a4;
          v36 = _xf_type_to_str(a3, *(v22 - 2));
          fsck_printf_err("%s (id %llu): xf %u/%u: %s: extended field at offset %u+%u extends beyond xf_used_data (%u)\n", v33, v34, v19, v35, v36, v20, *v22, a4[1]);
          v9 = 92;
          v13 = 899;
          goto LABEL_5;
        }

        v23 = a6(a1, a2, a3, a4, v19, v37 + v20, a7, a8, a9);
        if (v23)
        {
          return v23;
        }

        v24 = *v22;
        v22 += 2;
        v25 = (v24 + 7) & 0x1FFF8;
        v21 += v25;
        ++v19;
        v20 += v25;
      }

      while (v19 < *a4);
      if (v21 < 0x10000)
      {
        goto LABEL_15;
      }

      fsck_printf_err("xf: xf total size (%u) is larger than UINT16_MAX\n", v21);
      v9 = 92;
      v13 = 1099;
    }

    else
    {
      fsck_printf_err("xf: xf_num_exts (%u) extended fields do not fit in the given xf_used_data (%u)\n", *a4, v12);
      v9 = 92;
      v13 = 191;
    }

LABEL_5:
    fsck_fail_func(v13, 92);
    return v9;
  }

  return 0;
}

uint64_t sub_10008276C(uint64_t *a1, int8x16_t *a2, unint64_t *a3, unsigned __int16 *a4, int a5, UInt8 *bytes, uint64_t a7, _DWORD *a8, uint64_t a9)
{
  v16 = &a4[2 * a5];
  v17 = *(a9 + 48);
  v20 = *(v16 + 4);
  v19 = (v16 + 2);
  v18 = v20;
  v21 = *(v19 + 1);
  if (v20 <= 0x15 && ((0x251uLL >> v18) & 1) == 0)
  {
    v41 = word_1000B32A0[v18];
    if (v41 != v21)
    {
      v42 = *a3 >> 60;
      if (v42 == 14)
      {
        LODWORD(v42) = *(a3 + 8);
      }

      v43 = _apfs_type_to_str(v42);
      v44 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *a4;
      v46 = _xf_type_to_str(a3, *v19);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v43, v44, a5, v45, v46, *(v19 + 1), v41);
      v22 = 92;
      v39 = 983;
LABEL_20:
      v40 = 92;
      goto LABEL_21;
    }
  }

  v22 = 0;
  switch(v18)
  {
    case 1:
    case 2:
    case 6:
    case 7:
    case 9:
      v23 = a2;
      v24 = a7;
      v25 = *a3 >> 60;
      if (v25 == 14)
      {
        LODWORD(v25) = *(a3 + 8);
      }

      v26 = _apfs_type_to_str(v25);
      v27 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v28 = *a4;
      v29 = _xf_type_to_str(a3, *v19);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: extended field type is no longer used\n", v26, v27, a5, v28, v29);
      v30 = 987;
      goto LABEL_6;
    case 3:
      *uu = *bytes;
      v213 = *uu;
      v217 = a7;
      v212 = a2;
      if (*uu <= 2u)
      {
        v107 = *a3 >> 60;
        if (v107 == 14)
        {
          LODWORD(v107) = *(a3 + 8);
        }

        v108 = _apfs_type_to_str(v107);
        v207 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v209 = v108;
        v109 = *a4;
        v110 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid doc_id (%u), less than MIN_DOC_ID (%u)\n", v209, v207, a5, v109, v110, *uu, 3);
        fsck_fail_func(0xC2, -2);
        a7 = v217;
        a2 = v212;
      }

      v111 = *(v17 + 68);
      if ((v111 & 0x40) != 0)
      {
        goto LABEL_88;
      }

      v210 = v111 | 0x40u;
      v112 = *a3 >> 60;
      if (v112 == 14)
      {
        LODWORD(v112) = *(a3 + 8);
      }

      v113 = _apfs_type_to_str(v112);
      v206 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v208 = v113;
      v114 = *a4;
      v115 = _xf_type_to_str(a3, *v19);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: doc_id exists (%u), despite bsd_flags (0x%x)\n", v208, v206, a5, v114, v115, *uu, *(v17 + 68));
      v22 = 92;
      fsck_fail_func(0x44D, 92);
      if (fsckAskPrompt(fsck_apfs_ctx, "Set bsd_flags to 0x%x? ", v116, v117, v118, v119, v120, v121, v210))
      {
        a2 = v212;
        *(v17 + 68) = v210;
        *a8 = 1;
        a7 = v217;
LABEL_88:
        if (*(a7 + 48) < (v213 + 1))
        {
          *(a7 + 48) = v213 + 1;
        }

        v122 = validate_doc_id_tree_record(a1, a2, *a3 & 0xFFFFFFFFFFFFFFFLL, uu, a7, a8);
        if (v122)
        {
          v22 = v122;
          v123 = *a3 >> 60;
          if (v123 == 14)
          {
            LODWORD(v123) = *(a3 + 8);
          }

          _apfs_type_to_str(v123);
          _xf_type_to_str(a3, *v19);
          fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid doc_id index\n");
        }

        else
        {
          if (*a8)
          {
            *bytes = *uu;
          }

          v22 = 0;
          *a9 = 1;
        }
      }

      return v22;
    case 4:
      if (bytes[v21 - 1])
      {
        v60 = *a3 >> 60;
        if (v60 == 14)
        {
          LODWORD(v60) = *(a3 + 8);
        }

        v61 = _apfs_type_to_str(v60);
        v62 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v63 = *a4;
        v64 = _xf_type_to_str(a3, *v19);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid name (%.*s), given name_len (%u)\n", v61, v62, a5, v63, v64, *(v19 + 1), bytes, *(v19 + 1));
        v22 = 92;
        v39 = 196;
        goto LABEL_20;
      }

      if (!sub_10007CC60(bytes, v21))
      {
        return 0;
      }

      v158 = *a3 >> 60;
      if (v158 == 14)
      {
        LODWORD(v158) = *(a3 + 8);
      }

      v159 = _apfs_type_to_str(v158);
      v160 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v161 = *a4;
      v162 = _xf_type_to_str(a3, *v19);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid name (%s)\n", v159, v160, a5, v161, v162, bytes);
      v53 = 197;
      v54 = -9;
      goto LABEL_60;
    case 5:
    case 12:
    case 15:
    case 16:
    case 18:
      return v22;
    case 8:
      v65 = *(bytes + 1);
      *uu = *bytes;
      v219 = v65;
      v220 = *(bytes + 4);
      if ((*(v17 + 80) & 0xF000) == 0x8000)
      {
        v215 = a7;
        v211 = a2;
        v66 = sub_100083E40(a1, a2, a3, v17, uu, a7, a8);
        if (v66)
        {
          v22 = v66;
          v67 = *a3 >> 60;
          if (v67 == 14)
          {
            LODWORD(v67) = *(a3 + 8);
          }

          _apfs_type_to_str(v67);
          _xf_type_to_str(a3, *v19);
          fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid dstream\n");
          return v22;
        }

        v182 = *(v17 + 8);
        if (v182)
        {
          v214 = *&uu[8];
          v183 = dstream_register((*a3 & 0xFFFFFFFFFFFFFFFLL), v182, *&uu[8], 1, (*(v17 + 48) >> 7) & 1, (*(v17 + 48) >> 22) & 1);
          if (v183)
          {
            v22 = v183;
            v184 = *a3 >> 60;
            if (v184 == 14)
            {
              LODWORD(v184) = *(a3 + 8);
            }

            _apfs_type_to_str(v184);
            _xf_type_to_str(a3, *v19);
            fsck_printf_err("%s (id %llu): xf %u/%u: %s: failed to register dstream: %d\n");
            return v22;
          }

          v195 = v214;
        }

        else
        {
          v195 = *&uu[8];
        }

        *(a9 + 16) = v195;
        v201 = v211[3].i64[0];
        if (!v201)
        {
          v201 = v211[2].i64[1];
        }

        if ((*(v201 + 56) & 0x20) == 0)
        {
          crypto_register_dstream(*a3 & 0xFFFFFFFFFFFFFFFLL, uu);
          if (v202)
          {
            v22 = v202;
            v203 = *a3 >> 60;
            if (v203 == 14)
            {
              LODWORD(v203) = *(a3 + 8);
            }

            _apfs_type_to_str(v203);
            _xf_type_to_str(a3, *v19);
            fsck_printf_err("%s (id %llu): xf %u/%u: %s: failed to register dstream for crypto state tracking: %d\n");
            return v22;
          }

          v204 = *(v17 + 8);
          if (v204 < (*a3 & 0xFFFFFFFFFFFFFFFLL) && (*(v17 + 50) & 0x40) != 0 && *(v215 + 64))
          {
            sub_100084550(a1, v211, v204, v215);
          }
        }

        if (*a8)
        {
          v205 = v219;
          *bytes = *uu;
          *(bytes + 1) = v205;
          *(bytes + 4) = v220;
        }

LABEL_176:
        v22 = 0;
        *(a9 + 3) = 1;
        return v22;
      }

      v134 = a2;
      v135 = a7;
      v136 = *a3 >> 60;
      if (v136 == 14)
      {
        LODWORD(v136) = *(a3 + 8);
      }

      v137 = _apfs_type_to_str(v136);
      v138 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v139 = *a4;
      v140 = _xf_type_to_str(a3, *v19);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found unexpected dstream associated with non-regular file\n", v137, v138, a5, v139, v140);
      if (*(v135 + 64))
      {
        i64 = 0;
      }

      else
      {
        i64 = v134[48].i64;
      }

      v142 = dstream_delete(i64, *a3);
      if (!v142)
      {
        goto LABEL_176;
      }

      v22 = v142;
      v143 = *a3 >> 60;
      if (v143 == 14)
      {
        LODWORD(v143) = *(a3 + 8);
      }

      v144 = _apfs_type_to_str(v143);
      v145 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v146 = *a4;
      v147 = _xf_type_to_str(a3, *v19);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unable to remove dstream of non-regular inode\n", v144, v145, a5, v146, v147);
      return v22;
    case 10:
      v91 = *bytes;
      if (*bytes <= 0xFuLL && (*bytes - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v216 = a7;
        v93 = *a3 >> 60;
        if (v93 == 14)
        {
          LODWORD(v93) = *(a3 + 8);
        }

        v94 = _apfs_type_to_str(v93);
        v95 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v96 = *a4;
        v97 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v94, v95, a5, v96, v97, v91);
        fsck_fail_func(0xC7, -2);
        a7 = v216;
      }

      v98 = *(v17 + 48);
      if ((v98 & 4) != 0 && (v99 = a7, dir_stats_register_origin(v91, *a3 & 0xFFFFFFFFFFFFFFFLL, v98), a7 = v99, v100))
      {
        v22 = v100;
        v101 = *a3 >> 60;
        if (v101 == 14)
        {
          LODWORD(v101) = *(a3 + 8);
        }

        _apfs_type_to_str(v101);
        _xf_type_to_str(a3, *v19);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: failed to register dir-stats (%llu) origin: %d\n");
      }

      else
      {
        if (*(a7 + 40) < (v91 + 1))
        {
          *(a7 + 40) = v91 + 1;
        }

        v22 = 0;
        *(a9 + 2) = 1;
        *(a9 + 8) = v91;
      }

      return v22;
    case 11:
      *uu = *bytes;
      if (!uuid_is_null(uu))
      {
        return 0;
      }

      v55 = *a3 >> 60;
      if (v55 == 14)
      {
        LODWORD(v55) = *(a3 + 8);
      }

      v56 = _apfs_type_to_str(v55);
      v57 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v58 = *a4;
      v59 = _xf_type_to_str(a3, *v19);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: uuid is NULL\n", v56, v57, a5, v58, v59);
      v22 = 92;
      v39 = 200;
      goto LABEL_20;
    case 13:
      if ((*(v17 + 49) & 2) == 0)
      {
        v68 = *a3 >> 60;
        if (v68 == 14)
        {
          LODWORD(v68) = *(a3 + 8);
        }

        v69 = _apfs_type_to_str(v68);
        v70 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v71 = *a4;
        v72 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: sparse_bytes set even though inode is not sparse\n", v69, v70, a5, v71, v72);
        fsck_fail_func(0xC9, -5);
      }

      v22 = 0;
      *(a9 + 24) = *bytes;
      *(a9 + 4) = 1;
      return v22;
    case 14:
      *(a9 + 1) = 1;
      if ((*(a2[2].i64[1] + 57) & 2) != 0)
      {
        v23 = a2;
        v24 = a7;
        v129 = *a3 >> 60;
        if (v129 == 14)
        {
          LODWORD(v129) = *(a3 + 8);
        }

        v130 = _apfs_type_to_str(v129);
        v131 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v132 = *a4;
        v133 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found rdev x-field but volume has rdev in core-inode\n", v130, v131, a5, v132, v133);
        v30 = 1156;
        goto LABEL_6;
      }

      if ((*(v17 + 80) & 0xB000 | 0x4000) != 0x6000)
      {
        v23 = a2;
        v24 = a7;
        v185 = *a3 >> 60;
        if (v185 == 14)
        {
          LODWORD(v185) = *(a3 + 8);
        }

        v186 = _apfs_type_to_str(v185);
        v187 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v188 = *a4;
        v189 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found rdev x-field even though inode is not a char/block device\n", v186, v187, a5, v188, v189);
        v30 = 1157;
        goto LABEL_6;
      }

      if (!*bytes)
      {
        v48 = *a3 >> 60;
        if (v48 == 14)
        {
          LODWORD(v48) = *(a3 + 8);
        }

        v49 = _apfs_type_to_str(v48);
        v50 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v51 = *a4;
        v52 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found zero rdev on char/block device (mode %u)\n", v49, v50, a5, v51, v52, *(v17 + 80));
        v53 = 1212;
        v54 = 92;
LABEL_60:
        fsck_fail_func(v53, v54);
      }

      return 0;
    case 17:
      v73 = a2[2].i64[1];
      if ((*(v73 + 57) & 2) != 0)
      {
        v23 = a2;
        v24 = a7;
        v148 = *a3 >> 60;
        if (v148 == 14)
        {
          LODWORD(v148) = *(a3 + 8);
        }

        v149 = _apfs_type_to_str(v148);
        v150 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v151 = *a4;
        v152 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found nlink x-field but volume has dir-nlink in core-inode\n", v149, v150, a5, v151, v152);
        v30 = 1154;
      }

      else
      {
        if ((*(v73 + 48) & 2) == 0)
        {
          v23 = a2;
          v24 = a7;
          v74 = *a3 >> 60;
          if (v74 == 14)
          {
            LODWORD(v74) = *(a3 + 8);
          }

          v75 = _apfs_type_to_str(v74);
          v76 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v77 = *a4;
          v78 = _xf_type_to_str(a3, *v19);
          fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found nlink field but volume doesn't support it\n", v75, v76, a5, v77, v78);
          v30 = 984;
          goto LABEL_6;
        }

        if ((*(v17 + 80) & 0xF000) == 0x4000)
        {
          v169 = *bytes;
          if (*bytes <= *(v17 + 56))
          {
            if (!(v169 >> 31))
            {
LABEL_160:
              dir_register_nlink(*a3 & 0xFFFFFFFFFFFFFFFLL, v169);
              return 0;
            }

            v196 = *a3 >> 60;
            if (v196 == 14)
            {
              LODWORD(v196) = *(a3 + 8);
            }

            v197 = _apfs_type_to_str(v196);
            v198 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v199 = *a4;
            v200 = _xf_type_to_str(a3, *v19);
            fsck_printf_warn("%s (id %llu): xf %u/%u: %s: directory nlink value is invalid (%llu)\n", v197, v198, a5, v199, v200, v169);
            v169 = 0;
            v175 = 1211;
          }

          else
          {
            v170 = *a3 >> 60;
            if (v170 == 14)
            {
              LODWORD(v170) = *(a3 + 8);
            }

            v171 = _apfs_type_to_str(v170);
            v172 = *a3 & 0xFFFFFFFFFFFFFFFLL;
            v173 = *a4;
            v174 = _xf_type_to_str(a3, *v19);
            fsck_printf_warn("%s (id %llu): xf %u/%u: %s: directory nlink value %lld is greater than nchildren (%d)\n", v171, v172, a5, v173, v174, v169, *(v17 + 56));
            v175 = 986;
          }

          fsck_fail_func(v175, -8);
          goto LABEL_160;
        }

        v23 = a2;
        v24 = a7;
        v190 = *a3 >> 60;
        if (v190 == 14)
        {
          LODWORD(v190) = *(a3 + 8);
        }

        v191 = _apfs_type_to_str(v190);
        v192 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v193 = *a4;
        v194 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found nlink field even though inode is not a directory\n", v191, v192, a5, v193, v194);
        v30 = 985;
      }

LABEL_6:
      v31 = -5;
LABEL_7:
      fsck_fail_func(v30, v31);
LABEL_8:
      if (*(v24 + 64))
      {
        v32 = 0;
      }

      else
      {
        v32 = v23[48].i64;
      }

      v22 = inode_repairs_add_xf_deletion(v32, *a3, *v19);
      if (v22)
      {
        v33 = *a3 >> 60;
        if (v33 == 14)
        {
          LODWORD(v33) = *(a3 + 8);
        }

        v34 = _apfs_type_to_str(v33);
        v35 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v36 = *a4;
        v37 = _xf_type_to_str(a3, *v19);
        v38 = strerror(v22);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: unable to add repair for unexpected xfield: %s\n", v34, v35, a5, v36, v37, v38);
        v39 = 1213;
        v40 = v22;
LABEL_21:
        fsck_fail_func(v39, v40);
      }

      return v22;
    case 19:
      if ((*(v17 + 51) & 0x20) != 0)
      {
        v23 = a2;
        v24 = a7;
        v153 = *a3 >> 60;
        if (v153 == 14)
        {
          LODWORD(v153) = *(a3 + 8);
        }

        v154 = _apfs_type_to_str(v153);
        v155 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v156 = *a4;
        v157 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found attribution tag on an inode with unsupported flags\n", v154, v155, a5, v156, v157);
        v30 = 1336;
        goto LABEL_6;
      }

      if ((*(a2[2].i64[1] + 48) & 8) == 0)
      {
        v23 = a2;
        v24 = a7;
        v102 = *a3 >> 60;
        if (v102 == 14)
        {
          LODWORD(v102) = *(a3 + 8);
        }

        v103 = _apfs_type_to_str(v102);
        v104 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v105 = *a4;
        v106 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found attribution tag on a volume that doesn't support them\n", v103, v104, a5, v105, v106);
        v30 = 1315;
        goto LABEL_6;
      }

      v176 = *bytes;
      *(a9 + 32) = *bytes;
      if (!v176)
      {
        v177 = *a3 >> 60;
        if (v177 == 14)
        {
          LODWORD(v177) = *(a3 + 8);
        }

        v178 = _apfs_type_to_str(v177);
        v179 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v180 = *a4;
        v181 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid hash: (0)\n", v178, v179, a5, v180, v181);
        fsck_fail_func(0x524, -7);
      }

      v22 = 0;
      *(a9 + 5) = 1;
      return v22;
    case 20:
      if ((~*(v17 + 48) & 0x20000004) == 0)
      {
        return 0;
      }

      v23 = a2;
      v24 = a7;
      v124 = *a3 >> 60;
      if (v124 == 14)
      {
        LODWORD(v124) = *(a3 + 8);
      }

      v125 = _apfs_type_to_str(v124);
      v126 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v127 = *a4;
      v128 = _xf_type_to_str(a3, *v19);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: inode is expected to be an SAF dir-stats origin\n", v125, v126, a5, v127, v128);
      v30 = 1470;
      v31 = 92;
      goto LABEL_7;
    case 21:
      *(a9 + 40) = *bytes;
      if (*(a2[2].i64[1] + 1112))
      {
        v79 = *(a9 + 40);
        if (v79 > 0x3FF)
        {
          v168 = v79 + 1;
          if (*(a7 + 56) >= v168)
          {
            return 0;
          }

          v22 = 0;
          *(a7 + 56) = v168;
          return v22;
        }

        v23 = a2;
        v24 = a7;
        v80 = *a3 >> 60;
        if (v80 == 14)
        {
          LODWORD(v80) = *(a3 + 8);
        }

        v81 = _apfs_type_to_str(v80);
        v82 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v83 = *a4;
        v84 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid clonegroup_id (%llu), less than CLONEGROUP_ID_MIN (%u)\n", v81, v82, a5, v83, v84, *(a9 + 40), 1024);
        v85 = 1519;
      }

      else
      {
        v23 = a2;
        v24 = a7;
        v163 = *a3 >> 60;
        if (v163 == 14)
        {
          LODWORD(v163) = *(a3 + 8);
        }

        v164 = _apfs_type_to_str(v163);
        v165 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v166 = *a4;
        v167 = _xf_type_to_str(a3, *v19);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: found in an unsupported volume\n", v164, v165, a5, v166, v167);
        v85 = 1518;
      }

      fsck_fail_func(v85, -2);
      *(a9 + 40) = 0;
      goto LABEL_8;
    default:
      v86 = *a3 >> 60;
      if (v86 == 14)
      {
        LODWORD(v86) = *(a3 + 8);
      }

      v87 = _apfs_type_to_str(v86);
      v88 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v89 = *a4;
      v90 = _xf_type_to_str(a3, *v19);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v87, v88, a5, v89, v90, *v19);
      v53 = 202;
      v54 = -5;
      goto LABEL_60;
  }
}

uint64_t sub_100083848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v12 = *(a4 + 48);
  v82 = 0;
  v13 = *(v12 + 48);
  if ((v13 & 6) != 0 && (*(a4 + 2) & 1) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFF9;
    v15 = _apfs_type_to_str(*a5 >> 60);
    fsck_printf_warn("%s (id %llu): dir-stats key xf does not exist, despite internal_flags (0x%llx)\n", v15, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 48));
    fsck_fail_func(0x4CD, -3);
    if (fsckAskPrompt(fsck_apfs_ctx, "Set internal_flags to 0x%llx? ", v16, v17, v18, v19, v20, v21, v14))
    {
      *(v12 + 48) = v14;
      *a6 = 1;
    }
  }

  if (*(a4 + 4) == 1 && (*(a4 + 3) & 1) == 0)
  {
    v22 = _apfs_type_to_str(*a5 >> 60);
    fsck_printf_err("%s (id %llu): dstream xf does not exist, despite existence of sparse bytes xf\n", v22, *a5 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x4EA, -5);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  if (*(a4 + 2) != 1)
  {
    v39 = a6;
    v28 = (a4 + 24);
    v27 = *(a4 + 24);
    v31 = (a4 + 16);
    v30 = *(a4 + 16);
    if (v27 > v30 && v30 != 0)
    {
      v23 = a3;
      v24 = a1;
      v25 = a2;
      v81 = v39;
      v29 = 0;
      goto LABEL_26;
    }

    v41 = v39;
    goto LABEL_33;
  }

  v23 = a3;
  v24 = a1;
  v25 = a2;
  v81 = a6;
  v26 = *(v12 + 48);
  v28 = (a4 + 24);
  v27 = *(a4 + 24);
  v29 = (v26 & 6) == 2;
  v31 = (a4 + 16);
  v30 = *(a4 + 16);
  if (v27 > v30 && v30 != 0)
  {
LABEL_26:
    v42 = is_file_in_purgatory(v24, v25, *(v23 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v82);
    if (v42)
    {
      v37 = v42;
      v43 = 1333;
      v44 = v37;
LABEL_43:
      fsck_fail_func(v43, v44);
      return v37;
    }

    if ((v82 & 1) == 0)
    {
      v48 = _apfs_type_to_str(*a5 >> 60);
      fsck_printf_err("%s (id %llu): number of sparse bytes (%llu) is larger than alloced_size (%llu)\n", v48, *a5 & 0xFFFFFFFFFFFFFFFLL, *v28, *v31);
      v37 = 92;
      v43 = 1259;
      v44 = 92;
      goto LABEL_43;
    }

    if (v29 || (*(v12 + 51) & 0x10) != 0)
    {
      v49 = _apfs_type_to_str(*a5 >> 60);
      fsck_printf_warn("%s (id %llu): sparse bytes mismatch for a file in the purgatory\n", v49, *a5 & 0xFFFFFFFFFFFFFFFLL);
      fsck_fail_func(0x5FF, -11);
      v50 = *(v12 + 48) & 0xFFFFFFFFEFFFFFFDLL;
      v45 = 1;
      if (fsckAskPrompt(fsck_apfs_ctx, "Set internal_flags to 0x%llx? ", v51, v52, v53, v54, v55, v56, v50))
      {
        *(v12 + 48) = v50;
        v41 = v81;
        *v81 = 1;
LABEL_47:
        a2 = v25;
        a1 = v24;
        a3 = v23;
        goto LABEL_48;
      }
    }

    else
    {
      v45 = 1;
    }

    v41 = v81;
    goto LABEL_47;
  }

  if ((v26 & 6) != 2)
  {
    v41 = v81;
    a2 = v25;
    a1 = v24;
    a3 = v23;
LABEL_33:
    if (*(a4 + 5) != 1)
    {
LABEL_41:
      v45 = 0;
LABEL_48:
      v57 = *(v12 + 68);
      if ((v57 & 0x40) != 0 && (*a4 & 1) == 0)
      {
        v58 = v41;
        v59 = v57 & 0xFFFFFFBF;
        v60 = _apfs_type_to_str(*a5 >> 60);
        fsck_printf_err("%s (id %llu): doc_id xf does not exist, despite bsd_flags (0x%x)\n", v60, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 68));
        v37 = 92;
        fsck_fail_func(0x44E, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Set bsd_flags to 0x%x? ", v61, v62, v63, v64, v65, v66, v59))
        {
          return v37;
        }

        *(v12 + 68) = v59;
        v41 = v58;
        *v58 = 1;
      }

      if ((*(v12 + 80) & 0xB000 | 0x4000) == 0x6000 && (*(a4 + 1) & 1) == 0)
      {
        v67 = _apfs_type_to_str(*a5 >> 60);
        fsck_printf_warn("%s (id %llu): no rdev xf on char/block device (mode %u)\n", v67, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 80));
      }

      v68 = *(v12 + 48);
      if (*(a4 + 5) != (v68 & 0x10000000) >> 28)
      {
        if ((v68 & 0x10000000) != 0 || !*(a4 + 5))
        {
          v69 = v68 & 0xFFFFFFFFEFFFFFFFLL;
          v70 = 1318;
          v71 = "%s (id %llu): attribution tag xf does not exist, despite internal_flags (0x%llx)\n";
          goto LABEL_66;
        }

        if (v45)
        {
          if (v82)
          {
            return 0;
          }

          goto LABEL_65;
        }

        v37 = is_file_in_purgatory(a1, a2, *(a3 + 64), *a5 & 0xFFFFFFFFFFFFFFFLL, &v82);
        if (v37)
        {
          return v37;
        }

        if ((v82 & 1) == 0)
        {
          v68 = *(v12 + 48);
LABEL_65:
          v69 = v68 | 0x10000000;
          v70 = 1317;
          v71 = "%s (id %llu): attribution tag xf exists, despite internal_flags (0x%llx)\n";
LABEL_66:
          v72 = _apfs_type_to_str(*a5 >> 60);
          fsck_printf_warn(v71, v72, *a5 & 0xFFFFFFFFFFFFFFFLL, *(v12 + 48));
          fsck_fail_func(v70, -3);
          if (fsckAskPrompt(fsck_apfs_ctx, "Set internal_flags to 0x%llx? ", v73, v74, v75, v76, v77, v78, v69))
          {
            v37 = 0;
            *(v12 + 48) = v69;
            *v41 = 1;
            return v37;
          }
        }
      }

      return 0;
    }

    v33 = v30 >= v27;
    v46 = v30 - v27;
    if (v33)
    {
      v35 = v46;
    }

    else
    {
      v35 = 0;
    }

LABEL_37:
    if (*(a4 + 5) == 1)
    {
      file_info_register_inode(*a5 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 32), v35);
      if (v47)
      {
        v37 = v47;
        _apfs_type_to_str(*a5 >> 60);
        fsck_printf_err("%s (id %llu): failed to register attribution tag: %d\n");
        return v37;
      }
    }

    goto LABEL_41;
  }

  v33 = v30 >= v27;
  v34 = v30 - v27;
  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  dir_stats_register_descendant(*(a4 + 8), v35, (v26 >> 29) & 1);
  if (!v36)
  {
    if ((*(v12 + 80) & 0xF000) == 0x8000)
    {
      v41 = v81;
      if (*(v12 + 56) == 1)
      {
        a2 = v25;
        if ((*(v12 + 48) & 0x180000) == 0x80000)
        {
          a1 = v24;
          if ((*(v12 + 68) & 0x40000020) != 0x20)
          {
            dir_stats_register_purgeable(*(a4 + 8), v35);
            a3 = v23;
            if (v80)
            {
              v37 = v80;
              _apfs_type_to_str(*a5 >> 60);
              fsck_printf_err("%s (id %llu): failed to register dir-stats (%llu) purgeable_size: %d\n");
              return v37;
            }

            goto LABEL_37;
          }

          goto LABEL_79;
        }

LABEL_78:
        a1 = v24;
LABEL_79:
        a3 = v23;
        goto LABEL_37;
      }
    }

    else
    {
      v41 = v81;
    }

    a2 = v25;
    goto LABEL_78;
  }

  v37 = v36;
  v38 = _apfs_type_to_str(*a5 >> 60);
  fsck_printf_err("%s (id %llu): failed to register dir-stats (%llu) descendant: %d\n", v38, *a5 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 8), v37);
  return v37;
}

uint64_t sub_100083E40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v14 = *(*(a1 + 8) + 36);
  v15 = *(a2 + 40);
  if (!a4 && *a3 >> 60 != 4)
  {
    sub_100085E18();
  }

  v16 = a5[1];
  v93 = *(a2 + 40);
  if (v16 % v14)
  {
    v17 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): dstream.alloced_size (%llu) is not a multiple of the block size (%u)\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL, a5[1], v14);
    v18 = 92;
    fsck_fail_func(0x381, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Truncate alloced_size to block size? ", v19, v20, v21, v22, v23, v24))
    {
      return v18;
    }

    v16 = a5[1] / v14 * v14;
    a5[1] = v16;
    *a7 = 1;
    v15 = v93;
  }

  v25 = *(a6 + 64);
  v91 = a2;
  v92 = a3;
  v89 = a6;
  v90 = a7;
  if (v25)
  {
    v26 = (*(*(a2 + 40) + 264) & 9) == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = 0;
  v28 = a5[2];
  v29 = *(v15 + 264) & 0x109;
  v30 = *a5;
  if (v29)
  {
    v31 = v28 != -1;
  }

  else
  {
    v31 = 1;
  }

  if (v26 && v28 == -1 && a4 && !v29)
  {
    v27 = (*(a4 + 48) & 0x10) == 0;
  }

  v94 = 0;
  if (v30 <= v16 && v31 && !v27 || (v32 = is_file_in_purgatory(a1, v91, v25, *v92 & 0xFFFFFFFFFFFFFFFLL, &v94), v15 = v93, v18 = v32, !v32))
  {
    if (v30 > v16 && (v94 & 1) == 0)
    {
      if ((v33 = *v92, !a4) && (v33 & 0xF000000000000000) == 0x4000000000000000 || (*(a4 + 48) & 0x80) == 0)
      {
        v34 = _apfs_type_to_str(v33 >> 60);
        fsck_printf_err("%s (id %llu): dstream.size (%llu) is greater than dstream.alloced_size (%llu)\n", v34, *v92 & 0xFFFFFFFFFFFFFFFLL, *a5, a5[1]);
        v18 = 92;
        fsck_fail_func(0xB8, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Truncate size to alloced size? ", v35, v36, v37, v38, v39, v40))
        {
          return v18;
        }

        *a5 = a5[1];
        *v90 = 1;
        v15 = v93;
      }
    }

    if (!v31 && (v94 & 1) == 0)
    {
      v41 = _apfs_type_to_str(*v92 >> 60);
      fsck_printf_err("%s (id %llu): found dstream with unassigned default_crypto_id\n", v41, *v92 & 0xFFFFFFFFFFFFFFFLL);
      v18 = 92;
      fsck_fail_func(0x3F5, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix unassigned default_crypto_id? ", v42, v43, v44, v45, v46, v47))
      {
        return v18;
      }

      v15 = v93;
      a5[2] = 4 * ((*(v93 + 264) & 0x108) != 0);
      *v90 = 1;
    }

    if (!v26)
    {
      return 0;
    }

    v48 = *(v15 + 264);
    if (v48)
    {
      v49 = a5[2];
      if (!*(v15 + 976))
      {
        if (v49 + 1 < 2)
        {
          return 0;
        }

        v59 = v15;
        v60 = _apfs_type_to_str(*v92 >> 60);
        fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu) on unencrypted volume, given apfs_fs_flags (0x%llx)\n", v60, *v92 & 0xFFFFFFFFFFFFFFFLL, a5[2], *(v59 + 264));
        v18 = 92;
        fsck_fail_func(0xBD, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix default_crypto_id (%llu)? ", v61, v62, v63, v64, v65, v66, a5[2]))
        {
          return v18;
        }

        v18 = 0;
        a5[2] = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v49 = a5[2];
    }

    if (v49 == 1)
    {
      v50 = _apfs_type_to_str(*v92 >> 60);
      fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu)\n", v50, *v92 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
      v18 = 92;
      fsck_fail_func(0xB9, 92);
      return v18;
    }

    if (v28 != -1)
    {
      if ((*(v15 + 264) & 0x109) == 8)
      {
        v18 = 0;
        if (v49 != 4 && !*(v15 + 976))
        {
          v51 = v15;
          v52 = _apfs_type_to_str(*v92 >> 60);
          fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v52, *v92 & 0xFFFFFFFFFFFFFFFLL, a5[2], *(v51 + 264));
          v18 = 92;
          fsck_fail_func(0xBA, 92);
          if (fsckAskPrompt(fsck_apfs_ctx, "Fix default_crypto_id (%llu)? ", v53, v54, v55, v56, v57, v58, a5[2]))
          {
            v18 = 0;
            a5[2] = 4;
            goto LABEL_51;
          }
        }

        return v18;
      }

      if ((v48 & 1) != 0 || *(v15 + 976) | v49)
      {
        goto LABEL_62;
      }

      v74 = v15;
      v75 = _apfs_type_to_str(*v92 >> 60);
      fsck_printf_err("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume, given apfs_fs_flags (0x%llx)\n", v75, *v92 & 0xFFFFFFFFFFFFFFFLL, a5[2], *(v74 + 264));
      fsck_fail_func(0x34A, 92);
      if ((*(*(v91 + 40) + 57) & 2) == 0 || (~*(a4 + 68) & 0x40000020) != 0)
      {
        v15 = v93;
        if ((*(v93 + 264) & 0x109) == 0x100)
        {
          v85 = fsckAskPrompt(fsck_apfs_ctx, "Fix default_crypto_id (%llu)? ", v76, v77, v78, v79, v80, v81, a5[2]);
          v15 = v93;
          if (v85)
          {
            a5[2] = 4;
            *v90 = 1;
            goto LABEL_66;
          }
        }
      }

      else
      {
        v82 = dstream_delete(v91 + 768, *v92);
        v15 = v93;
        if (!v82)
        {
LABEL_62:
          v86 = a5[2];
          if (v86 - 16 < 0xFFFFFFFFFFFFFFF1)
          {
            goto LABEL_72;
          }

          if (v86 - 2 < 2 || v86 == 5)
          {
            goto LABEL_73;
          }

          if (v86 != 4)
          {
            goto LABEL_71;
          }

LABEL_66:
          if ((*(v15 + 264) & 1) == 0)
          {
            if ((*(v15 + 264) & 0x108) == 0x100)
            {
              v86 = 4;
              goto LABEL_73;
            }

            goto LABEL_71;
          }

          v86 = 4;
          if ((*(v15 + 264) & 0x109) != 0x100 && !*(v15 + 976))
          {
LABEL_71:
            v87 = _apfs_type_to_str(*v92 >> 60);
            fsck_printf_warn("%s (id %llu): invalid dstream.default_crypto_id (%llu) on encrypted volume\n", v87, *v92 & 0xFFFFFFFFFFFFFFFLL, a5[2]);
            fsck_fail_func(0xBC, -2);
            v86 = a5[2];
LABEL_72:
            if (v86 != -1)
            {
              goto LABEL_73;
            }

            return 0;
          }

LABEL_73:
          if (*(v89 + 40) <= v86)
          {
            v18 = 0;
            *(v89 + 40) = v86 + 1;
            return v18;
          }

          return 0;
        }

        v83 = v82;
        v84 = _apfs_type_to_str(*v92 >> 60);
        fsck_printf_warn("%s (id %llu): unable to remove dstream of inode %llu\n", v84, *v92 & 0xFFFFFFFFFFFFFFFLL, *v92 & 0xFFFFFFFFFFFFFFFLL);
        fsck_fail_func(0x58F, v83);
        v15 = v93;
      }

      *(v91 + 13) = 1;
      goto LABEL_62;
    }

    if (!v27 || (v94 & 1) != 0)
    {
      return 0;
    }

    v67 = _apfs_type_to_str(*v92 >> 60);
    fsck_printf_err("%s (id %llu): invalid internal_flags (0x%llx) given unassigned default_crypto_id\n", v67, *v92 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 48));
    v18 = 92;
    fsck_fail_func(0x534, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix internal flags (0x%llx)? ", v68, v69, v70, v71, v72, v73, *(a4 + 48)))
    {
      return v18;
    }

    v18 = 0;
    *(a4 + 48) |= 0x10uLL;
LABEL_51:
    *v90 = 1;
  }

  return v18;
}

uint64_t sub_100084550(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  memset(v12, 0, sizeof(v12));
  result = get_tree_for_jobj(a1, a2, 8u, &v14);
  if (!result)
  {
    v11[0] = a1;
    v11[1] = a2;
    v13[0] = a3 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
    v13[1] = 0;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = tree_iterator_init(v9, v14, *(a4 + 64), v13, 0x10u, 0x10u, v12, 24);
    if (!result)
    {
      return fsck_iterate(v9, sub_100084610, v11, 0);
    }
  }

  return result;
}

uint64_t sub_100084610(void *a1, int a2, void *a3, int a4, void *a5)
{
  result = 0xFFFFFFFFLL;
  if (a4 == 24 && a2 == 16 && (*a1 & 0xF000000000000000) == 0x8000000000000000)
  {
    v7 = a3[1];
    if (v7)
    {
      return fixup_cow_exempt_phys_extent(a5[1], v7, (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(*a5 + 8) + 36));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100084668(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  if (v6 <= 1)
  {
    v7 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): invalid hdr.obj_id\n", v7, v6);
    v8 = 92;
    v9 = 627;
LABEL_3:
    v10 = 92;
LABEL_4:
    fsck_fail_func(v9, v10);
    return v8;
  }

  v18 = *(*(a1 + 8) + 36);
  if (v6 <= 0xF && v6 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = _apfs_type_to_str(8u);
    fsck_printf_warn("%s (id %llu): invalid hdr.obj_id\n", v20, v6);
    fsck_fail_func(0x274, -2);
  }

  if (*(a5 + 40) <= v6)
  {
    *(a5 + 40) = v6 + 1;
  }

  if (a3[1] % v18)
  {
    v21 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): Logical address %llu of file extent not a multiple of the block size (%u)\n", v21, v6, a3[1], v18);
    v8 = 92;
    fsck_fail_func(0x259, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Round down logical address (%llu) to block size? ", v22, v23, v24, v25, v26, v27, a3[1]))
    {
      return v8;
    }

    a3[1] = a3[1] / v18 * v18;
    *a6 = 1;
  }

  v80 = a6;
  v81 = a2;
  v28 = *a4;
  v29 = *a4 & 0xFFFFFFFFFFFFFFLL;
  if (v29 % v18)
  {
    v30 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): Length %llu of file extent not a multiple of the block size (%u)\n", v30, v6, v29, v18);
    fsck_fail_func(0xD6, 92);
    v89[0] = 0;
    tree_for_jobj = get_tree_for_jobj(a1, a2, 8u, v89);
    v38 = a3[1];
    v84 = v6;
    v85 = v38;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    LODWORD(v82) = 16;
    v94[0] = 24;
    if (tree_for_jobj || tree_lookup(v89[0], *(a5 + 64), 2, &v84, &v82, 16, &v90, v94) || v82 != 16 || v84 != v6)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Round %s length (%llu) to block size? ", v32, v33, v34, v35, v36, v37, "down", v29))
      {
LABEL_19:
        v39 = v29 - v29 % v18;
LABEL_20:
        v28 = v39 & 0xFFFFFFFFFFFFFFLL | (*(a4 + 7) << 56);
        *a4 = v28;
        *v80 = 1;
        v29 = v39;
        goto LABEL_21;
      }
    }

    else
    {
      v39 = (v18 + v29 - 1) / v18 * v18;
      v79 = v85 - a3[1] == v39;
      v70 = "up";
      if (v85 - a3[1] != v39)
      {
        v70 = "down";
      }

      if (fsckAskPrompt(fsck_apfs_ctx, "Round %s length (%llu) to block size? ", v32, v33, v34, v35, v36, v37, v70, v29))
      {
        if (v79)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    return 92;
  }

LABEL_21:
  v40 = HIBYTE(v28);
  if (v28 >> 58)
  {
    v51 = _apfs_type_to_str(8u);
    fsck_printf_warn("%s (id %llu): unknown flags: (0x%02x / known flags are: 0x%02x)\n", v51, v6, HIBYTE(v28), 3);
    fsck_fail_func(0xD7, -3);
    if (*(*(a1 + 8) + 1384) > 0x959D39220F1C2uLL || !fsckAskPrompt(fsck_apfs_ctx, "Unset unknown flags? (0x%llx) ", v52, v53, v54, v55, v56, v57, HIBYTE(v28) & 0xFC))
    {
      goto LABEL_32;
    }

    v49 = 0x300000000000000;
    v50 = 3;
    goto LABEL_31;
  }

  v41 = v81[6];
  if (!v41)
  {
    v41 = v81[5];
  }

  if ((*(v41 + 56) & 0x20) != 0 && (v28 & 0x100000000000000) != 0)
  {
    v42 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): invalid flags: (0x%02x)\n", v42, v6, 1);
    v8 = 92;
    fsck_fail_func(0x396, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Remove invalid flags (0x%02x)? ", v43, v44, v45, v46, v47, v48, 1))
    {
      return v8;
    }

    v49 = 0x200000000000000;
    v50 = 2;
LABEL_31:
    LOBYTE(v40) = v50 & HIBYTE(v28);
    *a4 = *a4 & 0xFFFFFFFFFFFFFFLL | v28 & v49;
    *v80 = 1;
  }

LABEL_32:
  v58 = v81;
  if ((v40 & 2) != 0)
  {
    v59 = v81[6];
    if (!v59)
    {
      v59 = v81[5];
    }

    if ((*(v59 + 56) & 0x80) == 0)
    {
      v60 = _apfs_type_to_str(8u);
      fsck_printf_err("%s (id %llu): invalid flag: (0x%02x)\n", v60, v6, 2);
      v8 = 92;
      fsck_fail_func(0x3F6, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Remove invalid flag (0x%02x)? ", v61, v62, v63, v64, v65, v66, 2))
      {
        return v8;
      }

      LOBYTE(v40) = v40 & 0xFD;
      *(a4 + 7) = v40;
      v58 = v81;
      *v80 = 1;
    }
  }

  v67 = *(a4 + 8);
  if ((v40 & 2) != 0)
  {
    if (!v67)
    {
      v76 = _apfs_type_to_str(8u);
      fsck_printf_err("%s (id %llu): expected physical block number for extent at offset %lld\n", v76, v6, a3[1]);
      v8 = 92;
      v9 = 1015;
      goto LABEL_3;
    }
  }

  else if (!v67)
  {
    goto LABEL_46;
  }

  v68 = *(*(a1 + 8) + 40);
  if (v68 - v29 / v18 < v67 || v68 <= v29 / v18 || v67 < 1 || v68 <= v67)
  {
    v71 = _apfs_type_to_str(8u);
    fsck_printf_err("%s (id %llu): Bad phys_block_num + len (%llu + %llu) for physical file extent record\n", v71, v6, *(a4 + 8), v29);
    v8 = 92;
    v9 = 216;
    goto LABEL_3;
  }

LABEL_46:
  v89[0] = 0;
  v89[1] = 0;
  if (v58)
  {
    v69 = *(*(v58 + 40) + 8);
  }

  else
  {
    v69 = 0;
  }

  v90 = v69;
  v91 = 0xF000040000000;
  v72 = *(a5 + 64);
  v92 = v67;
  v93 = v72;
  v87 = 16;
  v88 = 32;
  if (tree_lookup(&overlap_info, 0, 0, &v90, &v88, 32, v89, &v87) || ((v85 = 0, v86 = 0, v82 = 0, v83 = 0, !v58) ? (v75 = 0) : (v75 = *(*(v58 + 40) + 8)), v77 = *(a4 + 8), v84 = v75, v85 = v77, v86 = v6, v78 = a3[1], v82 = *(a5 + 64), v83 = v78, v8 = tree_insert(&phys_ext_backref_tree, 0, &v84, 24, &v82, 16), !v8))
  {
    v73 = *(a4 + 8);
    if (!v73)
    {
      return 0;
    }

    is_cow_exempt = dstream_is_cow_exempt(a3);
    v8 = file_extent_register(v58, v73, v29 / v18, v6, is_cow_exempt);
    if (v8)
    {
      v9 = 828;
      v10 = v8;
      goto LABEL_4;
    }
  }

  return v8;
}

double sub_100084C90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, _DWORD *a5)
{
  v10 = *a3;
  if ((*a3 & 0x100000000000000) == 0)
  {
    v11 = a3[2];
    if (v11 <= 0xF)
    {
      v12 = v11 > 5;
      v13 = (1 << v11) & 0x2D;
      if (v12 || v13 == 0)
      {
        v57 = _apfs_type_to_str(*a2 >> 60);
        fsck_printf_warn("%s (id %llu): invalid crypto_id (%llu)\n", v57, *a2 & 0xFFFFFFFFFFFFFFFLL, a3[2]);
        fsck_fail_func(0xD9, -2);
      }
    }
  }

  if (a3[1])
  {
    v15 = HIBYTE(v10);
    v16 = *(a1 + 40);
    v17 = *(v16 + 264);
    if (*(a4 + 64))
    {
      v18 = (*(v16 + 264) & 9) == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      v19 = *(v16 + 976);
      if (v17)
      {
        if (!v19)
        {
          if (a3[2])
          {
            v43 = _apfs_type_to_str(*a2 >> 60);
            fsck_printf_err("%s (id %llu): invalid nonzero crypto_id (%llu) on unencrypted volume\n", v43, *a2 & 0xFFFFFFFFFFFFFFFLL, a3[2]);
            fsck_fail_func(0x342, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Fix crypto_id (%llu)? ", v44, v45, v46, v47, v48, v49, a3[2]))
            {
              return result;
            }

            a3[2] = 0;
            *a5 = 1;
          }

          if ((v10 & 0x100000000000000) != 0)
          {
            v50 = _apfs_type_to_str(*a2 >> 60);
            fsck_printf_err("%s (id %llu): extent crypto flag set on unencrypted volume\n", v50, *a2 & 0xFFFFFFFFFFFFFFFLL);
            fsck_fail_func(0x3CF, 92);
            if (!fsckAskPrompt(fsck_apfs_ctx, "Clear invalid flag? ", v51, v52, v53, v54, v55, v56))
            {
              return result;
            }

            *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
            *a5 = 1;
            goto LABEL_32;
          }
        }
      }

      else if (!v19)
      {
        if (!a3[2])
        {
          v59 = _apfs_type_to_str(*a2 >> 60);
          fsck_printf_err("%s (id %llu): invalid zero crypto_id on encrypted volume\n", v59, *a2 & 0xFFFFFFFFFFFFFFFLL);
          fsck_fail_func(0x343, 92);
          if ((*(*(a1 + 40) + 264) & 0x108) == 0 || !fsckAskPrompt(fsck_apfs_ctx, "Fix crypto_id? ", v60, v61, v62, v63, v64, v65))
          {
            return result;
          }

          a3[2] = a3[1];
          LOBYTE(v15) = HIBYTE(v10) | 1;
          *(a3 + 7) = HIBYTE(v10) | 1;
          *a5 = 1;
          v17 = *(*(a1 + 40) + 264);
        }

        if ((v17 & 0x109) == 8 && (v15 & 1) == 0)
        {
          v21 = _apfs_type_to_str(*a2 >> 60);
          fsck_printf_err("%s (id %llu): extent crypto flag missing on encrypted volume\n", v21, *a2 & 0xFFFFFFFFFFFFFFFLL);
          fsck_fail_func(0x3CE, 92);
          if (!fsckAskPrompt(fsck_apfs_ctx, "Set missing flag? ", v22, v23, v24, v25, v26, v27))
          {
            return result;
          }

          LOBYTE(v15) = v15 | 1;
          *(a3 + 7) = v15;
          a3[2] = a3[1];
          *a5 = 1;
        }
      }
    }

    if (v15)
    {
LABEL_34:

      return crypto_register_fext(a2, a3);
    }

LABEL_32:
    v35 = a3[2] + 1;
    if (*(a4 + 40) < v35)
    {
      *(a4 + 40) = v35;
    }

    goto LABEL_34;
  }

  if (a3[2])
  {
    v28 = _apfs_type_to_str(*a2 >> 60);
    fsck_printf_warn("%s (id %llu): invalid sparse extent with nonzero crypto_id (%llu)\n", v28, *a2 & 0xFFFFFFFFFFFFFFFLL, a3[2]);
    fsck_fail_func(0x341, 92);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix crypto_id (%llu)? ", v29, v30, v31, v32, v33, v34, a3[2]))
    {
      a3[2] = 0;
      *a5 = 1;
    }
  }

  if ((v10 & 0x100000000000000) != 0 && (*(*(a1 + 40) + 264) & 9) == 0)
  {
    v36 = _apfs_type_to_str(*a2 >> 60);
    fsck_printf_warn("%s (id %llu): extent crypto flag set on sparse extent\n", v36, *a2 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x3E8, -3);
    if (fsckAskPrompt(fsck_apfs_ctx, "Clear invalid flag? ", v37, v38, v39, v40, v41, v42))
    {
      *(a3 + 7) = (v10 & 0xFE00000000000000) >> 56;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t sub_1000850BC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = crc32c(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000850FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, unint64_t *a6, uint64_t a7)
{
  v11 = &a4[2 * a5];
  v14 = *(v11 + 4);
  v13 = (v11 + 2);
  v12 = v14;
  if ((v14 - 1) > 1 || *(v13 + 1) == 8)
  {
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        v15 = *a6;
        if (*a6 <= 0xF && *a6 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = *a3 >> 60;
          if (v17 == 14)
          {
            LODWORD(v17) = *(a3 + 8);
          }

          v18 = _apfs_type_to_str(v17);
          v19 = *a3 & 0xFFFFFFFFFFFFFFFLL;
          v20 = *a4;
          v21 = _xf_type_to_str(a3, *v13);
          fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid sibling_id (%llu)\n", v18, v19, a5, v20, v21, v15);
          fsck_fail_func(0xC0, -2);
        }

        if (*(a7 + 40) < v15 + 1)
        {
          v22 = 0;
          *(a7 + 40) = v15 + 1;
          return v22;
        }
      }

      else
      {
        v28 = *a3 >> 60;
        if (v28 == 14)
        {
          LODWORD(v28) = *(a3 + 8);
        }

        v29 = _apfs_type_to_str(v28);
        v30 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v31 = *a4;
        v32 = _xf_type_to_str(a3, *v13);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v29, v30, a5, v31, v32, *v13);
        fsck_fail_func(0xC1, -5);
      }
    }

    return 0;
  }

  v23 = *a3 >> 60;
  if (v23 == 14)
  {
    LODWORD(v23) = *(a3 + 8);
  }

  v24 = _apfs_type_to_str(v23);
  v25 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v26 = *a4;
  v27 = _xf_type_to_str(a3, *v13);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v24, v25, a5, v26, v27, *(v13 + 1), *v13, 8);
  v22 = 92;
  fsck_fail_func(0x3D6, 92);
  return v22;
}

uint64_t sub_1000852D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  if (HIBYTE(v4) != 1)
  {
    sub_100085E44();
  }

  v9 = *(a2 + 48);
  if (!v9)
  {
    v9 = *(a2 + 40);
  }

  if ((*(v9 + 56) & 0x20) == 0)
  {
    v10 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_warn("%s (id %llu): Found data hash on unsealed volume\n", v10, *a3 & 0xFFFFFFFFFFFFFFFLL);
    fsck_fail_func(0x3A4, -5);
    return fsck_repairs_add(a2 + 768, 7u, 0, 0, 0, a3, 0x10u, 0, 0);
  }

  if ((v4 & 0x3FFF) != 0)
  {
    v12 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): Logical address %llu of data hash not a multiple of the hash chunk size (%u)\n", v12, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFLL, 0x4000);
    v13 = 92;
    v14 = 933;
LABEL_16:
    v18 = 92;
    goto LABEL_17;
  }

  v15 = *(a4 + 2);
  v16 = *(a2 + 20);
  if (v16 != v15 && (v16 > v15 || (*(a2 + 16) & 0xC00) == 0))
  {
    v19 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): Unexpected hash size (%u != %u)\n", v19, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a4 + 2), *(a2 + 20));
    v13 = 92;
    v14 = 934;
    goto LABEL_16;
  }

  if (bitmap_range_is_clear(a4 + 3, 0, 8 * *(a4 + 2), *(a4 + 2)))
  {
    v17 = _apfs_type_to_str(*a3 >> 60);
    fsck_printf_err("%s (id %llu): Invalid hash at offset %llu\n", v17, *a3 & 0xFFFFFFFFFFFFFFFLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFLL);
    v13 = 92;
    v14 = 935;
    goto LABEL_16;
  }

  v13 = dstream_register_hash(a1, a3, a4);
  if (v13)
  {
    v14 = 936;
    v18 = v13;
LABEL_17:
    fsck_fail_func(v14, v18);
  }

  return v13;
}

uint64_t sub_1000854B0(int a1, int a2, uint64_t a3, unsigned __int16 *a4, int a5, void *__src, int a7, int a8, _BYTE *a9)
{
  v12 = &a4[2 * a5];
  v14 = *(v12 + 4);
  v13 = (v12 + 2);
  if (v14 == 1)
  {
    v15 = *(v13 + 1);
    if (v15 < 0x100)
    {
      memcpy(a9 + 1, __src, v15);
      v21 = 0;
      *a9 = 1;
    }

    else
    {
      v16 = *a3 >> 60;
      if (v16 == 14)
      {
        LODWORD(v16) = *(a3 + 8);
      }

      v17 = _apfs_type_to_str(v16);
      v18 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v19 = *a4;
      v20 = _xf_type_to_str(a3, *v13);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, max %u\n", v17, v18, a5, v19, v20, *(v13 + 1), 255);
      v21 = 92;
      fsck_fail_func(0x521, 92);
    }
  }

  else
  {
    v22 = *a3 >> 60;
    if (v22 == 14)
    {
      LODWORD(v22) = *(a3 + 8);
    }

    v23 = _apfs_type_to_str(v22);
    v24 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v25 = *a4;
    v26 = _xf_type_to_str(a3, *v13);
    fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid x_type (%u)\n", v23, v24, a5, v25, v26, *v13);
    fsck_fail_func(0x522, -5);
    return 0;
  }

  return v21;
}

uint64_t sub_1000855FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5)
{
  v8 = &a4[2 * a5];
  v10 = *(v8 + 4);
  v9 = (v8 + 2);
  if ((v10 - 1) > 1)
  {
    v17 = *a3 >> 60;
    if (v17 == 14)
    {
      LODWORD(v17) = *(a3 + 8);
    }

    v18 = _apfs_type_to_str(v17);
    v19 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    v20 = *a4;
    v21 = _xf_type_to_str(a3, *v9);
    fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v18, v19, a5, v20, v21, *v9);
    fsck_fail_func(0x50A, -5);
    return 0;
  }

  if (*(v9 + 1) == 8)
  {
    return 0;
  }

  v11 = *a3 >> 60;
  if (v11 == 14)
  {
    LODWORD(v11) = *(a3 + 8);
  }

  v12 = _apfs_type_to_str(v11);
  v13 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v14 = *a4;
  v15 = _xf_type_to_str(a3, *v9);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %lu\n", v12, v13, a5, v14, v15, *(v9 + 1), *v9, 8);
  v16 = 92;
  fsck_fail_func(0x509, 92);
  return v16;
}

uint64_t sub_100085730(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a4[2 * a5];
  v15 = *(v12 + 4);
  v14 = (v12 + 2);
  v13 = v15;
  if (v15 <= 4)
  {
    v16 = word_1000B32CC[v13];
    if (v13 && v16 != *(v14 + 1))
    {
      v25 = *a3 >> 60;
      if (v25 == 14)
      {
        LODWORD(v25) = *(a3 + 8);
      }

      v26 = _apfs_type_to_str(v25);
      v27 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v28 = *a4;
      v29 = _xf_type_to_str(a3, *v14);
      fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u, expected %u\n", v26, v27, a5, v28, v29, *(v14 + 1), v16);
      v24 = 92;
      fsck_fail_func(0x4E6, 92);
      return v24;
    }
  }

  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v24 = 0;
      *(a9 + 24) = *a6;
      *(a9 + 16) = 1;
      return v24;
    }

    if (v13 == 4)
    {
      v24 = 0;
      *(a9 + 40) = *a6;
      *(a9 + 32) = 1;
      return v24;
    }
  }

  else
  {
    if (v13 == 1)
    {
      v24 = 0;
      *(a9 + 8) = *a6;
      *a9 = 1;
      return v24;
    }

    if (v13 == 2)
    {
      v18 = *a6;
      if ((*a6 - 1) > 0xE || (v18 - 4) > 0xFFFFFFFFFFFFFFFDLL)
      {
        if (*(a7 + 40) < (v18 + 1))
        {
          *(a7 + 40) = v18 + 1;
        }
      }

      else
      {
        v19 = *a3 >> 60;
        if (v19 == 14)
        {
          LODWORD(v19) = *(a3 + 8);
        }

        v20 = _apfs_type_to_str(v19);
        v21 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v22 = *a4;
        v23 = _xf_type_to_str(a3, *v14);
        fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid shadow_key (%llu)\n", v20, v21, a5, v22, v23, v18);
        fsck_fail_func(0x53B, -2);
      }

      v24 = 0;
      *(a9 + 56) = v18;
      *(a9 + 48) = 1;
      return v24;
    }
  }

  v30 = *a3 >> 60;
  if (v30 == 14)
  {
    LODWORD(v30) = *(a3 + 8);
  }

  v31 = _apfs_type_to_str(v30);
  v32 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v33 = *a4;
  v34 = _xf_type_to_str(a3, *v14);
  fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v31, v32, a5, v33, v34, *v14);
  fsck_fail_func(0x4E7, -5);
  return 0;
}

uint64_t sub_100085984(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v12 = &a4[2 * a5];
  v15 = *(v12 + 4);
  v14 = (v12 + 2);
  v13 = v15;
  if (v15 > 2 || ((v16 = word_1000B32D6[v13], v13) ? (v17 = v16 == *(v14 + 1)) : (v17 = 1), v17))
  {
    if (v13 == 1)
    {
      v21 = *a6;
      if ((*a6 & 0x1FFFFFFFFFFFFFLL) != 0)
      {
        v20 = 0;
        a9[1] = v21;
        return v20;
      }

      v39 = *a3 >> 60;
      if (v39 == 14)
      {
        LODWORD(v39) = *(a3 + 8);
      }

      v40 = _apfs_type_to_str(v39);
      v41 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v42 = *a4;
      v43 = _xf_type_to_str(a3, *v14);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v40, v41, a5, v42, v43, v21);
      v32 = 1297;
    }

    else
    {
      if (v13 != 2)
      {
        v27 = *a3 >> 60;
        if (v27 == 14)
        {
          LODWORD(v27) = *(a3 + 8);
        }

        v28 = _apfs_type_to_str(v27);
        v29 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v30 = *a4;
        v31 = _xf_type_to_str(a3, *v14);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v28, v29, a5, v30, v31, *v14);
        v32 = 1298;
        v33 = -5;
        goto LABEL_31;
      }

      v18 = *a6;
      if (*a6 > 0xF || v18 == 2)
      {
        *a9 = v18;
        if (*(a7 + 40) < (v18 + 1))
        {
          v20 = 0;
          *(a7 + 40) = v18 + 1;
          return v20;
        }

        return 0;
      }

      v34 = *a3 >> 60;
      if (v34 == 14)
      {
        LODWORD(v34) = *(a3 + 8);
      }

      v35 = _apfs_type_to_str(v34);
      v36 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v37 = *a4;
      v38 = _xf_type_to_str(a3, *v14);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v35, v36, a5, v37, v38, v18);
      v32 = 1296;
    }

    v33 = -2;
LABEL_31:
    fsck_fail_func(v32, v33);
    return 0;
  }

  v22 = *a3 >> 60;
  if (v22 == 14)
  {
    LODWORD(v22) = *(a3 + 8);
  }

  v23 = _apfs_type_to_str(v22);
  v24 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v25 = *a4;
  v26 = _xf_type_to_str(a3, *v14);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u\n", v23, v24, a5, v25, v26, *(v14 + 1), *v14, v16);
  v20 = 92;
  fsck_fail_func(0x50F, 92);
  return v20;
}

uint64_t sub_100085BD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int a5, unint64_t *a6, uint64_t a7, uint64_t a8, unint64_t *a9)
{
  v12 = &a4[2 * a5];
  v15 = *(v12 + 4);
  v14 = (v12 + 2);
  v13 = v15;
  if (v15 > 2 || ((v16 = word_1000B32D6[v13], v13) ? (v17 = v16 == *(v14 + 1)) : (v17 = 1), v17))
  {
    if (v13 == 1)
    {
      v19 = *a6;
      if (*a6 > 0xF || v19 == 2)
      {
        *a9 = v19;
        if (*(a7 + 40) < v19 + 1)
        {
          v18 = 0;
          *(a7 + 40) = v19 + 1;
          return v18;
        }

        return 0;
      }

      v33 = *a3 >> 60;
      if (v33 == 14)
      {
        LODWORD(v33) = *(a3 + 8);
      }

      v34 = _apfs_type_to_str(v33);
      v35 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v36 = *a4;
      v37 = _xf_type_to_str(a3, *v14);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid dir_stats_key (%llu)\n", v34, v35, a5, v36, v37, v19);
      v31 = 1534;
    }

    else
    {
      if (v13 != 2)
      {
        v26 = *a3 >> 60;
        if (v26 == 14)
        {
          LODWORD(v26) = *(a3 + 8);
        }

        v27 = _apfs_type_to_str(v26);
        v28 = *a3 & 0xFFFFFFFFFFFFFFFLL;
        v29 = *a4;
        v30 = _xf_type_to_str(a3, *v14);
        fsck_printf_warn("%s (id %llu): xf %u/%u: %s: unknown x_type (%u)\n", v27, v28, a5, v29, v30, *v14);
        v31 = 1523;
        v32 = -5;
        goto LABEL_31;
      }

      if (*a6)
      {
        v18 = 0;
        a9[1] = *a6;
        return v18;
      }

      v38 = *a3 >> 60;
      if (v38 == 14)
      {
        LODWORD(v38) = *(a3 + 8);
      }

      v39 = _apfs_type_to_str(v38);
      v40 = *a3 & 0xFFFFFFFFFFFFFFFLL;
      v41 = *a4;
      v42 = _xf_type_to_str(a3, *v14);
      fsck_printf_warn("%s (id %llu): xf %u/%u: %s: invalid attribution hash (%llu)\n", v39, v40, a5, v41, v42, 0);
      v31 = 1522;
    }

    v32 = -2;
LABEL_31:
    fsck_fail_func(v31, v32);
    return 0;
  }

  v21 = *a3 >> 60;
  if (v21 == 14)
  {
    LODWORD(v21) = *(a3 + 8);
  }

  v22 = _apfs_type_to_str(v21);
  v23 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v24 = *a4;
  v25 = _xf_type_to_str(a3, *v14);
  fsck_printf_err("%s (id %llu): xf %u/%u: %s: invalid extended field size %u for type %u, expected %u", v22, v23, a5, v24, v25, *(v14 + 1), *v14, v16);
  v18 = 92;
  fsck_fail_func(0x5F1, 92);
  return v18;
}

uint64_t clonegroup_abort()
{
  if (qword_100103BB0)
  {
    result = tree_destroy(&unk_100103B78, 0);
  }

  byte_100103BB8 = 0;
  return result;
}

uint64_t clonegroup_register_inode(uint64_t a1, uint64_t a2, int a3)
{
  v20 = 0u;
  memset(v21, 0, 27);
  if (byte_100103BB8 != 1)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  get_inode_64bit_xfield(a2, a3, 21, &v17);
  get_inode_64bit_xfield(a2, a3, 10, &v19);
  get_inode_64bit_xfield(a2, a3, 19, &v18);
  v22[0] = v6;
  v22[1] = a1;
  v15 = 43;
  v16 = 16;
  v7 = tree_lookup(&unk_100103B78, 0, 0, v22, &v16, 16, &v20, &v15);
  if (!v7)
  {
    if (v20 != v17)
    {
      fsck_fail_func(0x604, 92);
      fsck_printf_err("file_id %llu (group_id %llu, private_id %llu) has different clonegroup group_id (%llu)\n", a1, v17, v6, v20);
      BYTE2(v21[3]) |= 1u;
    }

    if (v21[1] != v18)
    {
      fsck_fail_func(0x605, 92);
      fsck_printf_err("clonegroup_record (group_id %llu, private_id %llu, file_id %llu) has incorrect attribution tag (%llu)\n", v17, v6, a1, v21[1]);
      BYTE2(v21[3]) |= 1u;
    }

    if (v21[0] == v19)
    {
      v10 = BYTE2(v21[3]);
    }

    else
    {
      fsck_fail_func(0x606, 92);
      fsck_printf_err("clonegroup_record (group_id %llu, private_id %llu, file_id %llu) has incorrect dir-stats key (%llu)\n", v17, v6, a1, v21[0]);
      v10 = BYTE2(v21[3]) | 1;
    }

    v9 = v10 | 2;
    goto LABEL_14;
  }

  v8 = v7;
  if (v7 == 2)
  {
    fsck_printf_warn("missing clone group record for file_id %llu (private_id %llu, group_id %llu)\n", a1, v6, v17);
    fsck_fail_func(0x5E9, 2);
    v20 = 0u;
    memset(v21, 0, 26);
    v9 = 3;
LABEL_14:
    BYTE2(v21[3]) = v9;
    *(&v20 + 1) = v17;
    v21[0] = v19;
    v21[1] = v18;
    v12 = *(a2 + 68);
    if ((v12 & 0x20) != 0)
    {
      v9 |= 0x20u;
      BYTE2(v21[3]) = v9;
    }

    if ((*(a2 + 50) & 8) != 0)
    {
      BYTE2(v21[3]) = v9 | 0x40;
    }

    if ((v12 & 0x20) != 0)
    {
      inode_phys_size = 0;
    }

    else
    {
      inode_phys_size = get_inode_phys_size(a2, a3);
    }

    v21[2] = inode_phys_size;
    sub_100086134(v22, &v20);
    return 0;
  }

  fsck_fail_func(0x607, v7);
  v11 = strerror(v8);
  fsck_printf_err("can't cross check inode (id %llu) with its corresponding clonegroup record: %d (%s)\n", a1, v8, v11);
  return v8;
}

uint64_t sub_100086134(void *a1, uint64_t a2)
{
  v4 = *(a2 + 42);
  if ((v4 & 1) == 0 && (~v4 & 6) == 0)
  {
    if ((v4 & 0x48) != 0 || (v6 = *(a2 + 40), (v6 & 0xF) == 0))
    {
      if ((v4 & 0x20) == 0)
      {

        return tree_remove(&unk_100103B78, 0, a1, 16);
      }
    }

    else
    {
      fsck_printf_warn("file (id %llu) isn't purgeable but its matching clonegroup record flags (0x%x) suggest it is\n", a1[1], v6);
      fsck_fail_func(0x600, -3);
      *(a2 + 42) |= 1u;
      *(a2 + 40) &= 0xFFF0u;
    }
  }

  return tree_insert(&unk_100103B78, 0, a1, 16, a2, 43);
}

uint64_t clonegroup_register_resource_fork(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[0] = result;
  v7[1] = a2;
  memset(v6, 0, 43);
  if (byte_100103BB8 == 1)
  {
    v4 = 43;
    v5 = 16;
    result = tree_lookup(&unk_100103B78, 0, 0, v7, &v5, 16, v6, &v4);
    if (!result)
    {
      *&v6[2] = a3;
      return sub_100086134(v7, v6);
    }
  }

  return result;
}

uint64_t clonegroup_register_purgeable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12[0] = a1;
  v12[1] = a2;
  memset(v11, 0, 43);
  if (byte_100103BB8 == 1)
  {
    v9 = 43;
    v10 = 16;
    if (!tree_lookup(&unk_100103B78, 0, 0, v12, &v10, 16, v11, &v9))
    {
      if ((a3 & 0x1000) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = a3;
      }

      v6 = (v5 >> 12) & 8 | (v5 >> 9) & 7;
      if (v6 == (BYTE8(v11[2]) & 0xF))
      {
        v7 = BYTE10(v11[2]);
      }

      else
      {
        fsck_fail_func(0x608, -3);
        fsck_printf_warn("file (id %llu) purgeable_flags (0x%x) disagree with its matching clonegroup record flags (0x%x)\n", a2, a3, WORD4(v11[2]));
        WORD4(v11[2]) = BYTE8(v11[2]) & 0x10 | v6;
        v7 = BYTE10(v11[2]) | 1;
      }

      BYTE10(v11[2]) = v7 | 8;
      sub_100086134(v12, v11);
    }
  }

  return 0;
}

uint64_t clonegroup_register(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  if (byte_100103BB8 != 1)
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  v17 = *(a1 + 9);
  memset(v16, 0, 43);
  v14 = 43;
  v15 = 16;
  if (tree_lookup(&unk_100103B78, 0, 0, &v17, &v15, 16, v16, &v14))
  {
    v12 = *a1;
    *&v16[1] = a2;
    *(&v16[1] + 1) = a3;
    *&v16[0] = v12;
    WORD4(v16[2]) = a4;
    BYTE10(v16[2]) = a5 | 0x10;
    return tree_insert(&unk_100103B78, 0, &v17, 16, v16, 43);
  }

  else
  {
    fsck_printf_warn("found multiple clonegroup records for file_id %llu\n", *(&v17 + 1));
    fsck_fail_func(0x609, -2);
    return 0;
  }
}

char *clonegroup_register_dstream(char *result, unsigned int a2)
{
  v12 = result;
  v13 = 0;
  memset(v11, 0, 43);
  if (!a2)
  {
    return result;
  }

  if (!byte_100103BB8)
  {
    return result;
  }

  v3 = result;
  v9 = 43;
  v10 = 16;
  result = tree_lookup(&unk_100103B78, 0, 1, &v12, &v10, 16, v11, &v9);
  if (result || v12 != v3)
  {
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (v4)
    {
      if (v4 != *&v11[0])
      {
        fsck_printf_warn("private_id (%llu) has multiple clonegroup ids (%llu, %llu)\n", v3, v4, *&v11[0]);
        fsck_fail_func(0x60A, -3);
        v4 = *&v11[0];
      }
    }

    else
    {
      v4 = *&v11[0];
    }

    if (a2 < 2)
    {
      if ((BYTE8(v11[2]) & 0x10) != 0)
      {
        fsck_printf_warn("clonegroup record (group_id %llu, private_id %llu, file_id %llu): has the full clone flag turned on\n", v4, v12, v13);
        fsck_fail_func(0x60C, -3);
        v6 = WORD4(v11[2]) & 0xFFEF;
        goto LABEL_15;
      }
    }

    else if ((BYTE8(v11[2]) & 0x10) == 0)
    {
      fsck_printf_warn("clonegroup record (group_id %llu, private_id %llu, file_id %llu): missing the full clone flag\n", v4, v12, v13);
      fsck_fail_func(0x60B, -3);
      v6 = WORD4(v11[2]) | 0x10;
LABEL_15:
      WORD4(v11[2]) = v6;
      BYTE10(v11[2]) |= 1u;
    }

    BYTE10(v11[2]) |= 4u;
    sub_100086134(&v12, v11);
    v7 = 43;
    v8 = 16;
    result = tree_lookup(&unk_100103B78, 0, 2, &v12, &v8, 16, v11, &v7);
    ++v5;
  }

  while (!result && v12 == v3);
  if (v5)
  {
    if (a2 != v5)
    {
      fsck_printf_warn("clonegroup records of (private_id %llu) count (%u) != dstream_id refcount (%u)\n", v3, v5, a2);
      return fsck_fail_func(0x60D, -3);
    }
  }

  return result;
}

uint64_t fsck_clonegroup_tree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 64);
  v6 = 48;
  if (!v5)
  {
    v6 = 40;
  }

  v7 = *(a2 + v6);
  v8 = *(v7 + 1112);
  if (!v8)
  {
    return 0;
  }

  memset(v14, 0, sizeof(v14));
  inited = tree_init_ext(v14, a1, a2, 0, 2, 37, 0, *(*(a1 + 8) + 36), 0, 0, 0, v8, clonegroup_tree_compare);
  if (inited)
  {
    v11 = inited;
    v12 = strerror(inited);
    fsck_printf_err("failed to initialize the clone-group tree: %s\n", v12);
    fsck_fail_func(0x5EA, v11);
  }

  else
  {
    if (*(v7 + 1108))
    {
      if (!tree_init_ext(&unk_100103B78, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 43, 0, 0, double_uint64_key_compare))
      {
        tree_create(&unk_100103B78, 0, 64);
      }

      if (memory_storage_register_tree(&unk_100103B78, "clonegroup", clonegroup_abort))
      {
        byte_100103BB8 = 0;
        fsck_printf_warn("failed to register the clonegroup tree in the fsck memory storage\n");
        fsck_fail_func(0x5E8, 12);
      }

      else if ((*(v7 + 1108) & 2) != 0)
      {
        byte_100103BB8 = 0;
        fsck_printf_warn("Skipping clonegroup cross-check since INVALID flag is set\n");
      }

      else
      {
        byte_100103BB8 = 1;
        clone_mapping_abort();
      }
    }

    v11 = fsck_tree(v14, a3, clonegroup_validate_repair_key_val, a4, 0, 0);
    if (v11)
    {
      if (qword_100103BB0)
      {
        tree_destroy(&unk_100103B78, 0);
      }

      byte_100103BB8 = 0;
      if (v5)
      {
        print_snapshot_warning();
      }
    }
  }

  return v11;
}

uint64_t clonegroup_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100103BB8 != 1)
  {
    return 0;
  }

  v20 = 0uLL;
  memset(v19, 0, 43);
  v17 = 43;
  v18 = 16;
  v4 = tree_lookup_min(&unk_100103B78, 0, &v20, &v18, v19, &v17);
  if (!v4)
  {
    while (1)
    {
      if ((BYTE10(v19[2]) & 0x20) == 0)
      {
        goto LABEL_15;
      }

      v5 = v20;
      v26[0] = v20;
      v26[1] = 0;
      memset(v25, 0, 43);
      v23 = 43;
      v24 = 16;
      if (tree_lookup(&unk_100103B78, 0, 1, v26, &v24, 16, v25, &v23) || v26[0] != v5)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        v6 += (BYTE10(v25[2]) >> 1) & 1;
        if (v6 > 1)
        {
          break;
        }

        v21 = 43;
        v22 = 16;
        if (tree_lookup(&unk_100103B78, 0, 2, v26, &v22, 16, v25, &v21) || v26[0] != v5)
        {
          goto LABEL_10;
        }
      }

      if ((BYTE8(v19[2]) & 0x10) == 0)
      {
        fsck_printf_warn("compressed clonegroup record (group_id %llu, private_id %llu, file_id %llu): missing the full clone flag\n", *&v19[0], v20, *(&v20 + 1));
        fsck_fail_func(0x60E, -3);
        v7 = WORD4(v19[2]) | 0x10;
LABEL_14:
        WORD4(v19[2]) = v7;
        BYTE10(v19[2]) |= 1u;
      }

LABEL_15:
      if ((BYTE10(v19[2]) & 2) != 0)
      {
        if ((BYTE10(v19[2]) & 1) == 0)
        {
          goto LABEL_22;
        }

        if ((BYTE10(v19[2]) & 0x10) != 0)
        {
          v9 = sub_100086BC4(a3, &v20, v19, 0);
          if (v9)
          {
LABEL_29:
            v10 = v9;
            v12 = *&v19[0];
            v13 = v20;
            v14 = strerror(v9);
            fsck_printf_err("failed to enqueue clonegroup mapping (group_id %llu, private_id %llu, file_id %llu) repair: %s\n", v12, v13, *(&v13 + 1), v14);
            goto LABEL_26;
          }
        }

        v8 = 2;
      }

      else
      {
        fsck_printf_err("found orphan clone group mapping: (group_id %llu, private_id %llu, file_id %llu)\n", *&v19[0], v20, *(&v20 + 1));
        fsck_fail_func(0x5EB, -2);
        v8 = 0;
      }

      v9 = sub_100086BC4(a3, &v20, v19, v8);
      if (v9)
      {
        goto LABEL_29;
      }

LABEL_22:
      v15 = 43;
      v16 = 16;
      v4 = tree_lookup(&unk_100103B78, 0, 2, &v20, &v16, 16, v19, &v15);
      if (v4)
      {
        goto LABEL_23;
      }
    }

LABEL_10:
    if ((BYTE8(v19[2]) & 0x10) == 0)
    {
      goto LABEL_15;
    }

    fsck_printf_warn("clonegroup record (group_id %llu, private_id %llu, file_id %llu): has the full clone flag turned on\n", *&v19[0], v20, *(&v20 + 1));
    fsck_fail_func(0x60F, -3);
    v7 = WORD4(v19[2]) & 0xFFEF;
    goto LABEL_14;
  }

LABEL_23:
  if (v4 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

LABEL_26:
  tree_destroy(&unk_100103B78, 0);
  byte_100103BB8 = 0;
  return v10;
}

uint64_t sub_100086BC4(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v25 = *(a3 + 8 * (a4 != 0));
  v26 = 1;
  v27 = *a2;
  if (a4 != 2)
  {
    v15 = 0;
    v13 = 0;
    if (!a1)
    {
LABEL_21:
      v21 = print_snapshot_warning();
      goto LABEL_22;
    }

LABEL_14:
    v21 = fsck_repairs_add(a1, 0xAu, a4, 0, 0, &v25, 0x19u, v15, v13);
LABEL_22:
    v17 = v21;
    goto LABEL_23;
  }

  v7 = (a3 + 16);
  v8 = *(a3 + 16);
  v9 = (a3 + 24);
  v10 = *(a3 + 24);
  if (v10)
  {
    v11 = 28;
  }

  else
  {
    v11 = 16;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 16 * (v10 != 0);
  }

  v13 = v12 + 12;
  v14 = malloc_type_calloc(1uLL, v12 + 12, 0x10000403E1C8BA9uLL);
  v15 = v14;
  if (!v14)
  {
    fsck_printf_err("can't allocate memory to insert a new clonegroup value\n");
    v17 = 12;
    v19 = 1537;
    v20 = 12;
    goto LABEL_16;
  }

  if (!(v10 | v8))
  {
LABEL_20:
    *v15 = *(a3 + 32);
    *(v15 + 2) = *(a3 + 40);
    if (!a1)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (!*v7 || (v16 = add_xfield(v14 + 6, v12, 1, v7, 8u, 16), !v16))
  {
    if (*v9)
    {
      v22 = add_xfield(v15 + 6, v12, 2, v9, 8u, 16);
      if (v22)
      {
        v17 = v22;
        v23 = strerror(v22);
        fsck_printf_err("can't add attribution tag for clonegroup: %s (%d)\n", v23, v17);
        fsck_fail_func(0x603, v17);
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  v17 = v16;
  v18 = strerror(v16);
  fsck_printf_err("can't add dir stats key for clonegroup: %s (%d)\n", v18, v17);
  v19 = 1538;
  v20 = v17;
LABEL_16:
  fsck_fail_func(v19, v20);
LABEL_23:
  free(v15);
  return v17;
}

uint64_t clonegroup_get_file_ids_of_private_id(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v17 = a1;
  v18 = 0;
  if (byte_100103BB8)
  {
    memset(v16, 0, 43);
    v14 = 43;
    v15 = 16;
    v8 = tree_lookup(&unk_100103B78, 0, 1, &v17, &v15, 16, v16, &v14);
    v9 = 0;
    if (v8)
    {
LABEL_9:
      if (v8 == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }
    }

    else
    {
      while (v17 == a1)
      {
        if ((BYTE10(v16[2]) & 2) != 0)
        {
          if (v9 < a3)
          {
            *(a2 + 8 * v9) = v18;
          }

          ++v9;
        }

        v12 = 43;
        v13 = 16;
        v8 = tree_lookup(&unk_100103B78, 0, 2, &v17, &v13, 16, v16, &v12);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v10 = 0;
    }

    if (v9 != a3)
    {
      fsck_printf_debug("number of files in clonegroup (%u) != dstream reference count (%u)\n", v9, a3);
      fsck_fail_func(0x611, 92);
    }

    if (a4)
    {
      *a4 = v9;
    }
  }

  else
  {
    v10 = 12;
    fsck_fail_func(0x610, 12);
  }

  return v10;
}

uint64_t inode_repair_set_internal_flags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100086F48(a1, &v5, &v4, 8u, 0x11u);
}

uint64_t sub_100086F48(uint64_t a1, char *a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, 1, a5, 0, a2, 8u, a3, a4);
  }

  return print_snapshot_warning();
}

uint64_t inode_repair_clear_internal_flags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100086F48(a1, &v5, &v4, 8u, 0x12u);
}

uint64_t inode_repairs_add_xf_deletion(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  v4 = a3;
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, 1, 0xFu, 0, &v5, 8u, &v4, 1u);
  }

  print_snapshot_warning();
  return 0;
}

void inode_register_xattr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned __int16 *a5, BOOL *a6)
{
  v8 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v8 != xmmword_100103BC0)
  {
    fsck_printf_warn("extended attribute (id %llu, name %.*s) is orphan\n", v8, *(a4 + 8), (a4 + 10));
    fsck_fail_func(0x3C1, -2);
    sub_100087508(a2, a4, *(a4 + 8) + 10);
    goto LABEL_43;
  }

  v12 = *(a4 + 8);
  if (!strncmp((a4 + 10), "com.apple.decmpfs", v12) && (dword_100103C0C & 0x40000020) != 0)
  {
    BYTE8(xmmword_100103BF0) = 1;
    v16 = a5[1];
    dword_100103C08 = v16;
    v17 = *a5;
    if ((v17 & 2) != 0)
    {
      if (v16 > 0xF)
      {
        v33 = *(a5 + 1);
        if (v33 == 1668116582)
        {
          v34 = *(a5 + 2);
          byte_100103C00 = sub_10008755C(v34);
          byte_100103C01 = (v34 + 0x7FFFFFFF) < 2;
          dword_100103C04 = v34;
          goto LABEL_43;
        }

        fsck_printf_warn("compression xattr (id %llu): compression magic is unknown: 0x%x\n", v8, v33);
        v14 = 1220;
      }

      else
      {
        fsck_printf_warn("compression xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v8, v16, 16);
        v14 = 1219;
      }

      v18 = 92;
      goto LABEL_42;
    }

    if (!*a5 || (v17 & 1) != 0)
    {
      goto LABEL_43;
    }

    fsck_printf_warn("compression xattr (id %llu): internal flags are invalid (0x%x)\n", v8, v17);
    v14 = 1221;
    goto LABEL_13;
  }

  if (strncmp((a4 + 10), "com.apple.ResourceFork", v12))
  {
    if (strncmp((a4 + 10), "com.apple.system.fs.speculative_telemetry", v12))
    {
      goto LABEL_43;
    }

    timestamp = get_timestamp();
    if ((BYTE11(xmmword_100103BD0) & 0x20) != 0)
    {
      v24 = timestamp;
      v25 = *a5;
      if ((v25 & 4) == 0)
      {
        fsck_printf_warn("speculative download xattr (id %llu): invalid flags: 0x%x\n", v8, v25);
        fsck_fail_func(0x5B6, -3);
        v32 = fsckAskPrompt(fsck_apfs_ctx, "set missing flag? (0x%x) ", v26, v27, v28, v29, v30, v31, 4);
        LOWORD(v25) = *a5;
        if (v32)
        {
          LOWORD(v25) = v25 | 4;
          *a5 = v25;
          *a3 = 1;
        }
      }

      if (v25)
      {
        v35 = *(a5 + 6);
        fsck_printf_warn("speculative download xattr (id %llu): shouldn't be stream based\n", v8);
        fsck_fail_func(0x5B7, -5);
        if (v35 > 0xB)
        {
          goto LABEL_43;
        }

        fsck_printf_warn("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v8, a5[1], 12);
        v14 = 1464;
      }

      else
      {
        if (a5[1] > 0xBu)
        {
          v36 = *(a5 + 4);
          if (*(a5 + 4))
          {
            fsck_printf_warn("speculative download xattr (id %llu): unknown version: %u\n", v8, v36);
            v14 = 1466;
            v18 = -6;
          }

          else
          {
            LODWORD(v38) = *(a5 + 5);
            v39 = a5[3];
            v40 = *(a5 + 1);
            if (v38 >= 6)
            {
              v47 = *(a5 + 5);
              v38 = *(a5 + 1);
              fsck_printf_warn("speculative download xattr (id %llu): unknown purge reason: %u\n", v8, v47);
              fsck_fail_func(0x5BB, -3);
              v40 = v38;
              LOBYTE(v38) = v47;
            }

            if (v39 >= 0x40)
            {
              v48 = v40;
              fsck_printf_warn("speculative download xattr (id %llu): unknown flags: %x\n", v8, v39);
              fsck_fail_func(0x5BC, -3);
              should_repair_unknown_flags = fsck_should_repair_unknown_flags(a1, v39, 63, v41, v42, v43, v44, v45);
              v40 = v48;
              if (should_repair_unknown_flags)
              {
                *a3 = 1;
                *a5 = v36;
                *(a5 + 1) = v38;
                a5[1] = v39 & 0x3F;
                *(a5 + 2) = v48;
              }
            }

            if (v40 <= v24)
            {
              goto LABEL_43;
            }

            fsck_printf_warn("speculative download xattr (id %llu): pristine time (%llu) is greater than current time (%llu)\n", v8, v40, v24);
            v14 = 1469;
            v18 = -4;
          }

          goto LABEL_42;
        }

        fsck_printf_warn("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v8, a5[1], 12);
        v14 = 1465;
      }

      v18 = -11;
LABEL_42:
      fsck_fail_func(v14, v18);
LABEL_43:
      if (a6)
      {
        *a6 = v8 != xmmword_100103BC0;
      }

      return;
    }

    fsck_printf_warn("speculative download xattr (id %llu): found outside of an SAF dir stats hierarchy\n", v8);
    v14 = 1461;
LABEL_13:
    v18 = -3;
    goto LABEL_42;
  }

  if ((*a5 & 2) != 0)
  {
    v19 = a5[1];
LABEL_23:
    if (v19)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    HIDWORD(xmmword_100103BF0) = v23;
    goto LABEL_43;
  }

  v19 = *(a5 + 6);
  v20 = *(a5 + 10);
  *&xmmword_100103BF0 = v20;
  if (!*(&xmmword_100103BC0 + 1) || (dir_stats_register_resource_fork(*(&xmmword_100103BC0 + 1), v20), !v21) && ((WORD2(qword_100103C10) & 0xF000) != 0x8000 || (BYTE8(xmmword_100103BD0) & 2) == 0 || (DWORD2(xmmword_100103BD0) & 0x180000) != 0x80000 || qword_100103C10 != 1 || (dword_100103C0C & 0x40000020) != 0x20 || (dir_stats_register_purgeable_rsrc(*(&xmmword_100103BC0 + 1), v20), !v37)))
  {
    if (!xmmword_100103BD0)
    {
      goto LABEL_23;
    }

    file_info_register_resource_fork(xmmword_100103BD0, v20);
    if (!v22)
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_100087508(uint64_t a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, 0, 0, 0, a2, a3, 0, 0);
  }

  return print_snapshot_warning();
}

BOOL sub_10008755C(int a1)
{
  if (a1 != 2 && (a1 - 1) <= 0xD)
  {
    return (a1 & 1) == 0;
  }

  if ((a1 + 0x7FFFFFFF) >= 2)
  {
    fsck_printf_warn("inode (id %llu): unknown compression type: %u\n", xmmword_100103BC0, a1);
    fsck_fail_func(0x4C2, 92);
  }

  return 0;
}

uint64_t inode_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = xmmword_100103BC0;
  if (!xmmword_100103BC0)
  {
    return 0;
  }

  v7 = dword_100103C0C;
  if ((dword_100103C0C & 0x20) != 0)
  {
    if ((BYTE8(xmmword_100103BF0) & 1) == 0)
    {
      if (qword_100103C20 != xmmword_100103BC0)
      {
        v10 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28);
        qword_100103C20 = v3;
        if (v10)
        {
          return v10;
        }
      }

      if (byte_100103C28)
      {
        return 0;
      }

      fsck_printf_warn("inode (id %llu): has the compression bsdflag, but doesn't have the compression xattr\n", xmmword_100103BC0);
      fsck_fail_func(0x4C8, -3);
    }

    if (byte_100103C00 != 1 || HIDWORD(xmmword_100103BF0) == 2)
    {
      goto LABEL_19;
    }

    v14 = xmmword_100103BC0;
    if (qword_100103C20 != xmmword_100103BC0)
    {
      v10 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28);
      qword_100103C20 = v14;
      if (v10)
      {
        return v10;
      }
    }

    if (byte_100103C28)
    {
      return 0;
    }

    fsck_printf_warn("inode (id %llu): Resource Fork xattr is missing or empty for compressed file\n", xmmword_100103BC0);
    fsck_fail_func(0x4C6, 92);
    v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v27) = 32;
    v8 = sub_100086F48(a3, &v28, &v27, 4u, 0x14u);
    if (!v8 && dword_100103C08 == 16)
    {
      v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
      v29 = 18;
      strcpy(v30, "com.apple.decmpfs");
      v8 = sub_100087508(a3, &v28, 0x1Cu);
    }

    if (!v8)
    {
LABEL_19:
      v7 = dword_100103C0C;
      if ((dword_100103C0C & 0x40000000) != 0 || byte_100103C01 != 1)
      {
        goto LABEL_3;
      }

      fsck_printf_warn("inode (id %llu): compression type is dataless, but the dataless bsd_flag is not set\n", xmmword_100103BC0);
      fsck_fail_func(0x4FD, -3);
      v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      LODWORD(v27) = 0x40000000;
      v8 = sub_100086F48(a3, &v28, &v27, 4u, 0x13u);
      if (!v8)
      {
        v7 = dword_100103C0C;
        goto LABEL_3;
      }
    }

    fsck_printf_err("inode (id %llu): failed to enqueue to the repairs\n", xmmword_100103BC0);
    fsck_fail_func(0x4D2, v8);
    goto LABEL_51;
  }

LABEL_3:
  if ((v7 & 0x40000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v7 & 0x20) != 0)
  {
    if (BYTE8(xmmword_100103BF0))
    {
      if (byte_100103C01)
      {
        goto LABEL_4;
      }

      v15 = xmmword_100103BC0;
      if (qword_100103C20 == xmmword_100103BC0 || (v10 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28), qword_100103C20 = v15, !v10))
      {
        if ((byte_100103C28 & 1) == 0)
        {
          fsck_printf_warn("inode (id %llu): dataless bsd_flag is set, but the compression type is different: 0x%x\n", xmmword_100103BC0, dword_100103C04);
          v16 = 1226;
LABEL_69:
          fsck_fail_func(v16, -3);
LABEL_4:
          v8 = 0;
          v9 = HIDWORD(xmmword_100103BF0);
          if ((dword_100103C0C & 0x20) == 0 || HIDWORD(xmmword_100103BF0) != 2)
          {
LABEL_52:
            if (v9)
            {
              if (v9 == 1)
              {
LABEL_64:
                xmmword_100103BF0 = 0u;
                *&byte_100103C00 = 0u;
                qword_100103C10 = 0;
                xmmword_100103BD0 = 0u;
                xmmword_100103BE0 = 0u;
                xmmword_100103BC0 = 0u;
                *&dword_100103C04 = -1;
                return v8;
              }

              v18 = WORD4(xmmword_100103BD0) & 0x8000;
              v19 = ~DWORD2(xmmword_100103BD0) & 0x4000;
              if (v8)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v19 = ~DWORD2(xmmword_100103BD0) & 0x8000;
              v18 = WORD4(xmmword_100103BD0) & 0x4000;
              if (v8)
              {
                goto LABEL_60;
              }
            }

            if (v19)
            {
              fsck_printf_warn("inode (id %llu): need to set internal_flags 0x%llx\n", xmmword_100103BC0, v19);
              fsck_fail_func(0x5A9, 92);
              v27 = v19;
              v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
              v20 = sub_100086F48(a3, &v28, &v27, 8u, 0x11u);
              v8 = v20;
              if (v20)
              {
                v21 = xmmword_100103BC0;
                v22 = strerror(v20);
                fsck_printf_err("inode (id %llu): can't add internal flags repair: %d (%s)\n", v21, v8, v22);
                fsck_fail_func(0x5AA, v8);
                goto LABEL_64;
              }
            }

LABEL_60:
            if (v18)
            {
              if (!v8)
              {
                fsck_printf_warn("inode (id %llu): need to clear internal_flags 0x%llx\n", xmmword_100103BC0, v18);
                fsck_fail_func(0x5AB, 92);
                v27 = v18;
                v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
                v23 = sub_100086F48(a3, &v28, &v27, 8u, 0x12u);
                v8 = v23;
                if (v23)
                {
                  v24 = xmmword_100103BC0;
                  v25 = strerror(v23);
                  fsck_printf_err("inode (id %llu): can't add internal flags repair: %d (%s)\n", v24, v8, v25);
                  fsck_fail_func(0x5AC, v8);
                }
              }
            }

            goto LABEL_64;
          }

          if (sub_10008755C(dword_100103C04))
          {
            if ((BYTE8(xmmword_100103BD0) & 0x10) != 0)
            {
              v8 = clone_mapping_register_resource_fork(*(&xmmword_100103BE0 + 1), xmmword_100103BC0, xmmword_100103BF0);
            }

            else
            {
              v8 = 0;
            }

            if (xmmword_100103BE0)
            {
              clonegroup_register_resource_fork(*(&xmmword_100103BE0 + 1), xmmword_100103BC0, xmmword_100103BF0);
            }
          }

          else
          {
            v8 = 0;
          }

LABEL_51:
          v9 = HIDWORD(xmmword_100103BF0);
          goto LABEL_52;
        }

        return 0;
      }
    }

    else
    {
      v17 = xmmword_100103BC0;
      if (qword_100103C20 == xmmword_100103BC0 || (v10 = is_file_in_purgatory(a1, a2, qword_100103C18, xmmword_100103BC0, &byte_100103C28), qword_100103C20 = v17, !v10))
      {
        if ((byte_100103C28 & 1) == 0)
        {
          fsck_printf_warn("inode (id %llu): dataless bsd_flag is set, but the compression xattr is missing\n", xmmword_100103BC0);
          v16 = 1237;
          goto LABEL_69;
        }

        return 0;
      }
    }

    return v10;
  }

  fsck_printf_warn("inode (id %llu): dataless bsd_flag is set, but compression bsd_flag is not\n", xmmword_100103BC0);
  fsck_fail_func(0x4D3, -3);
  if (BYTE8(xmmword_100103BF0) == 1 && byte_100103C01 == 1)
  {
    v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v27) = 32;
    v12 = a3;
    v13 = 19;
  }

  else
  {
    v28 = xmmword_100103BC0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v27) = 0x40000000;
    v12 = a3;
    v13 = 20;
  }

  v8 = sub_100086F48(v12, &v28, &v27, 4u, v13);
  if (!v8)
  {
    goto LABEL_4;
  }

  fsck_printf_err("inode (id %llu): failed to enqueue to the repairs\n", xmmword_100103BC0);
  fsck_fail_func(0x4D4, v8);
  return v8;
}

uint64_t inode_register(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (xmmword_100103BC0 == a4)
  {
    sub_100087D28();
  }

  result = inode_finalize(a1, a2, a3);
  if (!result)
  {
    *&xmmword_100103BC0 = a4;
    *(&xmmword_100103BC0 + 1) = a6;
    dword_100103C0C = *(a5 + 68);
    v14 = *(a5 + 48);
    *&xmmword_100103BD0 = a7;
    *(&xmmword_100103BD0 + 1) = v14;
    *&xmmword_100103BE0 = a8;
    *(&xmmword_100103BE0 + 1) = *(a5 + 8);
    LODWORD(qword_100103C10) = *(a5 + 56);
    WORD2(qword_100103C10) = *(a5 + 80);
  }

  return result;
}

double inode_init(uint64_t a1)
{
  qword_100103C18 = a1;
  xmmword_100103BF0 = 0u;
  *&byte_100103C00 = 0u;
  xmmword_100103BC0 = 0u;
  xmmword_100103BD0 = 0u;
  xmmword_100103BE0 = 0u;
  qword_100103C10 = 0;
  result = NAN;
  *&dword_100103C04 = -1;
  return result;
}

uint64_t lookup_obj(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v10 = a7;
  v13 = *(a1[1] + 36);
  v48 = 0uLL;
  v49 = 0;
  if (a3 == 0x80000000)
  {
    v14 = _xp_lookup_obj(a1, a4, a6, a7, &v48);
    if (v14)
    {
      v15 = v14;
      v16 = sub_10008810C(v10, v9);
      v17 = strerror(v15);
      fsck_printf_err("(oid 0x%llx) %s: _xp_lookup_obj(0x%llx): %s\n", a4, v16, a4, v17);
      v18 = 341;
LABEL_10:
      v24 = v15;
LABEL_44:
      fsck_fail_func(v18, v24);
      return v15;
    }

LABEL_40:
    if (DWORD2(v48) && (v40 = DWORD2(v48) / v13, !(DWORD2(v48) % v13)))
    {
      v43 = *(a1[1] + 40);
      if (v43 - v40 >= v48 && v43 > v40 && v48 >= 1 && v43 > v48)
      {
        v15 = 0;
        *a9 = v48;
        *(a9 + 16) = v49;
        return v15;
      }

      v47 = sub_10008810C(v10, v9);
      fsck_printf_err("(oid 0x%llx) %s: invalid object address (0x%llx)\n", a4, v47, v48);
      v15 = 92;
      v18 = 346;
    }

    else
    {
      v41 = sub_10008810C(v10, v9);
      fsck_printf_err("(oid 0x%llx) %s: invalid object size (0x%x)\n", a4, v41, DWORD2(v48));
      v15 = 92;
      v18 = 345;
    }

    v24 = 92;
    goto LABEL_44;
  }

  if (a3 == 0x40000000)
  {
    *&v48 = a4;
    DWORD2(v48) = v13;
    goto LABEL_40;
  }

  v21 = _omap_lookup_obj(a1, a2, a4, a5, &v48);
  if (!v21)
  {
    v25 = WORD6(v48);
    if (HIDWORD(v48) >= 0x800)
    {
      v26 = sub_10008810C(v10, v9);
      fsck_printf_warn("(oid 0x%llx) %s: invalid ov_flags (0x%x)\n", a4, v26, HIDWORD(v48));
      fsck_fail_func(0x1DF, -3);
      v25 = WORD6(v48);
    }

    if ((v25 & 4) == 0 && (v25 & 0xE0) != 0)
    {
      v27 = sub_10008810C(v10, v9);
      fsck_printf_warn("(oid 0x%llx) %s: invalid ov_flags (0x%x), crypto key index set for unencrypted object\n", a4, v27, HIDWORD(v48));
      fsck_fail_func(0x481, -3);
      v25 = WORD6(v48);
    }

    if ((v25 & 4) == 0 && (v25 & 0x700) != 0)
    {
      v28 = sub_10008810C(v10, v9);
      fsck_printf_warn("(oid 0x%llx) %s: invalid ov_flags (0x%x), tweak type set for unencrypted object\n", a4, v28, HIDWORD(v48));
      fsck_fail_func(0x4D0, -3);
    }

    if (!a2)
    {
      if ((BYTE12(v48) & 4) == 0)
      {
        goto LABEL_40;
      }

      v33 = sub_10008810C(v10, v9);
      fsck_printf_warn("(oid 0x%llx) %s: invalid encryption type ov_flags (0x%x)\n", a4, v33, HIDWORD(v48));
      v34 = 480;
      goto LABEL_39;
    }

    v29 = *(a2 + 40);
    v30 = *(v29 + 264);
    if ((BYTE12(v48) & 4) != 0)
    {
      if ((v30 & 1) != 0 && !*(v29 + 976))
      {
        v31 = 854;
        v32 = "(oid 0x%llx) %s: should not be encrypted (ov_flags 0x%x)\n";
        goto LABEL_29;
      }
    }

    else if ((v30 & 1) == 0 && !*(v29 + 976))
    {
      v31 = 855;
      v32 = "(oid 0x%llx) %s: should be encrypted (ov_flags 0x%x)\n";
LABEL_29:
      v35 = sub_10008810C(v10, v9);
      fsck_printf_warn(v32, a4, v35, HIDWORD(v48));
      fsck_fail_func(v31, -3);
    }

    if ((BYTE12(v48) & 4) == 0)
    {
      goto LABEL_40;
    }

    v36 = BYTE12(v48) >> 5;
    v37 = (v9 & 0xFFFFFFFE) != 0x24 || *(*(a2 + 40) + 1096) == 0;
    v38 = !v37;
    if (v36 == v38)
    {
      goto LABEL_40;
    }

    v39 = sub_10008810C(v10, v9);
    fsck_printf_warn("(oid 0x%llx) %s: invalid crypto key index (%u) given obj_subtype\n", a4, v39, v36);
    v34 = 1201;
LABEL_39:
    fsck_fail_func(v34, -3);
    goto LABEL_40;
  }

  v15 = v21;
  if (v10 != 29 || v21 != 2)
  {
    v22 = sub_10008810C(v10, v9);
    v23 = strerror(v15);
    fsck_printf_err("(oid 0x%llx) %s: _omap_lookup_obj(0x%llx, 0x%llx): %s\n", a4, v22, a4, a5, v23);
    v18 = 344;
    goto LABEL_10;
  }

  return v15;
}

const char *sub_10008810C(int a1, int a2)
{
  v2 = "nx";
  switch(a1)
  {
    case 1:
      return v2;
    case 2:
    case 3:
      if (a2 > 18)
      {
        if (a2 <= 32)
        {
          if (a2 == 19)
          {
            v3 = "oms: ";
            goto LABEL_42;
          }

          if (a2 == 26)
          {
            v3 = "gbitmap: ";
            goto LABEL_42;
          }
        }

        else
        {
          switch(a2)
          {
            case '!':
              v3 = "evict_mapping_tree: ";
              goto LABEL_42;
            case '$':
              v3 = "apfs_sec_root: ";
              goto LABEL_42;
            case '%':
              v3 = "clonegroup_tree: ";
              goto LABEL_42;
          }
        }
      }

      else if (a2 <= 13)
      {
        if (a2 == 10)
        {
          v3 = "extent_list: ";
          goto LABEL_42;
        }

        if (a2 == 11)
        {
          v3 = "om: ";
          goto LABEL_42;
        }
      }

      else
      {
        switch(a2)
        {
          case 14:
            v3 = "apfs_root: ";
            goto LABEL_42;
          case 15:
            v3 = "apfs_extentref: ";
            goto LABEL_42;
          case 16:
            v3 = "apfs_snap_meta: ";
            goto LABEL_42;
        }
      }

      v3 = &byte_1000B36A6;
LABEL_42:
      v4 = "btn";
      if (a1 == 2)
      {
        v4 = "bt";
      }

      v2 = byte_100103C29;
      snprintf(byte_100103C29, 0x28uLL, "%s%s", v3, v4);
      return v2;
    case 5:
      return "sm";
    case 6:
      return "cab";
    case 7:
      return "cib";
    case 8:
      return "sm_ip";
    case 11:
      return "om";
    case 12:
      return "cpm";
    case 13:
      return "apfs";
    case 15:
      return "extent";
    case 17:
      return "nr";
    case 18:
      return "nrl";
    case 20:
      return "efi_jumpstart";
    case 24:
      return "er_state";
    case 25:
      return "gbitmap";
    case 27:
      return "gbitmap_blk";
    case 29:
      return "snap_meta_ext";
    default:
      return "?";
  }
}

uint64_t copy_obj(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    return sub_100088400(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9, a10, a11);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100088400(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  v272 = a8;
  v12 = a7;
  v15 = a4;
  v17 = *(a1[1] + 36);
  v273 = 0uLL;
  v274 = 0;
  if (a9 && a10)
  {
    v270 = a3;
    v273 = *(a9 + 144);
    v18 = *(a9 + 168);
    v274 = *(a9 + 160);
    if (v18)
    {
      v261 = a5;
      *(a9 + 168) = 0;
      goto LABEL_7;
    }

    v29 = sub_10008810C(a7, a8);
    fsck_printf_err("(oid 0x%llx) %s: object read was finished already\n", v15, v29);
    v22 = 37;
    v30 = 1558;
    v31 = 37;
LABEL_33:
    fsck_fail_func(v30, v31);
    return v22;
  }

  v19 = a1;
  v20 = lookup_obj(a1, a2, a3, a4, a5, a6, a7, a8, &v273);
  v21 = a5;
  v22 = v20;
  if (v20)
  {
    return v22;
  }

  v261 = v21;
  v270 = a3;
  v23 = DWORD2(v273);
  v18 = malloc_type_malloc(DWORD2(v273), 0xDA49114EuLL);
  a1 = v19;
  if (!v18)
  {
    v43 = sub_10008810C(v12, v272);
    fsck_printf_err("(oid 0x%llx) %s: malloc(%u)\n", v15, v43, v23);
    v22 = 12;
    v30 = 347;
    v31 = 12;
    goto LABEL_33;
  }

LABEL_7:
  v269 = a1;
  v262 = v274;
  v24 = HIDWORD(v273);
  v25 = *a1;
  if ((BYTE12(v273) & 4) == 0)
  {
    v26 = 0;
    v27 = 0;
    goto LABEL_24;
  }

  if (BYTE12(v273) >= 0x40u)
  {
    sub_100064BB4();
  }

  v28 = (HIDWORD(v273) >> 8) & 7;
  if (v28 >= 2)
  {
    sub_100064B88();
  }

  if (v28 == 1)
  {
    v26 = v15 ^ HIDWORD(v274) | v15 & 0xFFFFFFFF00000000 ^ (v274 << 32);
    v27 = 4;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  if (!a2)
  {
LABEL_24:
    v33 = 0;
    if (a9)
    {
      goto LABEL_25;
    }

LABEL_22:
    v34 = DWORD2(v273);
    v240 = 0;
    v267 = v273;
    extended = dev_read_extended(v25, v273, DWORD2(v273) / v17, v18, v33, 0, 0, v26, v27);
    if (extended)
    {
      v22 = extended;
      v38 = "dev_read";
LABEL_30:
      v41 = sub_10008810C(v12, v272);
      v42 = strerror(v22);
      fsck_printf_err("(oid 0x%llx) %s: %s(%llu, %u): %s\n", v15, v41, v38, v267, v34 / v17, v42);
      fsck_fail_func(0x15C, v22);
LABEL_31:
      free(v18);
      return v22;
    }

    if (a10)
    {
      goto LABEL_36;
    }

LABEL_40:
    v22 = 0;
    *(a9 + 144) = v273;
    *(a9 + 160) = v274;
    *(a9 + 168) = v18;
    return v22;
  }

  v32 = *(a2 + 8 * (BYTE12(v273) >> 5) + 24);
  if (v32)
  {
    v33 = a2 + 96 * (BYTE12(v273) >> 5) + 832;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v25 = *(a2 + 8 * (BYTE12(v273) >> 5) + 24);
  }

  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (!a10)
  {
    v34 = DWORD2(v273);
    v267 = v273;
    v40 = dev_read_extended(v25, v273, DWORD2(v273) / v17, v18, v33, 1, a9, v26, v27);
    if (v40)
    {
      v22 = v40;
      v38 = "dev_read_async";
      goto LABEL_30;
    }

    goto LABEL_40;
  }

  finish = dev_read_finish(v25);
  v267 = v273;
  v34 = DWORD2(v273);
  if (finish)
  {
    v22 = finish;
    v38 = "dev_read_finish";
    goto LABEL_30;
  }

LABEL_36:
  v256 = v34;
  if (a2)
  {
    v45 = *(a2 + 40);
    v46 = (*(v45 + 264) & 1) == 0;
    v47 = *(v45 + 976) == 0;
    if (*(v45 + 976))
    {
      v46 = 1;
    }

    LOBYTE(v260) = *(v45 + 1096) != 0;
    HIDWORD(v260) = v46;
  }

  else
  {
    v260 = 0;
    v47 = 1;
  }

  v48 = v24;
  if ((a6 & 0x20000000) != 0)
  {
    goto LABEL_250;
  }

  v241 = v47;
  v247 = 0;
  v49 = 0;
  v265 = 0;
  v254 = 0;
  v257 = (v24 & 4) != 0;
  v50 = a6 | ((v24 & 4) << 26);
  v268 = v48 >> 5;
  v51 = v12 | v270;
  v250 = a2 + 832;
  v251 = a2 + 24;
  v259 = v34 - 8;
  v258 = 8 * v34;
  v52 = 8 * v34;
  v248 = v34 - 8;
  v53 = v262;
  v252 = v15 ^ HIDWORD(v262) | v15 & 0xFFFFFFFF00000000 ^ (v262 << 32);
  v255 = v52;
  v242 = v12 | v270;
LABEL_44:
  v263 = v48;
  v253 = v51 | v50;
  v249 = v50;
  while (1)
  {
    v55 = fletcher64_verify_cksum(v18, (v18 + 1), v259, 0, v36, v37);
    if (v55)
    {
      v56 = sub_10008810C(v12, v272);
      fsck_printf_warn("(oid 0x%llx) %s: invalid o_cksum (0x%llx)\n", v15, v56, *v18);
      fsck_fail_func(0x15E, 92);
    }

    if (bitmap_range_is_clear(v18, 0, v258, v54))
    {
      v164 = sub_10008810C(v12, v272);
      fsck_printf_err("(oid 0x%llx) %s: found zeroed-out block\n", v15, v164);
      v22 = 92;
      v165 = 845;
      v166 = 92;
LABEL_249:
      fsck_fail_func(v165, v166);
      goto LABEL_259;
    }

    v59 = v18[1];
    if (v59 == v15)
    {
      v60 = 0;
      v61 = v265;
    }

    else
    {
      v62 = v265;
      if (!v55)
      {
        v63 = sub_10008810C(v12, v272);
        fsck_printf_err("(oid 0x%llx) %s: invalid o_oid (0x%llx)\n", v15, v63, v18[1]);
        fsck_fail_func(0x15F, 92);
        v62 = v265;
        v59 = v18[1];
      }

      *v57.i8 = vcnt_s8((v59 ^ v15));
      v57.i16[0] = vaddlv_u8(*v57.i8);
      v61 = v62 + v57.i32[0];
      v60 = 92;
    }

    v64 = v18[2];
    if (v64)
    {
      v65 = *(v269[1] + 16);
      if (v64 <= v65)
      {
        v22 = v60;
      }

      else
      {
        v22 = 92;
      }

      if (!v55 && v64 > v65)
      {
LABEL_62:
        v66 = v49;
        v67 = v50;
        v68 = v61;
        v69 = sub_10008810C(v12, v272);
        fsck_printf_err("(oid 0x%llx) %s: invalid o_xid (0x%llx)\n", v15, v69, v18[2]);
        v22 = 92;
        fsck_fail_func(0x160, 92);
        v61 = v68;
        v50 = v67;
        v49 = v66;
        v52 = v255;
      }
    }

    else
    {
      if (!v55)
      {
        goto LABEL_62;
      }

      v22 = 92;
    }

    if (v53)
    {
      v70 = v18[2];
      if (v70 != v53)
      {
        if (!v55)
        {
          v71 = v50;
          v72 = v61;
          v73 = sub_10008810C(v12, v272);
          fsck_printf_err("(oid 0x%llx) %s: invalid o_xid (0x%llx, expected 0x%llx)\n", v15, v73, v18[2], v53);
          fsck_fail_func(0x371, 92);
          v61 = v72;
          v50 = v71;
          v70 = v18[2];
        }

        *v57.i8 = vcnt_s8((v70 ^ v53));
        v57.i16[0] = vaddlv_u8(*v57.i8);
        v61 += v57.i32[0];
        v22 = 92;
      }
    }

    if (v12)
    {
      v74 = *(v18 + 12);
      if (v74 != v12)
      {
        if (!v55)
        {
          v75 = v50;
          v76 = v61;
          v77 = sub_10008810C(v12, v272);
          fsck_printf_err("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v15, v77, *(v18 + 6), v253);
          fsck_fail_func(0x161, 92);
          v61 = v76;
          v50 = v75;
          v74 = *(v18 + 12);
        }

        v57.i32[0] = v74 ^ v12;
        *v57.i8 = vcnt_s8(*v57.i8);
        v57.i16[0] = vaddlv_u8(*v57.i8);
        v61 += v57.i32[0];
        v22 = 92;
      }
    }

    if (v272)
    {
      v78 = *(v18 + 7);
      if (v78 != v272)
      {
        if (v55)
        {
          v57.i32[0] = *(v18 + 7) ^ v272;
          *v57.i8 = vcnt_s8(*v57.i8);
          v57.i16[0] = vaddlv_u8(*v57.i8);
          v61 += v57.i32[0];
          v79 = *(v18 + 6);
          if ((v79 & 0xC0000000) == v270)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v266 = v61;
        if (v272 != 33 || v78)
        {
          v87 = sub_10008810C(v12, v272);
          fsck_printf_err("(oid 0x%llx) %s: invalid o_subtype (0x%x, expected 0x%x)\n", v15, v87, *(v18 + 7), v272);
          v22 = 92;
          fsck_fail_func(0x164, 92);
          v57.i32[0] = *(v18 + 14) ^ v272;
          *v57.i8 = vcnt_s8(*v57.i8);
          v57.i16[0] = vaddlv_u8(*v57.i8);
          v61 = v57.i32[0] + v266;
        }

        else
        {
          v80 = sub_10008810C(v12, 33);
          fsck_printf_warn("(oid 0x%llx) %s: using old subtype (0x%x, expected 0x%x)\n", v15, v80, *(v18 + 7), 33);
          if (!v22)
          {
            v254 |= fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) subtype? ", v81, v82, v83, v84, v85, v86, v15) != 0;
          }

          v61 = v266;
        }

        v50 = v249;
      }
    }

    v79 = *(v18 + 6);
    if ((v79 & 0xC0000000) == v270)
    {
      goto LABEL_90;
    }

    if (!v55)
    {
      v88 = v50;
      v89 = v61;
      v90 = sub_10008810C(v12, v272);
      fsck_printf_err("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v15, v90, *(v18 + 6), v253);
      fsck_fail_func(0x162, 92);
      v61 = v89;
      v50 = v88;
      v79 = *(v18 + 6);
    }

LABEL_88:
    v57.i32[0] = *(v18 + 7) & 0xC0000000 ^ v270;
    *v57.i8 = vcnt_s8(*v57.i8);
    v57.i16[0] = vaddlv_u8(*v57.i8);
    v61 += v57.i32[0];
LABEL_89:
    v22 = 92;
LABEL_90:
    v91 = v79 & 0x3FFF0000;
    if (v91 != v50)
    {
      if (v55 && v22)
      {
        goto LABEL_95;
      }

      v92 = v49;
      v93 = v50;
      v94 = v61;
      v95 = sub_10008810C(v12, v272);
      fsck_printf_err("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v15, v95, *(v18 + 6), v253);
      fsck_fail_func(0x163, 92);
      if (v22)
      {
        v91 = v18[3] & 0x3FFF0000;
        v61 = v94;
        v50 = v93;
        v49 = v92;
        v52 = v255;
LABEL_95:
        v57.i32[0] = v91 ^ v50;
        *v57.i8 = vcnt_s8(*v57.i8);
        v57.i16[0] = vaddlv_u8(*v57.i8);
        v61 += v57.i32[0];
        goto LABEL_96;
      }

      v144 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) flags? ", v96, v97, v98, v99, v100, v101, v15);
      v254 |= v144 != 0;
      if (v144)
      {
        v22 = 0;
      }

      else
      {
        v22 = 92;
      }

      v61 = v94;
      v50 = v93;
      v49 = v92;
      v52 = v255;
    }

LABEL_96:
    v265 = v61;
    if (v272)
    {
      if (v12 && v61 == 1)
      {
        break;
      }
    }

    if (!v55)
    {
LABEL_184:
      if (v22)
      {
        goto LABEL_259;
      }

      goto LABEL_189;
    }

    if (v61)
    {
      v117 = 1005;
      goto LABEL_108;
    }

    v275 = 0;
    if (!v34)
    {
      v117 = 1004;
      goto LABEL_108;
    }

    v243 = v55;
    v244 = v49;
    v245 = v12;
    v246 = v15;
    LODWORD(v129) = 0;
    v130 = 0;
    v131 = v52;
    v132 = 0;
    do
    {
      v133 = v130 >> 3;
      v134 = 1 << (v130 & 7);
      *(v18 + v133) ^= v134;
      v135 = *v18;
      fletcher64_set_cksum(&v275, (v18 + 1), v248, 0, v57, v58);
      if (v135 == v275)
      {
        v129 = v130;
      }

      else
      {
        v129 = v129;
      }

      if (v135 == v275)
      {
        ++v132;
      }

      *(v18 + v133) ^= v134;
      ++v130;
    }

    while (v131 != v130);
    v22 = v22;
    v55 = v243;
    if (!v132)
    {
      v117 = 1004;
      v15 = v246;
      v49 = v244;
      v12 = v245;
      v53 = v262;
      v52 = v255;
      v34 = v256;
      v50 = v249;
      goto LABEL_108;
    }

    v15 = v246;
    v49 = v244;
    v12 = v245;
    v53 = v262;
    v50 = v249;
    if (v132 != 1)
    {
      v145 = sub_10008810C(v245, v272);
      fsck_printf_err("(oid 0x%llx) %s: could not repair object to match checksum: too many bit flip candidates (%d)\n", v246, v145, v132);
      v117 = 1003;
      v52 = v255;
      v34 = v256;
LABEL_108:
      fsck_fail_func(v117, 92);
      v116 = v263;
      if (!v22)
      {
        goto LABEL_187;
      }

      goto LABEL_109;
    }

    v136 = sub_10008810C(v245, v272);
    fsck_printf_err("(oid 0x%llx) %s: found a bit flip at index 0x%x\n", v246, v136, v129);
    v22 = 92;
    fsck_fail_func(0x3EA, 92);
    v143 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) bit flip? ", v137, v138, v139, v140, v141, v142, v246);
    v116 = v263;
    v52 = v255;
    if (v143)
    {
      LOBYTE(v254) = 1;
      *(v18 + (v129 >> 3)) ^= 1 << (v129 & 7);
      goto LABEL_189;
    }

LABEL_102:
    v34 = v256;
    if (!v55)
    {
      goto LABEL_184;
    }

    if (!v22)
    {
      goto LABEL_187;
    }

LABEL_109:
    v118 = v268;
    if (((BYTE4(v260) & ~v49) & v257 & 1) == 0 || !((v268 == 1) | v260 & 1))
    {
      if ((v247 & 1) != 0 || ((HIDWORD(v260) | v257) & 1) == 0)
      {
        goto LABEL_259;
      }

      if ((v116 & 4) != 0)
      {
        v151 = v116 & 0xFFFFFF1B;
      }

      else
      {
        v146 = (v272 & 0xFFFFFFFE) == 36;
        v147 = *(*(a2 + 40) + 1096) != 0;
        v148 = (v146 & v147) == 0;
        if ((v146 & v147) != 0)
        {
          v149 = 256;
        }

        else
        {
          v149 = v147 << 8;
        }

        if (v148)
        {
          v150 = 0;
        }

        else
        {
          v150 = 32;
        }

        v118 = v150 >> 5;
        v151 = v116 & 0xFFFFF81F | v149 | v150 | 4;
      }

      v152 = v269;
      v153 = *v269;
      if ((v151 & 4) == 0)
      {
        v154 = v53;
        v155 = 0;
        v156 = 0;
        goto LABEL_174;
      }

      if (v151 >= 0x40u)
      {
        sub_100064BB4();
      }

      v157 = (v151 >> 8) & 7;
      if (v157 >= 2)
      {
        sub_100064B88();
      }

      v148 = v157 == 1;
      v156 = 4 * (v157 == 1);
      v155 = v148 ? v252 : 0;
      if (a2)
      {
        v154 = v53;
        v158 = *(v251 + 8 * (v151 >> 5));
        if (v158)
        {
          v159 = v250 + 96 * (v151 >> 5);
        }

        else
        {
          v159 = 0;
        }

        v152 = v269;
        if (v158)
        {
          v153 = *(v251 + 8 * (v151 >> 5));
        }
      }

      else
      {
        v154 = v53;
LABEL_174:
        v159 = 0;
      }

      v268 = v118;
      v160 = *(v152[1] + 36);
      if (v34 % v160)
      {
        sub_100064BE0();
      }

      v161 = v151;
      if (dev_read_extended(v153, v267, v34 / v160, v18, v159, 0, 0, v155, v156))
      {
        goto LABEL_259;
      }

      v162 = "unencrypted";
      if (v257)
      {
        v163 = "encrypted";
      }

      else
      {
        v163 = "unencrypted";
      }

      if ((v257 & 1) == 0)
      {
        v162 = "encrypted";
      }

      fsck_printf_warn("failed to validate %s object, retrying as %s\n", v163, v162);
      v247 = 1;
      v257 ^= 1u;
      v50 = v50 ^ 0x10000000;
      v34 = v256;
      v48 = v161;
      v51 = v242;
      v53 = v154;
      goto LABEL_44;
    }

    v119 = v53;
    v120 = v116 & 0xFFFFFF1F | (32 * ((v268 ^ 1) & 7));
    v121 = v269;
    v122 = *v269;
    if ((v116 & 4) == 0)
    {
      v123 = 0;
      v124 = 0;
LABEL_125:
      v127 = 0;
      goto LABEL_126;
    }

    if ((v116 & 0x1F | (32 * ((v268 ^ 1) & 7))) >= 0x40)
    {
      sub_100064BB4();
    }

    v125 = (v116 >> 8) & 7;
    if (v125 >= 2)
    {
      sub_100064B88();
    }

    v148 = v125 == 1;
    v124 = 4 * (v125 == 1);
    if (v148)
    {
      v123 = v252;
    }

    else
    {
      v123 = 0;
    }

    if (!a2)
    {
      goto LABEL_125;
    }

    v126 = *(v251 + 8 * (v120 >> 5));
    if (v126)
    {
      v127 = v250 + 96 * (v120 >> 5);
    }

    else
    {
      v127 = 0;
    }

    v121 = v269;
    if (v126)
    {
      v122 = *(v251 + 8 * (v120 >> 5));
    }

LABEL_126:
    v128 = *(v121[1] + 36);
    if (v34 % v128)
    {
      sub_100064BE0();
    }

    v268 = v268 ^ 1;
    if (dev_read_extended(v122, v267, v34 / v128, v18, v127, 0, 0, v123, v124))
    {
      goto LABEL_259;
    }

    fsck_printf_warn("failed to validate object with crypto key index (%u), retrying with (%u)\n", v268 ^ 1, v268);
    v49 = 1;
    v263 = v120;
    v53 = v119;
  }

  v102 = sub_10008810C(v12, v272);
  fsck_printf_err("(oid 0x%llx) %s: found a bit flip in the header\n", v15, v102);
  fsck_fail_func(0x3E9, 92);
  v109 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) header bit flip? ", v103, v104, v105, v106, v107, v108, v15);
  v116 = v263;
  if (!v109)
  {
    goto LABEL_102;
  }

  v18[1] = v15;
  if (!v53)
  {
    v22 = 0;
    v254 = 1;
    goto LABEL_102;
  }

  v18[2] = v53;
  if (v55)
  {
LABEL_187:
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) checksum? ", v110, v111, v112, v113, v114, v115, v15, v240))
    {
      v22 = 92;
      goto LABEL_259;
    }
  }

  LOBYTE(v254) = 1;
LABEL_189:
  v167 = v49;
  if (a2)
  {
    v168 = (v270 | *(*(a2 + 40) + 264) & 1) == 0;
  }

  else
  {
    v168 = 0;
  }

  v169 = v263;
  v170 = v247;
  v171 = v272;
  if (!v272)
  {
    v171 = *(v18 + 7);
  }

  v172 = a2 && (v171 & 0xFFFFFFFE) == 0x24 && *(*(a2 + 40) + 1096);
  if (((v247 | v167) & 1) == 0)
  {
    if (v241)
    {
      v180 = v268 != v172;
      if (v268 != v172)
      {
        v181 = sub_10008810C(v12, v272);
        fsck_printf_warn("(oid 0x%llx) %s: invalid crypto key index (%u), expected (%u)\n", v15, v181, v268, v172);
        v22 = 92;
        fsck_fail_func(0x4B4, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) crypto key index? ", v182, v183, v184, v185, v186, v187, v15))
        {
          goto LABEL_259;
        }

        v169 = (v263 & 0xFFFFFF1F | (32 * (v268 & 7))) ^ 0x20;
        LOBYTE(v254) = 1;
      }

      if ((v257 & 1) != v168)
      {
        v188 = v50;
        v189 = v169;
        v190 = sub_10008810C(v12, v272);
        v191 = "unencrypted";
        if (v257)
        {
          v192 = "encrypted";
        }

        else
        {
          v192 = "unencrypted";
        }

        if (v168)
        {
          v191 = "encrypted";
        }

        fsck_printf_warn("(oid 0x%llx) %s: object is %s but should be %s\n", v15, v190, v192, v191);
        fsck_fail_func(0x374, -3);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) encryption and omap flags? ", v193, v194, v195, v196, v197, v198, v15))
        {
          v200 = v262;
          v169 = v189;
          LODWORD(v50) = v188;
          goto LABEL_237;
        }

        v199 = v189 & 0xFFFFFF1B;
        v200 = v262;
        if ((v189 & 4) == 0)
        {
          v199 |= (32 * (*(*(a2 + 40) + 1096) != 0)) | 4;
        }

        LODWORD(v50) = v188 ^ 0x10000000;
        v180 = 1;
        v169 = v199;
        v201 = 1;
LABEL_238:
        v219 = v12;
        if (!v12)
        {
          v219 = *(v18 + 12);
        }

        v220 = v272;
        if (!v272)
        {
          v220 = *(v18 + 7);
        }

        if (v201)
        {
          *(v18 + 6) = v50 | v219 | v270;
          *(v18 + 7) = v220;
          v275 = v267;
          v276 = v256;
          v277 = v169;
          v278 = v200;
          v221 = v169;
          v222 = write_obj(v269, a2, v18, &v275, v57, v58);
          v169 = v221;
          if (v222)
          {
            v22 = v222;
            v223 = strerror(v222);
            fsck_printf_err("error writing object: %s\n", v223);
            v165 = 880;
LABEL_248:
            v166 = v22;
            goto LABEL_249;
          }
        }

        if (v180)
        {
          v224 = v18[1];
          v225 = v18[2];
          v275 = v267;
          v276 = v256;
          v277 = v169;
          v278 = v200;
          inserted = _omap_insert_obj(v269, a2, v224, v225, &v275);
          if (inserted)
          {
            v22 = inserted;
            v227 = strerror(inserted);
            fsck_printf_err("error updating omap entry: %s\n", v227);
            v165 = 885;
            goto LABEL_248;
          }
        }

LABEL_250:
        v22 = 0;
        if (v270 && a12)
        {
          if ((v12 - 6) >= 3)
          {
            v228 = 1;
          }

          else
          {
            v228 = 9;
          }

          if (a2)
          {
            v229 = *(*(a2 + 40) + 8);
          }

          else
          {
            v229 = 0;
          }

          mark_object_allocated(v269, v273, (DWORD2(v273) / *(v269[1] + 36)), v229, v270, v15, v261, v12, v272, v228);
          v22 = 0;
        }

        goto LABEL_259;
      }
    }

    else
    {
      v180 = 0;
    }

LABEL_236:
    v200 = v262;
LABEL_237:
    v201 = v254;
    goto LABEL_238;
  }

  if (v167)
  {
    if (v268 == v172)
    {
      v173 = sub_10008810C(v12, v272);
      fsck_printf_err("(oid 0x%llx) %s: object is encrypted with crypto key index (%u)but omap says it's encrypted with crypto key index (%u)\n", v15, v173, v268, v268 ^ 1);
      v22 = 92;
      fsck_fail_func(0x4B3, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) omap flags? ", v174, v175, v176, v177, v178, v179, v15))
      {
        goto LABEL_259;
      }

      v180 = 1;
      v169 = v263;
    }

    else
    {
      v202 = sub_10008810C(v12, v272);
      fsck_printf_err("(oid 0x%llx) %s: object is encrypted with crypto key index (%u) but should be encrypted with crypto key index (%u)\n", v15, v202, v268, v172);
      v22 = 92;
      fsck_fail_func(0x4B2, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) crypto key index? ", v203, v204, v205, v206, v207, v208, v15))
      {
        goto LABEL_259;
      }

      v180 = 0;
      v169 = (v263 & 0xFFFFFF1F | (32 * (v268 & 7))) ^ 0x20;
      LOBYTE(v254) = 1;
    }

    v170 = v247;
  }

  else
  {
    v180 = 0;
  }

  if ((v170 & 1) == 0)
  {
    goto LABEL_236;
  }

  v264 = v169;
  v209 = sub_10008810C(v12, v272);
  if (v257)
  {
    v210 = "encrypted";
  }

  else
  {
    v210 = "unencrypted";
  }

  if ((v257 & 1) == v168)
  {
    if (v257)
    {
      v232 = "unencrypted";
    }

    else
    {
      v232 = "encrypted";
    }

    fsck_printf_err("(oid 0x%llx) %s: object is %s but omap says it's %s\n", v15, v209, v210, v232);
    v22 = 92;
    fsck_fail_func(0x373, 92);
    v239 = fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) omap flags? ", v233, v234, v235, v236, v237, v238, v15);
    v200 = v262;
    v201 = v254;
    if (v239)
    {
      v180 = 1;
      v169 = v264;
      goto LABEL_238;
    }
  }

  else
  {
    if (v168)
    {
      v211 = "encrypted";
    }

    else
    {
      v211 = "unencrypted";
    }

    fsck_printf_err("(oid 0x%llx) %s: object is %s but should be %s\n", v15, v209, v210, v211);
    v22 = 92;
    fsck_fail_func(0x372, 92);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) encryption? ", v212, v213, v214, v215, v216, v217, v15))
    {
      v218 = v264 & 0xFFFFFF1B;
      if ((v264 & 4) == 0)
      {
        v218 |= (32 * (*(*(a2 + 40) + 1096) != 0)) | 4;
      }

      LODWORD(v50) = v50 ^ 0x10000000;
      v201 = 1;
      v169 = v218;
      v200 = v262;
      goto LABEL_238;
    }
  }

LABEL_259:
  if ((v12 - 4) > 0xFFFFFFFD || v22 | v270)
  {
    if (!v22)
    {
      goto LABEL_264;
    }

    goto LABEL_31;
  }

  v230 = omap_sv_mark(a2 != 0, v15, 1);
  if (v230)
  {
    v231 = v230;
    fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", v15);
    fsck_fail_func(0x3D4, v231);
  }

LABEL_264:
  *a10 = v18;
  v22 = 0;
  if (a11)
  {
    *a11 = v273;
    *(a11 + 16) = v274;
  }

  return v22;
}

uint64_t copy_obj_async(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    return sub_100088400(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t copy_obj_finish(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  if (a9)
  {
    v12 = a10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 22;
  }

  else
  {
    return sub_100088400(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

double copy_obj_abort(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 168))
  {
    v5 = *(a4 + 156);
    v6 = *a1;
    if ((v5 & 4) != 0)
    {
      if (*(a4 + 156) >= 0x40u)
      {
        sub_100064BB4();
      }

      if ((v5 & 0x600) != 0)
      {
        sub_100064B88();
      }

      if (a2)
      {
        v7 = *(a2 + 8 * (v5 >> 5) + 24);
        if (v7)
        {
          v6 = v7;
        }
      }
    }

    dev_read_finish(v6);
    free(*(a4 + 168));
  }

  result = 0.0;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t write_obj(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x16_t a6)
{
  fletcher64_set_cksum(a3, (a3 + 8), (*(a4 + 8) - 8), 0, a5, a6);
  v10 = *(a4 + 8);
  v11 = *(a4 + 12);
  v12 = *a1;
  if ((v11 & 4) != 0)
  {
    if (*(a4 + 12) >= 0x40u)
    {
      sub_100064BB4();
    }

    v16 = (v11 >> 8) & 7;
    if (v16 >= 2)
    {
      sub_100064B88();
    }

    if (v16 == 1)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    if (v16 == 1)
    {
      v15 = *(a3 + 8) ^ HIDWORD(*(a4 + 16)) | *(a3 + 8) & 0xFFFFFFFF00000000 ^ (*(a4 + 16) << 32);
    }

    else
    {
      v15 = 0;
    }

    if (a2)
    {
      v17 = v11 >> 5;
      v18 = *(a2 + 8 * v17 + 24);
      v19 = a2 + 96 * v17 + 832;
      if (v18)
      {
        v12 = v18;
        v13 = v19;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v20 = *(a1[1] + 36);
  if (v10 % v20)
  {
    sub_100064C0C();
  }

  v21 = dev_write_extended(v12, *a4, v10 / v20, a3, v13, v15, v14);
  if (v21)
  {
    v22 = *(a3 + 8);
    v23 = sub_10008810C(*(a3 + 24), *(a3 + 28));
    v24 = *a4;
    v25 = *(a4 + 8) / *(a1[1] + 36);
    v26 = strerror(v21);
    fsck_printf_err("(oid 0x%llx) %s: dev_write(%llu, %u): %s\n", v22, v23, v24, v25, v26);
    fsck_fail_func(0x166, v21);
  }

  if (a2)
  {
    *(a2 + 12) = 1;
  }

  return v21;
}

uint64_t fsck_omap(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 72);
  if (!a2)
  {
    v4 = a1 + 4;
  }

  v5 = *v4;
  v6 = (a2 + 104);
  v7 = (a2 + 112);
  if (!a2)
  {
    v7 = (a1 + 15);
    v6 = (a1 + 14);
  }

  v8 = *v6;
  v9 = *v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 32);
  if (v11 >= 0x40)
  {
    fsck_printf_warn("omap (oid 0x%llx): invalid om_flags (0x%x)\n", *(v5 + 8), v11);
    fsck_fail_func(0x16C, -3);
    v11 = *(v5 + 32);
  }

  if ((v11 & 1) != 0 && *(v5 + 36))
  {
    fsck_printf_err("omap (oid 0x%llx): invalid om_snap_count (%u), given om_flags (0x%x)\n", v10, *(v5 + 36), v11);
    v12 = 92;
    v13 = 365;
LABEL_20:
    fsck_fail_func(v13, 92);
    return v12;
  }

  v14 = *(v5 + 40);
  if (v14 >> 30 == 3 || *(v5 + 40) != 2)
  {
    fsck_printf_err("omap (oid 0x%llx): invalid om_tree_type (0x%x)\n", v10, v14);
    v12 = 92;
    v13 = 366;
    goto LABEL_20;
  }

  v16 = *(v5 + 44);
  if (v16 >> 30 == 3 || *(v5 + 44) != 2)
  {
    fsck_printf_err("omap (oid 0x%llx): invalid om_snapshot_tree_type (0x%x)\n", v10, v16);
    v12 = 92;
    v13 = 367;
    goto LABEL_20;
  }

  v22 = 0;
  omap_tree = get_omap_tree(a1, a2, &v22);
  if (omap_tree)
  {
    return omap_tree;
  }

  omap_tree = fsck_tree(v22, 0, sub_100089D34, 0, 0, 1);
  if (omap_tree)
  {
    return omap_tree;
  }

  v20 = *(v5 + 32);
  if (v20)
  {
    if (*(v5 + 56))
    {
      fsck_printf_err("omap (oid 0x%llx): invalid om_snapshot_tree_oid (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 56), v20);
      v12 = 92;
      v13 = 368;
      goto LABEL_20;
    }

    if (*(v5 + 64))
    {
      fsck_printf_err("omap (oid 0x%llx): invalid om_most_recent_snap (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 64), v20);
      v12 = 92;
      v13 = 369;
      goto LABEL_20;
    }

    if (*(v5 + 72))
    {
      fsck_printf_err("omap (oid 0x%llx): invalid om_pending_revert_min (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 72), v20);
      v12 = 92;
      v13 = 370;
      goto LABEL_20;
    }

    if (*(v5 + 80))
    {
      fsck_printf_err("omap (oid 0x%llx): invalid om_pending_revert_max (0x%llx), given om_flags (0x%x)\n", v10, *(v5 + 80), v20);
      v12 = 92;
      v13 = 371;
      goto LABEL_20;
    }
  }

  if (a2)
  {
    v21 = *(*(a2 + 40) + 8);
  }

  else
  {
    v21 = 0;
  }

  mark_object_allocated(a1, v8, v9 / *(a1[1] + 36), v21, 0x40000000, v10, 0, 11, &_mh_execute_header, &_mh_execute_header >> 32);
  return 0;
}

uint64_t sub_100089D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = *(a1 + 8);
  v10 = a3[1];
  if (v10 > *(v9 + 16))
  {
    fsck_printf_err("omap entry (oid 0x%llx): invalid ok_xid (0x%llx)\n", *a3, v10);
    v11 = 92;
    v12 = 359;
LABEL_20:
    fsck_fail_func(v12, 92);
    return v11;
  }

  if (!a5)
  {
    return 0;
  }

  v17 = *(v9 + 36);
  v18 = *a5;
  if (*a5 >= 0x800)
  {
    fsck_printf_warn("omap entry (oid 0x%llx): invalid ov_flags (0x%x)\n", *a3, v18);
    fsck_fail_func(0x168, -3);
    v18 = *a5;
  }

  v19 = v18 >> 5;
  if (v19 >= 2)
  {
    fsck_printf_err("omap entry (oid 0x%llx): invalid crypto key index (%u) given ov_flags (0x%x)\n", *a3, v18 >> 5, v18);
    v11 = 92;
    v12 = 1151;
    goto LABEL_20;
  }

  if (v19 != 1)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    if (!*(*(a2 + 40) + 1096))
    {
      v20 = "non-multikey volume";
      goto LABEL_13;
    }

LABEL_15:
    if (((v18 >> 8) & 7) >= 2)
    {
      fsck_printf_err("omap entry (oid 0x%llx): invalid tweak type (%u) given ov_flags (0x%x)\n", *a3, (v18 >> 8) & 7, v18);
      v11 = 92;
      v12 = 1231;
      goto LABEL_20;
    }

    v27 = a5[1];
    if (!v27 || (v28 = v27 / v17, v27 % v17))
    {
      fsck_printf_err("omap entry (oid 0x%llx): invalid ov_size (%u)\n", *a3, v27);
      v11 = 92;
      v12 = 361;
      goto LABEL_20;
    }

    if ((v18 & 1) == 0)
    {
      v29 = *(a5 + 1);
      v30 = *(*(a1 + 8) + 40);
      if (v30 - v28 < v29 || v30 <= v28 || v29 < 1 || v30 <= v29)
      {
        fsck_printf_err("omap entry (oid 0x%llx): invalid ov_paddr (%llu)\n", *a3, v29);
        v11 = 92;
        v12 = 362;
        goto LABEL_20;
      }

      if ((v18 & 0xE0) == 0x20)
      {
        v34 = 36;
      }

      else
      {
        v34 = 14;
      }

      if (a2)
      {
        v35 = *(*(a2 + 40) + 8);
      }

      else
      {
        v35 = 0;
      }

      v36 = a2 == 0;
      v37 = a2 != 0;
      if (v36)
      {
        v38 = 13;
      }

      else
      {
        v38 = 3;
      }

      if (v36)
      {
        v34 = 0;
      }

      mark_object_allocated(a1, v29, v28, v35, 0, *a3, a3[1], v38, v34, 1u);
      v39 = omap_sv_mark(v37, *a3, 0);
      if (v39)
      {
        v40 = v39;
        fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry for omap space verification \n", *a3);
        fsck_fail_func(0x3D0, v40);
      }
    }

    return 0;
  }

  v20 = "container";
LABEL_13:
  fsck_printf_err("omap entry (oid 0x%llx): invalid crypto key index (%u) on %s\n", *a3, 1, v20);
  v11 = 92;
  fsck_fail_func(0x4B0, 92);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix object (oid 0x%llx) crypto key index? ", v21, v22, v23, v24, v25, v26, *a3))
  {
    *a5 &= 0xFFFFFF1F;
    *a8 = 1;
    v18 = *a5;
    goto LABEL_15;
  }

  return v11;
}

uint64_t fsck_omap_snap(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, int8x16_t a5)
{
  v8 = *(a2 + 72);
  v34 = *(a2 + 104);
  v35 = *(a2 + 120);
  v33 = 0;
  if (!*(v8 + 56))
  {
    v11 = 0;
    goto LABEL_5;
  }

  v31.i64[0] = 0;
  omap_snap_tree = get_omap_snap_tree(a1, a2, v31.i64);
  if (omap_snap_tree)
  {
    return omap_snap_tree;
  }

  if (*(state + 46))
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_10008A20C;
  }

  v10 = fsck_tree(v31.i64[0], 0, v21, a3, &v33, 1);
  if (!v10)
  {
    v11 = v33;
    if (HIDWORD(v33))
    {
      fsck_printf_err("om: invalid om_snap_count (overflow)\n");
      v10 = 92;
      v22 = 375;
LABEL_28:
      v29 = 92;
      goto LABEL_29;
    }

LABEL_5:
    v12 = *(v8 + 36);
    v13 = v11;
    if (v11 != v12)
    {
      fsck_printf_err("om: om_snap_count (%u) is not equal to the number of snapshots found (%llu)\n", *(v8 + 36), v11);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix om_snap_count (oid 0x%llx)? ", v14, v15, v16, v17, v18, v19, *(v8 + 8)))
      {
        v10 = 92;
        v22 = 376;
        goto LABEL_28;
      }

      v13 = v33;
      *(v8 + 36) = v33;
    }

    if (v13)
    {
      v20 = *(a3 + 64);
    }

    else
    {
      v20 = 0;
    }

    if ((*(state + 46) & 1) != 0 || *(v8 + 64) == v20)
    {
      if (v11 == v12)
      {
        return 0;
      }
    }

    else
    {
      fsck_printf_err("om: om_most_recent_snap (%llu) is not equal to the largest snapshot xid (%llu)\n", *(v8 + 64), v20);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix om_most_recent_snap (oid 0x%llx)? ", v23, v24, v25, v26, v27, v28, *(v8 + 8)))
      {
        v10 = 92;
        v22 = 671;
        goto LABEL_28;
      }

      *(v8 + 64) = v20;
    }

    v31 = v34;
    v32 = v35;
    v10 = write_obj(a1, a2, v8, &v31, v34, a5);
    if (!v10)
    {
      fsck_fail_add_repair();
      return v10;
    }

    v22 = 377;
    v29 = v10;
LABEL_29:
    fsck_fail_func(v22, v29);
  }

  return v10;
}
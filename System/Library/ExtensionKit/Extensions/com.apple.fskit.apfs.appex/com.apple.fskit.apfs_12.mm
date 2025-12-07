void omap_sv_disable(int a1)
{
  if (a1)
  {
    v1 = &unk_100104400;
  }

  else
  {
    v1 = &unk_100104380;
  }

  bitmap_store_destroy(v1);
  v1[13] = 0;
  v1[14] = 0;
}

uint64_t omap_sv_mark(int a1, unint64_t a2, int a3)
{
  if (a1)
  {
    v6 = &unk_100104400;
  }

  else
  {
    v6 = &unk_100104380;
  }

  if (!bitmap_store_inited(v6))
  {
    return 0;
  }

  v7 = a1 ? &unk_100104400 : &unk_100104380;
  if (v7[80])
  {
    return 0;
  }

  v8 = mark_range(v6, a2, 1uLL, a3 == 0);
  if (v8 == 17)
  {
    return 0;
  }

  v9 = v8;
  if (!v8)
  {
    if (a1)
    {
      v10 = &unk_100104400;
    }

    else
    {
      v10 = &unk_100104380;
    }

    if (v10[13] < a2)
    {
      v9 = 0;
      v10[13] = a2;
      return v9;
    }

    return 0;
  }

  if (v7[80])
  {
    return 0;
  }

  bitmap_store_destroy(v6);
  if (a1)
  {
    v12 = &unk_100104400;
  }

  else
  {
    v12 = &unk_100104380;
  }

  v12[13] = 0;
  v12[14] = 0;
  return v9;
}

uint64_t omap_sv_mark_reaper_entry(unint64_t a1, int a2)
{
  v3 = omap_sv_mark(a2 != 13, a1, 1);
  if (v3)
  {
    v4 = v3;
    fsck_printf_warn("object (oid 0x%llx): Unable to mark omap entry in usefor omap space verification \n", a1);
    fsck_fail_func(0x3D1, v4);
  }

  return 0;
}

uint64_t omap_sv_process_orphans(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = &unk_100104380;
  if (a3)
  {
    v11 = &unk_100104400;
  }

  else
  {
    v11 = &unk_100104380;
  }

  if (bitmap_store_inited(v11))
  {
    v12 = &unk_1001043D0;
    if (a3)
    {
      v12 = &unk_100104450;
    }

    if ((*v12 & 1) == 0)
    {
      if (a2)
      {
        v14 = *(*(a2 + 40) + 8);
      }

      else
      {
        v14 = 0;
      }

      v26 = 0;
      v15 = omap_in_reaper(v14);
      v16 = &unk_1001043F0;
      if (a3)
      {
        v16 = &unk_100104470;
      }

      v17 = *v16;
      if (a3)
      {
        v10 = &unk_100104400;
      }

      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v25 = v18;
      v13 = sub_1000972C4(a1, a2, v11, v18, v10[13] + 1, (v10[15] & 1) == 0, &v26, a4, a5);
      v19 = v26;
      if (v13)
      {
        v20 = 1;
      }

      else
      {
        v20 = v26 == 0;
      }

      if (v20)
      {
        goto LABEL_39;
      }

      v27 = 0;
      if (v14)
      {
        asprintf(&v27, "volume omap (fs_oid 0x%llx)");
      }

      else
      {
        asprintf(&v27, "container omap");
      }

      v21 = v27;
      if (*(v10 + 120) != 1)
      {
        goto LABEL_31;
      }

      v22 = iterate_reaper(a1, a2, 1);
      if (v22)
      {
        v13 = v22;
        fsck_printf_warn("%s: could not iterate reaper for omap space verification\n", v21);
        v23 = 978;
        goto LABEL_36;
      }

      if (bitmap_store_inited(v11))
      {
        v13 = sub_1000972C4(a1, a2, v11, v25, v10[13] + 1, 1, &v26, a4, a5);
        v19 = v26;
      }

      else
      {
LABEL_31:
        v13 = 0;
      }

      if (v13 || !v19 || !a4)
      {
LABEL_37:
        if (v21)
        {
          free(v21);
        }

LABEL_39:
        *(v10 + 120) = 0;
        return v13;
      }

      fsck_printf_warn("%s: %llu orphan mappings found\n", v21, v19);
      v13 = 0;
      v23 = 979;
LABEL_36:
      fsck_fail_func(v23, -7);
      goto LABEL_37;
    }
  }

  return 0;
}

uint64_t sub_1000972C4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, void *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v28 = 0;
  v29 = 0;
  *a7 = 0;
  if (a4 < a5)
  {
    v13 = a4;
    while (range_ffs(a3, v13, a5 - v13, &v29))
    {
      if ((a6 & 1) == 0)
      {
        v19 = 0;
        *a7 = 1;
        return v19;
      }

      if ((range_ffc(a3, v29, a5 - v29, &v28) & 1) == 0)
      {
        v28 = a5;
      }

      if (a8)
      {
        if (v29 == v28 - 1)
        {
          fsck_printf_warn("orphan omap mapping found for oid %llu\n");
        }

        else
        {
          fsck_printf_warn("orphan omap mappings found for oid range %llu --> %llu\n");
        }
      }

      v13 = v28;
      if (*(state + 45) == 1)
      {
        v15 = a8;
        v16 = v29;
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        omap_tree = get_omap_tree(a1, a2, &v36);
        if (omap_tree)
        {
          return omap_tree;
        }

        v30[0] = v16;
        v30[1] = 0;
        v18 = path_iterator_init(&v31, v36, 0, v30, 0x10u);
        if (v18)
        {
          v19 = v18;
          v25 = strerror(v18);
          fsck_printf_err("unable to initialize omap tree iterator for repair: %s\n", v25);
          fsck_fail_func(0x3DF, v19);
          return v19;
        }

        if ((BYTE8(v33) & 1) == 0)
        {
          v20 = v32;
          while (*v20 < v13)
          {
            ++*a7;
            v21 = a9();
            if (v21)
            {
              v19 = v21;
              goto LABEL_16;
            }

            v22 = (*(&v31 + 1))(&v31);
            if (v22)
            {
              v19 = v22;
              v23 = strerror(v22);
              fsck_printf_err("error iterating omap tree for repair: %s\n", v23);
              fsck_fail_func(0x3E1, v19);
              goto LABEL_16;
            }

            v20 = v32;
            if (BYTE8(v33) == 1)
            {
              break;
            }
          }
        }

        v19 = 0;
LABEL_16:
        if (v31)
        {
          (v31)(&v31);
        }

        if (v19)
        {
          return v19;
        }

        v13 = v28;
        a8 = v15;
      }

      if (v13 >= a5)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t omap_sv_finalize(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = omap_sv_process_orphans(a1, a2, a3, 1, sub_100097588);
  if (a3)
  {
    v5 = &unk_100104400;
  }

  else
  {
    v5 = &unk_100104380;
  }

  bitmap_store_destroy(v5);
  v5[13] = 0;
  v5[14] = 0;
  return v4;
}

uint64_t sub_100097588(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = fsck_repairs_add(a5, 2u, 0, 0, 0, a1, 0x10u, a3, 0x10u);
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    v9 = strerror(v6);
    fsck_printf_err("object (oid 0x%llx): unable to add omap repair: %s\n", v8, v9);
    fsck_fail_func(0x3E0, v7);
  }

  return v7;
}

uint64_t fsck_tree_node_repair_init(uint64_t result)
{
  if (*(result + 48) != 14)
  {
    sub_100099730();
  }

  if (dword_1000E9518 >= 99)
  {
    dword_1000E9518 = 100;
    return result;
  }

  v1 = result;
  v2 = ++dword_1000E9518;
  v3 = *(result + 8);
  v4 = *(v3 + 48);
  if (!v4)
  {
    v4 = *(v3 + 40);
  }

  if ((*(v4 + 56) & 0x20) == 0)
  {
    v5 = &xmmword_100104480 + 152 * v2;
    if (tree_init_ext(v5, 0, v3, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100097780) || tree_create(v5, 0, 66))
    {

      return tree_destroy(v5, 0);
    }

    else
    {
      v6 = *(v1 + 8);
      if (v6)
      {
        v6 = *(*(v6 + 40) + 8);
      }

      *(v5 + 16) = v6;
      v5[144] = 0;
      v8 = 0;
      result = tree_node_count(v1, 0, &v8);
      if (result)
      {
        v7 = 50;
      }

      else
      {
        v7 = v8;
        *(v5 + 17) = v8 / 0x64;
        if (v7 > 0x3E7)
        {
          return result;
        }

        if (v7 >= 0xA)
        {
          v7 = 10;
        }
      }

      *(v5 + 17) = v7;
    }
  }

  return result;
}

uint64_t sub_100097780(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 >= 0x1C && a5 >= 0x1C)
  {
    result = jkey_compare(a1, (a2 + 20), *(a2 + 16), (a4 + 20), *(a4 + 16), a6);
    if (!result)
    {
      if (*a6)
      {
        return 0;
      }

      if (*a2 > *a4)
      {
        goto LABEL_7;
      }

      if (*a2 >= *a4)
      {
        v12 = *(a2 + 8);
        v13 = *(a4 + 8);
        if (v12 > v13)
        {
LABEL_7:
          v11 = 1;
LABEL_10:
          result = 0;
          *a6 = v11;
          return result;
        }

        if (v12 >= v13)
        {
          return 0;
        }
      }

      v11 = -1;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t jkey_ranges_find_overlap(uint64_t a1, int *a2, int *a3, _BYTE *a4, uint64_t a5)
{
  v30 = 0;
  v10 = *(a2 + 2);
  v11 = *(a3 + 1);
  if (!(v10 | v11))
  {
    HIDWORD(v30) = 0;
    goto LABEL_10;
  }

  if (!v10)
  {
    v13 = 1;
LABEL_9:
    HIDWORD(v30) = v13;
    goto LABEL_10;
  }

  if (!v11)
  {
    v13 = -1;
    goto LABEL_9;
  }

  result = jkey_compare(a1, v10, a2[1], v11, *a3, &v30 + 1);
  if (result)
  {
    return result;
  }

LABEL_10:
  v14 = *(a3 + 2);
  v15 = *(a2 + 1);
  v16 = v14 | v15;
  if (v14 | v15)
  {
    if (v14)
    {
      if (v15)
      {
        result = jkey_compare(a1, v14, a3[1], v15, *a2, &v30);
        if (result)
        {
          return result;
        }

        v16 = v30 > 0;
      }

      else
      {
        v16 = 0;
        LODWORD(v30) = -1;
      }
    }

    else
    {
      v16 = 1;
      LODWORD(v30) = 1;
    }
  }

  else
  {
    LODWORD(v30) = 0;
  }

  result = 0;
  v17 = (SHIDWORD(v30) > 0) & v16;
  *a4 = v17;
  if (a5 && v17)
  {
    v18 = *(a2 + 1);
    v19 = *(a3 + 1);
    if (!(v18 | v19))
    {
      HIDWORD(v30) = 0;
      goto LABEL_29;
    }

    if (v18)
    {
      if (v19)
      {
        result = jkey_compare(a1, v18, *a2, v19, *a3, &v30 + 1);
        if (result)
        {
          return result;
        }

LABEL_29:
        v21 = *(a2 + 2);
        v22 = *(a3 + 2);
        if (v21 | v22)
        {
          if (v21)
          {
            if (v22)
            {
              result = jkey_compare(a1, v21, a2[1], v22, a3[1], &v30);
              if (result)
              {
                return result;
              }

              goto LABEL_38;
            }

            v23 = -1;
          }

          else
          {
            v23 = 1;
          }

          LODWORD(v30) = v23;
        }

        else
        {
          LODWORD(v30) = 0;
        }

LABEL_38:
        result = 0;
        if (v30 < 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v26 = *v24;
        if (v30 >= 1)
        {
          v27 = a3;
        }

        else
        {
          v27 = a2;
        }

        v28 = *(v27 + 2);
        *(a5 + 8) = v25;
        *(a5 + 16) = v28;
        v29 = v27[1];
        *a5 = v26;
        *(a5 + 4) = v29;
        return result;
      }

      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    HIDWORD(v30) = v20;
    goto LABEL_29;
  }

  return result;
}

uint64_t fsck_tree_node_repair_add_maybe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, unsigned int a9, unsigned int a10)
{
  v10 = a10;
  if (dword_1000E9518 != 100)
  {
    if (*(&xmmword_100104480 + 19 * dword_1000E9518 + 7))
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        if (!*(v12 + 56) && a6 && *(a1 + 48) == 14 && (a10 == 92 || a10 == 2))
        {
          v15 = &xmmword_100104480 + 152 * dword_1000E9518;
          v16 = *(v15 + 16);
          if (v16 != *(*(v12 + 40) + 8))
          {
            sub_10009975C();
          }

          if (*(v15 + 17) <= v15[144])
          {
            fsck_printf_warn("reached invalid tree node limit %llu for fs_oid %llu\n", *(v15 + 17), v16);
            tree_destroy(v15, 0);
          }

          else
          {
            v10 = sub_100097B9C(v15, a3, a4, a5, 0x7FFFFFFFFFFFFFFFLL, 0, a6, a7, 0, a8, a9, 0);
            if (!v10)
            {
              *(a2 + 74) = 1;
              if ((byte_100107FE4 & 1) == 0)
              {
                fsck_printf_warn("aborting jobj validations for current fsck pass - trying to repair fsroot tree with invalid nodes\n");
              }

              byte_100107FE4 = 1;
              fsroot_jobj_abort(*(a1 + 8));
              fsck_doc_id_cleanup();
              v10 = 0;
              *(*(a1 + 8) + 9) = 0;
              ++v15[144];
              ++dword_100107FE0;
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_100097B9C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, const void *a7, unsigned int a8, int a9, const void *a10, unsigned int a11, int a12)
{
  if (!a7 || (a10 != 0) != (a11 != 0))
  {
    sub_100099788();
  }

  v16 = a8 + 20;
  v17 = malloc_type_malloc(v16, 0xE1A0581EuLL);
  v18 = malloc_type_malloc(a11 + 30, 0xEF630B10uLL);
  v19 = v18;
  if (v17 && v18)
  {
    *v17 = a2;
    v17[1] = a3;
    *(v17 + 4) = a8;
    memcpy(v17 + 20, a7, a8);
    *(v19 + 4) = a4;
    *(v19 + 10) = a5;
    *v19 = a6;
    *(v19 + 18) = a9;
    *(v19 + 22) = a12;
    *(v19 + 26) = a11;
    if (a10)
    {
      memcpy(v19 + 30, a10, a11);
    }

    v20 = tree_insert(a1, 0, v17, v16, v19, a11 + 30);
    v21 = v20;
    if (v20)
    {
      v22 = *(v17 + 20) & 0xFFFFFFFFFFFFFFFLL;
      v23 = strerror(v20);
      fsck_printf_err("unable to insert tree node at key id %llu for repairs : %s\n", v22, v23);
      fsck_fail_func(0x3F1, v21);
    }
  }

  else
  {
    v21 = 12;
    fsck_fail_func(0x3F0, 12);
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  free(v17);
LABEL_11:
  if (v19)
  {
    free(v19);
  }

  return v21;
}

uint64_t fsck_tree_node_repair_volume(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (dword_1000E9518 == 100 || !*(&xmmword_100104480 + 19 * dword_1000E9518 + 7))
  {
    return 0;
  }

  v6 = &xmmword_100104480 + 152 * dword_1000E9518;
  v7 = a2 ? *(*(a2 + 40) + 8) : 0;
  if (*(v6 + 16) != v7)
  {
    sub_1000997B4();
  }

  v21[0] = 0;
  tree_key_count(v6, 0, v21);
  if (!v21[0])
  {
    return 0;
  }

  v22 = 0;
  memset(v21, 0, 80);
  fsroot_tree = get_fsroot_tree(a1, a2, &v22);
  if (fsroot_tree)
  {
    return fsroot_tree;
  }

  fsroot_tree = fsck_btree_get_info(v22, *(v22 + 56), 0, v21);
  if (fsroot_tree)
  {
    return fsroot_tree;
  }

  memset(v20, 0, sizeof(v20));
  v10 = path_iterator_init(v20, v6, 0, 0, 0);
  if (v10 || (v10 = fsck_iterate(v20, sub_10009800C, a3, 0), v10))
  {
    info = v10;
    v11 = strerror(v10);
    fsck_printf_err("unable to enqueue tree node prune repairs: %s\n", v11);
    v12 = 1011;
LABEL_14:
    fsck_fail_func(v12, info);
    return info;
  }

  if ((*(state + 51) & 1) == 0)
  {
    fsck_tree_node_repair_abort();
    return 0;
  }

  v13 = sub_10009811C((v6 + 64), a2);
  if (v13)
  {
    info = v13;
    v12 = 1053;
    goto LABEL_14;
  }

  v19[1] = v22;
  v19[2] = v21;
  v19[3] = v6;
  v19[4] = (v6 + 64);
  info = omap_sv_process_orphans(a1, a2, 1, 0, sub_1000981AC);
  if (info)
  {
    return info;
  }

  if (!*(*(a2 + 40) + 216))
  {
    return 0;
  }

  if (*(state + 46))
  {
    return 0;
  }

  v19[0] = 0;
  latest_snap_xid = get_latest_snap_xid(a1, a2, v19);
  if (latest_snap_xid == 2)
  {
    return 0;
  }

  info = latest_snap_xid;
  if (!latest_snap_xid)
  {
    info = fsck_btree_get_info(v22, *(v22 + 56), v19[0], v21);
    if (!info)
    {
      v18[0] = v22;
      v18[1] = v21;
      v18[2] = v19[0];
      v18[3] = v6 + 64;
      v16 = path_iterator_init(v20, v6, 0, 0, 0);
      if (v16 || (v16 = fsck_iterate(v20, sub_10009825C, v18, 0), v16))
      {
        info = v16;
        v17 = strerror(v16);
        fsck_printf_err("unable to iterate snap fsroot tree for tree node repairs: %s\n", v17);
        v12 = 1054;
        goto LABEL_14;
      }

      return 0;
    }
  }

  return info;
}

uint64_t sub_10009800C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a3 + 8);
  v6 = fsck_repairs_add(a5, 6u, 0, 0, 1, (a1 + 20), *(a1 + 16), &v11, 2u);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 20) & 0xFFFFFFFFFFFFFFFLL;
    v9 = strerror(v6);
    fsck_printf_err("unable to add tree repair at key at id %llu : %s\n", v8, v9);
    fsck_fail_func(0x3F2, v7);
  }

  return v7;
}

void fsck_tree_node_repair_abort()
{
  v1 = dword_1000E9518;
  if (dword_1000E9518 != 100)
  {
    v2 = &xmmword_100104480 + 152 * dword_1000E9518;
    dword_100107FE0 -= v2[144];
    v2[144] = 0;
    tree_destroy(&xmmword_100104480 + 152 * v1, 0);

    tree_destroy((v2 + 64), 0);
  }
}

uint64_t sub_10009811C(uint64_t a1, uint64_t a2)
{
  result = tree_init_ext(a1, 0, a2, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100097780);
  if (!result)
  {

    return tree_create(a1, 0, 66);
  }

  return result;
}

uint64_t sub_1000981AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*a3)
  {
    return 0;
  }

  v7 = *a5;
  v8 = a5[1];
  v13 = 0;
  v11 = 0;
  if (!copy_obj(*v7, *(v7 + 8), 0, *a1, a1[1], 0, 3, 14, &v13, 0, 0))
  {
    v11 = sub_100098D44(v7, v8, a5[2], a5[3], v13, *(a3 + 8), v9, v10);
    free(v13);
  }

  return v11;
}

uint64_t sub_10009825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 26);
  v8 = (a3 + 30);
  v9 = *a5;
  v24 = a5[1];
  if (v7)
  {
    v10 = a3 + 30;
  }

  else
  {
    v10 = 0;
  }

  v11 = a5[2];
  v12 = a5[3];
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v13 = a1 + 20;
  inited = path_iterator_init_ext(&v35, v9, v11, 0xFFFFFFFE, (a1 + 20), *(a1 + 16), 1u);
  if (inited)
  {
    v15 = inited;
    v16 = strerror(inited);
    fsck_printf_err("unable to iterate fsroot tree (xid %llu) for tree node repairs: %s\n", v11, v16);
    v17 = 1050;
LABEL_6:
    fsck_fail_func(v17, v15);
    goto LABEL_20;
  }

  if ((BYTE8(v37) & 1) == 0)
  {
    while (1)
    {
      v18 = **(&v36 + 1);
      if (v41)
      {
        free(v41);
        v41 = 0;
      }

      v19 = copy_obj(*v9, *(v9 + 8), 0, v18, v11, 0, 3, 14, &v41, v40, 0);
      if (v19)
      {
        goto LABEL_19;
      }

      v33 = 0;
      v34 = 0;
      v32 = 0;
      get_key_range(v41, v24, 0, &v34, &v32 + 1, (*(v41 + 9) - 1), &v33, &v32);
      v31 = 0;
      if (v7)
      {
        v15 = jkey_compare(*(*(v9 + 8) + 40), v34, HIWORD(v32), v8, *(a3 + 26), &v31);
        if (v15 || (v31 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      v20 = *(a3 + 26);
      v28[0] = *(a1 + 16);
      v28[1] = v20;
      v29 = v13;
      v30 = v10;
      v25[0] = HIWORD(v32);
      v25[1] = v32;
      v26 = v34;
      v27 = v33;
      v19 = sub_100098FB4(v12, *(*(v9 + 8) + 40), v24, v41, v40[0], v11, v28, v25);
      if (v19)
      {
LABEL_19:
        v15 = v19;
        goto LABEL_20;
      }

      v21 = (*(&v35 + 1))(&v35);
      if (v21)
      {
        break;
      }

      if (BYTE8(v37) == 1)
      {
        goto LABEL_8;
      }
    }

    v15 = v21;
    v23 = strerror(v21);
    fsck_printf_err("error iterating fsroot tree (xid %llu) for tree node repairs: %s\n", v11, v23);
    v17 = 1051;
    goto LABEL_6;
  }

LABEL_8:
  v15 = 0;
LABEL_20:
  if (v35)
  {
    (v35)(&v35);
  }

  if (v41)
  {
    free(v41);
  }

  return v15;
}

uint64_t fsck_tree_node_repair_finalize(uint64_t *a1)
{
  if (!dword_100107FE0)
  {
    return 0;
  }

  if (*(state + 51) != 1)
  {
    return 92;
  }

  memset(v34, 0, sizeof(v34));
  v35 = malloc_type_malloc(0x354uLL, 0xF84EB4C2uLL);
  v2 = malloc_type_malloc(0x35EuLL, 0x4BB726FuLL);
  v36 = v2;
  v3 = malloc_type_malloc(0x354uLL, 0x27063778uLL);
  v4 = malloc_type_malloc(0x35EuLL, 0xBB9FEEC5uLL);
  v5 = v4;
  if (!v35 || !v2 || !v4 || !v3)
  {
    v7 = 12;
    fsck_fail_func(0x41F, 12);
LABEL_13:
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = verify_bitmap(a1, 0, sub_1000988C4, a1, 0);
  if (v6 || (v6 = spaceman_metazone_iterate(a1, sub_1000988FC, a1), v6) || *(state + 52) == 1 && (v6 = iterate_free_blocks(a1, sub_100098920, a1), v6))
  {
    v7 = v6;
    goto LABEL_14;
  }

  v9 = dword_1000E9518;
  if (dword_1000E9518 < 0)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (dword_1000E9518 >= 0x63)
  {
    v9 = 99;
  }

  v10 = (v9 + 1);
  v11 = &xmmword_100104480;
  while (1)
  {
    v12 = v11[7];
    v31[2] = v11[6];
    v31[3] = v12;
    v32 = v11[8];
    v33 = *(v11 + 18);
    v13 = v11[3];
    v29[2] = v11[2];
    v30 = v13;
    v14 = v11[5];
    v31[0] = v11[4];
    v31[1] = v14;
    v15 = v11[1];
    v29[0] = *v11;
    v29[1] = v15;
    if (!v33)
    {
      goto LABEL_39;
    }

    if (!*(&v30 + 1))
    {
      goto LABEL_39;
    }

    v16 = fsck_global_volume_get_by_fs_oid(a1, v32);
    if (!v16)
    {
      goto LABEL_39;
    }

    v28 = 0;
    memset(v27, 0, sizeof(v27));
    fsroot_tree = get_fsroot_tree(a1, v16, &v28);
    if (fsroot_tree || (fsroot_tree = fsck_btree_get_info(v28, *(v28 + 56), 0, v27), fsroot_tree))
    {
      v7 = fsroot_tree;
      goto LABEL_13;
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    *&v34[0] = v28;
    *(&v34[0] + 1) = v31;
    bzero(v35, 0x354uLL);
    bzero(v36, 0x35EuLL);
    bzero(v3, 0x354uLL);
    bzero(v5, 0x35EuLL);
    v3[4] = 8;
    v18 = tree_iterator_init(v25, v31, 0, v3, 0x354u, 0x354u, v5, 862);
    if (v18 || (v18 = fsck_iterate(v25, sub_100098A40, v34, 0), v18))
    {
      v7 = v18;
      v20 = strerror(v18);
      fsck_printf_err("unable to fix overlaps in candidate tree: %s\n", v20);
      v21 = 1056;
      goto LABEL_45;
    }

    v24[0] = v28;
    v24[1] = v27;
    memset(v23, 0, sizeof(v23));
    v19 = path_iterator_init(v23, v31, 0, 0, 0);
    if (v19)
    {
      break;
    }

    v19 = fsck_iterate(v23, sub_100098BA4, v24, 0);
    if (v19)
    {
      break;
    }

    tree_destroy(v29, 0);
    tree_destroy(v31, 0);
LABEL_39:
    v7 = 0;
    v11 = (v11 + 152);
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  v7 = v19;
  v22 = strerror(v19);
  fsck_printf_err("unable to enqueue tree node insertion repairs: %s\n", v22);
  v21 = 1057;
LABEL_45:
  fsck_fail_func(v21, v7);
LABEL_14:
  free(v3);
LABEL_15:
  if (v5)
  {
    free(v5);
  }

  if (v35)
  {
    free(v35);
  }

  if (v36)
  {
    free(v36);
  }

  dword_100107FE0 = 0;
  dword_1000E9518 = -1;
  return v7;
}

uint64_t sub_1000988C4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (a3 && a4 != 1)
  {
    sub_100099198(a2, a3, a5);
  }

  return 0;
}

uint64_t sub_100098920(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[1] = 0;
  v13 = 8;
  v6 = malloc_type_calloc(8uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  v12[0] = v6;
  if (!v6)
  {
    return 12;
  }

  HIDWORD(v12[1]) = 1;
  *v6 = a1;
  v6[1] = a2;
  v7 = spaceman_datazone_iterate(a3, sub_100099518);
  if (v7 || (v7 = spaceman_metazone_iterate(a3, sub_100099518, v12), v7))
  {
    v8 = v7;
  }

  else
  {
    if (SHIDWORD(v12[1]) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        sub_100099198(*(v12[0] + v10), *(v12[0] + v10 + 8), a3);
        ++v11;
        v10 += 16;
      }

      while (v11 < SHIDWORD(v12[1]));
    }

    v8 = 0;
  }

  if (v12[0])
  {
    free(v12[0]);
  }

  return v8;
}

uint64_t sub_100098A40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v13 = a5[4];
  v12 = a5[5];
  v26 = 0;
  if (*(a5 + 16) != 1)
  {
LABEL_13:
    *(a5 + 16) = 1;
    bzero(a5[4], 0x354uLL);
    memcpy(a5[4], a1, a2);
    *(a5 + 5) = a2;
    bzero(a5[5], 0x35EuLL);
    memcpy(a5[5], a3, a4);
    result = 0;
    *(a5 + 6) = a4;
    return result;
  }

  v14 = *(v12 + 26);
  v15 = v12 + 30;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = *(a3 + 26);
  v17 = a3 + 30;
  if (!v16)
  {
    v17 = 0;
  }

  v23[0] = *(v13 + 16);
  v23[1] = v14;
  v24 = v13 + 20;
  v25 = v15;
  v20[0] = *(a1 + 16);
  v20[1] = v16;
  v21 = a1 + 20;
  v22 = v17;
  result = jkey_ranges_find_overlap(*(*(v10 + 8) + 40), v23, v20, &v26, 0);
  if (!result)
  {
    v19 = v26;
    if (v26 == 1)
    {
      if (*(v13 + 8) <= *(a1 + 8))
      {
        result = sub_1000996BC(v11, v13, *(a5 + 5));
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_1000996BC(v11, a1, a2);
        if (result)
        {
          return result;
        }

        if (v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100098BA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t ***a5)
{
  v7 = a5[1];
  v9 = **a5;
  v8 = (*a5)[1];
  v10 = *(*a5 + 6);
  v11 = malloc_type_calloc(1uLL, v10, 0x7AD88AA1uLL);
  if (v11)
  {
    v12 = v11;
    if (v8)
    {
      v13 = *(v8 + 40);
      if (*(v13 + 264))
      {
        v14 = 0;
      }

      else
      {
        v14 = 4 * (*(v13 + 976) == 0);
      }

      v16 = v14 | (32 * (*(v13 + 1096) != 0));
    }

    else
    {
      v16 = 0;
    }

    v17 = *a1;
    v26 = *(a3 + 10);
    v27 = v10;
    v28 = v16;
    v29 = 0;
    v15 = sub_100099424(v9, v8, v11, v17, &v26);
    if (!v15)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      for (i = *(a3 + 18); ; i = (i + 1))
      {
        if (i > *(a3 + 22))
        {
          v15 = 0;
          goto LABEL_16;
        }

        get_key_and_value_at_index(v12, v7, i, &v25, &v23 + 1, &v24, &v23);
        v19 = fsck_repairs_add(v8 + 768, 6u, 2, 0, 1, v25, HIWORD(v23), v24, v23);
        if (v19)
        {
          break;
        }
      }

      v15 = v19;
      v20 = *v25 & 0xFFFFFFFFFFFFFFFLL;
      v21 = strerror(v19);
      fsck_printf_err("unable to add tree node repair at key id %llu : %s\n", v20, v21);
      fsck_fail_func(0x41C, v15);
    }

LABEL_16:
    free(v12);
  }

  else
  {
    v15 = 12;
    fsck_fail_func(0x436, 12);
  }

  return v15;
}

uint64_t sub_100098D44(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a5 + 34) || fsck_btree_validate_node(a5, a2, 0, 0, a5, a6, a7, a8))
  {
    return 0;
  }

  v46 = 0;
  v47 = 0;
  v45 = 0;
  get_key_range(a5, a2, 0, &v47, &v45 + 1, (*(a5 + 36) - 1), &v46, &v45);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v16 = HIWORD(v45) + 20;
  v17 = malloc_type_calloc(1uLL, HIWORD(v45) + 20, 0x25D373DAuLL);
  v18 = v17;
  if (v17)
  {
    *v17 = -1;
    *(v17 + 1) = -1;
    v19 = HIWORD(v45);
    *(v17 + 4) = HIWORD(v45);
    memcpy(v17 + 20, v47, v19);
    inited = path_iterator_init_ext(&v40, a3, 0, 0xFFFFFFFE, v18, v16, 0);
    if (!inited)
    {
      if ((BYTE8(v42) & 1) == 0)
      {
        while (1)
        {
          v24 = v41;
          v25 = *(*(&v41 + 1) + 26);
          v39 = 0;
          v26 = v41 + 20;
          if (jkey_compare(*(*(a1 + 8) + 40), (v41 + 20), *(v41 + 16), v46, v45, &v39) || v39 >= 1)
          {
            break;
          }

          v28 = *(&v24 + 1) + 30;
          if (!v25)
          {
            v28 = 0;
          }

          v29 = *(*(&v24 + 1) + 26);
          v36[0] = *(v24 + 16);
          v36[1] = v29;
          v37 = v26;
          v38 = v28;
          v33[0] = HIWORD(v45);
          v33[1] = v45;
          v34 = v47;
          v35 = v46;
          v30 = sub_100098FB4(a4, *(*(a1 + 8) + 40), a2, a5, a6, 0, v36, v33);
          if (v30)
          {
            v14 = v30;
            goto LABEL_11;
          }

          v31 = (*(&v40 + 1))(&v40);
          v14 = v31;
          if (v31)
          {
            v32 = strerror(v31);
            fsck_printf_err("unable to iterate tree for tree node repairs: %s\n", v32);
            v22 = 1049;
            goto LABEL_8;
          }

          if (BYTE8(v42) == 1)
          {
            goto LABEL_11;
          }
        }
      }

      v14 = 0;
      goto LABEL_11;
    }

    v14 = inited;
    v21 = strerror(inited);
    fsck_printf_err("unable to iterate tree for tree node repairs: %s\n", v21);
    v22 = 1048;
LABEL_8:
    v23 = v14;
  }

  else
  {
    v14 = 12;
    v22 = 1047;
    v23 = 12;
  }

  fsck_fail_func(v22, v23);
LABEL_11:
  if (v40)
  {
    (v40)(&v40);
  }

  if (v18)
  {
    free(v18);
  }

  return v14;
}

uint64_t sub_100098FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (jkey_ranges_find_overlap(a2, a7, a8, &v36, &v33) || v36 != 1)
  {
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  LODWORD(v14) = -1;
  v27 = -1;
  v15 = *(a4 + 36);
  if (v15)
  {
    do
    {
      v16 = v14;
      v14 = (v14 + 1);
      get_key_and_value_at_index(a4, a3, v14, &v32, &v29 + 1, &v30, &v28);
      v17 = jkey_compare(a2, v32, HIWORD(v29), v34, v33, &v27);
      v15 = *(a4 + 36);
      v18 = v17 == 0;
      v19 = v16 + 2 < v15 && v17 == 0;
    }

    while (v19 && v27 < 0);
    v27 = -1;
    if (v14 >= v15 || v17)
    {
      LODWORD(v20) = v14;
    }

    else
    {
      v20 = v14;
      do
      {
        get_key_and_value_at_index(a4, a3, v20, &v31, &v29, &v30, &v28);
        v21 = jkey_compare(a2, v31, v29, v35, HIDWORD(v33), &v27);
        v20 = (v20 + 1);
        v15 = *(a4 + 36);
        v18 = v21 == 0;
      }

      while (v20 < v15 && v21 == 0 && v27 < 1);
    }
  }

  else
  {
    v18 = 1;
    LODWORD(v20) = -1;
  }

  v24 = v20 - 1;
  if (!v18 || v24 == v15)
  {
    return 0;
  }

  else
  {
    return sub_100097B9C(a1, *(a4 + 8), *(a4 + 16), *(a4 + 34), a5, a6, v32, HIWORD(v29), v14, v31, v29, v24);
  }
}

uint64_t sub_100099198(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = malloc_type_calloc(1uLL, *(a3[1] + 36), 0xE9F84ABCuLL);
  if (!v6)
  {
    fsck_fail_func(0x435, 12);
    return 0;
  }

  v7 = v6;
  v8 = dword_1000E9518;
  if (dword_1000E9518 < 0)
  {
    goto LABEL_31;
  }

  v9 = 0;
  v10 = a2 + a1;
  if (dword_1000E9518 >= 0x63)
  {
    v8 = 99;
  }

  v11 = (v8 + 1);
  v33 = v11;
  while (1)
  {
    v12 = &xmmword_100104480 + 152 * v9;
    v13 = *(v12 + 7);
    v38[2] = *(v12 + 6);
    v38[3] = v13;
    v39 = *(v12 + 8);
    v40 = *(v12 + 18);
    v14 = *(v12 + 3);
    v36[2] = *(v12 + 2);
    v37 = v14;
    v15 = *(v12 + 5);
    v38[0] = *(v12 + 4);
    v38[1] = v15;
    v16 = *(v12 + 1);
    v36[0] = *v12;
    v36[1] = v16;
    if (!v40)
    {
      goto LABEL_30;
    }

    if (!*(&v37 + 1))
    {
      goto LABEL_30;
    }

    v17 = fsck_global_volume_get_by_fs_oid(a3, v39);
    if (!v17)
    {
      goto LABEL_30;
    }

    v18 = v17;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    if (get_fsroot_tree(a3, v17, &v35) || fsck_btree_get_info(v35, *(v35 + 56), 0, v34))
    {
      goto LABEL_31;
    }

    v19 = *(v18 + 5);
    v20 = (*(v19 + 264) & 1) != 0 || *(v19 + 976) != 0;
    if (a1 < v10)
    {
      break;
    }

LABEL_29:
    v11 = v33;
LABEL_30:
    if (++v9 == v11)
    {
      goto LABEL_31;
    }
  }

  v21 = *(v35 + 24);
  v22 = *(v19 + 1096) != 0;
  v23 = v18 + 24;
  v24 = &v18[96 * (*(v19 + 1096) != 0) + 832];
  while (1)
  {
    v25 = *a3;
    if (v20)
    {
      v26 = 0;
    }

    else if (*&v23[8 * v22])
    {
      v25 = *&v23[8 * v22];
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a3[1] + 36);
    if (v21 % v27)
    {
      sub_100064BE0();
    }

    if (dev_read_extended(v25, a1, v21 / v27, v7, v26, 0, 0, 0, 0) || (*(v7 + 24) & 0xFFFFFFFE) == 2 && *(v7 + 28) == 14 && !fletcher64_verify_cksum(v7, (v7 + 8), v21 - 8, 0, v28, v29) && sub_100098D44(v35, v34, v36, v38, v7, a1, v30, v31))
    {
      break;
    }

    if (v10 == ++a1)
    {
      a1 = v10;
      goto LABEL_29;
    }
  }

LABEL_31:
  free(v7);
  return 0;
}

uint64_t sub_100099424(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 12);
  v7 = *a1;
  if ((v6 & 4) != 0)
  {
    if (*(a5 + 12) >= 0x40u)
    {
      sub_100064BB4();
    }

    v11 = (v6 >> 8) & 7;
    if (v11 >= 2)
    {
      sub_100064B88();
    }

    v12 = v11 == 1;
    if (v11 == 1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    if (v12)
    {
      v10 = a4 ^ HIDWORD(*(a5 + 16)) | a4 & 0xFFFFFFFF00000000 ^ (*(a5 + 16) << 32);
    }

    else
    {
      v10 = 0;
    }

    if (a2)
    {
      v13 = v6 >> 5;
      v14 = *(a2 + 8 * v13 + 24);
      v8 = a2 + 96 * v13 + 832;
      if (v14)
      {
        v7 = v14;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v15 = *(a5 + 8);
  v16 = *(a1[1] + 36);
  if (v15 % v16)
  {
    sub_100064BE0();
  }

  return dev_read_extended(v7, *a5, v15 / v16, a3, v8, 0, 0, v10, v9);
}

uint64_t sub_100099518(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if (*(a3 + 12) < 1)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  v8 = 0;
  v10 = 0;
  while (1)
  {
    result = split_range_maybe(*(*a3 + 16 * v8), *(*a3 + 16 * v8 + 8), a1, a2, &v10, sub_1000995CC, a3);
    if (result)
    {
      break;
    }

    v8 = *(a3 + 8);
    if ((v10 & 1) == 0)
    {
      *(a3 + 8) = ++v8;
    }

    if (v8 >= *(a3 + 12))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000995CC(uint64_t a1, uint64_t a2, int a3, int32x2_t *a4)
{
  v5 = *a4;
  v6 = a4[1].i32[0];
  if (a3)
  {
    memmove(&v5[16 * v6], &v5[16 * v6 + 16], 16 * (a4[1].i32[1] - v6));
    result = 0;
    --a4[1].i32[1];
    return result;
  }

  v10 = a4[1].i32[1];
  if (v10 != a4[2].i32[0])
  {
    goto LABEL_6;
  }

  a4[2].i32[0] = 2 * v10;
  v11 = malloc_type_realloc(v5, 32 * v10, 0x1000040451B5BE8uLL);
  if (v11)
  {
    v10 = a4[1].i32[1];
    v5 = v11;
LABEL_6:
    v12 = &v5[16 * v6];
    memmove(v12 + 16, v12, 16 * (v10 - v6));
    result = 0;
    *v12 = a1;
    *(v12 + 1) = a2;
    a4[1] = vadd_s32(a4[1], 0x100000001);
    return result;
  }

  free(v5);
  return 12;
}

uint64_t sub_1000996BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = tree_remove(a1, 0, a2, a3);
  v5 = v4;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = *(a2 + 20) & 0xFFFFFFFFFFFFFFFLL;
    v7 = strerror(v4);
    fsck_printf_err("unable to remove tree node at key id %llu for repairs : %s\n", v6, v7);
    fsck_fail_func(0x416, v5);
  }

  return v5;
}

void fsck_doc_id_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 48;
  if (!a3)
  {
    v3 = 40;
  }

  v4 = *(a2 + v3);
  byte_100107FE8 = 0;
  v5 = *(v4 + 964);
  if (v5 > 0x3F)
  {
    if (v5 != 576 && v5 != 64)
    {
      return;
    }
  }

  else
  {
    if (*(v4 + 964))
    {
      v6 = v5 == 2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      return;
    }
  }

  if (*(v4 + 1056) == *(v4 + 16) && (a3 || (*(*(a2 + 40) + 1064) & 2) == 0))
  {
    if (*(v4 + 1072))
    {
      if (!tree_init_ext(&unk_100107FF0, 0, 0, 0x8000000, 2, 0, 0, 4096, 4, 8, 0, 0, uint32_key_compare))
      {
        tree_create(&unk_100107FF0, 0, 64);
      }

      if (memory_storage_register_tree(&unk_100107FF0, "doc id", fsck_doc_id_cleanup))
      {
        fsck_printf_warn("failed to register the doc id tree in the fsck memory storage\n");
        fsck_fail_func(0x584, 12);
      }
    }

    dword_100108030 = 0;
    byte_100107FE8 = 1;
  }
}

uint64_t fsck_doc_id_cleanup()
{
  result = tree_destroy(&unk_100107FF0, 0);
  byte_100107FE8 = 0;
  return result;
}

uint64_t validate_doc_id_tree_record(uint64_t *a1, int8x16_t *a2, unint64_t a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v6 = a2[3].i64[1];
  v49 = *a4;
  if (byte_100107FE8 != 1)
  {
    return 0;
  }

  v48 = 0;
  v11 = v6;
  if (qword_100108028)
  {
    v46 = 8;
    v47 = 4;
    v14 = tree_lookup(&unk_100107FF0, 0, 0, &v49, &v47, 4, &v48, &v46);
    if (!v14)
    {
      if (v48)
      {
        if (v48 == a3)
        {
          goto LABEL_24;
        }

        fsck_printf_err("inode with file-id %llu has doc-id %u but doc-id tree record has file-id %llu\n", a3, *a4, v48);
        fsck_fail_func(0x3FB, 92);
        if (v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        fsck_printf_err("inode with file-id %llu has doc-id %u but doc-id is already in use\n", a3, *a4);
        fsck_fail_func(0x3FC, 92);
        if (v6)
        {
          goto LABEL_17;
        }

        if (!fsckAskPrompt(fsck_apfs_ctx, "Allocate new doc-id %u for file-id %llu? ", v20, v21, v22, v23, v24, v25, *(a5 + 48), a3))
        {
          return 92;
        }

        v42 = *(a5 + 48);
        *(a5 + 48) = v42 + 1;
        *a4 = v42;
        v43 = write_apfs_superblock(a1, a2);
        if (v43)
        {
          v15 = v43;
          v44 = strerror(v43);
          fsck_printf_err("failed to write apfs superblock : %s\n", v44);
          v30 = 1021;
          goto LABEL_27;
        }

        *a6 = 1;
        v49 = *a4;
      }

      v48 = a3;
LABEL_22:
      v26 = fsck_repairs_add(a2[48].i64, 9u, 2, 0, 1, &v49, 4u, &v48, 8u);
      if (v26)
      {
        v15 = v26;
        v27 = v48;
        v28 = v49;
        v29 = strerror(v26);
        fsck_printf_err("failed to insert doc-id tree repair for doc-id %u, file-id %llu : %s\n", v28, v27, v29);
        v30 = 1025;
LABEL_27:
        fsck_fail_func(v30, v15);
        return v15;
      }

      goto LABEL_24;
    }

    v15 = v14;
    if (v14 != 2)
    {
      v18 = *a4;
      v19 = strerror(v14);
      fsck_printf_err("failed to lookup doc-id %u error : %s\n", v18, v19);
      fsck_fail_func(0x400, v15);
LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    v11 = a2[3].i64[1];
  }

  v45 = 0;
  v16 = is_file_in_purgatory(a1, a2, v11, a3, &v45);
  if (v16)
  {
LABEL_18:
    v15 = v16;
    goto LABEL_19;
  }

  if (v45)
  {
LABEL_8:
    v17 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    fsck_printf_err("inode with file-id %llu has doc-id %u but doc-id tree record is missing\n", a3, *a4);
    fsck_fail_func(0x3FF, 92);
LABEL_17:
    v16 = print_snapshot_warning();
    goto LABEL_18;
  }

  v35 = a2[2].i64[1];
  if ((*(v35 + 1064) & 1) != 0 && *(v35 + 1088) < a3)
  {
    goto LABEL_8;
  }

  fsck_printf_err("inode with file-id %llu has doc-id %u but doc-id tree record is missing\n", a3, *a4);
  fsck_fail_func(0x3FE, 92);
  if (*(a2[2].i64[1] + 1072))
  {
    v15 = 0;
    v48 = a3;
    v17 = 1;
  }

  else
  {
    if (fsckAskPrompt(fsck_apfs_ctx, "Mark volume for doc-id tree building on next mount? ", v36, v37, v38, v39, v40, v41))
    {
      v16 = sub_100099D04(a1, a2);
      goto LABEL_18;
    }

    v17 = 0;
    v15 = 92;
  }

LABEL_20:
  if (!v15)
  {
    if (v17)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (qword_100108028)
    {
      v48 = 0;
      v31 = tree_insert(&unk_100107FF0, 0, &v49, 4, &v48, 8);
      v15 = v31;
      if (!v31)
      {
        ++dword_100108030;
        return v15;
      }

      v32 = v49;
      v33 = strerror(v31);
      fsck_printf_err("failed to mark cached doc-id tree record %d as verified error : %s\n", v32, v33);
      v30 = 1026;
      goto LABEL_27;
    }

    return 0;
  }

  return v15;
}

uint64_t sub_100099D04(uint64_t *a1, int8x16_t *a2)
{
  *(a2[2].i64[1] + 1064) = *(a2[2].i64[1] + 1064) & 0xFFFFFFFC | 2;
  v2 = write_apfs_superblock(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = strerror(v2);
    fsck_printf_err("failed to write apfs superblock : %s\n", v4);
    fsck_fail_func(0x3FA, v3);
  }

  else
  {
    byte_100107FE8 = 0;
  }

  return v3;
}

uint64_t fsck_doc_id_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v16 = 0;
  if (qword_100108028 && (v15 = 0, tree_key_count(&unk_100107FF0, 0, &v15), v15 != dword_100108030))
  {
    v13 = 8;
    v14 = 4;
    for (i = tree_lookup_min(&unk_100107FF0, 0, &v17, &v14, &v16, &v13); !i; i = tree_lookup(&unk_100107FF0, 0, 2, &v17, &v12, 4, &v16, &v11))
    {
      if (v16)
      {
        fsck_printf_warn("doc-id tree: record exists for doc-id %u, file-id %llu but no inode references this doc-id\n", v17, v16);
        fsck_fail_func(0x403, 92);
        if (a3)
        {
          print_snapshot_warning();
        }

        else
        {
          v7 = fsck_repairs_add(a2 + 768, 9u, 0, 0, 0, &v17, 4u, 0, 0);
          if (v7)
          {
            v5 = v7;
            v9 = v17;
            v10 = strerror(v7);
            fsck_printf_err("failed to add doc-id tree repair record, doc-id %u : %s\n", v9, v10);
            fsck_fail_func(0x404, v5);
            goto LABEL_13;
          }
        }
      }

      v11 = 8;
      v12 = 4;
    }

    if (i == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = i;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  tree_destroy(&unk_100107FF0, 0);
  byte_100107FE8 = 0;
  return v5;
}

uint64_t fsck_doc_id_trees(uint64_t *a1, int8x16_t *a2, uint64_t a3)
{
  v6 = 6;
  if (!a3)
  {
    v6 = 5;
  }

  v7 = a2->i64[v6];
  memset(v46, 0, sizeof(v46));
  inited = tree_init_ext(v46, a1, a2, *(v7 + 1068) & 0xC0000000, *(v7 + 1068), 34, 0, *(a1[1] + 36), 4, 8, 0, *(v7 + 1072), uint32_key_compare);
  if (inited)
  {
    v9 = inited;
    v10 = strerror(inited);
    fsck_printf_err("failed to initialize the doc-id tree: %s\n", v10);
    v11 = 1031;
LABEL_5:
    fsck_fail_func(v11, v9);
    return v9;
  }

  if (*(v7 + 1072))
  {
    if (byte_100107FE8 == 1)
    {
      LODWORD(v45[0]) = 0;
      if (qword_100108028)
      {
        v13 = fsck_tree(v46, a3, sub_10009A298, v45, 0, 0);
        v9 = v13;
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = strerror(v13);
        fsck_printf_err("failed to populate cached doc-id tree : %s\n", v14);
        fsck_fail_func(0x406, v9);
        byte_100107FE8 = 0;
        if (LODWORD(v45[0]))
        {
LABEL_24:
          tree_destroy(&unk_100107FF0, 0);
LABEL_25:
          if (v9)
          {
            return v9;
          }

          goto LABEL_26;
        }

        if (a3)
        {
          v21 = print_snapshot_warning();
        }

        else
        {
          if (!fsckAskPrompt(fsck_apfs_ctx, "Mark volume for doc-id tree building on next mount? ", v15, v16, v17, v18, v19, v20))
          {
            goto LABEL_23;
          }

          v21 = sub_100099D04(a1, a2);
        }

        v9 = v21;
LABEL_23:
        if (byte_100107FE8)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v22 = fsck_tree(v46, a3, 0, 0, 0, 0);
      if (v22)
      {
        v9 = v22;
        v23 = strerror(v22);
        fsck_printf_err("failed to traverse doc-id tree : %s\n", v23);
        fsck_fail_func(0x40A, v9);
        if (a3)
        {
          v30 = print_snapshot_warning();
        }

        else
        {
          if (!fsckAskPrompt(fsck_apfs_ctx, "Mark volume for doc-id tree building on next mount? ", v24, v25, v26, v27, v28, v29))
          {
            return v9;
          }

          v30 = sub_100099D04(a1, a2);
        }

        v9 = v30;
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v31 = *(v7 + 1080);
  if (!v31)
  {
    return 0;
  }

  memset(v45, 0, sizeof(v45));
  v32 = tree_init_ext(v45, a1, a2, *(v7 + 1068) & 0xC0000000, *(v7 + 1068), 34, 0, *(a1[1] + 36), 4, 8, 0, v31, uint32_key_compare);
  if (v32)
  {
    v9 = v32;
    v33 = strerror(v32);
    fsck_printf_err("failed to initialize the prev doc-id tree: %s\n", v33);
    v11 = 1035;
    goto LABEL_5;
  }

  v34 = fsck_tree(v45, a3, 0, 0, 0, 0);
  if (!v34)
  {
    return 0;
  }

  v35 = v34;
  v36 = strerror(v34);
  fsck_printf_err("failed to traverse prev doc-id tree : %s\n", v36);
  fsck_fail_func(0x40E, v35);
  if (a3)
  {
    return print_snapshot_warning();
  }

  v9 = 0;
  v44 = *(v7 + 964);
  if (v44 > 0x3F)
  {
    if (v44 != 64 && v44 != 576)
    {
      goto LABEL_40;
    }
  }

  else if (*(v7 + 964) && v44 != 2)
  {
LABEL_40:
    v9 = v35;
    if (!fsckAskPrompt(fsck_apfs_ctx, "Mark volume for doc-id tree cleanup on next mount? ", v37, v38, v39, v40, v41, v42))
    {
      return v9;
    }

    return sub_100099D04(a1, a2);
  }

  return v9;
}

uint64_t sub_10009A298(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, _DWORD *a7)
{
  v10 = *(a2 + 56);
  if (a7)
  {
    *a7 = 0;
  }

  if (byte_100107FE8 != 1)
  {
    return 0;
  }

  if (*a5)
  {
    v11 = tree_insert(&unk_100107FF0, 0, a3, 4, a5, 8);
    v12 = v11;
    if (v11)
    {
      strerror(v11);
      fsck_printf_err("failed to insert cached doc-id record, doc-id %u,file-id %llu : %s\n");
    }
  }

  else
  {
    fsck_printf_err("invalid doc-id record, file-id is 0 for doc-id %u\n", *a3);
    fsck_fail_func(0x3F9, 92);
    if (v10)
    {
      v12 = print_snapshot_warning();
    }

    else
    {
      v14 = fsck_repairs_add(a2 + 768, 9u, 0, 0, 1, a3, 4u, 0, 0);
      v12 = v14;
      if (v14)
      {
        strerror(v14);
        fsck_printf_err("failed to add doc-id repair (deletion), doc-id %u : %s\n");
      }
    }
  }

  if (a7)
  {
    *a7 = v12;
  }

  return v12;
}

uint64_t dir_stats_init(uint64_t a1)
{
  qword_100108038 = a1;
  if (!tree_init_ext(&unk_100108040, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 160, 0, 0, uint64_key_compare))
  {
    tree_create(&unk_100108040, 0, 64);
  }

  result = memory_storage_register_tree(&unk_100108040, "dir stats", dir_stats_abort);
  if (result)
  {
    fsck_printf_warn("failed to register the dir stats tree in the fsck memory storage\n");
    result = fsck_fail_func(0x57C, 12);
  }

  byte_100108080 = 0;
  return result;
}

uint64_t dir_stats_abort()
{
  if (qword_100108168)
  {
    result = tree_destroy(&unk_100108130, 0);
  }

  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    result = dir_stats_abort();
  }

  if (qword_100108078)
  {
    result = tree_destroy(&unk_100108040, 0);
  }

  qword_100108088 = 0;
  return result;
}

uint64_t sub_10009A514()
{
  if (qword_100108168)
  {
    return tree_destroy(&unk_100108130, 0);
  }

  return result;
}

void sub_10009A588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (qword_100108078)
  {
    sub_10009A890(a1);
    if (!v23)
    {
      if (qword_100108088 != a1)
      {
        sub_10009E130();
      }

      v24 = word_10010812C;
      if (word_10010812C)
      {
        sub_10009E2E8();
      }

      v25 = word_10010812C | 1;
      word_10010812C |= 1u;
      if (qword_1001080A8)
      {
        sub_10009E15C();
      }

      qword_1001080A8 = a2;
      if (*(&xmmword_100108090 + 1))
      {
        sub_10009E188();
      }

      if (qword_1001080A0)
      {
        sub_10009E1B4();
      }

      *(&xmmword_100108090 + 1) = a3;
      qword_1001080A0 = a3;
      if ((v24 & 0x100) != 0)
      {
        sub_10009E1E0();
      }

      if (a1 == a3)
      {
        v25 = v24 | 0x101;
        word_10010812C = v24 | 0x101;
        qword_1001080A0 = 0;
      }

      if ((v25 & 0x80) != 0)
      {
        sub_10009E20C();
      }

      if (a14)
      {
        v26 = 128;
      }

      else
      {
        v26 = 0;
      }

      v27 = v25 | v26;
      word_10010812C = v27;
      if (xmmword_100108090)
      {
        sub_10009E238();
      }

      *&xmmword_100108090 = a15;
      if (qword_1001080B8)
      {
        sub_10009E264();
      }

      qword_1001080B8 = a4;
      if (qword_1001080C8)
      {
        sub_10009E290();
      }

      qword_1001080C8 = a5;
      if (qword_1001080D8)
      {
        sub_10009E2BC();
      }

      dword_100108128 = a7;
      qword_1001080D8 = a6;
      if (a8)
      {
        v28 = 8;
      }

      else
      {
        v28 = 0;
      }

      v29 = v27 & 0xFF97;
      qword_1001080E8 = a9;
      if (a10)
      {
        v30 = 32;
      }

      else
      {
        v30 = 0;
      }

      v31 = v28 | v30;
      qword_1001080F8 = a11;
      if (a12)
      {
        v32 = 64;
      }

      else
      {
        v32 = 0;
      }

      word_10010812C = v29 | v31 | v32;
      qword_100108108 = a13;
    }
  }
}

void dir_stats_register_resource_fork(uint64_t a1, uint64_t a2)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (a2)
  {
    if (qword_100108078)
    {
      sub_10009A890(a1);
      if (!v4)
      {
        if (qword_100108088 != a1)
        {
          sub_10009E314();
        }

        sub_10009A93C(&qword_1001080E0, a2, a1, "resource fork size");
      }
    }
  }
}

double sub_10009A890(uint64_t a1)
{
  if (qword_100108088 != a1 && !sub_10009C810() && a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3 = 0u;
    v4 = 0u;
    if (!sub_10009D810(a1, &v3))
    {
      qword_100108088 = a1;
      *&qword_1001080F0 = v9;
      *&qword_100108100 = v10;
      xmmword_100108110 = v11;
      *&qword_100108120 = v12;
      *&qword_1001080B0 = v5;
      *&qword_1001080C0 = v6;
      *&qword_1001080D0 = v7;
      *&qword_1001080E0 = v8;
      result = *&v3;
      xmmword_100108090 = v3;
      *&qword_1001080A0 = v4;
    }
  }

  return result;
}

char *sub_10009A93C(char *result, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = __OFADD__(*result, a2);
  *result += a2;
  if (v5)
  {
    v6 = result;
    fsck_printf_warn("dir-stats object (id %llu): %s overflow\n", a3, a4);
    *v6 = 0x7FFFFFFFFFFFFFFFLL;

    return fsck_fail_func(0x56D, 84);
  }

  return result;
}

void dir_stats_register_descendant(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (qword_100108078)
  {
    sub_10009A890(a1);
    if (!v6)
    {
      if (qword_100108088 != a1)
      {
        sub_10009E340();
      }

      if (a3)
      {
        sub_10009A93C(&xmmword_100108110 + 8, 1, a1, "SAF descendants");
      }

      sub_10009A93C(&qword_1001080C0, 1, a1, "descendants");
      sub_10009A93C(&qword_1001080D0, a2, a1, "physical size");
    }
  }
}

void dir_stats_register_origin(uint64_t a1, uint64_t a2, int a3)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (!qword_100108078)
  {
    return;
  }

  sub_10009A890(a1);
  if (v6)
  {
    return;
  }

  if (qword_100108088 != a1)
  {
    sub_10009E36C();
  }

  if ((qword_1001080B0 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    qword_1001080B0 = a2;
    if ((a3 & 0x20000000) != 0)
    {
      word_10010812C |= 4u;
    }

    if ((a3 & 0x80000) != 0)
    {
      word_10010812C |= 0x10u;
    }

    return;
  }

  v7 = qword_1001080A8;
  if (!qword_1001080A8)
  {
    fsck_printf_warn("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", a1, qword_1001080B0, a2);
    fsck_fail_func(0x4DE, -8);
    goto LABEL_12;
  }

  if (qword_1001080A8 == qword_1001080B0)
  {
    fsck_printf_warn("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", a1, qword_1001080B0, a2);
    fsck_fail_func(0x4DE, -8);
    return;
  }

  fsck_printf_warn("dir_stats (id %llu) already has a registered origin (id %llu), but we found another one (id %llu)\n", a1, qword_1001080B0, a2);
  fsck_fail_func(0x4DE, -8);
  if (v7 == a2)
  {
    goto LABEL_12;
  }
}

void sub_10009ABCC(uint64_t a1, uint64_t a2)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (a2)
  {
    if (qword_100108078)
    {
      sub_10009A890(a1);
      if (!v4)
      {
        if (qword_100108088 != a1)
        {
          sub_10009E398();
        }

        sub_10009A93C(&qword_1001080F0, a2, a1, "clone size");
      }
    }
  }
}

void dir_stats_register_purgeable(uint64_t a1, uint64_t a2)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (a2)
  {
    if (qword_100108078)
    {
      sub_10009A890(a1);
      if (!v4)
      {
        if (qword_100108088 != a1)
        {
          sub_10009E3C4();
        }

        sub_10009A93C(&qword_100108100, a2, a1, "purgeable size");
      }
    }
  }
}

void dir_stats_register_purgeable_rsrc(uint64_t a1, uint64_t a2)
{
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  if (a2)
  {
    if (qword_100108078)
    {
      sub_10009A890(a1);
      if (!v4)
      {
        if (qword_100108088 != a1)
        {
          sub_10009E3F0();
        }

        sub_10009A93C(&xmmword_100108110, a2, a1, "purgeable rsrc size");
      }
    }
  }
}

uint64_t dir_stats_finalize(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = &unk_100108000;
  if (byte_100108080 == 1)
  {
    byte_100108080 = 0;
    dir_stats_abort();
  }

  v7 = &unk_100108000;
  if (!qword_100108078)
  {
    return 0;
  }

  v121 = 0;
  v122 = 0;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v8 = a2[6];
  if (!v8)
  {
    v8 = a2[5];
  }

  v9 = *(v8 + 56);
  found = clone_mapping_found_corruptions_and_aborted();
  v11 = sub_10009C810();
  if (v11)
  {
    goto LABEL_7;
  }

  *&v125 = 0;
  tree_key_count(&unk_100108040, 0, &v125);
  if (!v125)
  {
    goto LABEL_104;
  }

  v96 = found;
  v98 = v9;
  v99 = a3;
  v109 = 8;
  v108 = 160;
  if (!tree_lookup_min(&unk_100108040, 0, &v122, &v109, &v110, &v108))
  {
    while (1)
    {
      if ((BYTE9(v119) & 4) != 0 || (WORD6(v119) & 0x100) != 0 || v111 != *(&v110 + 1))
      {
        v11 = sub_10009CB9C(a1, a2, v122, &v110);
        if (v11)
        {
          break;
        }
      }

      v107 = 8;
      v106 = 160;
      if (tree_lookup(&unk_100108040, 0, 2, &v122, &v107, 8, &v110, &v106))
      {
        goto LABEL_16;
      }
    }

LABEL_7:
    v12 = v11;
    goto LABEL_105;
  }

LABEL_16:
  v105 = 8;
  v104 = 160;
  if (tree_lookup_min(&unk_100108040, 0, &v122, &v105, &v110, &v104))
  {
LABEL_17:
    *&v125 = 0;
    tree_key_count(&unk_100108040, 0, &v125);
    if (!v125)
    {
      sub_10009E6B0();
    }

    *v139 = 0;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    if (!tree_init_ext(&unk_100108130, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 0, 0, 0, double_uint64_key_compare))
    {
      tree_create(&unk_100108130, 0, 64);
    }

    if (memory_storage_register_tree(&unk_100108130, "dir stats repairs", sub_10009A514))
    {
      fsck_printf_warn("failed to register the dir stats repair tree in the fsck memory storage\n");
      fsck_fail_func(0x59C, 12);
    }

    if (qword_100108168)
    {
      LODWORD(v100) = 8;
      LODWORD(v136) = 160;
      if (tree_lookup_min(&unk_100108040, 0, v139, &v100, &v125, &v136))
      {
LABEL_26:
        v6 = &unk_100108000;
        v7 = &unk_100108000;
        if (qword_100108168)
        {
          if (byte_100108080 == 1)
          {
            byte_100108080 = 0;
            dir_stats_abort();
          }

          if (qword_100108078)
          {
            *&v125 = 0;
            tree_key_count(&unk_100108130, 0, &v125);
            v14 = v125;
            *&v125 = 0;
            tree_key_count(&unk_100108040, 0, &v125);
            if (v14 == v125)
            {
              *&v125 = v121;
              LODWORD(v123) = 16;
              *v139 = 0;
              v15 = tree_lookup(&unk_100108130, 0, 2, &v120, &v123, 16, &v137, v139);
              if (!v15)
              {
                *&v125 = v121;
                LODWORD(v100) = 8;
                LODWORD(v136) = 160;
                v15 = tree_lookup(&unk_100108040, 0, 0, &v125, &v100, 8, &v110, &v136);
              }

              v16 = 1;
LABEL_100:
              if (v15)
              {
LABEL_101:
                if (v15 == 2)
                {
                  v12 = 0;
                }

                else
                {
                  v12 = v15;
                }

                goto LABEL_105;
              }

              if ((v98 & 0x200) != 0)
              {
                v38 = &v100;
              }

              else
              {
                v38 = &v135;
              }

              if ((v98 & 0x200) != 0)
              {
                v39 = 12;
              }

              else
              {
                v39 = 8;
              }

              v97 = v96 ^ 1;
              while (1)
              {
                while (1)
                {
                  v135 = (v121 & 0xFFFFFFFFFFFFFFFLL | 0xA000000000000000);
                  v136 = v121;
                  v100 = v121 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
                  v101 = 18;
                  v127 = 0u;
                  v128 = 0u;
                  v125 = 0u;
                  v126 = 0u;
                  v124 = 0;
                  v123 = v121;
                  lookup_in_dir(a1, a2, qword_100108038, 3, 1u, sub_10009CF44, &v123);
                  if (v124)
                  {
                    goto LABEL_125;
                  }

                  v40 = " [reconstructed]";
                  if ((WORD6(v119) & 0x200) == 0)
                  {
                    v40 = &byte_1000B36A6;
                  }

                  fsck_printf_debug("\ndir-stats %llu (has dir-stats? %d)%s:\nflags: 0x%x\nchained-key: %llu (computed: %llu)\norigin-id: %llu (computed: %llu)\nshadow-key: %llu (exists? %d)\ndescendants: %llu (computed: %llu)\nSAF descendants: %llu\ndir-stats descendants: %llu\nphysical size: %llu (computed: %llu)\nresource fork size: %llu (computed: %llu)\nclone size: %llu (exists? %d; computed: %llu)\npurgeable size: %llu (exists? %d; computed: %llu)\npurgeable resource fork size: %llu (exists? %d; computed: %llu)\nhas calculating dir-stats? %d\norigin is SAF? %d (parent is SAF? %d)\norigin is purgeable? %d\n\n", v136, BYTE12(v119) & 1, v40, DWORD2(v119), *(&v110 + 1), v111, *(&v111 + 1), v112, v110, (WORD6(v119) >> 7) & 1, *(&v112 + 1), v113, *(&v118 + 1), v119, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), (WORD6(v119) >> 3) & 1, v116, *(&v116 + 1), (WORD6(v119) >> 5) & 1, v117, *(&v117 + 1), (WORD6(v119) >> 6) & 1, v118, (WORD6(v119) >> 1) & 1, (WORD6(v119) >> 2) & 1, (WORD6(v119) >> 10) & 1, (WORD6(v119) >> 4) & 1);
                  if ((BYTE12(v119) & 1) == 0 || v112 || v113)
                  {
                    break;
                  }

                  fsck_printf_warn("found orphan dir-stats object (id %llu)\n", v136);
                  fsck_fail_func(0x576, -8);
                  v11 = sub_10009E0DC(v99, 0, 0, v38, v39, 0, 0);
                  if (v11)
                  {
                    goto LABEL_7;
                  }

LABEL_125:
                  *&v125 = v121;
                  if ((v16 & 1) == 0)
                  {
                    goto LABEL_318;
                  }

LABEL_126:
                  LODWORD(v123) = 16;
                  *v139 = 0;
                  v15 = tree_lookup(&unk_100108130, 0, 2, &v120, &v123, 16, &v137, v139);
                  if (!v15)
                  {
                    *&v125 = v121;
                    LODWORD(v100) = 8;
                    LODWORD(v136) = 160;
                    v15 = tree_lookup(&unk_100108040, 0, 0, &v125, &v100, 8, &v110, &v136);
                  }

                  if (v15)
                  {
                    goto LABEL_101;
                  }
                }

                v41 = DWORD2(v119);
                if ((~DWORD2(v119) & 0x30) == 0)
                {
                  fsck_printf_warn("found dir-stats object (id %llu) that is both shadow and calculating\n", v136);
                  fsck_fail_func(0x573, 92);
                  v41 = DWORD2(v119);
                }

                if ((v41 & 0x120) != 0)
                {
                  goto LABEL_125;
                }

                if ((BYTE12(v119) & 1) == 0)
                {
                  v44 = &byte_1000B36A6;
                  if (v112)
                  {
                    v44 = "an origin and ";
                  }

                  fsck_printf_warn("missing dir-stats object (id %llu) referenced by %s%llu files / directories\n", v136, v44, v113);
                  fsck_fail_func(0x4E1, 92);
                  if ((v112 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v11 = sub_10009CFD0(a1, a2, v99, v38, &v110);
                    if (v11)
                    {
                      goto LABEL_7;
                    }
                  }

                  goto LABEL_314;
                }

                if ((v41 & 0x10) != 0)
                {
                  if ((v41 & 0x80) != 0)
                  {
                    if ((v98 & 0x200) == 0)
                    {
LABEL_338:
                      sub_10009E448();
                    }

                    fsck_printf_warn("shadow dir-stats object (id %llu) unexpectedly marked as having origin-id\n", v136);
                    fsck_fail_func(0x57D, -3);
                    DWORD2(v119) &= ~0x80u;
                    v45 = *(&v111 + 1);
                  }

                  else
                  {
                    v45 = *(&v111 + 1);
                    if (__PAIR128__(v112, *(&v111 + 1)) == 0)
                    {
                      goto LABEL_166;
                    }

                    if ((v98 & 0x200) == 0)
                    {
                      goto LABEL_338;
                    }
                  }

                  if (v45)
                  {
                    fsck_printf_warn("shadow dir-stats object (id %llu) unexpectedly has origin-id\n", v136);
                    fsck_fail_func(0x57E, -2);
                    *v139 = 0;
                    v11 = sub_10009E0DC(v99, 1, 4u, &v100, 0xCu, v139, 8u);
                    if (v11)
                    {
                      goto LABEL_7;
                    }
                  }

                  if (v112)
                  {
                    fsck_printf_warn("found shadow dir-stats object (id %llu) with origin (id %llu)\n", v136, v112);
                    fsck_fail_func(0x572, -2);
                  }
                }

                else
                {
                  if ((v41 & 0x80) != 0)
                  {
                    if (*(&v111 + 1) && v112 == *(&v111 + 1))
                    {
                      goto LABEL_166;
                    }

                    if ((v98 & 0x200) == 0)
                    {
                      sub_10009E474();
                    }

                    if ((v112 - 1) > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      if (!*(&v111 + 1))
                      {
                        fsck_printf_warn("dir-stats object (id %llu) unexpectedly marked as having origin-id\n", v136);
                        fsck_fail_func(0x579, -3);
                        DWORD2(v119) &= ~0x80u;
                      }

                      goto LABEL_166;
                    }

                    if (v112 == *(&v111 + 1))
                    {
                      goto LABEL_166;
                    }

                    fsck_printf_warn("origin_id (%llu) of dir-stats object (id %llu) is not as expected (%llu)\n", *(&v111 + 1), v136, v112);
                    v43 = 1400;
                  }

                  else
                  {
                    if (v112)
                    {
                      v42 = *(&v111 + 1) == 0;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    if (v42 || !v112 || !*(&v111 + 1))
                    {
                      goto LABEL_166;
                    }

                    if ((v98 & 0x200) == 0)
                    {
                      sub_10009E684();
                    }

                    fsck_printf_warn("dir-stats object (id %llu) unexpectedly unmarked as having origin-id\n", v136);
                    fsck_fail_func(0x57A, -3);
                    DWORD2(v119) |= 0x80u;
                    if ((v112 - 1) > 0xFFFFFFFFFFFFFFFDLL || *(&v111 + 1) == v112)
                    {
                      goto LABEL_166;
                    }

                    fsck_printf_warn("origin_id (%llu) of dir-stats object (id %llu) is not as expected (%llu)\n", *(&v111 + 1), v136, v112);
                    v43 = 1407;
                  }

                  fsck_fail_func(v43, -2);
                  v11 = sub_10009E0DC(v99, 1, 4u, &v100, 0xCu, &v112, 8u);
                  if (v11)
                  {
                    goto LABEL_7;
                  }
                }

LABEL_166:
                if (((((BYTE8(v119) & 0x10) == 0) ^ ((BYTE12(v119) & 2) >> 1)) & 1) == 0)
                {
                  if ((BYTE8(v119) & 0x10) != 0)
                  {
                    fsck_printf_warn("found shadow dir-stats object (id %llu) but did not find its calculating dir-stats (%llu)\n", v136, *(&v110 + 1));
                    v46 = 1396;
                  }

                  else
                  {
                    fsck_printf_warn("found non-shadow dir-stats object (id %llu) that has calculating dir-stats\n", v136);
                    v46 = 1408;
                  }

                  fsck_fail_func(v46, 92);
                }

                v47 = BYTE8(v119);
                if ((BYTE8(v119) & 0x20) != 0)
                {
                  sub_10009E4A0();
                }

                if (v110)
                {
                  fsck_printf_warn("found shadow key (%llu) on non-calculating dir-stats object (id %llu)\n", v110, v136);
                  fsck_fail_func(0x575, -2);
                  v139[0] = 2;
                  v11 = sub_10009E0DC(v99, 1, 6u, v38, v39, v139, 1u);
                  if (v11)
                  {
                    goto LABEL_7;
                  }

                  v47 = BYTE8(v119);
                }

                if ((v47 & 0x12) == 2 && (BYTE12(v119) & 4) == 0)
                {
                  fsck_printf_warn("dir-stats object (id %llu) is SAF, but its origin isn't\n", v136);
                  fsck_fail_func(0x52F, 92);
                  v47 = BYTE8(v119);
                }

                if ((v47 & 2) == 0)
                {
                  v48 = WORD6(v119);
                  if ((BYTE12(v119) & 4) == 0)
                  {
                    if (v119)
                    {
                      goto LABEL_208;
                    }

                    v49 = *(&v118 + 1);
                    if (!*(&v118 + 1))
                    {
                      goto LABEL_208;
                    }

                    if ((v98 & 0x200) == 0)
                    {
                      goto LABEL_337;
                    }

                    goto LABEL_188;
                  }
                }

                v50 = v113;
                v49 = *(&v118 + 1);
                if (v113 == *(&v118 + 1))
                {
                  goto LABEL_208;
                }

                if ((v98 & 0x200) == 0)
                {
LABEL_337:
                  sub_10009E4CC();
                }

                if ((v47 & 2) == 0)
                {
                  v48 = WORD6(v119);
LABEL_188:
                  if ((v48 & 4) == 0)
                  {
                    if ((v48 & 0x200) != 0)
                    {
                      goto LABEL_208;
                    }

                    fsck_printf_warn("SAF descendants (%llu) of dir-stats object (id %llu) is greater than expected (0)\n", v49, v136);
                    fsck_fail_func(0x59B, 92);
                    v51 = DWORD2(v119);
                    if (v113 >= 1 && *(&v118 + 1) == v113)
                    {
                      DWORD2(v119) |= 2u;
                      if ((v112 - 1) > 0xFFFFFFFFFFFFFFFDLL)
                      {
                        goto LABEL_208;
                      }

                      v11 = inode_repair_set_internal_flags(v99, v112, 0x20000000);
                      if (v11)
                      {
                        goto LABEL_7;
                      }

                      v52 = 1;
                      goto LABEL_206;
                    }

LABEL_207:
                    DWORD2(v119) = v51 | 0x100;
                    goto LABEL_208;
                  }

                  v50 = v113;
                }

                v53 = "greater";
                if (v49 < v50)
                {
                  v53 = "less";
                }

                fsck_printf_warn("SAF descendants (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v49, v136, v53, v50);
                fsck_fail_func(0x530, 92);
                v51 = DWORD2(v119);
                if (v113 < 1 || *(&v118 + 1))
                {
                  goto LABEL_207;
                }

                if ((BYTE8(v119) & 2) != 0)
                {
                  DWORD2(v119) &= ~2u;
                }

                if ((BYTE12(v119) & 4) != 0 && (v112 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v11 = inode_repair_clear_internal_flags(v99, v112, 0x20000000);
                  if (v11)
                  {
                    goto LABEL_7;
                  }

                  v52 = -1;
LABEL_206:
                  *(&v125 + 1) = v52;
                }

LABEL_208:
                if (v113 != *(&v112 + 1))
                {
                  v54 = "greater";
                  if (*(&v112 + 1) < v113)
                  {
                    v54 = "less";
                  }

                  fsck_printf_warn("descendants (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v112 + 1), v136, v54, v113);
                  fsck_fail_func(0x4E2, 92);
                  v11 = sub_10009E0DC(v99, 1, 2u, v38, v39, &v113, 8u);
                  if (v11)
                  {
                    goto LABEL_7;
                  }
                }

                if (v114 != *(&v113 + 1))
                {
                  v55 = "greater";
                  if (*(&v113 + 1) < v114)
                  {
                    v55 = "less";
                  }

                  fsck_printf_warn("physical_size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v113 + 1), v136, v55, v114);
                  fsck_fail_func(0x4E3, 92);
                  v11 = sub_10009E0DC(v99, 1, 5u, v38, v39, &v114, 8u);
                  if (v11)
                  {
                    goto LABEL_7;
                  }
                }

                if (!(((BYTE12(v119) & 8) == 0) | v97 & 1))
                {
                  fsck_printf_debug("skipping dir stats clone sizes repair because the clone mapping repairs were aborted\n");
                  goto LABEL_225;
                }

                if ((BYTE12(v119) & 8) != 0 && (*(&v115 + 1) & 0x8000000000000000) != 0)
                {
                  fsck_printf_warn("skipping dir stats clone sizes repair: present clone size %llu > %llu\n", *(&v115 + 1), 0x7FFFFFFFFFFFFFFFLL);
                  v56 = 1417;
                  v57 = 84;
LABEL_224:
                  fsck_fail_func(v56, v57);
                  goto LABEL_225;
                }

                if ((BYTE12(v119) & 8) != 0 && (v116 & 0x8000000000000000) != 0)
                {
                  fsck_printf_debug("skipping dir stats clone sizes repair because the computed clone size is negative\n");
                  v56 = 1418;
                  v57 = 92;
                  goto LABEL_224;
                }

                if ((BYTE12(v119) & 8) != 0 && (BYTE8(v119) & 4) != 0)
                {
                  goto LABEL_272;
                }

                if (!(BYTE12(v119) & 8 | BYTE8(v119) & 4))
                {
                  goto LABEL_225;
                }

                if ((BYTE8(v119) & 4) != 0)
                {
                  if ((BYTE12(v119) & 8) != 0)
                  {
LABEL_272:
                    if (v116 == *(&v115 + 1))
                    {
                      goto LABEL_225;
                    }

                    v80 = "greater";
                    if (*(&v115 + 1) < v116)
                    {
                      v80 = "less";
                    }

                    fsck_printf_warn("clone size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v115 + 1), v136, v80, v116);
                    v81 = 1380;
                    v82 = 92;
                  }

                  else
                  {
                    fsck_printf_warn("clone size xfield is missing from dir-stats object (id %llu)\n", v136);
                    v81 = 1379;
                    v82 = -3;
                  }

                  fsck_fail_func(v81, v82);
                  if ((v98 & 0x200) == 0)
                  {
                    sub_10009E4F8();
                  }

                  *v139 = 524289;
                  *&v139[4] = v116;
                  v83 = &v100;
                  v84 = v99;
                  v85 = 8;
                  v86 = 12;
                  v87 = 12;
                  goto LABEL_278;
                }

                if ((BYTE12(v119) & 8) == 0)
                {
                  goto LABEL_225;
                }

                fsck_printf_warn("clone size xfield of dir-stats object (id %llu) exists unexpectedly\n", v136);
                fsck_fail_func(0x562, -3);
                v139[0] = 1;
                v84 = v99;
                v85 = 6;
                v83 = v38;
                v86 = v39;
                v87 = 1;
LABEL_278:
                v11 = sub_10009E0DC(v84, 1, v85, v83, v86, v139, v87);
                if (v11)
                {
                  goto LABEL_7;
                }

LABEL_225:
                v58 = BYTE8(v119);
                if ((WORD4(v119) & 0x800) != 0)
                {
                  if ((~DWORD2(v119) & 9) == 0 && (BYTE12(v119) & 0x40) != 0 && v118 == *(&v117 + 1))
                  {
                    goto LABEL_244;
                  }

                  if ((BYTE8(v119) & 8) == 0)
                  {
                    fsck_printf_warn("purgeable resource forks are maintained on dir-stats object (id %llu) but not purgeable data forks\n", v136);
                    fsck_fail_func(0x5AF, -3);
                    v58 = BYTE8(v119) | 8;
                    DWORD2(v119) |= 8u;
                  }

                  if ((v58 & 1) == 0)
                  {
                    fsck_printf_warn("purgeable resource forks are maintained on dir-stats object (id %llu) but not rsrc forks\n", v136);
                    fsck_fail_func(0x5B0, -3);
                    DWORD2(v119) |= 1u;
                  }

                  if ((BYTE12(v119) & 0x40) != 0)
                  {
                    if (v118 == *(&v117 + 1))
                    {
                      goto LABEL_244;
                    }

                    v66 = "greater";
                    if (*(&v117 + 1) < v118)
                    {
                      v66 = "less";
                    }

                    fsck_printf_warn("purgeable resource fork size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v117 + 1), v136, v66, v118);
                    v64 = 1458;
                    v65 = 92;
                  }

                  else
                  {
                    fsck_printf_warn("purgeable resource fork size xfield is missing from dir-stats object (id %llu)\n", v136);
                    v64 = 1457;
                    v65 = -3;
                  }

                  fsck_fail_func(v64, v65);
                  if ((v98 & 0x200) == 0)
                  {
                    sub_10009E524();
                  }

                  *v139 = 524292;
                  *&v139[4] = v118;
                  v61 = &v100;
                  v59 = v99;
                  v60 = 8;
                  v62 = 12;
                  v63 = 12;
                }

                else
                {
                  if ((BYTE12(v119) & 0x40) == 0)
                  {
                    goto LABEL_244;
                  }

                  fsck_printf_warn("purgeable resource fork size xfield of dir-stats object (id %llu) exists unexpectedly\n", v136);
                  fsck_fail_func(0x5B3, -3);
                  v139[0] = 4;
                  v59 = v99;
                  v60 = 6;
                  v61 = v38;
                  v62 = v39;
                  v63 = 1;
                }

                v11 = sub_10009E0DC(v59, 1, v60, v61, v62, v139, v63);
                if (v11)
                {
                  goto LABEL_7;
                }

LABEL_244:
                v67 = BYTE8(v119);
                if ((BYTE8(v119) & 0x50) != 0x40)
                {
                  goto LABEL_253;
                }

                if ((BYTE8(v119) & 8) != 0)
                {
                  if ((BYTE12(v119) & 0x10) != 0)
                  {
LABEL_253:
                    v69 = BYTE8(v119);
                    goto LABEL_254;
                  }

                  if ((v98 & 0x200) == 0)
                  {
LABEL_339:
                    sub_10009E658();
                  }
                }

                else
                {
                  if ((v98 & 0x200) == 0)
                  {
                    goto LABEL_339;
                  }

                  fsck_printf_warn("dir-stats object (id %llu) is purgeable, but it doesn't track purgeable size\n", v136);
                  fsck_fail_func(0x568, 92);
                }

                if ((v112 - 1) > 0xFFFFFFFFFFFFFFFDLL || (BYTE12(v119) & 0x10) != 0)
                {
                  v68 = DWORD2(v119);
                  v69 = BYTE8(v119);
                  if ((v67 & 8) != 0)
                  {
                    goto LABEL_254;
                  }
                }

                else
                {
                  fsck_printf_warn("dir-stats object (id %llu) is purgeable, but its origin isn't\n", v136);
                  fsck_fail_func(0x569, 92);
                  v68 = DWORD2(v119);
                }

                v69 = v68 & 0xBF;
                DWORD2(v119) = v68 & 0xFFFFFFBF;
                if ((v114 - v117) < 0)
                {
                  sub_10009E62C();
                }

                *&v128 = v117 - v114;
                if ((v68 & 0x800) != 0)
                {
                  if ((v115 - v118) < 0)
                  {
                    sub_10009E550();
                  }

                  *(&v128 + 1) = v118 - v115;
                }

LABEL_254:
                if ((v69 & 8) != 0 && (BYTE12(v119) & 0x20) != 0)
                {
                  v70 = *(&v116 + 1);
                  v71 = v117;
                  if (v117 == *(&v116 + 1))
                  {
                    goto LABEL_285;
                  }

                  goto LABEL_257;
                }

                if (!(v69 & 8 | BYTE12(v119) & 0x20))
                {
                  goto LABEL_285;
                }

                if ((v69 & 8) != 0)
                {
                  if ((BYTE12(v119) & 0x20) == 0)
                  {
                    fsck_printf_warn("purgeable size xfield is missing from dir-stats object (id %llu)\n", v136);
                    v73 = 1387;
                    v74 = -3;
LABEL_282:
                    fsck_fail_func(v73, v74);
                    if ((v98 & 0x200) == 0)
                    {
                      sub_10009E57C();
                    }

                    *v139 = 524291;
                    *&v139[4] = v117;
                    v77 = &v100;
                    v75 = v99;
                    v76 = 8;
                    v78 = 12;
                    v79 = 12;
                    goto LABEL_284;
                  }

                  v70 = *(&v116 + 1);
                  v71 = v117;
LABEL_257:
                  if (v71 == v70)
                  {
                    goto LABEL_285;
                  }

                  v72 = "greater";
                  if (v70 < v71)
                  {
                    v72 = "less";
                  }

                  fsck_printf_warn("purgeable size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", v70, v136, v72, v71);
                  v73 = 1388;
                  v74 = 92;
                  goto LABEL_282;
                }

                if ((BYTE12(v119) & 0x20) == 0)
                {
                  goto LABEL_285;
                }

                fsck_printf_warn("purgeable size xfield of dir-stats object (id %llu) exists unexpectedly\n", v136);
                fsck_fail_func(0x56A, -3);
                v139[0] = 3;
                v75 = v99;
                v76 = 6;
                v77 = v38;
                v78 = v39;
                v79 = 1;
LABEL_284:
                v11 = sub_10009E0DC(v75, 1, v76, v77, v78, v139, v79);
                if (v11)
                {
                  goto LABEL_7;
                }

LABEL_285:
                if (BYTE8(v119))
                {
                  if (v115 == *(&v114 + 1))
                  {
                    goto LABEL_295;
                  }

                  if ((v98 & 0x200) == 0)
                  {
LABEL_336:
                    sub_10009E5A8();
                  }

                  v89 = "greater";
                  if (*(&v114 + 1) < v115)
                  {
                    v89 = "less";
                  }

                  fsck_printf_warn("resource fork size (%llu) of dir-stats object (id %llu) is %s than expected (%llu)\n", *(&v114 + 1), v136, v89, v115);
                  fsck_fail_func(0x558, 92);
                  v88 = &v115;
                }

                else
                {
                  if (!*(&v114 + 1))
                  {
                    goto LABEL_295;
                  }

                  if ((v98 & 0x200) == 0)
                  {
                    goto LABEL_336;
                  }

                  fsck_printf_warn("resource fork size (%llu) of dir-stats object (id %llu) exists unexpectedly\n", *(&v114 + 1), v136);
                  fsck_fail_func(0x566, 92);
                  *v139 = 0;
                  v88 = v139;
                }

                v11 = sub_10009E0DC(v99, 1, 7u, &v100, 0xCu, v88, 8u);
                if (v11)
                {
                  goto LABEL_7;
                }

LABEL_295:
                if ((WORD4(v119) & 0x400) != 0)
                {
                  v90 = *(&v110 + 1);
                  v91 = v111;
                }

                else
                {
                  v90 = *(&v110 + 1);
                  v91 = v111;
                  if ((WORD6(v119) & 0x100) == 0 && v111 == *(&v110 + 1))
                  {
                    if (v41 != DWORD2(v119))
                    {
                      if ((v98 & 0x200) == 0)
                      {
                        goto LABEL_348;
                      }

LABEL_312:
                      v11 = sub_10009E0DC(v99, 1, 3u, &v100, 0xCu, &v119 + 8, 4u);
                      if (v11)
                      {
                        goto LABEL_7;
                      }

                      v11 = tree_insert(&unk_100108040, 0, &v136, 8, &v110, 160);
                      if (v11)
                      {
                        goto LABEL_7;
                      }

                      goto LABEL_314;
                    }

                    goto LABEL_314;
                  }
                }

                fsck_printf_warn("found dir-stats object (id %llu; flags 0x%x) with bad chained key (%llu/%llu)\n", v136, DWORD2(v119), v90, v91);
                fsck_fail_func(0x591, 92);
                if (*(&v110 + 1) != v111)
                {
                  v11 = sub_10009E0DC(v99, 1, 1u, v38, v39, &v111, 8u);
                  if (v11)
                  {
                    goto LABEL_7;
                  }
                }

                v92 = DWORD2(v119);
                if ((WORD4(v119) & 0x400) != 0)
                {
                  if ((v98 & 0x200) == 0)
                  {
                    sub_10009E5D4();
                  }

                  v92 = DWORD2(v119) & 0xFFFFFBFF;
                }

                else if ((v98 & 0x200) == 0)
                {
                  if (v41 != DWORD2(v119))
                  {
LABEL_348:
                    sub_10009E600();
                  }

                  goto LABEL_314;
                }

                DWORD2(v119) = v92 | 0x100;
                v11 = sub_10009D4B0(a1, a2, v99, v136, v111);
                if (v11)
                {
                  goto LABEL_7;
                }

                if (v41 != DWORD2(v119))
                {
                  goto LABEL_312;
                }

LABEL_314:
                if (v16)
                {
                  v11 = sub_10009D778(&v110, &v125);
                  if (v11)
                  {
                    goto LABEL_7;
                  }

                  *&v125 = v121;
                  goto LABEL_126;
                }

                *&v125 = v121;
LABEL_318:
                LODWORD(v135) = 8;
                v138 = 160;
                v15 = tree_lookup(&unk_100108040, 0, 2, &v125, &v135, 8, &v110, &v138);
                v120 = v119;
                v121 = v125;
                if (v15)
                {
                  goto LABEL_101;
                }
              }
            }
          }
        }
      }

      else
      {
        while (1)
        {
          v123 = v134;
          v124 = *v139;
          v13 = tree_insert(&unk_100108130, 0, &v123, 16, &v137, 0);
          if (v13)
          {
            break;
          }

          LODWORD(v135) = 8;
          v138 = 160;
          if (tree_lookup(&unk_100108040, 0, 2, v139, &v135, 8, &v125, &v138))
          {
            goto LABEL_26;
          }
        }

        v36 = v13;
        fsck_printf_warn("failed to insert dir-stats entry %llu into the repair tree\n", *v139);
        fsck_fail_func(0x59F, v36);
        tree_destroy(&unk_100108130, 0);
        v6 = &unk_100108000;
        v7 = &unk_100108000;
      }
    }

    else
    {
      fsck_printf_warn("failed to init the dir stats repair tree\n");
      fsck_fail_func(0x59E, 12);
    }

    if (v6[128] == 1)
    {
      v6[128] = 0;
      dir_stats_abort();
    }

    if (v7[15])
    {
      if (qword_100108168)
      {
        sub_10009E41C();
      }

      *&v125 = v121;
      LODWORD(v135) = 8;
      v138 = 160;
      v15 = tree_lookup(&unk_100108040, 0, 2, &v125, &v135, 8, &v110, &v138);
      v16 = 0;
      v120 = v119;
      v121 = v125;
      goto LABEL_100;
    }

LABEL_104:
    v12 = 0;
    goto LABEL_105;
  }

  while (1)
  {
    if (BYTE12(v119))
    {
      goto LABEL_91;
    }

    v17 = v122;
    *v139 = v122;
    v18 = a2[6];
    if (!v18)
    {
      v18 = a2[5];
    }

    v19 = a1;
    v20 = *(v18 + 56);
    v100 = v122 & 0xFFFFFFFFFFFFFFFLL | 0xA000000000000000;
    v123 = v122 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    v21 = (v20 & 0x200) != 0 ? 18 : 10;
    LODWORD(v124) = 18;
    v22 = (v20 & 0x200) != 0 ? &v123 : &v100;
    v23 = (v20 & 0x200) != 0 ? 12 : 8;
    v138 = v23;
    v125 = 0u;
    v126 = 0u;
    if ((v20 & 0x200) != 0)
    {
      v26 = 3808;
      v27 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xB471C2A6uLL);
      if (!v27)
      {
        fsck_printf_err("failed to allocate memory for dir-stats lookup\n");
        v12 = 12;
        fsck_fail_func(0x560, 12);
        v24 = 0;
        goto LABEL_332;
      }

      v25 = v27;
      v24 = v27;
    }

    else
    {
      v24 = 0;
      v25 = &v125;
      v26 = 32;
    }

    v137 = v26;
    v136 = 0;
    tree_for_jobj = get_tree_for_jobj(v19, a2, v21, &v136);
    if (tree_for_jobj)
    {
      break;
    }

    v29 = tree_lookup(v136, qword_100108038, 0, v22, &v138, v23, v25, &v137);
    if (v29)
    {
      v12 = v29;
      a1 = v19;
      v7 = &unk_100108000;
      if (v29 != 2)
      {
        v94 = strerror(v29);
        fsck_printf_err("failed to look up dir-stats object (id %llu): %s\n", v17, v94);
        v95 = 1247;
        goto LABEL_331;
      }

      goto LABEL_89;
    }

    WORD6(v119) |= 1u;
    a1 = v19;
    v7 = &unk_100108000;
    if ((v20 & 0x200) == 0)
    {
      v30 = *(&v125 + 1);
      v31 = __OFADD__(v113, v125);
      *(&v112 + 1) = v125;
      *&v113 = v113 + v125;
      *(&v113 + 1) = *(&v125 + 1);
      if (v31)
      {
        fsck_printf_warn("dir-stats object (id %llu): %s overflow\n", v17, "descendants");
        *&v113 = 0x7FFFFFFFFFFFFFFFLL;
        fsck_fail_func(0x56D, 84);
        v30 = *(&v125 + 1);
      }

      v31 = __OFADD__(v114, v30);
      *&v114 = v114 + v30;
      if (v31)
      {
        fsck_printf_warn("dir-stats object (id %llu): %s overflow\n", v17, "physical size");
        *&v114 = 0x7FFFFFFFFFFFFFFFLL;
        fsck_fail_func(0x56D, 84);
      }

      *&v112 = -1;
      goto LABEL_88;
    }

    DWORD2(v119) = *(v24 + 12);
    v32 = ((DWORD2(v119) >> 4) & 1) - 1;
    if (v24[3])
    {
      v32 = v24[3];
    }

    *(&v111 + 1) = v24[3];
    *&v112 = v32;
    v33 = v24[1];
    v31 = __OFADD__(v113, *v24);
    v34 = v113 + *v24;
    *(&v112 + 1) = *v24;
    *&v113 = v34;
    *(&v113 + 1) = v33;
    if (v31)
    {
      fsck_printf_warn("dir-stats object (id %llu): %s overflow\n", v17, "descendants");
      *&v113 = 0x7FFFFFFFFFFFFFFFLL;
      fsck_fail_func(0x56D, 84);
      v33 = v24[1];
    }

    v31 = __OFADD__(v114, v33);
    *&v114 = v114 + v33;
    if (v31)
    {
      fsck_printf_warn("dir-stats object (id %llu): %s overflow\n", v17, "physical size");
      *&v114 = 0x7FFFFFFFFFFFFFFFLL;
      fsck_fail_func(0x56D, 84);
    }

    v35 = WORD4(v119);
    if (BYTE8(v119))
    {
      *(&v114 + 1) = v24[2];
      sub_10009A93C(&v115, *(&v114 + 1), v17, "resource fork size");
      v35 = WORD4(v119);
      if ((BYTE8(v119) & 4) != 0)
      {
LABEL_75:
        v135 = 0;
        if (!get_xfield(v24 + 26, v137 - 52, 1, &v135, 0, 0, 0))
        {
          WORD6(v119) |= 8u;
          *(&v115 + 1) = *v135;
          sub_10009A93C(&v116, *(&v115 + 1), *v139, "clone size");
        }

        v35 = WORD4(v119);
        if ((BYTE8(v119) & 8) == 0)
        {
          goto LABEL_82;
        }

LABEL_78:
        v135 = 0;
        if (!get_xfield(v24 + 26, v137 - 52, 3, &v135, 0, 0, 0))
        {
          WORD6(v119) |= 0x20u;
          *(&v116 + 1) = *v135;
          sub_10009A93C(&v117, *(&v116 + 1), *v139, "purgeable size");
        }

        v35 = WORD4(v119);
        if ((BYTE8(v119) & 0x40) != 0)
        {
          WORD6(v119) |= 0x10u;
        }

        goto LABEL_82;
      }
    }

    else if ((BYTE8(v119) & 4) != 0)
    {
      goto LABEL_75;
    }

    if ((v35 & 8) != 0)
    {
      goto LABEL_78;
    }

LABEL_82:
    if ((v35 & 0x800) != 0)
    {
      v135 = 0;
      if (!get_xfield(v24 + 26, v137 - 52, 4, &v135, 0, 0, 0))
      {
        WORD6(v119) |= 0x40u;
        *(&v117 + 1) = *v135;
        sub_10009A93C(&v118, *(&v117 + 1), *v139, "purgeable rsrc size");
      }

      LOBYTE(v35) = BYTE8(v119);
    }

    if ((v35 & 2) != 0)
    {
      WORD6(v119) |= 4u;
      sub_10009A93C(&v118 + 8, *v24, *v139, "SAF descendants");
    }

LABEL_88:
    WORD6(v119) |= 0x200u;
    v11 = tree_insert(&unk_100108040, 0, v139, 8, &v110, 160);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_89:
    free(v24);
    v6 = &unk_100108000;
    if ((BYTE12(v119) & 1) == 0)
    {
      v11 = sub_10009CB9C(a1, a2, v122, &v110);
      if (v11)
      {
        goto LABEL_7;
      }
    }

LABEL_91:
    v103 = 8;
    v102 = 160;
    if (tree_lookup(&unk_100108040, 0, 2, &v122, &v103, 8, &v110, &v102))
    {
      goto LABEL_17;
    }
  }

  v12 = tree_for_jobj;
  v93 = strerror(tree_for_jobj);
  fsck_printf_err("failed to get fsroot tree for jobj type %d: %s\n", v21, v93);
  v95 = 1447;
LABEL_331:
  fsck_fail_func(v95, v12);
LABEL_332:
  free(v24);
LABEL_105:
  dir_stats_abort();
  return v12;
}

uint64_t sub_10009C810()
{
  if (!qword_100108088)
  {
    return 0;
  }

  v40 = 0;
  v41 = 0;
  v0 = xmmword_100108090;
  result = sub_10009D8B0(&xmmword_100108090, &v41, &v40);
  if (result)
  {
    return result;
  }

  v2 = v40;
  v3 = v41;
  if (!v41 && !v0 && v40 == 0)
  {
    v5 = 0;
LABEL_10:
    result = sub_10009DFB4(v2, v5);
    if (!result)
    {
      result = sub_10009DB74(qword_100108088, &xmmword_100108090);
      if (!result)
      {
        qword_100108088 = 0;
      }
    }

    return result;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  __s2 = 0u;
  v27 = 0u;
  v24 = 160;
  v25 = 8;
  result = tree_lookup(&unk_100108040, 0, 0, &qword_100108088, &v25, 8, &v30, &v24);
  if (result)
  {
    return result;
  }

  if (qword_1001080A0)
  {
    v6 = v31 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (qword_1001080C0 < v33)
  {
    sub_10009E810();
  }

  if (*(&xmmword_100108110 + 1) < *(&v38 + 1))
  {
    sub_10009E7E4();
  }

  if (qword_100108120 < v39)
  {
    sub_10009E7B8();
  }

  if (qword_1001080D0 < v34)
  {
    sub_10009E78C();
  }

  if (qword_1001080E0 < v35)
  {
    sub_10009E760();
  }

  if (qword_100108100 < v37)
  {
    sub_10009E734();
  }

  if (xmmword_100108110 < v38)
  {
    sub_10009E708();
  }

  if (qword_1001080F0 < v36)
  {
    sub_10009E6DC();
  }

  v8 = (qword_1001080B0 - 1) < 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    v9 = (word_10010812C >> 2) & 1;
  }

  else
  {
    v8 = (qword_1001080B0 - 1) < 0xFFFFFFFFFFFFFFFELL && (v32 + 1) < 2;
    v9 = ((BYTE12(v39) & 4) == 0) & (word_10010812C >> 2);
  }

  sub_10009D950(&v30, v7, word_10010812C & (BYTE12(v39) ^ 1) & 1, v8, v9, &__s2);
  if (!v0)
  {
    goto LABEL_59;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  if (xmmword_100108090)
  {
    v11 = v30 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  sub_10009D950(&v30, v12, 0, 0, 0, v14);
  result = sub_10009D810(v0, v16);
  if (!result)
  {
    if (v12)
    {
      v15 = v15 - v23 - (BYTE12(v23) & 1);
    }

    sub_10009DA78(v0, v16, v14);
    if (word_10010812C)
    {
      WORD6(v23) |= 2u;
    }

    result = sub_10009DB74(v0, v16);
    if (((result == 0) & v7) != 1)
    {
      if (result)
      {
        return result;
      }

      goto LABEL_59;
    }

    *&__s2 = v17 + v8;
    *(&__s2 + 1) = *(&v22 + 1) + v9;
    v13 = v19;
    *(&v27 + 1) = v18;
    *&v28 = v19;
    *(&v28 + 1) = v20;
    if ((BYTE8(v23) & 0x40) != 0)
    {
      *&v29 = v18;
      if ((WORD4(v23) & 0x800) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      *&v29 = v21;
      if ((WORD4(v23) & 0x800) != 0)
      {
        v13 = v22;
LABEL_58:
        *(&v29 + 1) = v13;
      }
    }

LABEL_59:
    result = sub_10009DDFC(v3, &__s2);
    if (result)
    {
      return result;
    }

    v5 = v27;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10009CB9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  if ((~*(a4 + 152) & 0x410) == 0 && (*(a4 + 156) & 0x100) == 0)
  {
    LODWORD(v7) = 0;
    v8 = *(a4 + 8);
    v45 = v8;
    goto LABEL_9;
  }

  v9 = *(a4 + 32);
  if ((v9 + 1) <= 1)
  {
    v9 = *(a4 + 24);
  }

  if ((v9 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v45 = 0;
  if (v9 == 2)
  {
    v8 = 0;
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v38 = 0;
  v49 = v9 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v48 = 8;
  v26 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x4642D9C4uLL);
  v47 = 3808;
  if (!v26)
  {
    fsck_printf_err("unable to allocate memory to repair dir-stats chained key\n");
    v25 = 12;
    v28 = 1430;
    v29 = 12;
    goto LABEL_22;
  }

  tree_for_jobj = get_tree_for_jobj(a1, a2, 3u, &v38);
  if (tree_for_jobj)
  {
    v25 = tree_for_jobj;
    fsck_printf_err("failed to init fsroot tree to repair dir-stats chained key\n");
    v28 = 1431;
LABEL_20:
    v29 = v25;
LABEL_22:
    fsck_fail_func(v28, v29);
    free(v26);
    return v25;
  }

  v30 = tree_lookup(v38, qword_100108038, 0, &v49, &v48, 8, v26, &v47);
  if (v30)
  {
    v25 = v30;
    if (v30 == 2)
    {
      free(v26);
      return 0;
    }

    v35 = strerror(v30);
    fsck_printf_err("unable to load inode (id %llu) to repair dir-stats chained key: %s\n", v9, v35);
    fsck_fail_func(0x598, v25);
    LOBYTE(v7) = 0;
    goto LABEL_33;
  }

  v32 = *v26;
  v49 = *v26 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v47 = 3808;
  v33 = tree_lookup(v38, qword_100108038, 0, &v49, &v48, v48, v26, &v47);
  if (v33)
  {
    v25 = v33;
    v34 = strerror(v33);
    fsck_printf_err("unable to load inode (id %llu) to repair dir-stats chained key: %s\n", v32, v34);
    v28 = 1433;
    goto LABEL_20;
  }

  v7 = (v26[6] >> 29) & 1;
  inode_64bit_xfield = get_inode_64bit_xfield(v26, v47, 10, &v45);
  if (inode_64bit_xfield == 2)
  {
    v8 = 0;
    v45 = 0;
  }

  else
  {
    v25 = inode_64bit_xfield;
    if (inode_64bit_xfield)
    {
      v37 = strerror(inode_64bit_xfield);
      fsck_printf_err("unable to get dir-stats key of inode (id %llu) to repair dir-stats chained key: %s\n", v32, v37);
      fsck_fail_func(0x59A, v25);
LABEL_33:
      free(v26);
      if (v25)
      {
        return v25;
      }

LABEL_10:
      if (v7)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v8 = v45;
  }

  free(v26);
LABEL_9:
  if (v8 == *(a4 + 16))
  {
    goto LABEL_10;
  }

  v11 = -*(a4 + 136) - ((*(a4 + 156) >> 2) & 1);
  v12 = ~*(a4 + 144);
  v13 = -*(a4 + 64);
  v14 = -*(a4 + 80);
  v15 = -*(a4 + 96);
  v16 = -*(a4 + 112);
  v17 = -*(a4 + 128);
  v38 = ~*(a4 + 48);
  v39.i64[0] = v11;
  v39.i64[1] = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v10 = sub_10009D778(a4, &v38);
  if (!v10)
  {
    *(a4 + 16) = v45;
    v18 = (*(a4 + 156) >> 2) & 1;
    v19 = *(a4 + 64);
    v20 = *(a4 + 80);
    v21 = *(a4 + 96);
    v22 = *(a4 + 112);
    v23 = *(a4 + 128);
    v38 = *(a4 + 48) + 1;
    v24 = vdupq_n_s64(1uLL);
    v24.i64[0] = v18;
    v39 = vaddq_s64(*(a4 + 136), v24);
    v40 = v19;
    v41 = v20;
    v42 = v21;
    v43 = v22;
    v44 = v23;
    v10 = sub_10009D778(a4, &v38);
    if (!v10)
    {
      if (!v7)
      {
LABEL_12:
        v10 = tree_insert(&unk_100108040, 0, &v46, 8, a4, 160);
        if (!v10)
        {
          return 0;
        }

        return v10;
      }

LABEL_11:
      *(a4 + 156) |= 0x400u;
      goto LABEL_12;
    }
  }

  return v10;
}

uint64_t sub_10009CF44(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = (a4 & 0xFFFFFFFC) == 0x5C || (*(a3 + 48) & 2) == 0;
  if (v7)
  {
    return 0;
  }

  v10[3] = v5;
  v10[4] = v6;
  v10[0] = 0;
  LODWORD(result) = get_inode_64bit_xfield(a3, a4, 10, v10);
  if (result)
  {
    if (result == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    v7 = v10[0] == *a5;
    *(a5 + 8) = v7;
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10009CFD0(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (*(a5 + 156))
  {
    sub_10009E868();
  }

  if ((*(a5 + 32) + 1) <= 1)
  {
    sub_10009E83C();
  }

  v9 = a2[6];
  v10 = v9;
  if (!v9)
  {
    v10 = a2[5];
  }

  if ((*(v10 + 57) & 2) != 0)
  {
    v13 = *(a5 + 16);
    if (!v13)
    {
      goto LABEL_11;
    }

    if (!v9)
    {
      v9 = a2[5];
    }

    if ((*(v9 + 57) & 2) == 0)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

    v41 = 0;
    v42 = v13 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    LODWORD(v43) = 18;
    v39 = 3808;
    v40 = 12;
    tree_for_jobj = get_tree_for_jobj(a1, a2, 0x12u, &v41);
    if (tree_for_jobj)
    {
      v12 = tree_for_jobj;
      v22 = strerror(tree_for_jobj);
      fsck_printf_err("failed to get fsroot tree to find expanded dir-stats %llu: %s\n", v13, v22);
      fsck_fail_func(0x5A1, v12);
      v23 = 0;
    }

    else
    {
      v23 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x184A08F5uLL);
      if (v23)
      {
        v28 = tree_lookup(v41, a2[7], 0, &v42, &v40, 12, v23, &v39);
        if (!v28)
        {
          v14 = v23[12];
          free(v23);
          if (v14 > 0xFFF)
          {
            v18 = 0;
            v12 = 0;
            goto LABEL_53;
          }

LABEL_12:
          v15 = ((v14 << 29) >> 31) & 0xC;
          if ((v14 & 8) != 0)
          {
            v15 = (((v14 << 29) >> 31) & 0xC) + 12;
          }

          if (v14 >= 0x800)
          {
            v15 += 12;
          }

          if (v15)
          {
            v16 = v15 + 4;
          }

          else
          {
            v16 = 0;
          }

          v17 = malloc_type_calloc(1uLL, v16 + 52, 0x5C640E9CuLL);
          v18 = v17;
          if (v17)
          {
            *v17 = *(a5 + 48);
            v17[1] = *(a5 + 64);
            v17[4] = v13;
            v17[5] = (random() << 32) | 0x80000000;
            v18[3] = *(a5 + 32);
            v19 = *(v18 + 12);
            v20 = v19 | 0x80;
            *(v18 + 12) = v19 | 0x80;
            if ((v14 & 1) != 0 || !*(a5 + 144))
            {
              v18[2] = *(a5 + 80);
              v20 = v19 | 0x81;
              *(v18 + 12) = v19 | 0x81;
              if ((v14 & 4) == 0)
              {
LABEL_23:
                if ((v14 & 8) == 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_36;
              }
            }

            else if ((v14 & 4) == 0)
            {
              goto LABEL_23;
            }

            v24 = add_xfield(v18 + 26, v16, 1, (a5 + 96), 8u, 0);
            if (!v24)
            {
              v20 = *(v18 + 12) | 4;
              *(v18 + 12) = v20;
              if ((v14 & 8) == 0)
              {
                goto LABEL_39;
              }

LABEL_36:
              v32 = add_xfield(v18 + 26, v16, 3, (a5 + 112), 8u, 0);
              if (v32)
              {
                v12 = v32;
                v33 = strerror(v32);
                fsck_printf_err("can't add purgeable size for dir-stats: %s (%d)\n", v33, v12);
                v34 = 1446;
LABEL_42:
                fsck_fail_func(v34, v12);
                goto LABEL_53;
              }

              v20 = *(v18 + 12) | 8;
              *(v18 + 12) = v20;
LABEL_39:
              if (v14 >= 0x800)
              {
                v35 = add_xfield(v18 + 26, v16, 4, (a5 + 128), 8u, 0);
                if (v35)
                {
                  v12 = v35;
                  v36 = strerror(v35);
                  fsck_printf_err("can't add purgeable resource fork size for dir-stats: %s (%d)\n", v36, v12);
                  v34 = 1454;
                  goto LABEL_42;
                }

                v20 = *(v18 + 12) | 0x800;
                *(v18 + 12) = v20;
              }

              v37 = *(a5 + 156) & 0x404;
              if ((v14 & 0x100) != 0 || v37 == 4)
              {
                if (v37 == 4)
                {
                  v20 |= 2u;
                }

                *(v18 + 12) = v20 | v14 & 0x100;
              }

              v12 = sub_10009E0DC(a3, 2, 0, a4, 0xCu, v18, v16 + 52);
              goto LABEL_53;
            }

            v12 = v24;
            v25 = strerror(v24);
            fsck_printf_err("can't add clone size for dir-stats: %s (%d)\n", v25, v12);
            v26 = 1445;
            v27 = v12;
          }

          else
          {
            fsck_printf_err("failed to allocate memory for insertion of dir-stats\n");
            v12 = 12;
            v26 = 1444;
            v27 = 12;
          }

          fsck_fail_func(v26, v27);
LABEL_53:
          free(v18);
          return v12;
        }

        v12 = v28;
        v29 = strerror(v28);
        fsck_printf_err("unable to load dir-stats %llu to retrieve attributes: %s\n", v13, v29);
        v30 = 1443;
        v31 = v12;
      }

      else
      {
        fsck_printf_err("failed to allocate memory to find dir-stats %llu\n", v13);
        v12 = 12;
        v30 = 1442;
        v31 = 12;
      }

      fsck_fail_func(v30, v31);
    }

    free(v23);
    v18 = 0;
    goto LABEL_53;
  }

  v11 = *(a5 + 64);
  v42 = *(a5 + 48);
  v43 = v11;
  v44 = *(a5 + 16);
  v45 = (random() << 32) | 0x80000000;
  return sub_10009E0DC(a3, 2, 0, a4, 8u, &v42, 0x20u);
}

BOOL sub_10009D408(uint64_t a1)
{
  if ((*(a1 + 152) & 0x20) != 0)
  {
    sub_10009E4A0();
  }

  return *a1 == 0;
}

BOOL sub_10009D430(uint64_t a1)
{
  if ((*(a1 + 152) & 2) != 0 || (*(a1 + 156) & 4) != 0)
  {
    return *(a1 + 48) == *(a1 + 136);
  }

  else
  {
    if (*(a1 + 144))
    {
      return 1;
    }

    return *(a1 + 136) == 0;
  }
}

BOOL sub_10009D470(uint64_t a1)
{
  v1 = *(a1 + 152);
  if ((v1 & 0x800) != 0)
  {
    if ((~v1 & 9) != 0 || (*(a1 + 156) & 0x40) == 0)
    {
      return 0;
    }

    return *(a1 + 128) == *(a1 + 120);
  }

  else
  {
    return (*(a1 + 156) & 0x40) == 0;
  }
}

uint64_t sub_10009D4B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v35[0] = a5;
  v10 = a2[6];
  if (!v10)
  {
    v10 = a2[5];
  }

  if ((*(v10 + 57) & 2) == 0)
  {
    sub_10009E894();
  }

  if (!a5)
  {
    return 0;
  }

  v34 = 0;
  v33 = 18;
  v32 = 0;
  v31 = 12;
  v11 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xC49D8672uLL);
  v30 = 3808;
  if (!v11)
  {
    fsck_printf_err("failed to allocate memory to mark dir-stats chain as inconsistent\n");
    v13 = 12;
    v14 = 1426;
    v15 = 12;
    goto LABEL_11;
  }

  tree_for_jobj = get_tree_for_jobj(a1, a2, 0x12u, &v34);
  if (tree_for_jobj)
  {
    v13 = tree_for_jobj;
    fsck_printf_err("failed to init fsroot tree to mark dir-stats chain as inconsistent\n");
    v14 = 1427;
    goto LABEL_8;
  }

  v17 = 513;
  while (1)
  {
    if (!--v17)
    {
      fsck_printf_warn("performed too many chained-key iterations (current id %llu); can't mark the entire chain as needing reconciliation\n", v5);
      fsck_fail_func(0x594, 92);
LABEL_29:
      v13 = 0;
      goto LABEL_12;
    }

    v29 = 0;
    v32 = v5 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    v28 = 0u;
    memset(v27, 0, sizeof(v27));
    v25 = 160;
    v26 = 8;
    v18 = tree_lookup(&unk_100108040, 0, 0, v35, &v26, 8, v27, &v25);
    if (v18)
    {
      break;
    }

    v21 = DWORD2(v28);
    if ((WORD4(v28) & 0x100) != 0)
    {
      goto LABEL_24;
    }

    DWORD2(v28) |= 0x100u;
    v29 = v21 | 0x100;
    v22 = tree_insert(&unk_100108040, 0, v35, 8, v27, 160);
    if (v22)
    {
      goto LABEL_30;
    }

LABEL_23:
    fsck_printf_warn("need to mark dir-stats %llu as needing reconciliation, due to an issue with dir-stats %llu\n", v35[0], a4);
    v22 = sub_10009E0DC(a3, 1, 3u, &v32, v31, &v29, 4u);
    if (v22)
    {
LABEL_30:
      v13 = v22;
      goto LABEL_12;
    }

LABEL_24:
    v5 = v11[4];
    if (v5 != v35[0])
    {
      v35[0] = v11[4];
      if (v5)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  v13 = v18;
  if (v18 != 2)
  {
    goto LABEL_12;
  }

  v30 = 3808;
  v19 = tree_lookup(v34, qword_100108038, 0, &v32, &v31, v31, v11, &v30);
  if (!v19)
  {
    v20 = *(v11 + 12);
    v29 = v20 | 0x100;
    if ((v20 & 0x100) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v13 = v19;
  if (v19 == 2)
  {
    goto LABEL_29;
  }

  v23 = v35[0];
  v24 = strerror(v19);
  fsck_printf_err("failed to look up dir-stats object (id %llu): %s\n", v23, v24);
  v14 = 1429;
LABEL_8:
  v15 = v13;
LABEL_11:
  fsck_fail_func(v14, v15);
LABEL_12:
  free(v11);
  return v13;
}

uint64_t sub_10009D778(uint64_t a1, void *a2)
{
  v6 = 0;
  *v7 = 0;
  memset(__s1, 0, sizeof(__s1));
  result = memcmp(__s1, a2, 0x40uLL);
  if (result)
  {
    result = sub_10009D8B0(a1, v7, &v6);
    if (!result)
    {
      result = sub_10009DFB4(v6, a2[2]);
      if (!result)
      {
        v5 = *v7;

        return sub_10009DDFC(v5, a2);
      }
    }
  }

  return result;
}

uint64_t sub_10009D810(uint64_t a1, _OWORD *a2)
{
  v6 = a1;
  v4 = 160;
  v5 = 8;
  result = tree_lookup(&unk_100108040, 0, 0, &v6, &v5, 8, a2, &v4);
  if (result == 2)
  {
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return tree_insert(&unk_100108040, 0, &v6, 8, a2, 160);
  }

  return result;
}

uint64_t sub_10009D8B0(uint64_t a1, uint64_t *a2, void *a3)
{
  *a3 = 0;
  *a2 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  if ((*(a1 + 152) & 0x10) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v6 = sub_10009D810(v4, &v9);
    if (!v6)
    {
      *a3 = *(a1 + 16);
      *a2 = v10;
    }
  }

  else
  {
    v6 = 0;
    *a2 = v4;
  }

  return v6;
}

uint64_t sub_10009D950@<X0>(uint64_t result@<X0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v6 = dword_100108128;
  if (a2)
  {
    v7 = qword_100108120;
    v8 = *(&xmmword_100108110 + 1) + a5;
    *a6 = qword_1001080C0 + a4;
    *(a6 + 8) = v8;
    v9 = qword_1001080D0;
    *(a6 + 16) = v7 + a3;
    *(a6 + 24) = v9;
    v10 = qword_1001080E0;
    v11 = qword_1001080F0;
    *(a6 + 32) = qword_1001080E0;
    *(a6 + 40) = v11;
    if ((v6 & 0x40) == 0)
    {
      *(a6 + 48) = qword_100108100;
      if ((v6 & 0x800) == 0)
      {
        return result;
      }

      v10 = xmmword_100108110;
      goto LABEL_11;
    }

LABEL_10:
    *(a6 + 48) = v9;
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v12 = qword_100108120;
  v13 = *(result + 144);
  v14 = *(&xmmword_100108110 + 1) + a5 - *(result + 136);
  *a6 = qword_1001080C0 + a4 - *(result + 48);
  *(a6 + 8) = v14;
  v15 = v12 + a3 - v13;
  v16 = qword_1001080D0;
  v17 = qword_1001080D0 - *(result + 64);
  *(a6 + 16) = v15;
  *(a6 + 24) = v17;
  v10 = qword_1001080E0 - *(result + 80);
  v18 = qword_1001080F0 - *(result + 96);
  *(a6 + 32) = v10;
  *(a6 + 40) = v18;
  if ((v6 & 0x40) == 0)
  {
    *(a6 + 48) = qword_100108100 - *(result + 112);
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    v10 = xmmword_100108110 - *(result + 128);
    goto LABEL_11;
  }

  if ((*(result + 152) & 0x40) == 0)
  {
    v9 = v16 - *(result + 112);
    goto LABEL_10;
  }

  *(a6 + 48) = v17;
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_11:
  *(a6 + 56) = v10;
  return result;
}

char *sub_10009DA78(uint64_t a1, char *a2, uint64_t *a3)
{
  sub_10009A93C(a2 + 48, *a3, a1, "descendants");
  sub_10009A93C(a2 + 136, a3[1], a1, "SAF descendants");
  sub_10009A93C(a2 + 144, a3[2], a1, "dir-stats descendants");
  sub_10009A93C(a2 + 64, a3[3], a1, "physical size");
  sub_10009A93C(a2 + 80, a3[4], a1, "resource fork size");
  sub_10009A93C(a2 + 96, a3[5], a1, "clone size");
  sub_10009A93C(a2 + 112, a3[6], a1, "purgeable size");
  v6 = a3[7];

  return sub_10009A93C(a2 + 128, v6, a1, "purgeable rsrc size");
}

uint64_t sub_10009DB74(uint64_t result, uint64_t a2)
{
  v13 = result;
  if (!result)
  {
    return result;
  }

  v3 = result;
  memset(__s1, 0, sizeof(__s1));
  if (!memcmp(__s1, a2, 0xA0uLL))
  {
    v15 = v3;
    if (qword_100108168)
    {
      *&__s1[0] = *(a2 + 144);
      *(&__s1[0] + 1) = v3;
      v7 = tree_remove(&unk_100108130, 0, __s1, 16);
    }

    else
    {
      v7 = 0;
    }

    LODWORD(result) = tree_remove(&unk_100108040, 0, &v15, 8);
    if (result)
    {
      return result;
    }

    else
    {
      return v7;
    }
  }

  v4 = *(a2 + 156);
  if ((v4 & 1) == 0)
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  v5 = *(a2 + 152);
  if ((v5 & 0x20) != 0)
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 0x80) != 0 || *(a2 + 32) || *(a2 + 24))
    {
      return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
    }
  }

  else
  {
    v6 = *(a2 + 24);
    if ((v5 & 0x80) != 0)
    {
      if (!v6 || *(a2 + 32) != v6)
      {
        return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
      }
    }

    else if (v6 || !*(a2 + 32))
    {
      return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
    }
  }

  if (((*(a2 + 152) & 0x10) == 0) == (v4 & 2) >> 1)
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  if (!sub_10009D408(a2))
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  v8 = *(a2 + 152);
  if ((v8 & 0x12) == 2 && (*(a2 + 156) & 4) == 0)
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  if (!sub_10009D430(a2) || *(a2 + 48) != *(a2 + 40) || *(a2 + 64) != *(a2 + 56))
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  if (v8)
  {
    if (*(a2 + 80) != *(a2 + 72))
    {
      return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
    }
  }

  else if (*(a2 + 72))
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  v9 = *(a2 + 156);
  if ((v8 & 4) != 0 && (v9 & 8) != 0)
  {
    if (*(a2 + 96) != *(a2 + 88))
    {
      return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
    }

    goto LABEL_38;
  }

  if (v8 & 4 | v9 & 8)
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

LABEL_38:
  if ((v8 & 0x50) == 0x40)
  {
    if ((v8 & 8) == 0 || (v9 & 0x10) == 0)
    {
      return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
    }

    v10 = 0;
  }

  else
  {
    v10 = (v8 & 8) == 0;
  }

  if (v10 || (v9 & 0x20) == 0)
  {
    if ((v9 & 0x20) != 0)
    {
      v10 = 0;
    }

    if (!v10)
    {
      return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
    }
  }

  else if (*(a2 + 112) != *(a2 + 104))
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  v12 = *(a2 + 156);
  v11 = sub_10009D470(a2);
  if ((v8 & 0x400) != 0 || !v11 || (v12 & 0x100) != 0 || *(a2 + 16) != *(a2 + 8))
  {
    return tree_insert(&unk_100108040, 0, &v13, 8, a2, 160);
  }

  return sub_10009E05C(v3, a2);
}

uint64_t sub_10009DDFC(uint64_t a1, uint64_t *__s2)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = 513;
  v10 = 0u;
  v11 = 0u;
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    v5 = a1;
    if (!--v4)
    {
      break;
    }

    v22 = 0u;
    v23 = 0u;
    __s1 = 0u;
    v21 = 0u;
    result = memcmp(&__s1, __s2, 0x40uLL);
    if (!result)
    {
      return result;
    }

    result = sub_10009D810(a1, &v10);
    if (result)
    {
      return result;
    }

    sub_10009DA78(a1, &v10, __s2);
    result = sub_10009DB74(a1, &v10);
    if (result)
    {
      return result;
    }

    a1 = v11;
    if (v11 && (BYTE8(v19) & 0x10) != 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      __s1 = 0u;
      v21 = 0u;
      result = sub_10009D810(v11, &__s1);
      if (result)
      {
        return result;
      }

      v7 = v11;
      a1 = v21;
    }

    else
    {
      v7 = 0;
    }

    result = sub_10009DFB4(v7, __s2[2]);
    if (result)
    {
      return result;
    }

    v8 = v10;
    if (v10)
    {
      result = sub_10009D810(v10, &v10);
      if (result)
      {
        return result;
      }

      sub_10009DA78(v8, &v10, __s2);
      result = sub_10009DB74(v8, &v10);
      if (result)
      {
        return result;
      }
    }

    v9 = WORD4(v19);
    if ((BYTE8(v19) & 0x40) != 0)
    {
      __s2[6] = __s2[3];
      if ((v9 & 0x800) != 0)
      {
        __s2[7] = __s2[4];
      }
    }

    if (v5 == a1)
    {
      fsck_printf_warn("detected chained-key loop involving dir-stats %llu\n", v5);
      fsck_fail_func(0x59D, 92);
      return 0;
    }
  }

  fsck_printf_warn("performed too many chained-key iterations (current id %llu); aborting dir-stats repairs\n", a1);
  fsck_fail_func(0x590, 92);
  result = 0;
  byte_100108080 = 1;
  return result;
}

uint64_t sub_10009DFB4(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v7 = 0u;
      memset(v6, 0, sizeof(v6));
      result = sub_10009D810(a1, v6);
      if (!result)
      {
        v5 = __OFADD__(v7, a2);
        *&v7 = v7 + a2;
        if (v5)
        {
          fsck_printf_warn("dir-stats object (id %llu): %s overflow\n", a1, "dir-stats descendants");
          *&v7 = 0x7FFFFFFFFFFFFFFFLL;
          fsck_fail_func(0x56D, 84);
        }

        return sub_10009DB74(a1, v6);
      }
    }
  }

  return result;
}

uint64_t sub_10009E05C(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  if (qword_100108168)
  {
    v4[0] = *(a2 + 144);
    v4[1] = a1;
    v2 = tree_remove(&unk_100108130, 0, v4, 16);
  }

  else
  {
    v2 = 0;
  }

  LODWORD(result) = tree_remove(&unk_100108040, 0, &v5, 8);
  if (result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10009E0DC(uint64_t a1, int a2, unsigned int a3, char *a4, unsigned int a5, _BYTE *a6, unsigned int a7)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, a2, a3, 0, a4, a5, a6, a7);
  }

  print_snapshot_warning();
  return 0;
}

char *clone_mapping_init()
{
  byte_100108170 = 1;
  byte_100108171 = 0;
  if (!tree_init_ext(&unk_100108178, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 25, 0, 0, double_uint64_key_compare))
  {
    tree_create(&unk_100108178, 0, 64);
  }

  result = memory_storage_register_tree(&unk_100108178, "clone mapping", clone_mapping_abort);
  if (result)
  {
    fsck_printf_warn("failed to register the clone mapping tree in the fsck memory storage\n");

    return fsck_fail_func(0x581, 12);
  }

  return result;
}

uint64_t clone_mapping_abort()
{
  if (qword_1001081B0)
  {
    result = tree_destroy(&unk_100108178, 0);
  }

  byte_100108170 = 0;
  return result;
}

uint64_t clone_mapping_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100108170 != 1)
  {
    return 0;
  }

  *v30 = 0uLL;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v3 = *(a2 + 40);
  if ((*(v3 + 48) & 4) == 0 || *(v3 + 1112))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v26 = 25;
  v27 = 16;
  v7 = tree_lookup_min(&unk_100108178, 0, v30, &v27, v28, &v26);
  if (!v7)
  {
    while (1)
    {
      v8 = v29;
      if ((v29 & 3) == 1)
      {
        break;
      }

      if ((v29 & 2) != 0)
      {
        v13 = v30[0];
        v35[0] = v30[0];
        v35[1] = 0;
        memset(v25, 0, 25);
        v33 = 25;
        v34 = 16;
        if (tree_lookup(&unk_100108178, 0, 1, v35, &v34, 16, v25, &v33) || v35[0] != v13)
        {
LABEL_23:
          if (v8)
          {
            fsck_printf_warn("clone mapping (private_id %llu, file_id %llu) is orphan\n", v30[0], v30[1]);
            fsck_fail_func(0x559, 92);
            *v25 = 0xE000000000000009;
            *&v25[8] = 19;
            *&v25[12] = *v30;
            v15 = sub_10009ED80(a3, v25, 0, 0, 0);
            if (v15)
            {
              v4 = v15;
              v16 = *v30;
              v17 = strerror(v15);
              fsck_printf_err("can't remove orphan clone mapping (private_id %llu, file_id %llu): %s (%d)\n", v16, *(&v16 + 1), v17, v4);
              fsck_fail_func(0x548, v4);
              goto LABEL_29;
            }

            if ((v29 & 4) == 0)
            {
LABEL_27:
              v18 = dir_stats_unregister_clone;
              v19 = file_info_unregister_clone;
              goto LABEL_28;
            }

LABEL_15:
            v4 = 0;
            goto LABEL_29;
          }
        }

        else
        {
          v14 = 0;
          while (1)
          {
            v14 += (v25[24] >> 1) & 1;
            if (v14 > 1)
            {
              break;
            }

            v31 = 25;
            v32 = 16;
            if (tree_lookup(&unk_100108178, 0, 2, v35, &v32, 16, v25, &v31) || v35[0] != v13)
            {
              goto LABEL_23;
            }
          }

          if ((v8 & 1) == 0)
          {
            fsck_printf_warn("clone mapping (private_id %llu, file_id %llu) is missing\n", v30[0], v30[1]);
            fsck_fail_func(0x55A, 92);
            v20 = a3;
            v21 = 0;
            goto LABEL_38;
          }

          if ((v29 & 4) != 0)
          {
            v20 = a3;
            v21 = 1;
LABEL_38:
            v22 = sub_10009EDD4(v20, v30, v28, v21);
            if (v22)
            {
              v4 = v22;
              goto LABEL_5;
            }

            v18 = dir_stats_register_clone;
            v19 = file_info_register_clone;
LABEL_28:
            v4 = sub_10009F714(v30, v28, v18, v19);
LABEL_29:
            if (v4)
            {
              goto LABEL_5;
            }
          }
        }
      }

      v23 = 25;
      v24 = 16;
      v7 = tree_lookup(&unk_100108178, 0, 2, v30, &v24, 16, v28, &v23);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    fsck_printf_warn("found an orphan clone mapping (private_id %llu, file_id %llu)\n", v30[0], v30[1]);
    fsck_fail_func(0x545, 92);
    *v25 = 0xE000000000000009;
    *&v25[8] = 19;
    *&v25[12] = *v30;
    v9 = sub_10009ED80(a3, v25, 0, 0, 0);
    if (!v9)
    {
      if ((v29 & 4) != 0)
      {
        sub_10009F7F0();
      }

      goto LABEL_27;
    }

    v10 = v9;
    v11 = *v30;
    v12 = strerror(v9);
    fsck_printf_warn("can't add orphan clone mapping (private_id %llu, file_id %llu) to the fsck repairs: %s (%d)\n", v11, *(&v11 + 1), v12, v10);
    fsck_fail_func(0x546, v10);
    goto LABEL_15;
  }

LABEL_9:
  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

LABEL_5:
  tree_destroy(&unk_100108178, 0);
  return v4;
}

uint64_t sub_10009ED80(uint64_t a1, char *a2, _BYTE *a3, unsigned int a4, int a5)
{
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, a5, 0, 0, a2, 0x1Cu, a3, a4);
  }

  return print_snapshot_warning();
}

uint64_t sub_10009EDD4(uint64_t a1, _OWORD *a2, uint64_t *a3, int a4)
{
  v28 = 0xE000000000000009;
  v29 = 19;
  v30 = *a2;
  v8 = *a3;
  v9 = a3 + 1;
  v10 = a3[1];
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

  v13 = malloc_type_calloc(1uLL, v12 + 8, 0x100004000313F17uLL);
  v14 = v13;
  if (!v13)
  {
    fsck_printf_err("can't allocate memory to insert a new clone mapping value\n");
    v18 = 12;
    fsck_fail_func(0x53E, 12);
    goto LABEL_13;
  }

  if (!(v10 | v8))
  {
LABEL_17:
    *v14 = a3[2] & 0xFFFFFFFFFFFFFFLL | ((((a3[3] & 8) >> 3) & 1) << 56);
    if (a4 && (v22 = sub_10009ED80(a1, &v28, 0, 0, 0), v22))
    {
      v18 = v22;
    }

    else
    {
      v18 = sub_10009ED80(a1, &v28, v14, v12 + 8, 2);
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v25 = a2;
    v23 = *a2;
    v24 = *(v25 + 1);
    v26 = strerror(v18);
    fsck_printf_err("can't add clone mapping (private_id %llu, file_id %llu) for repairs: %s (%d)\n", v24, v23, v26, v18);
    fsck_fail_func(0x544, v18);
    goto LABEL_22;
  }

  if (!*a3 || (v15 = add_xfield(v13 + 4, v12, 2, a3, 8u, 16), !v15))
  {
    if (*v9)
    {
      v19 = add_xfield(v14 + 4, v12, 1, v9, 8u, 16);
      if (v19)
      {
        v20 = v19;
        v21 = strerror(v19);
        fsck_printf_err("can't add attribution tag for clone mapping: %s (%d)\n", v21, v20);
        fsck_fail_func(0x540, v20);
        v18 = v20;
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

  v16 = v15;
  v17 = strerror(v15);
  fsck_printf_err("can't add dir stats key for clone mapping: %s (%d)\n", v17, v16);
  fsck_fail_func(0x53F, v16);
  v18 = v16;
LABEL_13:
  free(v14);
  v14 = 0;
LABEL_22:
  free(v14);
  return v18;
}

uint64_t clone_mapping_register(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if ((*a3 & 0x100000000000000) != 0)
  {
    v6 = 9;
  }

  else
  {
    v6 = 1;
  }

  return sub_10009F028(a1, a2, v6, a4, a5, v5 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t sub_10009F028(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (byte_100108170 != 1)
  {
    return 0;
  }

  memset(v35, 0, 25);
  v33 = a1;
  v34 = a2;
  v31 = 25;
  v32 = 16;
  v12 = tree_lookup(&unk_100108178, 0, 0, &v33, &v32, 16, v35, &v31);
  if (v12 != 2)
  {
    v13 = v12;
    if (v12)
    {
      v14 = strerror(v12);
      fsck_printf_err("failed to search for clone mapping (private_id %llu,  file_id %llu): %s (%d)\n", a1, a2, v14, v13);
      fsck_fail_func(0x54B, v13);
      return v13;
    }

    v30[24] = 0;
    if ((a3 & 2) != 0)
    {
      *v30 = v35[0];
      *&v30[9] = *(v35 + 9);
    }

    else
    {
      *&v30[8] = a4;
      *&v30[16] = a6;
      *v30 = a5;
    }

    v15 = *&v35[0];
    if (*&v35[0] != a5)
    {
      if ((a3 & 2) != 0)
      {
        v16 = *&v35[0];
      }

      else
      {
        v16 = a5;
      }

      if ((a3 & 2) != 0)
      {
        v15 = a5;
      }

      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): dir stats key (%llu) != inode (id %llu) dir stats key (%llu)\n", a1, a2, v16, a2, v15);
      fsck_fail_func(0x55B, -11);
      BYTE8(v35[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *&v35[0] = a5;
      }
    }

    v17 = *(&v35[0] + 1);
    if (*(&v35[0] + 1) == a4)
    {
      v18 = BYTE8(v35[1]);
      if (((a3 | BYTE8(v35[1])) & 0x10) != 0)
      {
        if ((a3 & 2) != 0)
        {
          goto LABEL_40;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if ((a3 & 2) != 0)
      {
        v19 = *(&v35[0] + 1);
      }

      else
      {
        v19 = a4;
      }

      if ((a3 & 2) != 0)
      {
        v17 = a4;
      }

      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): attribution tag (%llu) != inode (id %llu) attribution tag (%llu)\n", a1, a2, v19, a2, v17);
      fsck_fail_func(0x55C, -11);
      v20 = BYTE8(v35[1]);
      v18 = BYTE8(v35[1]) | 4;
      BYTE8(v35[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *(&v35[0] + 1) = a4;
        if (((a3 | v20) & 0x10) != 0)
        {
          goto LABEL_40;
        }
      }

      else if (((a3 | v20) & 0x10) != 0)
      {
LABEL_29:
        if (*&v35[1] != a6)
        {
          fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): compressed physical size (%llu) != inode (id %llu) compressed physical size (%llu)\n", a1, a2, a6, a2, *&v35[1]);
          fsck_fail_func(0x56E, -11);
          v18 = BYTE8(v35[1]) | 4;
          BYTE8(v35[1]) |= 4u;
        }

        goto LABEL_40;
      }
    }

    v21 = *&v35[1];
    if (*&v35[1] != a6)
    {
      if ((a3 & 2) != 0)
      {
        v22 = *&v35[1];
      }

      else
      {
        v22 = a6;
      }

      if ((a3 & 2) != 0)
      {
        v21 = a6;
      }

      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): physical size (%llu) != inode (id %llu) physical size (%llu)\n", a1, a2, v22, a2, v21);
      fsck_fail_func(0x55D, -11);
      v18 = BYTE8(v35[1]) | 4;
      BYTE8(v35[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *&v35[1] = a6;
      }
    }

LABEL_40:
    if ((a3 & 8) != (v18 & 8))
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): purgeable status is different than inode (id %llu) purgeable status\n", a1, a2, a2);
      fsck_fail_func(0x55E, -3);
      v18 = BYTE8(v35[1]) | 4;
      if ((a3 & 2) != 0)
      {
        v18 = BYTE8(v35[1]) & 0xF3 | 4 | a3 & 8;
      }
    }

    BYTE8(v35[1]) = v18 | a3 & 0xF7;
    if (v18 & 4 | a3 & 4)
    {
      byte_100108171 = 1;
      v23 = sub_10009F714(&v33, v30, dir_stats_unregister_clone, file_info_unregister_clone);
      if (v23)
      {
        return v23;
      }
    }

    goto LABEL_46;
  }

  *&v35[0] = a5;
  *(&v35[0] + 1) = a4;
  *&v35[1] = a6;
  BYTE8(v35[1]) |= a3;
LABEL_46:
  v24 = tree_insert(&unk_100108178, 0, &v33, 16, v35, 25);
  v13 = v24;
  if (v24)
  {
    v25 = v33;
    v26 = v34;
    v27 = BYTE8(v35[1]);
    v28 = strerror(v24);
    fsck_printf_err("failed to insert clone mapping (private_id %llu,  file_id %llu, flags 0x%x): %s (%d)\n", v25, v26, v27, v28, v13);
    fsck_fail_func(0x54C, v13);
  }

  return v13;
}

uint64_t clone_mapping_register_inode(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0x10)
  {
    return 0;
  }

  if ((*(a2 + 68) & 0x20) != 0)
  {
    a4 = 0;
  }

  if ((*(a2 + 68) & 0x20) != 0)
  {
    v8 = 18;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(a2 + 48);
  if ((v9 & 0x180000) == 0x80000 && *(a2 + 56) == 1)
  {
    v8 |= 8u;
  }

  return sub_10009F028(*(a2 + 8), a1, (v9 >> 9) & 0x20 | v8, a5, a6, a4);
}

uint64_t clone_mapping_register_resource_fork(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100108170 != 1)
  {
    return 0;
  }

  v15[0] = 0;
  v15[1] = 0;
  v17 = 0;
  v16 = 0;
  v14[0] = a1;
  v14[1] = a2;
  v12 = 25;
  v13 = 16;
  v6 = tree_lookup(&unk_100108178, 0, 0, v14, &v13, 16, v15, &v12);
  if (v6)
  {
    v7 = v6;
    v8 = strerror(v6);
    fsck_printf_err("failed to search for clone mapping (private_id %llu,  file_id %llu) to update compressed clone size: %s (%d)\n", a1, a2, v8, v7);
    fsck_fail_func(0x56F, v7);
    return v7;
  }

  if (v17)
  {
    if (v16 != a3)
    {
      fsck_printf_warn("clone mapping (private_id %llu, file_id %llu): compressed physical size (%llu) != inode (id %llu) compressed physical size (%llu)\n", a1, a2, v16, a2, a3);
      fsck_fail_func(0x570, -11);
      v7 = sub_10009F714(v14, v15, dir_stats_unregister_clone, file_info_unregister_clone);
      if (v7)
      {
        return v7;
      }

      v17 |= 4u;
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:
  v16 = a3;
  v9 = tree_insert(&unk_100108178, 0, v14, 16, v15, 25);
  v7 = v9;
  if (v9)
  {
    v10 = strerror(v9);
    fsck_printf_err("failed to update clone mapping (private_id %llu,  file_id %llu) with compressed clone size: %s (%d)\n", a1, a2, v10, v7);
    fsck_fail_func(0x571, v7);
  }

  return v7;
}

uint64_t clone_mapping_get_file_ids_of_private_id(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v18 = a1;
  v19 = 0;
  if (byte_100108170)
  {
    memset(v16, 0, sizeof(v16));
    v17 = 0;
    v14 = 25;
    v15 = 16;
    v8 = tree_lookup(&unk_100108178, 0, 1, &v18, &v15, 16, v16, &v14);
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
      while (v18 == a1)
      {
        if ((v17 & 2) != 0)
        {
          if (v9 < a3)
          {
            *(a2 + 8 * v9) = v19;
          }

          ++v9;
        }

        v12 = 25;
        v13 = 16;
        v8 = tree_lookup(&unk_100108178, 0, 2, &v18, &v13, 16, v16, &v12);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v10 = 0;
    }

    if (v9 != a3)
    {
      fsck_printf_debug("number of files in the clone mapping (%u) != dstream reference count (%u)\n", v9, a3);
      fsck_fail_func(0x54E, 92);
    }

    if (a4)
    {
      *a4 = v9;
    }
  }

  else
  {
    v10 = 12;
    fsck_fail_func(0x54D, 12);
  }

  return v10;
}

uint64_t sub_10009F714(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t)))
{
  if (*a2 && (v7 = a3(*a2, a2[2]), v7))
  {
    v8 = v7;
    v10 = *a1;
    v9 = a1[1];
    v11 = *a2;
    v12 = strerror(v7);
    fsck_printf_err("clone mapping (private_id %llu, file_id %llu): failed to update dir stats %llu: %s (%d)\n", v10, v9, v11, v12, v8);
    fsck_fail_func(0x58B, v8);
  }

  else
  {
    v13 = a2[1];
    if (v13)
    {
      v14 = a4(v13, a2[2], a3);
      v8 = v14;
      if (v14)
      {
        v16 = *a1;
        v15 = a1[1];
        v17 = a2[1];
        v18 = strerror(v14);
        fsck_printf_err("clone mapping (private_id %llu, file_id %llu): failed to update attribution tag %llu: %s (%d)\n", v16, v15, v17, v18, v8);
        fsck_fail_func(0x58C, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

char *file_info_init()
{
  if (!tree_init_ext(&unk_1001081B8, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 80, 0, 0, uint64_key_compare))
  {
    tree_create(&unk_1001081B8, 0, 64);
  }

  result = memory_storage_register_tree(&unk_1001081B8, "file info", file_info_abort);
  if (result)
  {
    fsck_printf_warn("failed to register the file info tree in the fsck memory storage\n");

    return fsck_fail_func(0x586, 12);
  }

  return result;
}

uint64_t file_info_abort()
{
  if (qword_1001081F0)
  {
    result = tree_destroy(&unk_1001081B8, 0);
  }

  qword_100108248 = 0;
  return result;
}

uint64_t sub_10009F948(uint64_t a1, int a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, _BYTE *a7, unsigned int a8)
{
  v9[0] = a5 & 0xFFFFFFFFFFFFFFFLL | 0xD000000000000000;
  v9[1] = a6 & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
  if (a1)
  {
    return fsck_repairs_add(a1, 7u, a2, a3, a4, v9, 0x10u, a7, a8);
  }

  return print_snapshot_warning();
}

void file_info_register(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  if (qword_1001081F0)
  {
    sub_10009FAF0(a2);
    if (!v16)
    {
      if (byte_100108242 == 1)
      {
        if (!a8)
        {
          a8 = a2;
        }

        fsck_printf_warn("file info: found more than one attribution tag with matching computed hash, invalid entry (hash %llu)\n", a8);
        fsck_fail_func(0x557, 92);
        if (a7)
        {
          v17 = a7;
        }

        else
        {
          v17 = 9;
        }

        sub_10009F948(a1, 0, 0, 1, v17, a8, 0, 0);
      }

      else
      {
        *&xmmword_1001081F8 = a3;
        qword_100108208 = a4;
        *&xmmword_100108218 = a5;
        byte_100108242 = 1;
        *&xmmword_100108230 = a7;
        *(&xmmword_100108230 + 1) = a8;
        word_100108240 = a6;
      }
    }
  }
}

double sub_10009FAF0(uint64_t a1)
{
  v9 = a1;
  if (!sub_1000A038C(a1) && !qword_100108248)
  {
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    v2 = 80;
    v3 = 8;
    if ((tree_lookup(&unk_1001081B8, 0, 0, &v9, &v3, 8, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_100108248 = v9;
      xmmword_100108218 = v6;
      *&qword_100108228 = v7;
      *(&xmmword_100108230 + 8) = v8;
      result = *&v5;
      xmmword_1001081F8 = v4;
      *&qword_100108208 = v5;
    }
  }

  return result;
}

void file_info_register_inode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1001081F0)
  {
    sub_10009FAF0(a2);
    if (!v6)
    {
      v7 = (*(&xmmword_1001081F8 + 1))++ == -1;
      if (v7 << 63 >> 63 != v7)
      {
        fsck_printf_warn("file info: computed count overflow for hash (%llu)\n", a2);
        *(&xmmword_1001081F8 + 1) = -1;
        fsck_fail_func(0x51A, 84);
      }

      v8 = __CFADD__(qword_100108210, a3);
      qword_100108210 += a3;
      if (v8)
      {
        fsck_printf_warn("file info: computed size overflow for hash (%llu)\n", a2);
        qword_100108210 = -1;
        fsck_fail_func(0x51B, 84);
      }

      if (!qword_100108228)
      {
        qword_100108228 = a1;
      }
    }
  }
}

void sub_10009FCA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1001081F0)
    {
      sub_10009FAF0(a1);
      if (!v4)
      {
        v5 = __OFADD__(*(&xmmword_100108218 + 1), a2);
        *(&xmmword_100108218 + 1) += a2;
        if (v5)
        {
          fsck_printf_warn("file info: clone size overflow for hash (%llu)\n", a1);
          *(&xmmword_100108218 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          fsck_fail_func(0x555, 84);
        }
      }
    }
  }
}

void file_info_register_resource_fork(uint64_t a1, uint64_t a2)
{
  if (qword_1001081F0)
  {
    sub_10009FAF0(a1);
    if (!v4)
    {
      v5 = __CFADD__(qword_100108210, a2);
      qword_100108210 += a2;
      if (v5)
      {
        fsck_printf_warn("file info: computed size overflow for hash (%llu)\n", a1);
        qword_100108210 = -1;
        fsck_fail_func(0x567, 84);
      }
    }
  }
}

uint64_t file_info_finalize(uint64_t a1, void *a2, uint64_t a3)
{
  if (!qword_1001081F0)
  {
    return 0;
  }

  v6 = sub_1000A038C(0);
  if (v6)
  {
    v7 = v6;
    if (qword_1001081F0)
    {
      tree_destroy(&unk_1001081B8, 0);
    }

    qword_100108248 = 0;
    return v7;
  }

  v56[0] = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = (a2 + 96);
  }

  v48 = 0;
  v49 = 0;
  v50 = v8;
  v9 = malloc_type_malloc(0xEE0uLL, 0xA200E25EuLL);
  found = clone_mapping_found_corruptions_and_aborted();
  if (!v9)
  {
    fsck_printf_warn("file info: failed to allocate memory\n");
    v7 = 12;
    fsck_fail_func(0x51D, 12);
    goto LABEL_17;
  }

  v11 = found;
  v46 = 80;
  v47 = 8;
  v12 = tree_lookup(&unk_1001081B8, 0, 1, v56, &v47, 8, &v51, &v46);
  if (v12)
  {
    v13 = v12 == 2;
LABEL_13:
    if (v13)
    {
      v7 = 0;
    }

    else
    {
      v7 = v12;
    }

    goto LABEL_17;
  }

  v35 = v11;
  v36 = 0;
  v15 = 0;
  v16 = -1;
  do
  {
    if (*(&v54 + 1))
    {
      v17 = *(&v54 + 1);
    }

    else
    {
      v17 = 9;
    }

    v18 = v55;
    if (v55)
    {
      v19 = v55;
    }

    else
    {
      v19 = v56[0];
    }

    if (v54 || BYTE10(v55) != 1)
    {
      if (*(&v54 + 1))
      {
        fsck_fail_func(0x537, 92);
        v27 = sub_10009F948(v8, 1, 0x1Au, 1, *(&v54 + 1), v19, 0, 0);
        if (v27)
        {
          return v27;
        }

        v18 = v55;
      }

      if (v18)
      {
        v27 = sub_10009F948(v8, 1, 0x1Bu, 1, 9, v19, v56, 8u);
        if (v27)
        {
          return v27;
        }
      }

      if ((BYTE10(v55) & 1) == 0)
      {
        v45 = 0;
        v39 = 0xD000000000000009;
        v40 = v56[0] & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
        v44 = 16;
        v43 = 3808;
        tree_for_jobj = get_tree_for_jobj(a1, a2, 0xDu, &v45);
        if (tree_for_jobj)
        {
          goto LABEL_67;
        }

        v29 = tree_lookup(v45, a3, 0, &v39, &v44, v44, v9, &v43);
        v7 = v29;
        if ((v29 & 0xFFFFFFFD) != 0)
        {
          goto LABEL_17;
        }

        if (v29 == 2 || sub_1000A047C(&v39, v9, v43))
        {
          v15 += *(&v51 + 1);
          v48 = v15;
          if (v54 < v16)
          {
            v16 = v54;
          }

          v36 = 1;
          goto LABEL_60;
        }

        v30 = v9[1];
        v31 = *(&v51 + 1) + *v9;
        *&v51 = *v9;
        *(&v51 + 1) = v31;
        BYTE10(v55) = 1;
        *&v52 = v30;
        *(&v52 + 1) += v30;
        v32 = *(&v53 + 1) + v9[2];
        *&v53 = v9[2];
        *(&v53 + 1) = v32;
        WORD4(v55) = *(v9 + 12);
        *&v54 = 16;
        tree_for_jobj = tree_insert(&unk_1001081B8, 0, v56, 8, &v51, 80);
        if (tree_for_jobj)
        {
LABEL_67:
          v7 = tree_for_jobj;
          goto LABEL_17;
        }
      }

      if (WORD4(v55) > 1u)
      {
        goto LABEL_60;
      }

      if (*(&v51 + 1) != v51)
      {
        fsck_printf_warn("file info: attribution tag (hash %llu): total count (%llu) does not match computed count (%llu)\n", v56[0], v51, *(&v51 + 1));
        fsck_fail_func(0x51F, 92);
        v39 = *(&v51 + 1);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v27 = sub_10009F948(v8, 1, 0x1Cu, 0, 9, v56[0], &v39, 0x1Au);
        if (v27)
        {
          return v27;
        }
      }

      if (*(&v52 + 1) != v52)
      {
        fsck_printf_warn("file info: attribution tag (hash %llu): physical size (%llu) does not match computed size (%llu)\n", v56[0], v52, *(&v52 + 1));
        fsck_fail_func(0x520, 92);
        v39 = 0;
        v40 = *(&v52 + 1);
        v41 = 0;
        v42 = 0;
        v27 = sub_10009F948(v8, 1, 0x1Du, 0, 9, v56[0], &v39, 0x1Au);
        if (v27)
        {
          return v27;
        }
      }

      if (v35)
      {
        fsck_printf_debug("file info: attribution tag (hash %llu) skipping clone size repair because the clone mapping repairs were aborted\n", v56[0]);
        goto LABEL_60;
      }

      if ((v53 & 0x8000000000000000) != 0)
      {
        fsck_printf_debug("file info: attribution tag (hash %llu) skipping clone size repair: full clone size %llu > %llu\n", v56[0], v53, 0x7FFFFFFFFFFFFFFFLL);
        v33 = 1440;
LABEL_59:
        fsck_fail_func(v33, 92);
        goto LABEL_60;
      }

      if ((*(&v53 + 1) & 0x8000000000000000) != 0)
      {
        fsck_printf_debug("file info: attribution tag (hash %llu) skipping clone size repair because the computed clone size is negative\n", v56[0]);
        v33 = 1421;
        goto LABEL_59;
      }

      if (*(&v53 + 1) == v53)
      {
        goto LABEL_60;
      }

      fsck_printf_warn("file info: attribution tag (hash %llu): full clone size (%llu) does not match computed size (%llu)\n", v56[0], v53, *(&v53 + 1));
      fsck_fail_func(0x556, 92);
      v39 = 0;
      v40 = 0;
      v41 = *(&v53 + 1);
      v42 = 0;
      v24 = v56[0];
      v25 = &v39;
      v20 = v8;
      v21 = 1;
      v22 = 30;
      v23 = 9;
      v26 = 26;
    }

    else
    {
      fsck_printf_warn("file info: orphan attribution tag with hash (%llu)\n", v56[0]);
      fsck_fail_func(0x51E, 92);
      v20 = v8;
      v21 = 0;
      v22 = 0;
      v23 = v17;
      v24 = v19;
      v25 = 0;
      v26 = 0;
    }

    v27 = sub_10009F948(v20, v21, v22, 0, v23, v24, v25, v26);
    if (v27)
    {
      return v27;
    }

LABEL_60:
    v37 = 80;
    v38 = 8;
    v34 = tree_lookup(&unk_1001081B8, 0, 2, v56, &v38, 8, &v51, &v37);
  }

  while (!v34);
  if (v34 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v34;
  }

  if (v36)
  {
    v39 = v16 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    v12 = fsroot_iterate(a1, a2, a3, 0, &v39, 8, sub_1000A0508);
    v13 = v12 == -1;
    goto LABEL_13;
  }

LABEL_17:
  free(v9);
  tree_destroy(&unk_1001081B8, 0);
  return v7;
}

uint64_t sub_1000A038C(uint64_t a1)
{
  if (qword_100108248)
  {
    v1 = qword_100108248 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v5 = qword_100108248;
  if (xmmword_100108230 != 0 || (*(&xmmword_1001081F8 + 1) ? (v3 = *(&xmmword_1001081F8 + 1) == xmmword_1001081F8) : (v3 = 0), !v3 || (qword_100108210 ? (v4 = qword_100108210 == qword_100108208) : (v4 = 0), !v4 || *(&xmmword_100108218 + 1) != xmmword_100108218)))
  {
    result = tree_insert(&unk_1001081B8, 0, &v5, 8, &xmmword_1001081F8, 80);
LABEL_22:
    if (result)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = tree_remove(&unk_1001081B8, 0, &v5, 8);
  if (result != 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  result = 0;
  qword_100108248 = 0;
  return result;
}

BOOL sub_1000A047C(uint64_t a1, uint64_t a2, int a3)
{
  memset(__n, 0, sizeof(__n));
  v4 = 1;
  if (!get_xfield((a2 + 26), a3 - 26, 1, &__n[1], __n, 0, 0))
  {
    v5 = *(a1 + 8) & 0x1FFFFFFFFFFFFFLL;
    v6 = *&__n[1];
    v7 = strnlen(*&__n[1], __n[0]);
    return v5 != compute_attr_tag_hash(v6, v7);
  }

  return v4;
}

uint64_t sub_1000A0508(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v21 = 0;
  v22 = 0;
  inode_64bit_xfield = get_inode_64bit_xfield(a3, a4, 19, &v22);
  if (inode_64bit_xfield)
  {
    if (inode_64bit_xfield == 2)
    {
      return 0;
    }

    else
    {
      return inode_64bit_xfield;
    }
  }

  else
  {
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    v17 = 80;
    v18 = 8;
    if (!tree_lookup(&unk_1001081B8, 0, 1, &v21, &v18, 8, v19, &v17))
    {
      while ((BYTE10(v20) & 1) != 0 || v22 != v21)
      {
        v15 = 80;
        v16 = 8;
        if (tree_lookup(&unk_1001081B8, 0, 2, &v21, &v16, 8, v19, &v15))
        {
          return 0;
        }
      }

      fsck_printf_warn("file info: inode (jobj_id 0x%llx) has unexpected attribution tag with hash (%llu)\n", *a1 & 0xFFFFFFFFFFFFFFFLL, v22);
      fsck_fail_func(0x51C, 92);
      v10 = inode_repairs_add_xf_deletion(a5[2], *a1, 19);
      if (v10 || (v10 = inode_repair_clear_internal_flags(a5[2], *a1 & 0xFFFFFFFFFFFFFFFLL, 0x10000000), v10))
      {
        v8 = v10;
        v11 = *a1 & 0xFFFFFFFFFFFFFFFLL;
        v12 = strerror(v10);
        fsck_printf_err("inode (jobj_id %llu): unable to add repair for unexpected xfield: %s\n", v11, v12);
        fsck_fail_func(0x536, v8);
        return v8;
      }

      v13 = *a5;
      v14 = a5[1] + 1;
      a5[1] = v14;
      if (v13 == v14)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }
}

uint64_t sub_1000A06D0()
{

  return ccder_blob_encode_implicit_raw_octet_string();
}

uint64_t sub_1000A06F8()
{

  return sub_1000A884C(v1 - 32, 0x8000000000000003, (v0 + 48), 40);
}

uint64_t sub_1000A0718(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    return 0;
  }

  a2[1] = a4;
  a2[2] = a5;
  if (!sub_1000A07B0(a2, a3, 0))
  {
    return 0;
  }

  sub_1000A06BC();
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_raw_octet_string())
  {
    return 0;
  }

  return ccder_blob_encode_implicit_uint64();
}

uint64_t sub_1000A07B0(void *a1, unsigned int a2, void *a3)
{
  v13 = 1301;
  v12[2] = 387978753;
  memset(__s, 0, sizeof(__s));
  v5 = ccsha256_di();
  __chkstk_darwin(v5);
  bzero(v12 - v6, v7);
  if (*a1 || (sub_1000A06EC(), ccdigest_init(), sub_1000A06EC(), ccdigest_update(), sub_1000A06EC(), ccdigest_update(), v9 = sub_1000A06EC(), v10(v9), cc_clear(), (a2 & 1) != 0) && !sub_1000A1238(1, (a2 >> 13) & 1, &unk_1000EA048, __s, __s, 32))
  {
    v8 = 0;
  }

  else
  {
    cchmac();
    v8 = 1;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v8;
}

uint64_t sub_1000A0984(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11)
{

  return ccder_blob_decode_range();
}

uint64_t sub_1000A09A4()
{
  sub_1000A0F04(&unk_1000E53F0 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_1000A0F04(sub_1000A0B2C != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_1000A0B2C();
}

uint64_t sub_1000A0A5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1000A0F04(&unk_1000E53F0 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_1000A0F04(sub_1000A0B9C != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_1000A0B9C(a1, v2);
}

uint64_t sub_1000A0B2C()
{
  v0 = ccrng();
  sub_1000A0F04(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_1000A0F04(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_1000A0B9C(uint64_t a1, unsigned int a2)
{
  v4 = sub_1000A09A4();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_1000A0F04(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

unint64_t sub_1000A0BF8(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

BOOL sub_1000A0C38(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

uint64_t sub_1000A0C64(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "dump_bytes_internal", ":", 844, &byte_1000B36A6, &byte_1000B36A6, a1, a3, &byte_1000B36A6, &byte_1000B36A6);
    v4 = &byte_1000B36A6;
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "dump_bytes_internal", ":", 854, &byte_1000B36A6, &byte_1000B36A6, v4, &byte_1000B36A6, v6, v8 + v6, &byte_1000B36A6, __str, &byte_1000B36A6, &byte_1000B36A6);
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_1000A0E54(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_100108260;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_100108260[2 * v2] = 0;
  return byte_100108260;
}

uint64_t sub_1000A0EE8(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_1000B3518[(result + 38)];
  }

  return result;
}

uint64_t sub_1000A0F04(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "REQUIRE_func", ":", 1134, &byte_1000B36A6, a3, a2, &byte_1000B36A6);
    abort();
  }

  return result;
}

uint64_t sub_1000A0F98(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 = off_1000E9520;
  return result;
}

uint64_t sub_1000A0FBC(uint64_t a1, void *a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a2)
  {
    a2 = &unk_1000B35B8;
  }

  v9 = sub_1000A1980(v11, a2, a3, a4, a5, a6);
  return sub_1000A0EE8(v9);
}

uint64_t sub_1000A1008(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = 0;
  }

  v14[2] = v5;
  v14[3] = v6;
  v14[0] = v10;
  v14[1] = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = &unk_1000B35B8;
  }

  v12 = sub_1000A1C74(v14, 0, v11, a3, a4, 0, a5);
  return sub_1000A0EE8(v12);
}

uint64_t sub_1000A1068(uint64_t a1, uint64_t a2, void *a3, const unsigned __int8 *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = 0;
  }

  v10[2] = v5;
  v10[3] = v6;
  v10[0] = v7;
  v10[1] = 0;
  if (!a3)
  {
    a3 = &unk_1000B35B8;
  }

  v8 = sub_1000A1FFC(v10, a2, a3, a4, a5);
  return sub_1000A0EE8(v8);
}

uint64_t sub_1000A10B4(uint64_t a1, void *a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a2)
  {
    a2 = &unk_1000B35B8;
  }

  v9 = sub_1000A92D8(v11, a2, a3, a4, a5, a6);
  return sub_1000A0EE8(v9);
}

uint64_t sub_1000A1100(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = v5;
  v8[1] = 0;
  v6 = sub_1000A866C(v8, a2, a3);
  return sub_1000A0EE8(v6);
}

uint64_t sub_1000A1154(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = v5;
  v8[1] = 0;
  v6 = sub_1000A8EAC(v8, a2, a3);
  return sub_1000A0EE8(v6);
}

uint64_t sub_1000A1190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  if (a1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v12[2] = v7;
  v12[3] = v8;
  v12[0] = v9;
  v12[1] = 0;
  if (!a4)
  {
    a4 = &unk_1000B35B8;
  }

  v10 = sub_1000A1270(v12, a2, a3, a4, a5, a6, a7);
  return sub_1000A0EE8(v10);
}

uint64_t sub_1000A11DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a3)
  {
    a3 = &unk_1000B35B8;
  }

  v9 = sub_1000A1C74(v11, a2, a3, a4, a5, 0, a6);
  return sub_1000A0EE8(v9);
}

uint64_t sub_1000A1238(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    return (sub_1000A1234)(a1, a3, a4, a5, a6);
  }

  else
  {
    return (sub_1000A1230)(a1, a3, a4, a5, a6);
  }
}

uint64_t sub_1000A1270(unint64_t *a1, int a2, uint64_t a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v12 = 4294967284;
  if (a2 > 9)
  {
    if (a2 <= 11)
    {
      if (a2 == 10)
      {
        return 0;
      }
    }

    else if (a2 != 22 && a2 != 15)
    {
      if (a2 != 12)
      {
        return v12;
      }

      goto LABEL_4;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    if (a5)
    {
      if (*a5 && (v16 = a5[1]) != 0 && (v17 = sub_1000A8480(*a5, *a5 + v16, &v40, 1), v17))
      {
        v12 = v17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

LABEL_30:
    memset_s(&v40, 0xB0uLL, 0, 0xB0uLL);
    return v12;
  }

  if (a2 > 4)
  {
    if (a2 != 7)
    {
      if (a2 == 5)
      {
        sub_1000A3198(a6, &v40);
      }

      else
      {
        if (a2 != 6)
        {
          return v12;
        }

        sub_1000A30F8(a6, &v40);
      }

      return v40;
    }

    v19 = *a1;
    *&v39[0] = 0;
    __s = 0u;
    v59 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    v57[0] = 0uLL;
    if (a4 && *a4 && a4[1])
    {
      if (!a5)
      {
        goto LABEL_39;
      }

      v20 = *a5;
      if (!*a5)
      {
        goto LABEL_39;
      }

      v21 = a5[1];
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!a5)
      {
        goto LABEL_50;
      }

      v20 = *a5;
      if (!*a5)
      {
        goto LABEL_50;
      }

      v21 = a5[1];
      if (!v21)
      {
        goto LABEL_50;
      }

      if (!a4)
      {
LABEL_39:
        v12 = 4294967285;
        goto LABEL_51;
      }
    }

    v22 = sub_1000A8660(v20, v20 + v21, &v40);
    if (v22 || (v22 = sub_1000A2A58(a4, &v40, &__s, v39, v19, v57), v22) || (v19 & 8) != 0 && (v22 = sub_1000A0F90(), v22))
    {
      v12 = v22;
      goto LABEL_51;
    }

LABEL_50:
    v12 = 0;
LABEL_51:
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
    if (*&v57[0])
    {
      memset_s(*&v57[0], *(&v57[0] + 1), 0, *(&v57[0] + 1));
      free(*&v57[0]);
    }

    goto LABEL_30;
  }

  if ((a2 - 1) >= 4)
  {
    return v12;
  }

LABEL_4:
  v13 = *a1;
  v35 = 0;
  __s = 0u;
  v59 = 0u;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v33 = 0;
  __n = 0;
  __count = 0;
  memset(dst, 0, sizeof(dst));
  v37 = 0uLL;
  v31 = 0;
  v14 = sub_1000A866C(0, 1, &__count);
  if (v14)
  {
    goto LABEL_98;
  }

  if (!__count)
  {
    goto LABEL_108;
  }

  if (!a6 || !*a6)
  {
    v12 = 4294967285;
    goto LABEL_22;
  }

  v12 = 4294967285;
  if (a7)
  {
    v15 = a6[1];
    if (v15)
    {
      v14 = sub_1000A82C0(*a6, *a6 + v15, &v40);
      if (v14)
      {
        goto LABEL_98;
      }

      if ((v13 & 0x40) != 0)
      {
        if (a5 && a5[1] == 16)
        {
          uuid_copy(dst, *a5);
LABEL_15:
          v12 = 4294967284;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      v14 = sub_1000A23E4(v13, 1, a4, a5, &__s, &v35, &v31, dst, &v37, &v33);
      if (v14)
      {
        goto LABEL_98;
      }

      if (a2 != 3)
      {
        if (a2 == 2)
        {
          if (BYTE5(v42[0]) != 1)
          {
            sub_1000A3314();
          }
        }

        else if (a2 == 1 && BYTE5(v42[0]) != 1)
        {
          sub_1000A337C();
        }

        goto LABEL_15;
      }

      if (BYTE5(v42[0]) != 1)
      {
        if (BYTE5(v42[0]))
        {
          goto LABEL_15;
        }

        if ((v42[0] & 0x1000) != 0)
        {
          if ((v42[0] & 2) != 0)
          {
            goto LABEL_15;
          }

          if (((v31 ^ LODWORD(v42[0])) & 1) == 0)
          {
            v14 = sub_1000A89D0(0, 0, &v40, v57);
            if (!v14)
            {
              v14 = sub_1000A2F40(&v40, &__s, v35, v57);
              if (!v14)
              {
                *(v42 + 6) = v37;
                goto LABEL_74;
              }
            }

LABEL_98:
            v12 = v14;
            goto LABEL_22;
          }

          fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek and unmanaged vek device protection mismatch vek:%x, kek:%x%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "_cmd_handle_vek", ":", 2811, &byte_1000B36A6, LODWORD(v42[0]), v31, &byte_1000B36A6);
LABEL_105:
          v12 = 4294967287;
          goto LABEL_22;
        }

LABEL_101:
        v12 = 4294967288;
        goto LABEL_22;
      }

      if ((v56 & 2) != 0)
      {
        goto LABEL_101;
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_105;
      }

      v14 = sub_1000A89D0(0, 0, &v40, v57);
      if (v14)
      {
        goto LABEL_98;
      }

      LODWORD(v29) = 0;
      if (sub_1000A0C38(&__s, 32))
      {
        if (sub_1000A0C38(v57, 32))
        {
          if (*(&v40 + 1))
          {
            goto LABEL_15;
          }

          LODWORD(v56) = v56 | 2;
          v36 = 40;
          if (!sub_1000A967C(0x20u, &v29) || v29 > 0x28)
          {
            goto LABEL_22;
          }

          if (sub_1000A36F0(&__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v57, 0x20u, &v45, &v36))
          {
            goto LABEL_109;
          }

          if (v42[0])
          {
            v28 = sub_1000A1234;
            if ((v42[0] & 0x2000) == 0)
            {
              v28 = sub_1000A1230;
            }

            if (((v28)(1, &unk_1000EA048, &v45, &v45, 32) & 1) == 0)
            {
LABEL_109:
              v12 = 0xFFFFFFFFLL;
              goto LABEL_22;
            }
          }

          *(v42 + 6) = v37;
          if (*(&v40 + 1))
          {
            goto LABEL_15;
          }

          LODWORD(v56) = v56 & 0xFFFFFFFE;
LABEL_74:
          v23 = calloc(__count, 1uLL);
          if (!v23)
          {
            v12 = 4294967279;
            goto LABEL_22;
          }

          v24 = v23;
          v29 = v23;
          v30 = &v23[__count];
          if (!sub_1000A7D88(&v29, &v40))
          {
            v12 = 4294967273;
            goto LABEL_97;
          }

          v25 = v30;
          v26 = &v24[__count] - v30;
          v27 = *a7;
          if (*a7)
          {
            if (v26 > *(a7 + 8))
            {
              v12 = 0xFFFFFFFFLL;
LABEL_97:
              memset_s(v24, __count, 0, __count);
              free(v24);
              goto LABEL_22;
            }
          }

          else
          {
            v27 = calloc(&v24[__count] - v30, 1uLL);
            if (!v27)
            {
              v12 = 4294967279;
              goto LABEL_97;
            }

            *a7 = v27;
            v25 = v30;
          }

          *(a7 + 8) = v26;
          memcpy(v27, &v24[v25 - v29], v26);
          v12 = 0;
          goto LABEL_97;
        }

        sub_1000A32AC();
      }

      else
      {
        sub_1000A3244();
      }

LABEL_108:
      v12 = 4294967286;
    }
  }

LABEL_22:
  memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v57, 0x20uLL, 0, 0x20uLL);
  memset_s(v39, 0x20uLL, 0, 0x20uLL);
  if (v33)
  {
    memset_s(v33, __n, 0, __n);
    free(v33);
  }

  return v12;
}

uint64_t sub_1000A1980(unint64_t *a1, uint64_t a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  memset(v35, 0, sizeof(v35));
  *v27 = 32;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  memset(__s, 0, sizeof(__s));
  __count = 0;
  v12 = a3 && *a3 && a3[1] != 0;
  v33 = 0uLL;
  v34 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v13 = sub_1000A866C(0, 1, &__count);
  if (v13)
  {
    goto LABEL_29;
  }

  if (!__count)
  {
    v14 = 4294967286;
    goto LABEL_30;
  }

  v14 = 4294967285;
  if (!a4 || !a5 || !*a5 || __count > *(a5 + 8))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    if (!*a3)
    {
      goto LABEL_30;
    }

    v15 = a3[1];
    if (!v15)
    {
      goto LABEL_30;
    }

    v13 = sub_1000A8660(*a3, *a3 + v15, __s);
    if (!v13)
    {
      v13 = sub_1000A2A58(a2, __s, v35, v27, *a1, 0);
      if (!v13)
      {
        v13 = sub_1000A2534(a4, WORD4(__s[1]) & 0x2809, v35, *v27, v29, &v31);
        if (!v13)
        {
          *(&v29[2] + 6) = *(&__s[1] + 14);
          goto LABEL_19;
        }
      }
    }

    goto LABEL_29;
  }

  v13 = sub_1000A2534(a4, 0, 0, 0, v29, &v31);
  if (v13)
  {
LABEL_29:
    v14 = v13;
LABEL_30:
    memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
    goto LABEL_27;
  }

LABEL_19:
  v16 = calloc(__count, 1uLL);
  if (!v16)
  {
    v14 = 4294967279;
    goto LABEL_30;
  }

  v17 = v16;
  v24 = v16;
  v25 = &v16[__count];
  if (sub_1000A7D88(&v24, v29))
  {
    v18 = v25;
    v19 = v24;
    v20 = &v17[__count] - v25;
    *(a5 + 8) = v20;
    memcpy(*a5, &v18[v17 - v19], v20);
    if (a6)
    {
      v21 = *a6;
      if (*a6 && *(a6 + 8) >= 0x20uLL)
      {
        v14 = 0;
        *(a6 + 8) = 32;
        v22 = v32;
        *v21 = v31;
        v21[1] = v22;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 4294967273;
  }

  memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
  memset_s(v17, __count, 0, __count);
  free(v17);
LABEL_27:
  memset_s(v35, 0x20uLL, 0, 0x20uLL);
  memset_s(&v31, 0x40uLL, 0, 0x40uLL);
  return v14;
}

uint64_t sub_1000A1C74(unint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  memset(__s, 0, 32);
  v28 = 32;
  v34 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v9 = a4 && *a4 && *(a4 + 8) != 0;
  v37 = 0uLL;
  v38 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v26 = 0;
  __n = 0;
  memset(v30, 0, sizeof(v30));
  memset(dst, 0, sizeof(dst));
  v25 = 0;
  if (!a5 || !*a5 || (v10 = a5[1]) == 0)
  {
LABEL_46:
    v12 = 4294967285;
    goto LABEL_13;
  }

  if (v9)
  {
    v11 = *a1;
    if ((v11 & 0x40) != 0)
    {
      if (a4 && *(a4 + 8) == 16)
      {
        uuid_copy(dst, *a4);
        v12 = 4294967284;
        goto LABEL_13;
      }

      goto LABEL_46;
    }

    v14 = sub_1000A23E4(v11, (a2 >> 1) & 1, a3, a4, __s, &v28, &v25, dst, v30, &v26);
    if (v14)
    {
      goto LABEL_47;
    }

    v14 = sub_1000A82C0(*a5, *a5 + a5[1], &v31);
    if (v14)
    {
      goto LABEL_47;
    }

    v15 = __s;
  }

  else
  {
    v14 = sub_1000A82C0(*a5, *a5 + v10, &v31);
    if (v14)
    {
LABEL_47:
      v12 = v14;
      goto LABEL_13;
    }

    uuid_copy(v30, v33 + 6);
    v15 = 0;
  }

  if (v9)
  {
    v16 = v28;
  }

  else
  {
    v16 = 0;
  }

  v14 = sub_1000A89D0(v15, v16, &v31, &v35);
  if (v14)
  {
    goto LABEL_47;
  }

  if (!a7)
  {
LABEL_25:
    v12 = 0;
    v13 = "successful";
    goto LABEL_26;
  }

  v17 = *a7;
  if (*a7 && *(a7 + 8) >= 0x20uLL)
  {
    *(a7 + 8) = 32;
    v18 = v36;
    *v17 = v35;
    v17[1] = v18;
    goto LABEL_25;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_13:
  v42 = 0uLL;
  if ((byte_1000EA040 & 1) == 0)
  {
    v13 = "failed";
LABEL_26:
    v42 = v32;
    goto LABEL_34;
  }

  v40 = 0;
  v41[0] = 0;
  *(v41 + 6) = 0;
  if (v9)
  {
    sub_1000A0C64("kek group", v30, 0x10uLL);
  }

  if (a5)
  {
    if (*a5)
    {
      v19 = a5[1];
      if (v19)
      {
        sub_1000A7F38(*a5, *a5 + v19, &v40, 0, 0, &v42, 0, 1);
        sub_1000A0C64("vek group", &v40 + 6, 0x10uLL);
      }
    }
  }

  v13 = "failed";
LABEL_34:
  v20 = __stdoutp;
  if (v9)
  {
    v21 = dst;
  }

  else
  {
    v21 = &v42;
  }

  if (v9)
  {
    v22 = "user";
  }

  else
  {
    v22 = "volume";
  }

  v23 = sub_1000A0E54(v21, 0x10uLL);
  fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s %s unlock %s (%d)%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "_unlock_result", ":", 4034, &byte_1000B36A6, v22, v23, v13, v12, &byte_1000B36A6);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(&v35, 0x40uLL, 0, 0x40uLL);
  if (v26)
  {
    memset_s(v26, __n, 0, __n);
    free(v26);
  }

  return v12;
}

uint64_t sub_1000A2010(void *a1, int a2, uint64_t a3, const unsigned __int8 *a4, const unsigned __int8 *a5, __int128 *a6, uint64_t a7)
{
  v12 = a2;
  memset(__s, 0, sizeof(__s));
  if ((a2 & 8) != 0)
  {
    v14 = 10249;
  }

  else
  {
    v14 = (a2 << 9) & 0x800;
  }

  __count = 0;
  v15 = sub_1000A866C(0, 2, &__count);
  if (v15)
  {
    goto LABEL_16;
  }

  if (!__count)
  {
    v21 = 4294967286;
    goto LABEL_19;
  }

  if (!a7 || !*a7 || __count > *(a7 + 8))
  {
    v21 = 4294967285;
LABEL_19:
    memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
    return v21;
  }

  v15 = sub_1000A26CC(a5, a4, v14 | v12 & 1u, a3, a6, __s, *a1 & 4);
  if (v15)
  {
LABEL_16:
    v21 = v15;
    goto LABEL_19;
  }

  v16 = calloc(__count, 1uLL);
  if (!v16)
  {
    v21 = 4294967279;
    goto LABEL_19;
  }

  v17 = v16;
  v23 = v16;
  v24 = &v16[__count];
  if (sub_1000A82CC(&v23, __s))
  {
    v18 = v24;
    v19 = v23;
    v20 = &v17[__count] - v24;
    *(a7 + 8) = v20;
    memcpy(*a7, &v18[v17 - v19], v20);
    v21 = 0;
  }

  else
  {
    v21 = 4294967273;
  }

  memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
  memset_s(v17, __count, 0, __count);
  free(v17);
  return v21;
}

uint64_t sub_1000A2224(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_1000A2250(void *a1)
{

  return memset_s(a1, 0xB0uLL, 0, 0xB0uLL);
}

uint64_t sub_1000A22AC(uint64_t a1, _OWORD *a2)
{
  bzero(v13, 0x88uLL);
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  if (*(a1 + 37))
  {
    v4 = 4294967284;
  }

  else
  {
    v14 = 32;
    *&v12[0] = *a1;
    ccsha256_di();
    if (cchkdf())
    {
      goto LABEL_10;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_1000A21FC();
    v6 = v5;
    if (v7)
    {
      v6 = sub_1000A1230;
    }

    if (!(v6)(1, &unk_1000EA048, &v10, &v10, 32))
    {
LABEL_10:
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_8:
      v4 = 0;
      v8 = v11;
      *a2 = v10;
      a2[1] = v8;
    }
  }

  sub_1000A2224(&v10);
  sub_1000A2224(v12);
  return v4;
}

uint64_t sub_1000A23E4(unint64_t a1, int a2, uint64_t a3, unint64_t *a4, void *a5, size_t *a6, _DWORD *a7, unsigned __int8 *a8, unsigned __int8 *a9, void **a10)
{
  bzero(&v25, 0xB0uLL);
  v18 = 4294967285;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7)
          {
            if (a8)
            {
              if (a9)
              {
                if (*a4)
                {
                  v19 = a4[1];
                  if (v19)
                  {
                    v20 = sub_1000A8660(*a4, *a4 + v19, &v25);
                    if (!v20)
                    {
                      uuid_copy(a8, v26);
                      uuid_copy(a9, v28);
                      v21 = v29;
                      *a7 = v27;
                      v22 = v21 & 0xFFFFFFF7;
                      if (a2)
                      {
                        v23 = 0;
                      }

                      else
                      {
                        v23 = 8;
                      }

                      v29 = v22 | v23;
                      v20 = sub_1000A2A58(a3, &v25, a5, a6, a1, a10);
                    }

                    v18 = v20;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1000A2250(&v25);
  return v18;
}

uint64_t sub_1000A2534(const unsigned __int8 *a1, int a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  bzero(a5, 0x118uLL);
  a5[36] = 1;
  *(a5 + 8) = a2 & 0xFFFFFFFD;
  uuid_copy(a5 + 16, a1);
  sub_1000A0A5C(a5, 8);
  sub_1000A0A5C(a6, 32);
  if (*(a5 + 1) || a5[37])
  {
    v12 = 4294967284;
    goto LABEL_4;
  }

  if (a3)
  {
    if (!sub_1000A2F40(a5, a3, a4, a6))
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v15 = 40;
  v12 = 4294967285;
  if (sub_1000A967C(0x20u, &v16) && v16 <= 0x28)
  {
    v14 = sub_1000A22AC(a5, v17);
    if (v14)
    {
      v12 = v14;
      goto LABEL_4;
    }

    if (!sub_1000A36F0(v17, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a6, 0x20u, a5 + 7, &v15))
    {
      *(a5 + 8) |= 0x1000u;
LABEL_11:
      v12 = 0;
      goto LABEL_4;
    }

LABEL_13:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_4:
  sub_1000A2224(v17);
  sub_1000A2224(v18);
  return v12;
}

uint64_t sub_1000A26CC(const unsigned __int8 *a1, const unsigned __int8 *a2, int a3, uint64_t a4, __int128 *a5, unsigned __int8 *a6, unint64_t a7)
{
  memset(v40, 0, sizeof(v40));
  __n = 0;
  v37 = 32;
  v38 = 0u;
  v39 = 0u;
  __s = 0;
  v34 = 0;
  if (!a2)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  if (a6)
  {
    v12 = sub_1000A893C(&__s, a4, (a7 & 4) != 0);
    if (!v12)
    {
      if (a5)
      {
        v13 = a5[1];
        v38 = *a5;
        v39 = v13;
      }

      else
      {
        sub_1000A0A5C(&v38, 32);
      }

      bzero(a6, 0xB0uLL);
      *(a6 + 6) = (8 * a3) & 0x10 | a3 & 0xFFFFF9BD;
      v14 = a6 + 24;
      a6[28] = 2;
      if (uuid_compare(byte_1000B35C8, a1))
      {
        *(a6 + 30) = *a1;
      }

      else
      {
        v17 = 16;
        while (1)
        {
          uuid_generate(a6 + 30);
          if (a6[30] || a6[31])
          {
            break;
          }

          if (!--v17)
          {
            sub_1000A06A8();
            fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to generate valid kek group uuid after 16 attempts%s\n", "aks", v19, v28, v29, v30, v31, v32, v33, ":", 4364, &byte_1000B36A6, &byte_1000B36A6);
            v15 = 4294967286;
            goto LABEL_13;
          }
        }
      }

      uuid_copy(a6 + 8, a2);
      sub_1000A7C24(a6);
      if (*a6)
      {
        goto LABEL_12;
      }

      if (a6[29] != 1)
      {
        if (a6[29])
        {
LABEL_12:
          v15 = 4294967284;
          goto LABEL_13;
        }

        sub_1000A0A5C((a6 + 96), 16);
        memset(v41, 0, sizeof(v41));
        v20 = mach_continuous_time();
        ccsha256_di();
        if (ccpbkdf2_hmac())
        {
          v23 = 0;
        }

        else
        {
          v21 = mach_continuous_time();
          sub_1000A2224(v41);
          v22 = sub_1000A0BF8(v21 - v20);
          v23 = 100000;
          if (v22)
          {
            v23 = 0x174876E800 / v22;
          }
        }

        if (v23 <= 0x186A0)
        {
          v23 = 100000;
        }

        *(a6 + 11) = v23;
      }

      v12 = sub_1000A2BE4(a6, __s, __n, v40, &v37);
      if (!v12)
      {
        LODWORD(v41[0]) = 40;
        v15 = 4294967285;
        if (sub_1000A967C(0x20u, &v34) && v34 <= 0x28)
        {
          if (sub_1000A36F0(v40, v37, 0xA6A6A6A6A6A6A6A6, 0, &v38, 0x20u, a6 + 6, v41))
          {
            goto LABEL_41;
          }

          if ((*v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_1000A21FC();
          v25 = v24;
          if (v26)
          {
            v25 = sub_1000A1230;
          }

          if (((v25)(1, &unk_1000EA048, a6 + 48, a6 + 48, 32) & 1) == 0)
          {
LABEL_41:
            v15 = 0xFFFFFFFFLL;
          }

          else
          {
LABEL_35:
            v27 = sub_1000A06A0();
            if (v27 <= 0x15)
            {
              bzero(v14 + v27, 22 - v27);
            }

            v15 = 0;
          }
        }

        goto LABEL_13;
      }
    }

    v15 = v12;
  }

  else
  {
    v15 = 4294967285;
  }

LABEL_13:
  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

LABEL_15:
  sub_1000A2224(v40);
  sub_1000A2224(&v38);
  return v15;
}

uint64_t sub_1000A2A58(uint64_t a1, uint64_t a2, void *a3, size_t *a4, unint64_t a5, void **a6)
{
  memset(v20, 0, sizeof(v20));
  *&__n[1] = 32;
  __src = 0u;
  v19 = 0u;
  __n[0] = 32;
  __s = 0;
  __smax = 0;
  v6 = 4294967285;
  if (a1 && a2)
  {
    v11 = sub_1000A893C(&__s, a1, (a5 & 4) != 0);
    if (v11 || (v11 = sub_1000A2BE4(a2, __s, __smax, v20, &__n[1]), v11) || (v11 = sub_1000A2D84(a2, v20, *&__n[1], &__src, __n), v11))
    {
      v6 = v11;
    }

    else
    {
      if (a3 && a4)
      {
        if ((*(a2 + 120) & 1) != 0 && !sub_1000A0C38(&v19, 16))
        {
          *(a2 + 24) |= 0x10u;
        }

        if ((*(a2 + 24) & 0x10) != 0)
        {
          v12 = 16;
          __n[0] = 16;
        }

        else
        {
          v12 = __n[0];
        }

        memcpy(a3, &__src, v12);
        *a4 = v12;
      }

      v6 = 0;
      if (a6)
      {
        v13 = __smax;
        *a6 = __s;
        a6[1] = v13;
        __s = 0;
        __smax = 0;
      }
    }
  }

  sub_1000A2224(v20);
  sub_1000A2224(&__src);
  if (__s)
  {
    memset_s(__s, __smax, 0, __smax);
    free(__s);
  }

  return v6;
}

uint64_t sub_1000A2BE4(uint64_t a1, void *__src, size_t __n, void *a4, size_t *a5)
{
  memset(v30, 0, sizeof(v30));
  if (*(a1 + 28) != 2 || *a5 != 32)
  {
    v21 = 4294967285;
    goto LABEL_20;
  }

  v10 = *(a1 + 24);
  if ((v10 & 2) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  if (v10)
  {
    ccsha256_di();
    sub_1000A2298();
    if (j__ccpbkdf2_hmac(v12, v13, v14, v15, v16, 1, v11, v17))
    {
      goto LABEL_16;
    }

    sub_1000A21FC();
    v19 = v18;
    if (v20)
    {
      v19 = sub_1000A1230;
    }

    if (!(v19)(1, &unk_1000EA048, v30, v30, v11))
    {
      goto LABEL_22;
    }
  }

  if (!*a1)
  {
    if (*(a1 + 29) != 1)
    {
      if (*(a1 + 29))
      {
        goto LABEL_12;
      }

      ccsha256_di();
      sub_1000A2298();
      if (j__ccpbkdf2_hmac(v22, v23, v24, v25, v26, v27, v11, v28))
      {
LABEL_16:
        v21 = 4294967274;
        goto LABEL_20;
      }

LABEL_19:
      memcpy(a4, v30, v11);
      v21 = 0;
      *a5 = v11;
      goto LABEL_20;
    }

    if (__n <= 0x20)
    {
      memcpy(v30, __src, __n);
      v11 = __n;
      goto LABEL_19;
    }

LABEL_22:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

LABEL_12:
  v21 = 4294967284;
LABEL_20:
  sub_1000A2224(v30);
  return v21;
}

uint64_t sub_1000A2D84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  if (*a5 != 32)
  {
    return 4294967285;
  }

  if (*a1 || *(a1 + 29) > 1u)
  {
    return 4294967284;
  }

  v8 = a3;
  if ((*(a1 + 24) & 2) != 0)
  {
    *a5 = 16;
    v10 = 24;
  }

  else
  {
    v10 = 40;
  }

  v12 = v10;
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  HIDWORD(v20) = 0;
  if (!sub_1000A3B10(v15, &v20 + 1))
  {
    return 4294967285;
  }

  v16 = HIDWORD(v20);
  if (HIDWORD(v20) > *a5)
  {
    return 4294967285;
  }

  memcpy(v14, (a1 + 48), v12);
  if (*(a1 + 24))
  {
    sub_1000A21FC();
    v18 = v17;
    if (v19)
    {
      v18 = sub_1000A1230;
    }

    if (!(v18)(0, &unk_1000EA048, v14, v14, v16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = sub_1000A3AA4(a2, v8, 0xA6A6A6A6A6A6A6A6, 0, v14, v12, a4, a5);
  if (result)
  {
    return 4294967291;
  }

  return result;
}

uint64_t sub_1000A2F40(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = a3;
  v18 = 0;
  if (!sub_1000A0C38(a2, 32))
  {
    sub_1000A06A8();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Internal Error: Null KEK, file radar%s\n", "aks", v15);
    return 4294967286;
  }

  if (!sub_1000A0C38(a4, 32))
  {
    sub_1000A06A8();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Internal Error: Null VEK, file radar%s\n", "aks", v17);
    return 4294967286;
  }

  if (*(a1 + 8))
  {
    return 4294967284;
  }

  v9 = sub_1000A967C(0x20u, &v18);
  result = 4294967285;
  if (v9 && v18 <= 0x28)
  {
    if (!sub_1000A36F0(a2, v5, 0xA6A6A6A6A6A6A6A6, 0, a4, 0x20u, (a1 + 56), &v18))
    {
      v10 = *(a1 + 32);
      if ((v10 & 1) == 0)
      {
LABEL_13:
        result = 0;
        *(a1 + 32) = v10 & 0xFFFFEFFF;
        return result;
      }

      sub_1000A21FC();
      v12 = v11;
      if (v13)
      {
        v12 = sub_1000A1230;
      }

      if ((v12)(1, &unk_1000EA048, a1 + 56, a1 + 56, 32))
      {
        v10 = *(a1 + 32);
        goto LABEL_13;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000A30F8(unint64_t *a1, _DWORD *a2)
{
  bzero(v6, 0x118uLL);
  if (a1 && *a1 && (v4 = a1[1]) != 0)
  {
    result = sub_1000A8208(*a1, *a1 + v4, v6, 1);
  }

  else
  {
    result = 4294967285;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1000A3198(unint64_t *a1, _DWORD *a2)
{
  bzero(v6, 0x118uLL);
  if (a1 && *a1 && (v4 = a1[1]) != 0)
  {
    result = sub_1000A82C0(*a1, *a1 + v4, v6);
    if (!result)
    {
      if (v6[37] == 1)
      {
        result = 0;
      }

      else
      {
        result = 4294967285;
      }
    }
  }

  else
  {
    result = 4294967285;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1000A33F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v43 = a1;
  v44 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  __chkstk_darwin(v14);
  v45 = &v36 - v15;
  bzero(&v36 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  bzero(&v36 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v38 = &v36;
  v39 = a8;
  v40 = a6;
  v37 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < a6 + 8)
    {
      sub_1000A3B54(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v39 >= v40 + 8)
  {
LABEL_15:
    v21 = v40 >> 3;
    if (v40 >> 3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 8;
    v24 = v22;
    do
    {
      v25 = *a5++;
      *(__s + v23) = v25;
      v23 += 16;
      --v24;
    }

    while (v24);
    v26 = 0;
    *&__s[0] = v44;
    v27 = 1;
    v41 = v21;
    v42 = v22;
    do
    {
      v43 = v27;
      v44 = v26;
      v28 = __s;
      v29 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_1000EA048, v28, v28, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          cccbc_clear_iv();
          sub_1000A33E4(v14, v45, v18, 0x10uLL);
        }

        v30 = *v28;
        v28 += 2;
        *&__s[v29 % v21] = v30 ^ bswap64(v27++);
        ++v29;
        --v22;
      }

      while (v22);
      v26 = v44 + 1;
      v22 = v42;
      v27 = v43 + v41;
    }

    while (v44 != 5);
    v31 = v37;
    *v37 = *&__s[0];
    v32 = v31 + 1;
    v33 = __s + 1;
    do
    {
      v34 = *v33;
      v33 += 2;
      *v32++ = v34;
      --v22;
    }

    while (v22);
    v19 = 0;
    *v39 = (v40 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_32:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_1000A3B54(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000A36F0(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_1000A33F0(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_1000A0F04(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_1000A375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v40 = a3;
  v46 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  __chkstk_darwin(v14);
  v47 = &v38 - v15;
  bzero(&v38 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  bzero(&v38 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v45 = a6;
  v20 = a6 >> 3;
  if (v20 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v41 = &v38;
  v42 = a8;
  v39 = a7;
  if (!a4)
  {
    v21 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v21 || !a8 || *a8 < v45 - 8)
    {
      sub_1000A3B54(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v42 >= v45 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v22 = v20 - 1;
    if (v20 != 1)
    {
      v23 = __s + 1;
      v24 = a5 + 1;
      v25 = v20 - 1;
      do
      {
        v26 = *v24++;
        *v23 = v26;
        v23 += 2;
        --v25;
      }

      while (v25);
    }

    v27 = 6 * v20 - 6;
    v44 = 1 - v20;
    v28 = 5;
    v43 = &__s[v20 - 2];
    do
    {
      LODWORD(v46) = v28;
      if (v45 >= 0x10)
      {
        v29 = v43;
        v30 = v20 - 1;
        v31 = v27;
        do
        {
          *v29 = *&__s[v30 % v22] ^ bswap64(v31);
          if (a4)
          {
            if ((a4(0, &unk_1000EA048, v29, v29, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            cccbc_clear_iv();
            sub_1000A33E4(v14, v47, v18, 0x10uLL);
          }

          --v31;
          v29 -= 2;
          v32 = __OFSUB__(v30--, 1);
        }

        while (!((v30 < 0) ^ v32 | (v30 == 0)));
      }

      v28 = v46 - 1;
      v27 += v44;
    }

    while (v46);
    if (*&__s[0] == v40)
    {
      v33 = v39;
      if (v20 != 1)
      {
        v34 = __s + 1;
        v35 = v20 - 1;
        do
        {
          v36 = *v34;
          v34 += 2;
          *v33++ = v36;
          --v35;
        }

        while (v35);
      }

      v19 = 0;
      *v42 = 8 * v22;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_34:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_1000A3B54(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000A3AA4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_1000A375C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_1000A0F04(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_1000A3B10(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_1000A3B24(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_1000A3B38(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

void sub_1000A79FC(os_log_t log)
{
  v1 = 136315138;
  v2 = "appexPrintInternal";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: No message connection object, can't log message", &v1, 0xCu);
}

void sub_1000A7A80(os_log_t log)
{
  v1 = 136315138;
  v2 = "appexPrintInternal";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Context is null, can't log message", &v1, 0xCu);
}

void sub_1000A7B04(void *a1, NSObject *a2)
{
  [a1 code];
  v3[0] = 136315394;
  sub_100059E00();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to read, error %ld", v3, 0x16u);
}

void sub_1000A7B98()
{
  v3[0] = 136315650;
  sub_100059E00();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: Expected to read %lu bytes, read %lu", v3, 0x20u);
}

uint64_t sub_1000A7C24(uint64_t result)
{
  v1 = *(result + 120);
  if ((v1 & 0x20) == 0)
  {
    v2 = result;
    if (!memcmp((result + 8), &unk_1000B34E8, 0x10uLL))
    {
      sub_1000A06A8();
      result = fprintf(v5, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s personal recovery key%s\n", "aks", v6);
    }

    else if (!memcmp((v2 + 8), &unk_1000B34F8, 0x10uLL))
    {
      sub_1000A06A8();
      result = fprintf(v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s icloud recovery key%s\n", "aks", v8);
    }

    else
    {
      result = memcmp((v2 + 8), &unk_1000B3508, 0x10uLL);
      if (result)
      {
LABEL_9:
        *(v2 + 120) = v1 | 0x20;
        return result;
      }

      sub_1000A06A8();
      result = fprintf(v3, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s institutional recovery key%s\n", "aks", v4);
    }

    v1 = *(v2 + 120) | 0x10;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000A7D88(uint64_t *a1, uint64_t a2)
{
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = *a1;
  v4 = a1[1];
  if (*(a2 + 37))
  {
    sub_1000A0A5C(&v8 + 8, 8);
  }

  else
  {
    *(&v8 + 1) = *a2;
  }

  if (*(a2 + 8) || *(a2 + 37))
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error %d%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "fv_encode_vek_blob", ":", 775, &byte_1000B36A6, -12, &byte_1000B36A6);
    return 0;
  }

  else
  {
    result = sub_1000A06D0();
    if (result)
    {
      sub_1000A06BC();
      result = ccder_blob_encode_implicit_raw_octet_string();
      if (result)
      {
        result = ccder_blob_encode_implicit_raw_octet_string();
        if (result)
        {
          result = ccder_blob_encode_implicit_uint64();
          if (result)
          {
            result = ccder_blob_encode_tl();
            if (result)
            {
              result = sub_1000A0718(a1, v7, *(a2 + 32), v5 + a1[1] - *a1, v4 - a1[1]);
              if (result)
              {
                return ccder_blob_encode_tl();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A7F38(unint64_t a1, unint64_t a2, unsigned int *a3, _OWORD *a4, void *a5, _OWORD *a6, void *a7, int a8)
{
  v43.n128_u64[0] = a1;
  v43.n128_u64[1] = a2;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  if (a1 == a2)
  {
    return 4294967277;
  }

  v42 = 0;
  v46 = 0uLL;
  if (!ccder_blob_decode_range())
  {
    return 4294967277;
  }

  if (sub_1000A88C0(&v43, 0x8000000000000000, v47, v14, v15, v16, v17, v18, v19, v20))
  {
    if (*&v47[0])
    {
      return 4294967277;
    }
  }

  else
  {
    *&v47[0] = 0;
  }

  if (!sub_1000A884C(&v43, 0x8000000000000001, &v47[1] + 8, 32))
  {
    return 4294967277;
  }

  if (!sub_1000A884C(&v43, 0x8000000000000002, &v48 + 8, 8))
  {
    return 4294967277;
  }

  v21 = v43.n128_u64[0];
  __src[0] = 0;
  v45 = 0;
  if (!ccder_blob_decode_tag())
  {
    return 4294967277;
  }

  if (!ccder_blob_decode_len())
  {
    return 4294967277;
  }

  if ((v45 & 0xFFFFFFFFFFFFFFEFLL) != 0xA000000000000003)
  {
    return 4294967277;
  }

  *(&v47[0] + 1) = v21;
  *&v47[1] = __src[0] + v43.n128_u64[0] - v21;
  if (!sub_1000A88C0(&v43, 0x8000000000000000, &v42, v22, v23, v24, v25, v26, v27, v28))
  {
    return 4294967277;
  }

  if (!sub_1000A884C(&v43, 0x8000000000000001, &v46, 16))
  {
    return 4294967277;
  }

  v45 = 0;
  *__src = v43;
  if (!ccder_blob_decode_tl())
  {
    return 4294967277;
  }

  v36 = v45;
  if (v45 > 4)
  {
    v37 = __src[0];
    if (v45 >= 0x16)
    {
      v38 = 22;
    }

    else
    {
      v38 = v45;
    }

    memcpy(a3, __src[0], v38);
    v43.n128_u64[0] = v37 + v36;
  }

  else
  {
    v44 = 0;
    if (sub_1000A88C0(&v43, 0x8000000000000002, &v44, v29, v30, v31, v32, v33, v34, v35))
    {
      *a3 = v44;
    }
  }

  v39 = *a3;
  *__src = 0u;
  v50 = 0u;
  if (*&v47[0])
  {
    v40 = 4294967284;
  }

  else
  {
    v40 = 4294967290;
    if (sub_1000A07B0(v47, v39, __src))
    {
      if (!memcmp(__src, &v47[1] + 8, 0x20uLL))
      {
        v40 = 0;
      }

      else
      {
        v40 = 4294967290;
      }
    }
  }

  if (((v40 == -6) & ~a8) != 0 || !v40)
  {
    if (a5)
    {
      *a5 = v42;
    }

    if (a6)
    {
      *a6 = v46;
    }

    if (a4)
    {
      *a4 = v43;
    }

    if (a7)
    {
      if (*&v47[0])
      {
        return 4294967284;
      }

      else
      {
        v40 = 0;
        *a7 = *(&v48 + 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v40;
}

uint64_t sub_1000A8208(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = 0uLL;
  if (a1 == a2)
  {
    return 4294967277;
  }

  result = sub_1000A7F38(a1, a2, (a3 + 32), &v6, (a3 + 8), (a3 + 16), a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a3 + 36))
  {
    if (*(a3 + 36) == 1)
    {
      goto LABEL_7;
    }

    return 4294967277;
  }

  if ((*(a3 + 32) & 4) != 0)
  {
    return 4294967277;
  }

  *(a3 + 36) = 1;
LABEL_7:
  if (*(a3 + 8) || *(a3 + 37))
  {
    return 4294967284;
  }

  if (sub_1000A884C(&v6, 0x8000000000000003, (a3 + 56), 40))
  {
    return 0;
  }

  return 4294967277;
}

uint64_t sub_1000A82CC(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v7 = 0;
  sub_1000A0A5C(&v11, 8);
  if (*a2)
  {
    return 0;
  }

  if ((*(a2 + 24) & 0x80) == 0 || (result = ccder_blob_encode_implicit_uint64(), result))
  {
    if (*(a2 + 29) == 1)
    {
      result = sub_1000A06D0();
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (*(a2 + 29))
    {
      return 0;
    }

    result = ccder_blob_encode_implicit_raw_octet_string();
    if (result)
    {
      result = ccder_blob_encode_implicit_uint64();
      if (result)
      {
        if ((sub_1000A06D0() & 1) == 0)
        {
          return 0;
        }

LABEL_12:
        sub_1000A06BC();
        result = ccder_blob_encode_implicit_raw_octet_string();
        if (result)
        {
          result = ccder_blob_encode_implicit_raw_octet_string();
          if (result)
          {
            result = ccder_blob_encode_implicit_uint64();
            if (result)
            {
              result = ccder_blob_encode_tl();
              if (result)
              {
                result = sub_1000A0718(a1, &v7, *(a2 + 24), v5 + a1[1] - *a1, v4 - a1[1]);
                if (result)
                {
                  return ccder_blob_encode_tl();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A8480(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v26 = 0uLL;
  if (a1 == a2)
  {
    return 4294967277;
  }

  result = sub_1000A7F38(a1, a2, (a3 + 24), &v26, a3, (a3 + 8), 0, a4);
  if (result)
  {
    return result;
  }

  if (*(a3 + 28))
  {
    if (*(a3 + 28) != 2)
    {
      return 4294967277;
    }
  }

  else
  {
    *(a3 + 28) = 2;
    v6 = *(a3 + 24);
    if (!*(a3 + 29) && (v6 & 4) != 0)
    {
      *(a3 + 29) = 1;
    }

    if ((v6 & 2) == 0)
    {
      *(a3 + 120) |= 1u;
    }
  }

  if (*a3)
  {
    return 4294967284;
  }

  if (*(a3 + 29) == 1)
  {
    if (!sub_1000A06F8())
    {
      return 4294967277;
    }
  }

  else
  {
    if (*(a3 + 29))
    {
      return 4294967284;
    }

    if (!sub_1000A06F8() || !sub_1000A88C0(&v26, 0x8000000000000004, (a3 + 88), v7, v8, v9, v10, v11, v12, v13) || (sub_1000A884C(&v26, 0x8000000000000005, (a3 + 96), 16) & 1) == 0)
    {
      return 4294967277;
    }
  }

  v21 = *(a3 + 24);
  if ((v21 & 0x80) != 0)
  {
    if (!sub_1000A88C0(&v26, 0x8000000000000006, (a3 + 112), v14, v15, v16, v17, v18, v19, v20))
    {
      return 4294967277;
    }

    v21 = *(a3 + 24);
  }

  if ((v21 & 0x100) != 0)
  {
    if ((v21 & 2) != 0)
    {
      sub_1000A06A8();
      fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek constraint violation 1%s\n", "aks", v23);
    }

    else
    {
      if (v21)
      {
        goto LABEL_25;
      }

      sub_1000A06A8();
      fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek constraint violation 2%s\n", "aks", v25);
    }

    return 4294967277;
  }

LABEL_25:
  sub_1000A7C24(a3);
  return 0;
}

uint64_t sub_1000A866C(uint64_t a1, int a2, uint64_t *a3)
{
  if ((a2 - 2) >= 2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = qword_100108250;
    if (!qword_100108250)
    {
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof();
      ccder_sizeof_raw_octet_string();
      v5 = &qword_100108250;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = qword_100108258;
    if (!qword_100108258)
    {
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      v5 = &qword_100108258;
LABEL_7:
      ccder_sizeof();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      *v5 = v4;
    }
  }

  v6 = 0xFFFFFFFFLL;
  if (a3 && v4)
  {
    v6 = 0;
    *a3 = v4;
  }

  return v6;
}

uint64_t sub_1000A884C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_1000A096C(a1);
  sub_1000A0948();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_1000A0978(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_1000A095C(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_1000A095C(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_1000A88C0(__n128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = sub_1000A0984(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v15;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000A893C(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1000A89D0(_OWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v51, 0, sizeof(v51));
  v50 = 32;
  v4 = *(a3 + 32);
  if ((v4 & 2) != 0)
  {
    v5 = 24;
  }

  else
  {
    v5 = 40;
  }

  if (*(a3 + 8))
  {
    goto LABEL_5;
  }

  if (*(a3 + 37) == 1)
  {
    if ((v4 & 0x2000) != 0)
    {
      sub_1000A06A8();
      fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s sep managed vek cannot have flag_no_ephdm%s\n", "aks", v33, v42, v43, v44, v45, v46, *(&v46 + 1), ":", 616, &byte_1000B36A6, &byte_1000B36A6);
      v6 = 4294967257;
      goto LABEL_50;
    }

    *&v12 = __chkstk_darwin(a1);
    v48 = 0;
    v46 = v12;
    v47 = v12;
    LODWORD(v52) = 0;
    v6 = 4294967285;
    if (!sub_1000A3B10(0x28u, &v52) || v52 > 0x20)
    {
      goto LABEL_50;
    }

    if (a1)
    {
      v13 = *(a3 + 112);
      v46 = *(a3 + 96);
      v47 = v13;
      v48 = *(a3 + 128);
      if (*(a3 + 32))
      {
        sub_1000A21FC();
        v20 = v19;
        if (v21)
        {
          v20 = sub_1000A1230;
        }

        v22 = (v20)(0, &unk_1000EA048, &v46, &v46);
        v6 = 0xFFFFFFFFLL;
        if (HIDWORD(a2) || (v22 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (HIDWORD(a2))
      {
        goto LABEL_55;
      }

      v18 = 0;
    }

    else
    {
      v17 = *(a3 + 72);
      v46 = *(a3 + 56);
      v47 = v17;
      v48 = *(a3 + 88);
      if (HIDWORD(a2))
      {
LABEL_55:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_50;
      }

      if ((*(a3 + 33) & 0x20) != 0)
      {
        v18 = sub_1000A1234;
      }

      else
      {
        v18 = sub_1000A1230;
      }
    }

    if (a1)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }

    if (sub_1000A3AA4(a1, v23, 0xA6A6A6A6A6A6A6A6, v18, &v46, 0x28u, a4, &v50))
    {
      sub_1000A06A8();
      fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek failed to unwrap vek; mix-n-match?%s\n", "aks", v35, v36, v37, v38, v39, v40, v41, ":", 634, &byte_1000B36A6, &byte_1000B36A6);
      v6 = 4294967294;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (*(a3 + 37))
  {
LABEL_5:
    v6 = 4294967284;
    goto LABEL_50;
  }

  if ((v4 & 0x1000) != 0)
  {
    v49 = 0;
    v6 = 4294967285;
    if (sub_1000A3B24(v5, &v49) && v49 <= 0x20)
    {
      v14 = *(a3 + 72);
      v52 = *(a3 + 56);
      v53 = v14;
      v54 = *(a3 + 88);
      if (sub_1000A22AC(a3, v51))
      {
        goto LABEL_51;
      }

      v15 = v51;
      v16 = 32;
LABEL_45:
      if (!sub_1000A3AA4(v15, v16, 0xA6A6A6A6A6A6A6A6, 0, &v52, v5, a4, &v50))
      {
LABEL_46:
        if ((*(a3 + 32) & 2) == 0)
        {
LABEL_49:
          v6 = 0;
          goto LABEL_50;
        }

        if (v50 == 16)
        {
          v26 = ccsha256_di();
          __chkstk_darwin(v26);
          bzero(&v49 - v27, v28);
          v52 = 0u;
          v53 = 0u;
          sub_1000A228C();
          ccdigest_init();
          sub_1000A228C();
          ccdigest_update();
          sub_1000A228C();
          ccdigest_update();
          v29 = sub_1000A228C();
          v30(v29);
          cc_clear();
          *(a4 + 16) = v52;
          sub_1000A2224(&v52);
          goto LABEL_49;
        }

LABEL_51:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_50;
      }

LABEL_52:
      v6 = 4294967294;
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_52;
    }

    LODWORD(v49) = 0;
    v6 = 4294967285;
    if (sub_1000A3B10(v5, &v49) && v49 <= 0x20)
    {
      v11 = *(a3 + 72);
      v52 = *(a3 + 56);
      v53 = v11;
      v54 = *(a3 + 88);
      if ((v4 & 1) == 0)
      {
        if (HIDWORD(a2))
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      v24 = sub_1000A1234;
      if ((v4 & 0x2000) == 0)
      {
        v24 = sub_1000A1230;
      }

      v25 = (v24)(0, &unk_1000EA048, a3 + 56, &v52);
      v6 = 0xFFFFFFFFLL;
      if (!HIDWORD(a2) && (v25 & 1) != 0)
      {
LABEL_44:
        v15 = a1;
        v16 = a2;
        goto LABEL_45;
      }
    }
  }

LABEL_50:
  sub_1000A2224(v51);
  return v6;
}

uint64_t sub_1000A8EAC(uint64_t a1, void *a2, _DWORD *a3)
{
  bzero(v46, 0x118uLL);
  bzero(v44, 0xB0uLL);
  LOWORD(v43) = 0;
  *(&v43 + 2) = 0;
  *(&v43 + 1) = 0;
  if (a2 && *a2)
  {
    v5 = 4294967285;
    if (a3 && a2[1])
    {
      memset_s(a3, 0x58uLL, 0, 0x58uLL);
      v6 = sub_1000A226C();
      v5 = sub_1000A7F38(v6, v7, v8, v9, v10, v11, v12, 1);
      if (v5 == -6)
      {
        a3[9] |= 0x2000000u;
        v13 = sub_1000A226C();
        v5 = sub_1000A7F38(v13, v14, v15, v16, v17, v18, v19, 0);
      }

      if (v5)
      {
        sub_1000A06A8();
        v42 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode blob%s\n";
      }

      else
      {
        *(a3 + 5) = v43;
        v23 = sub_1000A2210();
        if (sub_1000A8480(v23, v24, v44, v25))
        {
          v26 = sub_1000A2210();
          if (sub_1000A8208(v26, v27, v46, v28))
          {
            sub_1000A2240();
            v5 = 0xFFFFFFFFLL;
            fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s unknown blob type %i%s\n", "aks", v21, 0xFFFFFFFFLL);
            goto LABEL_10;
          }

          v33 = sub_1000A2210();
          v36 = sub_1000A8208(v33, v34, v46, v35);
          if (!v36)
          {
            *a3 = 1;
            v37 = v49;
            *(a3 + 65) = v49;
            a3[10] = v47;
            if (v37)
            {
              if (v37 != 1)
              {
                goto LABEL_26;
              }

              v38 = v50;
              if (v50)
              {
                a3[9] |= 8u;
              }

              if ((v38 & 2) == 0)
              {
                goto LABEL_26;
              }

              v39 = a3[9] | 4;
              goto LABEL_25;
            }

            if ((v48 & 0x10) != 0)
            {
              v39 = a3[9] | 0x8000000;
LABEL_25:
              a3[9] = v39;
            }

LABEL_26:
            v5 = 0;
            goto LABEL_10;
          }

          v5 = v36;
          sub_1000A06A8();
          v42 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode vek%s\n";
        }

        else
        {
          v29 = sub_1000A2210();
          v32 = sub_1000A8480(v29, v30, v44, v31);
          if (!v32)
          {
            *a3 = 2;
            a3[10] = v44[0];
            *(a3 + 65) = v45;
            goto LABEL_26;
          }

          v5 = v32;
          sub_1000A06A8();
          v42 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode kek%s\n";
        }
      }

      fprintf(v40, v42, "aks", v41);
    }
  }

  else
  {
    v5 = 4294967285;
  }

LABEL_10:
  sub_1000A2250(v44);
  return v5;
}

uint64_t sub_1000A92D8(unint64_t *a1, uint64_t a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  __n = 0;
  v37 = 32;
  v12 = *a1 & 0x40;
  bzero(v41, 0xB0uLL);
  bzero(v39, 0xB0uLL);
  v13 = sub_1000A866C(0, 2, &__n);
  if (v13)
  {
    goto LABEL_33;
  }

  if (!__n)
  {
    v15 = 0;
    v14 = 0;
    v16 = 4294967286;
    goto LABEL_22;
  }

  v14 = 0;
  v15 = 0;
  v16 = 4294967285;
  if (a4 && a5 && a6)
  {
    if (!*a6)
    {
      goto LABEL_32;
    }

    v17 = *(a6 + 8);
    if (!v17)
    {
      goto LABEL_32;
    }

    v14 = 0;
    v15 = 0;
    v16 = 4294967285;
    if (a3 && __n <= v17)
    {
      v18 = *a3;
      if (*a3)
      {
        v19 = a3[1];
        if (v19)
        {
          if (v12)
          {
            memset(dst, 0, sizeof(dst));
            if (v19 == 16)
            {
              uuid_copy(dst, v18);
              if (uuid_compare(dst, a4))
              {
                v16 = 4294967284;
              }

              else
              {
                sub_1000A2240();
                v16 = 0xFFFFFFFFLL;
                fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s user uuid unexpectedly match new kek uuid%s\n", "aks", v27, -1, v28, v29, v30, v31, v32, v33, 4762, &byte_1000B36A6, &byte_1000B36A6);
              }
            }

            else
            {
              v16 = 4294967285;
            }

            goto LABEL_20;
          }

          v13 = sub_1000A8660(*a3, &v18[v19], v41);
          if (!v13)
          {
            if ((v42 & 0x80) != 0 && v44)
            {
              v15 = 0;
              v14 = 0;
              v16 = 4294967263;
              goto LABEL_22;
            }

            v13 = sub_1000A2A58(a2, v41, v46, &v37, *a1, 0);
            if (!v13)
            {
              v15 = v42;
              v21 = sub_1000A26CC(v43, a4, v42, a5, v46, v39, *a1);
              if (!v21)
              {
                v22 = calloc(__n, 1uLL);
                v14 = v22;
                if (v22)
                {
                  v34 = v22;
                  v35 = &v22[__n];
                  if (sub_1000A82CC(&v34, v39))
                  {
                    v23 = v35;
                    v24 = v34;
                    v25 = &v14[__n] - v35;
                    *(a6 + 8) = v25;
                    memcpy(*a6, &v23[v14 - v24], v25);
                    v16 = 0;
                  }

                  else
                  {
                    v16 = 4294967273;
                  }
                }

                else
                {
                  v16 = 4294967279;
                }

                goto LABEL_22;
              }

              v16 = v21;
LABEL_21:
              v14 = 0;
              goto LABEL_22;
            }
          }

LABEL_33:
          v16 = v13;
LABEL_20:
          v15 = 0;
          goto LABEL_21;
        }
      }

LABEL_32:
      v15 = 0;
      v14 = 0;
      v16 = 4294967285;
    }
  }

LABEL_22:
  if (byte_1000EA040)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sresult: %d; oti: %d; passcode_change: %d; cf: 0x%x; of: 0x%x; nf: 0x%x%s\n", "aks", &byte_1000B36A6, -1, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, &byte_1000B36A6, "fv_rewrap_kek", ":", 4804, &byte_1000B36A6, &byte_1000B36A6, v16, v12 >> 6, 0, v15, v15, v40, &byte_1000B36A6);
  }

  sub_1000A2250(v41);
  sub_1000A2250(v39);
  if (v14)
  {
    memset_s(v14, __n, 0, __n);
    free(v14);
  }

  sub_1000A2224(v46);
  sub_1000A2224(v45);
  return v16;
}

BOOL sub_1000A967C(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}
uint64_t create_or_modify_jobj(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  v10 = val_size_for_jobj(a1, a3);
  v11 = key_size_for_jobj(a1, a3);
  v37 = v11;
  v12 = 22;
  if (!v10 || !v11)
  {
    return v12;
  }

  v30 = a4;
  if ((v11 & 7) != 0)
  {
    v13 = (v11 & 0x1FFF8) + 8;
  }

  else
  {
    v13 = v11;
  }

  __chkstk_darwin(v11);
  v15 = (&v30 - v14);
  bzero(&v30 - v14, v16);
  if (v13 + v10 >= 0x251)
  {
    v15 = _apfs_malloc_typed(v13 + v10, 0x12B82EDCuLL);
    if (!v15)
    {
      return 12;
    }
  }

  v17 = jobj_to_key_val(a1, a3, v15, &v37, v15 + v13, v10);
  if (v17)
  {
    goto LABEL_9;
  }

  if (a5 <= 2)
  {
    if (a5 == 1)
    {
      v17 = bt_insert(a2, *(a1 + 440), v15, v37, (v15 + v13), v10, v30);
LABEL_9:
      v12 = v17;
      goto LABEL_10;
    }

    if (a5 == 2)
    {
      if (*a3 == 3)
      {
        v18 = (a3 + 320);
      }

      else
      {
        v18 = 0;
      }

      v19 = v30;
      v20 = bt_update_with_hint(a2, *(a1 + 440), v15, v37, v15 + v13, v10, v30, v18);
      if (v20 == 28)
      {
        v20 = bt_insert(a2, *(a1 + 440), v15, v37, (v15 + v13), v10, v19);
      }

LABEL_25:
      v12 = v20;
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (a5 != 3)
  {
    if (a5 != 4)
    {
      goto LABEL_10;
    }

    v20 = bt_remove(a2, *(a1 + 440), v15, v37, v30);
    goto LABEL_25;
  }

  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  memset(&v33[2], 0, 32);
  v33[0] = a1;
  v33[1] = v30;
  v22 = *a3;
  if (v22 == 18 || v22 == 10)
  {
    HIDWORD(v36) = *(a3 + 22);
    *(&v35 + 1) = *(a3 + 6);
  }

  v12 = bt_update_via_callback(a2, *(a1 + 440), v15, v37, v15 + v13, v10, 1, v30, sub_100047F64, v33);
  v23 = *a3;
  if (v23 <= 9)
  {
    if (v23 == 2)
    {
      *(a3 + 8) = v33[2];
    }

    else if (v23 == 6 || v23 == 7)
    {
      *(a3 + 4) = v33[2];
    }

    goto LABEL_10;
  }

  switch(v23)
  {
    case 0xAu:
      goto LABEL_38;
    case 0xDu:
      if (a3[16] == 2)
      {
        *(a3 + 3) = v33[2];
      }

      break;
    case 0x12u:
LABEL_38:
      v24 = *(a3 + 22);
      if ((v24 & 8) != 0)
      {
        *(a3 + 24) = *&v33[3];
        v29 = *(&v35 + 1);
        *(a3 + 5) = v33[5];
        *(a3 + 6) = v29;
        *(a3 + 23) = v36;
        xf_set(a3 + 32, 1, 0, &v34, 8uLL);
        xf_set(a3 + 32, 3, 0, &v34 + 8, 8uLL);
        v27 = (a3 + 64);
        v28 = &v35;
      }

      else
      {
        if ((v24 & 0x200) != 0)
        {
          *(a3 + 6) = *(&v35 + 1);
          *(a3 + 23) = v36;
        }

        if ((v36 & 0x80000000000) == 0)
        {
          goto LABEL_51;
        }

        v31 = 0;
        __dst = 0;
        if (xf_get(a3 + 32, 3, 0, &__dst, 8uLL))
        {
          __dst = 0;
        }

        v25 = xf_get(a3 + 32, 4, 0, &v31, 8uLL);
        v26 = v31;
        if (v25)
        {
          v26 = 0;
        }

        v31 = v26 - v35;
        __dst -= *(&v34 + 1);
        *(a3 + 23) |= 8u;
        xf_set(a3 + 32, 3, 0, &__dst, 8uLL);
        if (!v31)
        {
          goto LABEL_51;
        }

        *(a3 + 23) |= 0x800u;
        v27 = (a3 + 64);
        v28 = &v31;
      }

      xf_set(v27, 4, 0, v28, 8uLL);
LABEL_51:
      *(a3 + 7) = v33[2];
      *(a3 + 22) = HIDWORD(v36);
      break;
  }

LABEL_10:
  if (v13 + v10 >= 0x251)
  {
    _apfs_free(v15, v13 + v10);
  }

  return v12;
}

uint64_t fs_obj_create_name_checked(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, size_t a5, uint64_t a6, unsigned int a7, int a8, int a9, int a10, int a11, uint64_t a12, int a13, void *a14, unint64_t a15, int a16, int a17)
{
  v23 = a2;
  v24 = a14;
  v25 = a11;
  v27 = a16;
  v26 = a17;
  v68 = 0;
  v67 = a17;
  *a14 = 0;
  if (v27)
  {
    v28 = a2;
    if (a3)
    {
      v29 = *(a3 + 8);
    }

    else
    {
      v29 = 1;
    }

LABEL_10:
    v33 = a1;
    v34 = a5;
    v35 = v29;
    result = dir_rec_alloc_with_hash(a1, 1, __s, v34, v26, v29, a6, &v68);
    HIDWORD(v67) = result;
    if (result)
    {
      return result;
    }

    v60 = v35;
    v36 = _apfs_zalloc(2u);
    if (!v36)
    {
      jobj_release(0, v68);
      return 12;
    }

    v37 = v36;
    v58 = v25;
    v59 = v24;
    v38 = a15;
    timestamp = get_timestamp();
    *(v68 + 3) = timestamp;
    v40 = file_type_to_dirent_type(a7);
    v41 = v68;
    *(v68 + 30) = v40;
    inserted = insert_jobj(v33, v28, v41, v38);
    HIDWORD(v67) = inserted;
    if (inserted)
    {
      v43 = strerror(inserted);
      log_err("%s:%d: %s %s: could not insert dir rec for obj-id %lld (name: %s)\n", "fs_obj_create_name_checked", 13474, (v33 + 4048), v43, *(v68 + 1), __s);
      jobj_release(v44, v68);
      _apfs_zfree(v37, 2u);
      return 22;
    }

    *v37 = 42467587;
    *(v37 + 1) = a6;
    *(v37 + 2) = v60;
    *(v37 + 6) = timestamp;
    *(v37 + 7) = timestamp;
    *(v37 + 4) = timestamp;
    *(v37 + 5) = timestamp;
    *(v37 + 3) = a6;
    *(v37 + 48) = a7;
    v37[22] = a8;
    v37[23] = a9;
    v37[20] = 1;
    v37[21] = a10;
    if ((a7 & 0xF000) != 0x4000)
    {
      v37[18] = 1;
    }

    new_rwlock((v37 + 112));
    new_rwlock((v37 + 30));
    *(v37 + 14) |= 0x100000000000uLL;
    v45 = 48;
    if ((a7 & 0xF000) != 0x8000)
    {
      v45 = 0;
    }

    xf_init((v37 + 102), v45 + *(v68 + 31));
    xf_set(v37 + 204, 4, 2, *(v68 + 8), *(v68 + 31));
    v47 = v59;
    if ((v37[24] & 0xB000 | 0x4000) == 0x6000)
    {
      if ((*(*(v33 + 376) + 57) & 2) != 0)
      {
        v37[26] = v58;
      }

      else
      {
        HIDWORD(v67) = xf_set(v37 + 204, 14, 34, &a11, 4uLL);
        if (HIDWORD(v67))
        {
          log_err("%s:%d: %s *** failed to set rdev as an extended field of ino %lld (ret %d)\n");
          goto LABEL_56;
        }
      }
    }

    if (a3)
    {
      *(v37 + 8) = *(a3 + 64) & 0x20400002;
      if ((*(a3 + 64) & 2) != 0)
      {
        __dst = 0;
        if (xf_get((a3 + 408), 10, 0, &__dst, 8uLL))
        {
          if (nx_ratelimit_log_allowed(*(v33 + 392)))
          {
            log_err("%s:%d: %s ino %llu is flagged to maintain dir-stats but has no dir-stats key\n", "fs_obj_create_name_checked", 13549, (v33 + 4048), *(a3 + 8));
          }
        }

        else
        {
          xf_set(v37 + 204, 10, 34, &__dst, 8uLL);
        }
      }

      if ((v37[24] & 0xF000) == 0x8000 && (*(a3 + 67) & 2) != 0)
      {
        *(v37 + 8) |= 0x100000uLL;
        __dst = get_pending_purgeable_flags_from_ino(a3);
        xf_set(v37 + 204, 15, 2, &__dst, 8uLL);
      }
    }

    v52 = a13;
    v53 = a12;
    v54 = *(v37 + 48);
    if ((v54 & 0xF000) == 0x4000)
    {
      apfs_reset_parent_nlink(v33, v37);
      v54 = *(v37 + 48);
    }

    *(v37 + 14) |= 0x200000000uLL;
    *(v37 + 8) |= v53 | 0x8000;
    v37[19] = v52;
    if ((v54 & 0xF000) == 0x8000 && get_vol_crypto(v33, v46) == 3)
    {
      LODWORD(__dst) = 0;
      if (ino_get_class_check(v33, v37, &__dst))
      {
        if (__dst == 6)
        {
          panic("assertion failed: %s", "ino_poison_vnode(apfs, inode)");
        }
      }
    }

    v55 = insert_jobj(v33, v28, v37, v38);
    HIDWORD(v67) = v55;
    if (v55)
    {
      v56 = strerror(v55);
      log_err("%s:%d: %s %s: could not insert inode obj-id %lld (name: %s)\n", "fs_obj_create_name_checked", 13609, (v33 + 4048), v56, *(v37 + 1), *(v68 + 8));
      v57 = v68;
      v68[1] = 3;
      v48 = remove_jobj(v33, v28, v57, v38);
      v47 = v59;
      if (v48)
      {
        strerror(v48);
        log_err("%s:%d: %s %s: could not remove dir rec for obj-id %lld (name: %s)\n");
      }
    }

    else
    {
      v47 = v59;
      if (!a3 || v28 == 4 && v60 == 2)
      {
        goto LABEL_57;
      }

      update_time(v33, a3, 3);
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v62 = 1;
      update_size_tracking(v33, a3, &v62, v38);
      if ((v37[24] & 0xF000) == 0x4000)
      {
        apfs_inc_parent_nlink(v33, a3);
      }

      ++*(a3 + 72);
      ++*(a3 + 80);
      *(a3 + 1) = 2;
      v55 = insert_jobj(v33, v28, a3, v38);
      HIDWORD(v67) = v55;
      if (!v55)
      {
        goto LABEL_57;
      }

      log_err("%s:%d: %s failed to update parent ino %lld nchildren field on create of %s (err %d)\n");
    }

LABEL_56:
    jobj_release(v48, v37);
    v37 = 0;
LABEL_57:
    jobj_release(v55, v68);
    *v47 = v37;
    return HIDWORD(v67);
  }

  if (!a5)
  {
    v30 = a1;
    a5 = strlen(__s);
    a1 = v30;
  }

  if (a5 > 0x2FD)
  {
    return 63;
  }

  v61 = a1;
  v31 = utf8_strlen_with_ascii_status(__s, a5, 1u, 0, &v67 + 1);
  if (v31 > 0xFF)
  {
    return 63;
  }

  if (!v31 && HIDWORD(v67))
  {
    return 22;
  }

  v28 = v23;
  if (a3)
  {
    v49 = *(a3 + 8);
  }

  else
  {
    v49 = 1;
  }

  if (a3)
  {
    v50 = (a3 + 336);
  }

  else
  {
    v50 = 0;
  }

  v51 = v49;
  result = fs_lookup_name_with_parent_id(v61, v49, __s, a5, v50, &v67, 0);
  HIDWORD(v67) = result;
  if (!result)
  {
    jobj_release(result, v68);
    return 17;
  }

  if (result == 2)
  {
    v26 = v67;
    a1 = v61;
    v29 = v51;
    goto LABEL_10;
  }

  return result;
}

uint64_t jfs_get_tree_in_snap(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (*(a1 + 384) && !*(a1 + 1108))
  {
    sub_1000A6CEC();
  }

  doc_id_tree = 22;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        pthread_mutex_lock((a1 + 1672));
        if (*(a1 + 440) == a4 && (v19 = *(a1 + 3624)) != 0)
        {
          obj_retain(*(a1 + 3624));
          if (a3 && (v20 = obj_modify(v19, 0, a3), v20))
          {
            doc_id_tree = v20;
            obj_release(v19);
          }

          else
          {
            doc_id_tree = 0;
            *a5 = v19;
          }
        }

        else
        {
          doc_id_tree = apfs_get_doc_id_tree(a1, 0, a4, a3, a5);
          if (!doc_id_tree)
          {
            if (*(a1 + 440) == a4)
            {
              v24 = *a5;
              obj_retain(v24);
              doc_id_tree = 0;
              *(a1 + 3624) = v24;
            }

            else
            {
              doc_id_tree = 0;
            }
          }
        }

        v18 = (a1 + 1672);
        goto LABEL_109;
      }

      if (a2 != 8)
      {
        return doc_id_tree;
      }

      if (*(a1 + 440) != a4 || (v14 = *(a1 + 3584)) == 0)
      {
        doc_id_tree = apfs_get_secondary_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v26 = *(a1 + 440);
          v27 = v26 && *(a1 + 504) == 0;
          if (!v27 && v26 == a4)
          {
            v28 = *a5;
            obj_retain(v28);
            doc_id_tree = 0;
            *(a1 + 3584) = v28;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3584));
      if (!a3)
      {
LABEL_71:
        doc_id_tree = 0;
        *a5 = v14;
        return doc_id_tree;
      }

LABEL_33:
      v16 = obj_modify(v14, 0, a3);
      if (v16)
      {
        doc_id_tree = v16;
        obj_release(v14);
        return doc_id_tree;
      }

      goto LABEL_71;
    }

    if (a2 != 5)
    {
      if ((*(*(a1 + 376) + 56) & 0x40) != 0)
      {
        pthread_mutex_lock((a1 + 1608));
        v12 = *(a1 + 3616);
        if (v12)
        {
          obj_retain(v12);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3616), 2u, a3);
            v13 = *(a1 + 3616);
            if (doc_id_tree)
            {
              obj_release(v13);
LABEL_108:
              v18 = (a1 + 1608);
              goto LABEL_109;
            }

            *(*(a1 + 376) + 1048) = obj_oid(v13);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3616);
          goto LABEL_108;
        }

        v33 = *(a1 + 384);
        if (!v33)
        {
          v33 = *(a1 + 376);
        }

        v34 = *(v33 + 1044);
        v35 = *(v33 + 1048);
        v45 = 0u;
        v46 = 0u;
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v44 = pfkur_tree_key_cmp;
        DWORD2(v45) = 32;
        if (v34 == 2)
        {
          extended = btree_get_extended(a1, v34 & 0xFFFF0000, v35, a4, a3 != 0, &v44, a3, a5);
          v37 = extended;
          if (a3 && !extended)
          {
            doc_id_tree = 0;
            *(*(a1 + 376) + 1048) = obj_oid(*a5);
            goto LABEL_108;
          }

          if (!extended)
          {
            doc_id_tree = 0;
            goto LABEL_108;
          }

          v35 = *(v33 + 1048);
        }

        else
        {
          v37 = 22;
        }

        v42 = strerror(v37);
        log_err("%s:%d: %s Failed to get pfkur tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3946, (a1 + 4048), v35, a3, v37, v42);
        doc_id_tree = v37;
        goto LABEL_108;
      }

      return 45;
    }

    v17 = *(a1 + 376);
    if ((*(v17 + 56) & 0x20) == 0)
    {
      return 45;
    }

    v25 = *(v17 + 1040);
    if (a3 && *(a1 + 448))
    {
      return 30;
    }

    pthread_mutex_lock((a1 + 1544));
    v30 = *(a1 + 3608);
    if (v30)
    {
      if ((v25 & 0xC0000000) != 0)
      {
        if ((v25 & 0xC0000000) == 0x40000000)
        {
          v31 = *(a1 + 448);
          if (v31)
          {
            v32 = *(a1 + 376);
            goto LABEL_97;
          }

LABEL_92:
          obj_retain(v30);
          if (a3)
          {
            doc_id_tree = obj_modify(*(a1 + 3608), 2u, a3);
            v38 = *(a1 + 3608);
            if (doc_id_tree)
            {
              obj_release(v38);
LABEL_104:
              v18 = (a1 + 1544);
              goto LABEL_109;
            }

            *(*(a1 + 376) + 1032) = obj_oid(v38);
          }

          doc_id_tree = 0;
          *a5 = *(a1 + 3608);
          goto LABEL_104;
        }
      }

      else if (*(a1 + 440) == a4)
      {
        goto LABEL_92;
      }
    }

    v31 = *(a1 + 448);
    v32 = *(a1 + 376);
    if (!v31)
    {
      v31 = *(v32 + 1032);
    }

LABEL_97:
    v39 = *(v32 + 1040);
    *&v45 = 0;
    v46 = 0u;
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v44 = fext_tree_key_cmp;
    *(&v45 + 1) = 0x20000001FLL;
    if (v39 == 2)
    {
      v40 = btree_get_extended(a1, v39 & 0xFFFF0000, v31, a4, a3 != 0, &v44, a3, a5);
      doc_id_tree = v40;
      if (a3 && !v40)
      {
        *(*(a1 + 376) + 1032) = obj_oid(*a5);
        goto LABEL_104;
      }

      if (!v40)
      {
        goto LABEL_104;
      }
    }

    else
    {
      doc_id_tree = 22;
    }

    v41 = strerror(doc_id_tree);
    log_err("%s:%d: %s Failed to get fext tree w/oid %llu (modify_xid %llu): %d (%s)\n", "jfs_get_tree_in_snap", 3898, (a1 + 4048), v31, a3, doc_id_tree, v41);
    goto LABEL_104;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      pthread_mutex_lock((a1 + 1480));
      doc_id_tree = apfs_get_snap_meta_tree(a1, a3, a5);
      if (!doc_id_tree)
      {
        *(*(a1 + 376) + 152) = obj_oid(*a5);
      }

      v18 = (a1 + 1480);
      goto LABEL_109;
    }

    v14 = *(a1 + 3592);
    if (v14)
    {
      obj_retain(*(a1 + 3592));
      if (!a3)
      {
        goto LABEL_71;
      }

      v15 = obj_modify(v14, 0, a3);
      if (!v15)
      {
        goto LABEL_71;
      }

      doc_id_tree = v15;
      obj_release(v14);
LABEL_30:
      if (*(a1 + 440) != a4 || (v14 = *(a1 + 3576)) == 0)
      {
        doc_id_tree = apfs_get_fsroot_tree(a1, a4, a3, a5);
        if (!doc_id_tree)
        {
          v21 = *(a1 + 440);
          v22 = v21 && *(a1 + 504) == 0;
          if (!v22 && v21 == a4)
          {
            v23 = *a5;
            obj_retain(v23);
            doc_id_tree = 0;
            *(a1 + 3576) = v23;
          }
        }

        return doc_id_tree;
      }

      obj_retain(*(a1 + 3576));
      if (!a3)
      {
        if (doc_id_tree)
        {
          return doc_id_tree;
        }

        goto LABEL_71;
      }

      goto LABEL_33;
    }

LABEL_29:
    doc_id_tree = 0;
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    goto LABEL_29;
  }

  if (a2 == 2)
  {
    pthread_mutex_lock((a1 + 1416));
    v10 = *(a1 + 3600);
    if (!v10)
    {
      doc_id_tree = apfs_get_extentref_tree(a1, *(*(a1 + 376) + 144), a3, a5);
      if (!doc_id_tree)
      {
        if (a3)
        {
          *(*(a1 + 376) + 144) = obj_oid(*a5);
        }

        v29 = *a5;
        *(a1 + 3600) = *a5;
        obj_retain(v29);
        doc_id_tree = 0;
      }

      goto LABEL_85;
    }

    obj_retain(v10);
    if (a3)
    {
      doc_id_tree = obj_modify(*(a1 + 3600), 2u, a3);
      v11 = *(a1 + 3600);
      if (doc_id_tree)
      {
        obj_release(v11);
LABEL_85:
        v18 = (a1 + 1416);
LABEL_109:
        pthread_mutex_unlock(v18);
        return doc_id_tree;
      }

      *(*(a1 + 376) + 144) = obj_oid(v11);
    }

    doc_id_tree = 0;
    *a5 = *(a1 + 3600);
    goto LABEL_85;
  }

  return doc_id_tree;
}

uint64_t sub_100047F64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9)
{
  v14 = jobj_type_from_possibly_large_key(*a9, a1);
  if (a6 < a8 && v14 != 18)
  {
    return 22;
  }

  v16 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v17 = *a1 >> 60;
  if (v17 <= 8)
  {
    switch(v17)
    {
      case 2uLL:
        result = 0;
        *(a9 + 4) = *(a5 + 4);
        *(a5 + 4) += a7[4];
        return result;
      case 6uLL:
        *(a9 + 4) = *a5;
        v65 = *a5 + *a7;
        v66 = v65 << 31 >> 31;
        if (v66 == v65 && (v66 & 0x8000000000000000) == 0)
        {
          result = 0;
          *a5 = v66;
          return result;
        }

        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(*a9 + 392));
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s dstream id %llu refcnt %u (delta: %d) would overflow\n");
        return 0;
      case 7uLL:
        v31 = *a5;
        *(a9 + 4) = *a5;
        v32 = v31 + *a7;
        *a5 = v32;
        if (v32 < 0)
        {
          panic("can't have a negative refcnt on crypto state %llu refcnt %d\n", v16, v32);
        }

        return 0;
    }

    goto LABEL_54;
  }

  if (*a1 >> 60 <= 0xC)
  {
    if (v17 != 9)
    {
      if (v17 == 10)
      {
        v18 = *(a9 + 21);
        if ((v18 & 2) != 0)
        {
          if ((v18 & 4) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v19 = *a9;
          v20 = *a5;
          v21 = *a7;
          v22 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v23 = (*a7 >> 63) + 1;
          }

          else
          {
            v23 = *a7 >> 63;
          }

          v24 = v23 << 63 >> 63;
          if (v24 != v23 || v24 < 0)
          {
            if (nx_ratelimit_log_allowed(*(v19 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v19 + 4048), "num children", "dir-stats", v16, "num children", v20, v21);
            }

            v22 = v20;
          }

          *a5 = v22;
          v25 = *a9;
          v26 = a5[1];
          v27 = *(a7 + 1);
          v28 = v26 + v27;
          if (__CFADD__(v26, v27))
          {
            v29 = (v27 >> 63) + 1;
          }

          else
          {
            v29 = v27 >> 63;
          }

          v30 = v29 << 63 >> 63;
          if (v30 != v29 || v30 < 0)
          {
            if (nx_ratelimit_log_allowed(*(v25 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v25 + 4048), "total size", "dir-stats", v16, "total size", v26, v27);
            }

            v28 = v26;
          }

          a5[1] = v28;
          v18 = *(a9 + 21);
          if ((v18 & 4) != 0)
          {
LABEL_26:
            a5[2] = *(a7 + 2);
            if (*(a9 + 21))
            {
              goto LABEL_90;
            }

            goto LABEL_87;
          }
        }

        if (v18)
        {
LABEL_90:
          if ((*(a9 + 84) & 8) != 0)
          {
            a9[3] = *a5;
            a9[4] = a5[1];
          }

          result = 0;
          a9[2] = a5[2];
          return result;
        }

LABEL_87:
        v64 = *(a7 + 3);
        if (v64 <= 1)
        {
          v64 = 1;
        }

        a5[3] += v64;
        goto LABEL_90;
      }

      goto LABEL_54;
    }

    a5[1] = *(a7 + 1);
    if (*(a7 + 8))
    {
      result = 0;
      *(a5 + 8) = *(a7 + 8);
      return result;
    }

    return 0;
  }

  if (v17 != 13)
  {
    if (v17 == 14)
    {
      v33 = *(a1 + 8);
      if (v33 != 19)
      {
        if (v33 != 18)
        {
          log_err("%s:%d: don't know how to merge refcounts on objects of expanded type %d\n");
          return 22;
        }

        v34 = *(a9 + 21);
        *(a9 + 21) = 0;
        if ((v34 & 0x800000) != 0)
        {
          result = 0;
          v73 = a7[12];
          a5[3] = *(a7 + 3);
          *(a5 + 12) = v73 | 0x80;
          a5[4] = *(a7 + 4);
          return result;
        }

        v35 = *(a5 + 12);
        if ((~v35 & 0x30) == 0)
        {
          sub_1000A6D44();
        }

        v36 = (a5[6] & 0x20) == 0;
        if ((v34 & 0x4000) == 0)
        {
          v36 = 1;
        }

        v37 = (v34 & 0x100) == 0 || (a5[6] & 0x10) == 0;
        v38 = 1;
        if (v37)
        {
          v39 = (v34 >> 12) & 1;
          if ((v35 & 0x20) != 0)
          {
            LOBYTE(v39) = (v34 & 0x60) == 32;
          }

          if (v36)
          {
            v38 = v39;
          }

          else
          {
            v38 = 1;
          }
        }

        v175 = a5[4];
        v40 = a6 - 52;
        v41 = a5[2];
        v174 = a5[1];
        if ((v35 & 8) != 0)
        {
          v180[0] = 0;
          LODWORD(v178) = 0;
          v176 = 0;
          if (!xf_get_from_blob(a5 + 26, v40, 3, 0, v180, &v178) && v178 == 8)
          {
            v176 = *v180[0];
          }

          v42 = *(a5 + 12);
        }

        else
        {
          v176 = 0;
          v42 = *(a5 + 12);
        }

        if ((v42 & 0x800) != 0)
        {
          v180[0] = 0;
          LODWORD(v178) = 0;
          v75 = xf_get_from_blob(a5 + 26, v40, 4, 0, v180, &v178);
          v74 = 0;
          if (!v75 && v178 == 8)
          {
            v74 = *v180[0];
          }

          v42 = *(a5 + 12);
        }

        else
        {
          v74 = 0;
        }

        if ((v42 & 0x200) != 0 && (v34 & 2) == 0)
        {
          result = 0;
          a9[2] = *a1 & 0xFFFFFFFFFFFFFFFLL;
          v76 = *(a9 + 21) | 0x400000;
          goto LABEL_306;
        }

        v171 = v74;
        if (v42 >= 0x1000)
        {
          v42 |= 0x100u;
          *(a5 + 12) = v42;
        }

        if (a5[4] == (*a1 & 0xFFFFFFFFFFFFFFFLL))
        {
          *(a5 + 12) = v42 | 0x400;
          a5[4] = 0;
        }

        v173 = (v34 >> 1) & 1;
        if (!(v173 | v38 & 1))
        {
          v172 = v41;
          v167 = a8;
          v170 = v40;
          v77 = *a9;
          v78 = *a1;
          v79 = *a5;
          v80 = *a7;
          v81 = *a5 + *a7;
          if (__CFADD__(*a5, *a7))
          {
            v82 = (*a7 >> 63) + 1;
          }

          else
          {
            v82 = *a7 >> 63;
          }

          v83 = v82 << 63 >> 63;
          if (v83 != v82 || v83 < 0)
          {
            if (nx_ratelimit_log_allowed(*(v77 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v77 + 4048), "descendants", "exp-dir-stats", v78 & 0xFFFFFFFFFFFFFFFLL, "descendants", v79, v80);
            }

            v81 = v79;
          }

          *a5 = v81;
          v84 = *a9;
          v85 = *a1;
          v86 = a5[1];
          v87 = *(a7 + 1);
          v88 = v86 + v87;
          if (__CFADD__(v86, v87))
          {
            v89 = (v87 >> 63) + 1;
          }

          else
          {
            v89 = v87 >> 63;
          }

          v90 = v89 << 63 >> 63;
          if (v90 != v89 || v90 < 0)
          {
            if (nx_ratelimit_log_allowed(*(v84 + 392)))
            {
              log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v84 + 4048), "physical size", "exp-dir-stats", v85 & 0xFFFFFFFFFFFFFFFLL, "physical size", v86, v87);
            }

            v88 = v86;
          }

          v168 = v167 - 52;
          a5[1] = v88;
          v91 = *(a5 + 12);
          if (v91)
          {
            v92 = *a9;
            v93 = *a1;
            v94 = a5[2];
            v95 = *(a7 + 2);
            v96 = v94 + v95;
            if (__CFADD__(v94, v95))
            {
              v97 = (v95 >> 63) + 1;
            }

            else
            {
              v97 = v95 >> 63;
            }

            v98 = v97 << 63 >> 63;
            if (v98 != v97 || v98 < 0)
            {
              if (nx_ratelimit_log_allowed(*(v92 + 392)))
              {
                log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v92 + 4048), "resource fork size", "exp-dir-stats", v93 & 0xFFFFFFFFFFFFFFFLL, "resource fork size", v94, v95);
              }

              v96 = v94;
            }

            a5[2] = v96;
            v91 = *(a5 + 12);
          }

          v40 = v170;
          v41 = v172;
          if ((v91 & 4) != 0 && (a7[12] & 4) != 0)
          {
            v99 = *a9;
            v100 = *a1;
            v180[0] = 0;
            v178 = 0;
            v179 = 0;
            v101 = xf_get_from_blob(a5 + 26, v170, 1, 0, v180, &v179);
            v102 = 0;
            if (!v101)
            {
              v164 = v100;
              if (v179 == 8)
              {
                v179 = 0;
                if (!xf_get_from_blob(a7 + 26, v168, 1, 0, &v178, &v179) && v179 == 8 && (v103 = *v178) != 0)
                {
                  v161 = *v180[0];
                  v102 = *v180[0] + v103;
                  if (__CFADD__(*v180[0], v103))
                  {
                    v104 = (v103 >> 63) + 1;
                  }

                  else
                  {
                    v104 = v103 >> 63;
                  }

                  v105 = v104 << 63 >> 63;
                  if (v105 != v104 || v105 < 0)
                  {
                    if (nx_ratelimit_log_allowed(*(v99 + 392)))
                    {
                      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v99 + 4048), "clone size", "exp-dir-stats", v164 & 0xFFFFFFFFFFFFFFFLL, "clone size", v161, v103);
                    }

                    v102 = v161;
                    v40 = v170;
                    v41 = v172;
                  }
                }

                else
                {
                  v102 = *v180[0];
                }
              }
            }

            v180[0] = v102;
            v113 = xf_set_in_blob(a5 + 26, v40, 1, v180, 8);
            if (v113)
            {
              v114 = v113;
              if (nx_ratelimit_log_allowed(*(*a9 + 392)))
              {
                v115 = *a9 + 4048;
                v116 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v117 = strerror(v114);
                v158 = v115;
                v41 = v172;
                log_err("%s:%d: %s could not update clone size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3060, v158, v116, v117, v114);
              }
            }

            v91 = *(a5 + 12);
          }

          if ((v91 & 8) != 0 && (a7[12] & 8) != 0)
          {
            v118 = *a9;
            v165 = *a1;
            v180[0] = 0;
            v178 = 0;
            v179 = 0;
            v119 = 0;
            if (!xf_get_from_blob(a5 + 26, v40, 3, 0, v180, &v179) && v179 == 8)
            {
              v162 = v118;
              v179 = 0;
              if (!xf_get_from_blob(a7 + 26, v168, 3, 0, &v178, &v179) && v179 == 8 && (v120 = *v178) != 0)
              {
                v160 = *v180[0];
                v119 = *v180[0] + v120;
                if (__CFADD__(*v180[0], v120))
                {
                  v121 = (v120 >> 63) + 1;
                }

                else
                {
                  v121 = v120 >> 63;
                }

                v122 = v121 << 63 >> 63;
                if (v122 != v121 || v122 < 0)
                {
                  if (nx_ratelimit_log_allowed(*(v162 + 392)))
                  {
                    log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v162 + 4048), "purgeable size", "exp-dir-stats", v165 & 0xFFFFFFFFFFFFFFFLL, "purgeable size", v160, v120);
                  }

                  v40 = v170;
                  v41 = v172;
                }
              }

              else
              {
                v119 = *v180[0];
              }
            }

            v180[0] = v119;
            v123 = xf_set_in_blob(a5 + 26, v40, 3, v180, 8);
            if (v123)
            {
              v124 = v123;
              if (nx_ratelimit_log_allowed(*(*a9 + 392)))
              {
                v125 = *a9 + 4048;
                v126 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v127 = strerror(v124);
                v159 = v125;
                v41 = v172;
                log_err("%s:%d: %s could not update purgeable size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3073, v159, v126, v127, v124);
              }
            }

            v91 = *(a5 + 12);
          }

          if ((v91 & 0x800) != 0 && (*(a7 + 49) & 8) != 0)
          {
            v128 = *a9;
            v166 = *a1;
            v180[0] = 0;
            v178 = 0;
            v179 = 0;
            v129 = 0;
            if (!xf_get_from_blob(a5 + 26, v40, 4, 0, v180, &v179) && v179 == 8)
            {
              v163 = v128;
              v179 = 0;
              if (!xf_get_from_blob(a7 + 26, v168, 4, 0, &v178, &v179) && v179 == 8 && (v130 = *v178) != 0)
              {
                v169 = *v180[0];
                v129 = *v180[0] + v130;
                if (__CFADD__(*v180[0], v130))
                {
                  v131 = (v130 >> 63) + 1;
                }

                else
                {
                  v131 = v130 >> 63;
                }

                v132 = v131 << 63 >> 63;
                if (v132 != v131 || v132 < 0)
                {
                  if (nx_ratelimit_log_allowed(*(v163 + 392)))
                  {
                    log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v163 + 4048), "purgeable rsrc size", "exp-dir-stats", v166 & 0xFFFFFFFFFFFFFFFLL, "purgeable rsrc size", v169, v130);
                  }

                  v40 = v170;
                  v41 = v172;
                }
              }

              else
              {
                v129 = *v180[0];
              }
            }

            v180[0] = v129;
            v133 = xf_set_in_blob(a5 + 26, v40, 4, v180, 8);
            if (v133)
            {
              v134 = v133;
              if (nx_ratelimit_log_allowed(*(**a9 + 392)))
              {
                v135 = obj_type(*a9);
                v136 = *a9;
                if (v135 == 13)
                {
                  v137 = (v136 + 4048);
                }

                else
                {
                  v137 = (*(v136 + 384) + 212);
                }

                v138 = *a1 & 0xFFFFFFFFFFFFFFFLL;
                v139 = strerror(v134);
                log_err("%s:%d: %s could not update purgeable rsrc size for dir-stats %llu: %s (%d)\n", "exp_dir_stats_refcnt_merge", 3087, v137, v138, v139, v134);
                v41 = v172;
              }
            }
          }
        }

        if ((v34 & 0x8000) != 0)
        {
          *(a5 + 12) |= 2u;
        }

        if ((v34 & 4) != 0)
        {
          a5[4] = *(a7 + 4);
        }

        v140 = *(a5 + 12);
        if ((v140 & 8) != 0)
        {
          if ((v34 & 0x400) != 0 && (v35 & 0x40) == 0)
          {
            v141 = v140 | 0x40;
            v142 = 1024;
LABEL_239:
            *(a5 + 12) = v141;
            *(a9 + 21) |= v142;
            goto LABEL_240;
          }

          if ((v34 & 0x800) != 0 && (v35 & 0x40) != 0)
          {
            v141 = v140 & 0xFFFFFFBF;
            v142 = 2048;
            goto LABEL_239;
          }
        }

LABEL_240:
        if ((v34 & 1) == 0)
        {
          v143 = *(a7 + 5);
          if (v143 <= 1)
          {
            v143 = 1;
          }

          a5[5] += v143;
          v144 = v173;
          if ((v35 & 0x40) == 0)
          {
            v144 = 1;
          }

          if ((v144 & 1) == 0)
          {
            *(a5 + 12) &= ~0x40u;
            *(a9 + 21) |= 0x800u;
          }
        }

        if ((v34 & 8) == 0)
        {
          if ((v34 & 0x200) != 0)
          {
            a9[9] = a5[5];
            *(a9 + 20) = *(a5 + 12);
          }

          v145 = *(a9 + 21);
          if ((v35 & 0x20) == 0 && (v145 & 0x800) != 0)
          {
            a9[7] = v174 - v176;
            if ((*(a5 + 49) & 8) != 0)
            {
              a9[8] = v41 - v171;
            }
          }

LABEL_271:
          a9[2] = a5[4];
          if ((v35 & 0x20) == 0 || (v34 & 0xA0) != 0 || (v34 & 0x100) != 0 || (v180[0] = 0, LODWORD(v178) = 0, xf_get_from_blob(a5 + 26, v40, 2, 0, v180, &v178)) || v178 != 8 || !*v180[0])
          {
            if ((v34 & 0x2000) != 0 && (v35 & 0x40) != 0 && (v145 & 0xC00) == 0)
            {
              a9[2] = 0;
            }
          }

          else
          {
            a9[2] = *v180[0];
            *(a9 + 21) |= 0x100000u;
          }

          if ((v34 & 0x10) != 0)
          {
            v153 = *(a5 + 12);
            a5[3] = 0;
            *(a5 + 12) = v153 & 0xFFFFFF6F | 0x10;
            v180[0] = 0;
            xf_set_in_blob(a5 + 26, v40, 2, v180, 8);
            v154 = *(a5 + 12);
            *(a5 + 12) = v154 & 0xFFFFFFDF;
            if ((v34 & 4) == 0)
            {
              sub_1000A6D18();
            }

            *(a5 + 12) = v154 & 0xFFFFFBDF;
            a9[2] = v175;
          }

          if ((v34 & 0x80) != 0)
          {
            v180[0] = 0;
            xf_set_in_blob(a5 + 26, v40, 2, v180, 8);
            *(a5 + 12) &= ~0x20u;
          }

          if ((v34 & 0x10000) != 0)
          {
            v156 = *(a5 + 12) | 0x100;
          }

          else
          {
            if ((v34 & 0x20000) == 0)
            {
              if ((v34 & 0x200000) == 0)
              {
                goto LABEL_290;
              }

              goto LABEL_296;
            }

            v156 = a5[6] & 0xFFFFFEFF;
          }

          *(a5 + 12) = v156;
          if ((v34 & 0x200000) == 0)
          {
LABEL_290:
            if ((v34 & 0x40000) == 0)
            {
LABEL_291:
              if ((v34 & 0x80000) == 0)
              {
LABEL_299:
                if ((v34 & 0x100000) == 0 || (v35 & 0x10) != 0)
                {
                  if (!(v35 & 0x10 | v34 & 0x100000))
                  {
                    if ((v35 & 0x20) == 0)
                    {
                      return 0;
                    }

                    result = 0;
                    v76 = *(a9 + 21) | 0x40;
LABEL_306:
                    *(a9 + 21) = v76;
                    return result;
                  }
                }

                else
                {
                  if (nx_ratelimit_log_allowed(*(*a9 + 392)))
                  {
                    log_err("%s:%d: %s fixing DIR_STATS_IS_SHADOW flag for dir-stats %llu\n", "exp_dir_stats_refcnt_merge", 3253, (*a9 + 4048), *a1 & 0xFFFFFFFFFFFFFFFLL);
                  }

                  *(a5 + 12) |= 0x110u;
                }

                result = 0;
                v76 = *(a9 + 21) | 0x20;
                goto LABEL_306;
              }

              v155 = a5[6] & 0xFFFFFDFF;
LABEL_298:
              *(a5 + 12) = v155;
              goto LABEL_299;
            }

LABEL_297:
            v155 = *(a5 + 12) | 0x200;
            goto LABEL_298;
          }

LABEL_296:
          v157 = *(a5 + 12);
          a5[3] = 0;
          *(a5 + 12) = v157 & 0xFFFFFE4F | 0x100;
          if ((v34 & 0x40000) == 0)
          {
            goto LABEL_291;
          }

          goto LABEL_297;
        }

        a9[3] = *a5;
        a9[4] = a5[1];
        a9[5] = a5[2];
        v146 = *(a5 + 12);
        if ((v146 & 4) != 0)
        {
          v180[0] = 0;
          LODWORD(v178) = 0;
          v147 = xf_get_from_blob(a5 + 26, v40, 1, 0, v180, &v178);
          v148 = 0;
          if (!v147 && v178 == 8)
          {
            v148 = *v180[0];
          }

          a9[6] = v148;
          v146 = *(a5 + 12);
          if ((v146 & 8) == 0)
          {
LABEL_256:
            if ((v146 & 0x800) == 0)
            {
LABEL_270:
              a9[9] = a5[5];
              *(a9 + 20) = *(a5 + 12);
              v145 = *(a9 + 21);
              goto LABEL_271;
            }

LABEL_266:
            v180[0] = 0;
            LODWORD(v178) = 0;
            v151 = xf_get_from_blob(a5 + 26, v40, 4, 0, v180, &v178);
            v152 = 0;
            if (!v151 && v178 == 8)
            {
              v152 = *v180[0];
            }

            a9[8] = v152;
            goto LABEL_270;
          }
        }

        else if ((v146 & 8) == 0)
        {
          goto LABEL_256;
        }

        v180[0] = 0;
        LODWORD(v178) = 0;
        v149 = xf_get_from_blob(a5 + 26, v40, 3, 0, v180, &v178);
        v150 = 0;
        if (!v149 && v178 == 8)
        {
          v150 = *v180[0];
        }

        a9[7] = v150;
        if ((a5[6] & 0x800) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_266;
      }

      *a5 |= *(a7 + 7) << 56;
      v68 = (a5 + 1);
      v69 = a6 - 8;
      v70 = a8 - 8;
      v180[0] = 0;
      v179 = 0;
      if (!xf_get_from_blob(a7 + 4, v70, 2, 0, v180, &v179) && v179 == 8)
      {
        v71 = *v180[0];
        v178 = v71;
        if (v71)
        {
          v180[0] = 0;
          v179 = 0;
          if (!xf_get_from_blob(v68, a6 - 8, 2, 0, v180, &v179) && v179 == 8 && *v180[0])
          {
            if (*v180[0] == v71)
            {
              goto LABEL_170;
            }

            v72 = xf_set_in_blob(v68, a6 - 8, 2, &v178, 8);
            if (!v72)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v72 = 22;
          }

          v177 = nx_is_panic_on_corruption_enabled(*(*a9 + 392));
          v106 = (*a9 + 4048);
          v107 = *(a1 + 12);
          v108 = *(a1 + 20);
          v109 = strerror(v72);
          log_corrupt(v177, "%s:%d: %s clone mapping <%llu, %llu>: failed to update dir-stats key: %s (%d)\n", "jobj_refcnt_merge", 3426, v106, v107, v108, v109, v72);
        }
      }

LABEL_170:
      v180[0] = 0;
      v179 = 0;
      if (xf_get_from_blob(a7 + 4, v70, 1, 0, v180, &v179))
      {
        return 0;
      }

      if (v179 != 8)
      {
        return 0;
      }

      v110 = *v180[0];
      v178 = v110;
      if (!v110)
      {
        return 0;
      }

      v180[0] = 0;
      v179 = 0;
      if (!xf_get_from_blob(v68, v69, 1, 0, v180, &v179) && v179 == 8 && *v180[0])
      {
        if (*v180[0] == v110)
        {
          return 0;
        }

        result = xf_set_in_blob(v68, v69, 1, &v178, 8);
        v111 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v111 = 22;
      }

      v112 = nx_is_panic_on_corruption_enabled(*(*a9 + 392));
      strerror(v111);
      log_corrupt(v112, "%s:%d: %s clone mapping <%llu, %llu>: failed to update attribution tag: %s (%d)\n", "jobj_refcnt_merge");
      return 0;
    }

LABEL_54:
    log_err("%s:%d: don't know how to merge refcounts on objects of type %d\n");
    return 22;
  }

  v43 = a1[1];
  if (HIBYTE(v43) != 2)
  {
    log_err("%s:%d: don't know how to merge refcounts on objects of file info type %llu\n");
    return 22;
  }

  v44 = v43 & 0xFFFFFFFFFFFFFFLL;
  v45 = *(a5 + 12);
  if (v45 >= 2)
  {
    *(a5 + 12) = v45 | 1;
  }

  a9[2] = *a5;
  v46 = *a9;
  v47 = a5[1];
  v48 = *(a7 + 1);
  v49 = v47 + v48;
  if (__CFADD__(v47, v48))
  {
    v50 = (v48 >> 63) + 1;
  }

  else
  {
    v50 = v48 >> 63;
  }

  v51 = v50 << 63 >> 63;
  if (v51 != v50 || v51 < 0)
  {
    if (nx_ratelimit_log_allowed(*(v46 + 392)))
    {
      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v46 + 4048), "physical size", "attr tag", v44, "physical size", v47, v48);
    }

    v49 = v47;
  }

  a5[1] = v49;
  v52 = *a9;
  v53 = a5[2];
  v54 = *(a7 + 2);
  v55 = v53 + v54;
  if (__CFADD__(v53, v54))
  {
    v56 = (v54 >> 63) + 1;
  }

  else
  {
    v56 = v54 >> 63;
  }

  v57 = v56 << 63 >> 63;
  if (v57 != v56 || v57 < 0)
  {
    if (nx_ratelimit_log_allowed(*(v52 + 392)))
    {
      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v52 + 4048), "full clone size", "attr tag", v44, "full clone size", v53, v54);
    }

    v55 = v53;
  }

  a5[2] = v55;
  v58 = *a9;
  v59 = *a5;
  v60 = *a7;
  v61 = *a5 + v60;
  if (__CFADD__(*a5, v60))
  {
    v62 = (v60 >> 63) + 1;
  }

  else
  {
    v62 = v60 >> 63;
  }

  v63 = v62 << 63 >> 63;
  if (v63 != v62 || v63 < 0)
  {
    if (nx_ratelimit_log_allowed(*(v58 + 392)))
    {
      log_err("%s:%d: %s %s overflowed on %s <%llu> %s %llu (delta: %lld)\n", "jobj_merge_maybe_clamp_64", 2850, (v58 + 4048), "total_count", "attr tag", v44, "total_count", v59, v60);
    }

    v61 = v59;
  }

  result = 0;
  *a5 = v61;
  return result;
}

uint64_t match_jobj_type_to_tree_type(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0x10)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      log_err("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "match_jobj_expanded_type_to_tree_type", 4205, (a1 + 4048), a2);
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

    log_warn("%s:%d: %s Warning: attempting to place unknown expanded type %hhu into fsroot.\n", "match_jobj_expanded_type_to_tree_type", 4226, (a1 + 4048), a2);
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

uint64_t insert_jobj(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  if (!*(a3 + 1))
  {
    sub_1000A6D70();
  }

  matched = match_jobj_type_to_tree_type(a1, *a3, a2);
  if (matched != 5)
  {
    v11 = matched;
    v16 = 0;
    v17 = 0;
    tree_in_snap = jfs_get_tree_in_snap(a1, matched, a4, *(a1 + 440), &v17);
    if (tree_in_snap)
    {
      return tree_in_snap;
    }

    v12 = a3[1];
    if ((v12 - 1) >= 2)
    {
      if (v12 != 4)
      {
        log_err("%s:%d: %s X %d\n", "insert_jobj", 4331, (a1 + 4048), v12);
        tree_in_snap = 22;
LABEL_14:
        obj_release(v17);
        return tree_in_snap;
      }

      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_100049698(a1, a3, v11, &v16, "addition");
    if (v14 || (v14 = create_or_modify_jobj(a1, v17, a3, a4, v13), v14))
    {
      tree_in_snap = v14;
    }

    else
    {
      sub_100049740(a1, v11, v17, a3, a4, v13);
      tree_in_snap = 0;
      if (*a3 == 3)
      {
        *(a3 + 14) &= 0xFFFFFFFFFBFBFFFFLL;
      }
    }

    goto LABEL_14;
  }

  v9 = fext_tree_insert(a1, a4, a3, v8);
  tree_in_snap = v9;
  if (v9)
  {
    log_err("%s:%d: %s failed to insert fext in fext_tree: %d\n", "insert_jobj", 4293, (a1 + 4048), v9);
  }

  return tree_in_snap;
}

uint64_t sub_100049698(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const char *a5)
{
  if (*a2 == 3)
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;
  v6 = *(a2 + 8);
  if ((~v6 & 0xFFFFFFFFFFF0000) != 0 && (v5 & 0xFFFFFFFFFFF0000) != 0xFFFFFFFFFFF0000)
  {
    return 0;
  }

  v8 = *(a1 + 1108);
  if (v8)
  {
    return 0;
  }

  if (a3 == 1 && *(a1 + 3592))
  {
    log_err("%s:%d: %s Preventing %s of objects to synthetic folder (id %lld, parent %lld)\n", "prevent_synthetic_object_operation", 4171, (a1 + 4048), a5, v6, v5);
    return 45;
  }

  return v8;
}

void sub_100049740(uint64_t result, int a2, uint64_t *a3, uint64_t a4, unint64_t a5, int a6)
{
  if (*(a4 + 8) == 2)
  {
    v15[7] = v6;
    v15[8] = v7;
    if (!*(result + 1108) && a2 == 1)
    {
      if (*(result + 3592))
      {
        v15[0] = 0;
        if (!jfs_get_tree_in_snap(result, 4, a5, *(result + 440), v15))
        {
          if (v15[0] != a3)
          {
            v13 = create_or_modify_jobj(result, v15[0], a4, a5, a6);
            if (v13)
            {
              v14 = v13;
              if (nx_ratelimit_log_allowed(*(result + 392)))
              {
                log_err("%s:%d: %s Shadow create_or_modify_jobj(jobj %p id %lld xid %lld op %d) failed with error %d\n", "duplicate_jobj_op_to_shadow_fs_root", 4191, (result + 4048), a4, *(a4 + 8), a5, a6, v14);
              }
            }
          }

          obj_release(v15[0]);
        }
      }
    }
  }
}

uint64_t remove_jobj(uint64_t a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  matched = match_jobj_type_to_tree_type(a1, *a3, a2);
  if (matched == 5)
  {
    v9 = fext_tree_remove(a1, a4, *(a3 + 1), *(a3 + 2), v8);
    tree_in_snap = v9;
    if (v9)
    {
      log_err("%s:%d: %s fext_tree_remove returned %d\n", "remove_jobj", 4462, (a1 + 4048), v9);
    }
  }

  else
  {
    v11 = matched;
    v14 = 0;
    v15 = 0;
    tree_in_snap = jfs_get_tree_in_snap(a1, matched, a4, *(a1 + 440), &v15);
    if (!tree_in_snap)
    {
      v12 = sub_100049698(a1, a3, v11, &v14, "removal");
      if (v12)
      {
        tree_in_snap = v12;
      }

      else
      {
        tree_in_snap = create_or_modify_jobj(a1, v15, a3, a4, 4);
        if (!tree_in_snap)
        {
          sub_100049740(a1, v11, v15, a3, a4, 4);
        }
      }

      obj_release(v15);
    }
  }

  return tree_in_snap;
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
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s *** unknown expanded obj type %hhu\n", "jobj_size_for_large_key_val", 2464, (a1 + 4048), v17);
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

          if (v13 <= 0x4F)
          {
            sub_1000A6E4C();
          }

          v27 = _apfs_calloc_typed(1uLL, v13 - 80, 0xDA2D0A4CuLL);
          *(v10 + 9) = v27;
          if (v27)
          {
            goto LABEL_80;
          }

          v28 = v10;
          v29 = 80;
          goto LABEL_73;
        case 2:
          v21 = 0x10000407607B2BCLL;
          v22 = 40;
          goto LABEL_78;
        case 3:
          v30 = _apfs_zalloc(2u);
          goto LABEL_79;
        case 4:
          if (v13 <= 0x17)
          {
            sub_1000A6DF4();
          }

          v24 = v13;
          v25 = -753538664;
          goto LABEL_65;
        case 5:
          if (v13 <= 0x27)
          {
            sub_1000A6DC8();
          }

          v24 = v13;
          v25 = -2067986874;
          goto LABEL_65;
        case 6:
          v26 = 887226456;
          goto LABEL_54;
        case 7:
          if (v13 <= 0x27)
          {
            sub_1000A6EA4();
          }

          v24 = v13;
          v25 = -1260340143;
          goto LABEL_65;
        case 8:
          v21 = 0x1000040C6EC63FFLL;
          v22 = 56;
          goto LABEL_78;
        case 9:
          v10 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
          if (!v10)
          {
            return v10;
          }

          if (v13 <= 0x47)
          {
            sub_1000A6E78();
          }

          v32 = _apfs_malloc_typed(v13 - 72, 0xEA9F5E2EuLL);
          *(v10 + 8) = v32;
          if (v32)
          {
            goto LABEL_80;
          }

          v28 = v10;
          v29 = 72;
LABEL_73:
          _apfs_free(v28, v29);
          return 0;
        case 10:
        case 18:
          v21 = 0x10A004019B037CALL;
          v22 = 96;
          goto LABEL_78;
        case 11:
          if (v13 <= 0x1F)
          {
            sub_1000A6E20();
          }

          v24 = v13;
          v25 = 173046394;
          goto LABEL_65;
        case 12:
          v26 = -753538664;
LABEL_54:
          v21 = v26 | 0x100004000000000;
          v22 = 24;
          goto LABEL_78;
        case 13:
          v23 = HIBYTE(a2[1]);
          if (v23 == 2)
          {
            v31 = 1202085462;
LABEL_77:
            v21 = v31 | 0x10A004000000000;
            v22 = 80;
LABEL_78:
            v30 = _apfs_calloc_typed(1uLL, v22, v21);
          }

          else
          {
            if (v23 != 1)
            {
              log_err("%s:%d: *** Unknown file info type %llu\n");
              return 0;
            }

            if (v13 <= 0x1F)
            {
              sub_1000A6D9C();
            }

            v24 = v13;
            v25 = 130634920;
LABEL_65:
            v30 = _apfs_malloc_typed(v24, v25 | 0x100004000000000);
          }

LABEL_79:
          v10 = v30;
          if (!v30)
          {
            return v10;
          }

LABEL_80:
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
              goto LABEL_86;
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

              v57 = v10[204];
              if (!v10[204])
              {
                return v10;
              }

              v58 = 0;
              v59 = (*(v10 + 52) + 2);
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
              goto LABEL_106;
            case 5:
              v39 = *a4;
              *(v10 + 2) = a2[1];
              *(v10 + 3) = v39;
              v35 = a4[4];
              v10[16] = v35;
              v36 = (v10 + 17);
              v37 = a4 + 5;
LABEL_86:
              strlcpy(v36, v37, v35);
              return v10;
            case 6:
              *(v10 + 4) = *a4;
              return v10;
            case 7:
              *(v10 + 4) = *a4;
              LODWORD(v50) = a4[11];
              v52 = a4[2];
              v51 = a4 + 2;
              if (v52 == 6)
              {
                v50 = (v50 >> 8) + v50;
              }

              else
              {
                v50 = v50;
              }

              v43 = (v10 + 10);
              v42 = v50 + 20;
              v44 = v51;
              goto LABEL_106;
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
                v53 = *(a2 + 2);
                *(v10 + 14) = v53 >> 10;
                v54 = v53 & 0x3FF;
                v55 = 12;
              }

              else
              {
                *(v10 + 14) = 0;
                v54 = *(a2 + 4);
                v55 = 10;
              }

              v10[31] = v54;
              strlcpy(*(v10 + 8), a2 + v55, v54);
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
              if (v38 + 32 > v13)
              {
                sub_1000A6ED0();
              }

              v10[12] = v38;
              strlcpy(v10 + 26, a2 + 10, v38);
              goto LABEL_84;
            case 12:
LABEL_84:
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

                v56 = xf_init_with_blob(v10 + 28, a4 + 13, a5 - 26);
                if (v56)
                {
                  strerror(v56);
                  log_debug("%s:%d: failed to init extended fields on attribution tag record with objid <%lld> from blob due to error <%d> %s\n");
                  return v10;
                }

                v61 = v10[28];
                if (v10[28])
                {
                  v62 = 0;
                  for (i = (*(v10 + 8) + 2); ; i += 2)
                  {
                    v64 = *i;
                    if (*(i - 2) == 1)
                    {
                      break;
                    }

                    v62 += (v64 + 7) & 0x1FFF8;
                    if (!--v61)
                    {
                      return v10;
                    }
                  }

                  if (v64 > 0)
                  {
                    v65 = *(v10 + 9) + (v62 + v64);
                    goto LABEL_134;
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
LABEL_106:
                memcpy(v43, v44, v42);
              }

              return v10;
            case 14:
              if (a3 < 0xC)
              {
                goto LABEL_101;
              }

              if (sub_10004A47C(a1, v10, a2, a4, a5))
              {
                return v10;
              }

              v34 = *(v10 + 1);
LABEL_101:
              log_err("%s:%d: %s cannot translate key-val (%llu) into valid jobj\n", "key_val_to_jobj", 4935, (a1 + 4048), v34);
              jobj_release(v49, v10);
              return 0;
            default:
              return v10;
          }

          break;
        case 16:
          v31 = -624060581;
          goto LABEL_77;
        case 17:
          v21 = 0x100004089CA3EB1;
          v22 = 32;
          goto LABEL_78;
        case 19:
          v21 = 0x10A0040D41B49CCLL;
          v22 = 72;
          goto LABEL_78;
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
    v60 = *v59;
    if (*(v59 - 2) != 4)
    {
      v60 = (v60 + 7) & 0x1FFF8;
      goto LABEL_124;
    }

    if (*v59)
    {
      break;
    }

LABEL_124:
    v59 += 2;
    v58 += v60;
    if (!--v57)
    {
      return v10;
    }
  }

  v65 = *(v10 + 53) + (v58 + v60);
LABEL_134:
  *(v65 - 1) = 0;
  return v10;
}

uint64_t sub_10004A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5 <= 0xF)
  {
    log_err("%s:%d: %s unknown expanded type (%hhu) on record (%u)\n", "large_key_val_to_jobj", 4506, (a1 + 4048), *(a3 + 8), *a3 >> 60);
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

uint64_t initialize_phys_range_lock_state(uint64_t a1, unsigned int a2)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = a2;
  *(a1 + 92) = a2;
  v5 = _apfs_calloc_typed(a2, 0x10uLL, 0x1000040451B5BE8uLL);
  *a1 = v5;
  if (v5)
  {
    v6 = (a2 + 63) >> 6;
    *(a1 + 88) = v6;
    v7 = _apfs_calloc_typed(v6, 8uLL, 0x100004000313F17uLL);
    *(a1 + 72) = v7;
    if (v7)
    {
      v8 = _apfs_calloc_typed(*(a1 + 88), 8uLL, 0x100004000313F17uLL);
      *(a1 + 80) = v8;
      if (v8)
      {
        new_lock((a1 + 8));
        return 0;
      }

      _apfs_free(*a1, 16 * v4);
      v10 = *(a1 + 72);
      v11 = 8 * *(a1 + 88);
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

uint64_t release_phys_range_lock_state(uint64_t a1)
{
  _apfs_free(*a1, 16 * *(a1 + 92));
  _apfs_free(*(a1 + 72), 8 * *(a1 + 88));
  _apfs_free(*(a1 + 80), 8 * *(a1 + 88));

  return free_lock((a1 + 8));
}

uint64_t jobj_type_from_possibly_large_key(uint64_t a1, uint64_t a2)
{
  v2 = *a2 >> 60;
  if (v2 == 14)
  {
    if (!a1 || (*(*(a1 + 376) + 57) & 2) != 0)
    {
      LODWORD(v2) = *(a2 + 8);
    }

    else
    {
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s expanded record found on unsupported volume\n", "jobj_type_from_possibly_large_key", 6667, (a1 + 4048));
      LOBYTE(v2) = 15;
    }
  }

  return v2;
}

uint64_t iterate_jobjs_with_hint_and_snap(const char *a1, int a2, unint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t (*a6)(__int128 *, uint64_t), uint64_t a7, _OWORD *a8, unsigned int a9)
{
  matched = match_jobj_type_to_tree_type(a1, *a5, a2);
  if (matched == 5)
  {
    v17 = *(a5 + 2);
    if (v17 == -1)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a5 + 2);
    }

    if (v17 == -1 && a9 == 4)
    {
      v20 = a9 & 0xFFFF0000;
    }

    else
    {
      v20 = a9;
    }

    return fext_tree_iterate_fexts_with_flags(a1, a3, a4, *(a5 + 1), v18, a8, v20, a6, a7);
  }

  v22 = matched;
  v23 = _apfs_zalloc(3u);
  if (!v23)
  {
    return 12;
  }

  v24 = v23;
  v40 = 832;
  v38 = a6;
  if (!*(a5 + 1) && !*a5)
  {
    if ((a9 & 0x10000) == 0 && a5[1])
    {
      goto LABEL_16;
    }

LABEL_20:
    v25 = 1;
    goto LABEL_21;
  }

  if ((a9 & 0x10000) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v25 = 0;
LABEL_21:
  v43 = 0;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v39 = 0;
  if ((a9 & 0x20000) != 0)
  {
    v27 = v25;
  }

  else
  {
    v27 = 1;
  }

  v37 = v27;
  make_jkey_from_jobj(a1, a5, v23, &v40);
  if (v22 == 1)
  {
    v28 = *(a5 + 1);
    if ((~v28 & 0xFFFFFFFFFFF0000) == 0 || v28 == 2)
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }
  }

  tree_in_snap = jfs_get_tree_in_snap(a1, v22, a3, a4, &v39);
  if (tree_in_snap)
  {
    v26 = tree_in_snap;
    goto LABEL_38;
  }

  bt_iterator_init_with_hint(v41, v39, a4, a9, v24, v40, 832, v24 + 104, 0xEE0u, a8);
  if ((v31 & 0xFFFFFFFD) != 0)
  {
    v26 = v31;
    goto LABEL_37;
  }

  if (bt_iterator_ended(v41))
  {
LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v32 = v25 | ((a9 & 0x20000) >> 17);
  while (1)
  {
    if (v32)
    {
      if ((v37 & 1) == 0)
      {
        if (*a5)
        {
          v33 = *a5;
          if (v33 != jobj_type_from_possibly_large_key(a1, v24))
          {
            goto LABEL_54;
          }
        }
      }
    }

    else if ((*v24 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 1) || *a5 && jobj_type_from_possibly_large_key(a1, v24) != *a5)
    {
      goto LABEL_36;
    }

    v34 = key_val_to_jobj(a1, v24, v42, v24 + 416, DWORD1(v42));
    if (!v34)
    {
      break;
    }

    v35 = v34;
    v26 = v38(v34, a7);
    jobj_release(v26, v35);
    if (v26)
    {
      goto LABEL_37;
    }

LABEL_54:
    v36 = bt_iterator_next(v41);
    if ((a9 & 0x40000) == 0)
    {
      v26 = v36;
      if (v36)
      {
        goto LABEL_37;
      }
    }

    if (bt_iterator_ended(v41))
    {
      goto LABEL_36;
    }
  }

  if ((a9 & 0x40000) != 0)
  {
    goto LABEL_54;
  }

  v26 = 12;
LABEL_37:
  obj_release(v39);
LABEL_38:
  _apfs_zfree(v24, 3u);
  return v26;
}

uint64_t iterate_raw_jobjs_with_hint(uint64_t a1, int a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, __int128 *a9, int a10)
{
  v27[0] = a1;
  v27[1] = a6;
  v14 = *a4;
  v15 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v27[2] = a7;
  v27[3] = v15;
  v16 = v14 >> 60;
  if (v14 >> 60 == 14)
  {
    LODWORD(v16) = a4[8];
  }

  v28 = v16;
  BYTE2(v28) = 0;
  *v26 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  if (v15 || v16)
  {
    if ((a10 & 0x20000) != 0)
    {
      BYTE2(v28) = 1;
    }
  }

  else
  {
    BYTE1(v28) = 1;
  }

  if ((~v14 & 0xFFFFFFFFFFF0000) == 0 || v15 == 2)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  if (a2 == 1)
  {
    a2 = v18;
  }

  result = jfs_get_tree_in_snap(a1, a2, a3, *(a1 + 440), v26);
  if (!result)
  {
    if ((a10 & 0x4000) != 0)
    {
      v20 = _apfs_zalloc(3u);
      if (!v20)
      {
        return 12;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = *(a1 + 440);
    v22 = a10 & 0x7000;
    switch(v22)
    {
      case 0x4000:
        v23 = bt_iterate_individual(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_10004AE84, v27, v20, v20 + 832);
        break;
      case 0x2000:
        v23 = bt_iterate_bulk(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_10004AE84, v27);
        break;
      case 0x1000:
        v23 = bt_iterate_per_node(*v26, v21, a10 & 0x8FFF, a4, a5, a9, sub_10004AE84, v27);
        break;
      default:
        v24 = 22;
        if ((a10 & 0x4000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
    }

    v24 = v23;
    if ((a10 & 0x4000) == 0)
    {
LABEL_30:
      obj_release(*v26);
      if (v24 == 2 || v24 == 0x80000000)
      {
        result = 0;
      }

      else
      {
        result = v24;
      }

      if (a8)
      {
        *a8 = result == 0;
      }

      return result;
    }

LABEL_29:
    _apfs_zfree(v20, 3u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_10004AE84(void *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  result = jobj_validate_key_val(*a5, a1, a2, a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a5 + 33) != 1)
  {
    if ((*(a5 + 34) & 1) == 0)
    {
      if ((*a1 & 0xFFFFFFFFFFFFFFFLL) != *(a5 + 24) || *(a5 + 32) && jobj_type_from_possibly_large_key(*a5, a1) != *(a5 + 32))
      {
        return 0x80000000;
      }

      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (*(a5 + 34))
  {
LABEL_6:
    if (*(a5 + 32) && jobj_type_from_possibly_large_key(*a5, a1) != *(a5 + 32))
    {
      return 0;
    }
  }

LABEL_12:
  v12 = *(a5 + 8);
  v11 = *(a5 + 16);

  return v12(a1, v8, a3, v9, v11);
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

uint64_t create_new_crypto_state_for_id(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 4)
  {
    panic("assertion failed: %s", "crypto_id == 4");
  }

  v5 = _apfs_calloc_typed(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
  if (v5)
  {
    v6 = v5;
    v7 = _apfs_malloc_typed(0xD0uLL, 0x1000040B4E0BC51uLL);
    if (v7)
    {
      v8 = v7;
      *v6 = 4;
      *v7 = 2621703;
      *(v7 + 1) = 4;
      *(v7 + 4) = 1;
      wrap_crypto_state(a1, v6, v7);
      inserted = insert_jobj(a1, 1, v8, a2);
      crypto_obj_release(v6);
      _apfs_free(v8, 208);
      return inserted;
    }

    crypto_obj_release(v6);
  }

  return 12;
}

uint64_t get_new_crypto_id(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v10 = a2;
  vol_crypto = get_vol_crypto(a1, a2);
  if (vol_crypto <= 1)
  {
    if (!vol_crypto)
    {
      *a5 = 0;
LABEL_4:
      v13 = *(a1 + 504);
      if (!v13)
      {
        v13 = a1;
      }

      if ((*(*(v13 + 376) + 264) & 9) == 0)
      {
        panic("assertion failed: %s", "!((err == 0) && (*crypto_id == 0) && fs_is_content_protected(apfs))");
      }

      return 0;
    }

    v16 = *(a1 + 504);
    if (!v16)
    {
      v16 = a1;
    }

    if ((*(*(v16 + 376) + 264) & 9) != 0)
    {
      panic("assertion failed: %s", "fs_is_content_protected(apfs)");
    }

    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    v17 = _apfs_calloc_typed(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
    if (v17)
    {
      v18 = v17;
      if ((*a5 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        panic("invalid crypto id");
      }

      v19 = _apfs_malloc_typed(0xD0uLL, 0x1000040B4E0BC51uLL);
      if (v19)
      {
        v20 = v19;
        add_explicit = *a5;
        if (!*a5)
        {
          if (!a4)
          {
            sub_1000A6EFC();
          }

          add_explicit = atomic_fetch_add_explicit((*(a1 + 376) + 176), 1uLL, memory_order_relaxed);
          *a5 = add_explicit;
        }

        *v18 = add_explicit;
        *v19 = 2621703;
        *(v19 + 1) = *a5;
        *(v19 + 4) = 1;
        if (crypto_state_init())
        {
          crypto_obj_release(v18);
          _apfs_free(v20, 208);
          return 1;
        }

        wrap_crypto_state(a1, v18, v20);
        v20[1] += v20[19];
        inserted = insert_jobj(a1, 1, v20, a4);
        if (inserted)
        {
          v14 = inserted;
          *a5 = 0;
          crypto_obj_release(v18);
          _apfs_free(v20, 208);
          return v14;
        }

        _apfs_free(v20, 208);
        if (*a5)
        {
          return 0;
        }

        goto LABEL_4;
      }

      _apfs_free(v18, 96);
    }

    return 12;
  }

  if (vol_crypto != 2)
  {
    if (*(a1 + 1108))
    {
      panic("assertion failed: %s", "!apfs->apfs_readonly");
    }

    if ((a3 & 2) != 0 || v10 <= 6 && ((1 << v10) & 0x46) != 0 || (v15 = apfs_kb_supports_class(a1, 4), v10 == 4) && v15)
    {
      if (!a6)
      {
        panic("assertion failed: %s", "ino");
      }

      panic("assertion failed: %s", "ino_has_vnode(ino)");
    }
  }

  v14 = 0;
  *a5 = 4;
  return v14;
}

uint64_t cp_dec_ref(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    panic("assertion failed: %s", "xid");
  }

  if ((get_vol_crypto(a1, a2) | 2) != 3)
  {
    return 0;
  }

  return sub_10004F224(a1, a2, a3);
}

uint64_t fs_reset_dstream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v14 = a5;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  v9 = *(a2 + 76);
  if ((*(a2 + 64) & 8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  new_crypto_id = get_new_crypto_id(a1, v9, v10, a6, &v14, a2);
  if (!new_crypto_id)
  {
    *(a4 + 16) = v14;
    sub_10004C630(a1, a2);
    sub_10004C630(a1, a2);
    if ((*(a2 + 114) & 2) != 0)
    {
      sub_1000A6F28();
    }

    get_vol_crypto(a1, v12);
  }

  return new_crypto_id;
}

uint64_t fs_create_dstream(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v22 = 0;
  memset(__src, 0, sizeof(__src));
  v20 = 0;
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    add_explicit = 0;
    v10 = 0;
    v11 = 0;
    v12 = 22;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = *(a1 + 376);
  if ((*(v8 + 57) & 2) == 0 || (~*(a2 + 84) & 0x40000020) != 0)
  {
    add_explicit = *(a2 + 8);
  }

  else
  {
    if (!a3)
    {
      sub_1000A6EFC();
    }

    add_explicit = atomic_fetch_add_explicit((v8 + 176), 1uLL, memory_order_relaxed);
  }

  v13 = fs_reset_dstream(a1, a2, a3, __src, add_explicit, a3);
  if (v13)
  {
    v12 = v13;
    v10 = 0;
    v11 = 0;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = xf_set((a2 + 408), 8, 32, __src, 0x28uLL);
  if (v14)
  {
    log_err("%s:%d: %s *** failed to set dstream as an extended field of ino %lld (ret %d)\n", "fs_create_dstream", 10892, (a1 + 4048), *(a2 + 8), v14);
    v11 = 0;
    v10 = 1;
    v12 = 12;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = 0;
  ptr_and_size = xf_get_ptr_and_size((a2 + 408), 8, 0, &v20, &v19);
  if (ptr_and_size || v19 != 40)
  {
    log_err("%s:%d: %s *** failed to fetch the dstream pointer for %lld (ret %d)\n", "fs_create_dstream", 10899, (a1 + 4048), *(a2 + 8), ptr_and_size);
    v20 = 0;
    v10 = 1;
    v12 = 2;
  }

  else
  {
    v18[1] = *(a2 + 24);
    v18[0] = 1573126;
    v10 = 1;
    v18[2] = 1;
    inserted = insert_jobj(a1, 1, v18, a3);
    v12 = inserted;
    if (inserted)
    {
      log_err("%s:%d: %s failed to insert new dstream_id %llu (ret %d)", "fs_create_dstream", 10916, (a1 + 4048), *(a2 + 24), inserted);
      v20 = 0;
    }
  }

  v11 = 1;
  if (a4)
  {
LABEL_14:
    *a4 = v12;
  }

LABEL_15:
  if (v12)
  {
    if (v10)
    {
      cp_dec_ref(a1, add_explicit, a3);
    }

    if (v11)
    {
      xf_remove((a2 + 408), 8);
    }
  }

  return v20;
}

uint64_t dir_rec_alloc_with_hash(uint64_t a1, char a2, char *__s, size_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a8)
  {
    v12 = a4;
    *a8 = 0;
    if (a4)
    {
      if (__s[a4 - 1])
      {
        v12 = a4 + 1;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = strlen(__s) + 1;
    }

    if (v12 != 1)
    {
LABEL_8:
      if (v12 > 0x2FE)
      {
        return 7;
      }

      v17 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
      if (v17)
      {
        v18 = v17;
        v19 = _apfs_malloc_typed(v12, 0x47093A9uLL);
        *(v18 + 8) = v19;
        if (v19)
        {
          *v18 = 9;
          *(v18 + 1) = a2;
          *(v18 + 1) = v12 + 72;
          *(v18 + 1) = a6;
          memcpy(v19, __s, v12 - 1);
          *(*(v18 + 8) + v12 - 1) = 0;
          *(v18 + 31) = v12;
          v20 = *(*(a1 + 376) + 56);
          if (v20)
          {
            if (a5 == -1)
            {
              v22 = (v20 >> 3) & 1;
              goto LABEL_25;
            }
          }

          else if (a5 == -1 || (v20 & 8) == 0)
          {
            if ((v20 & 8) == 0)
            {
              v18[14] = 0;
LABEL_21:
              *(v18 + 30) = 0;
              *(v18 + 2) = a7;
              *(v18 + 3) = 0;
              xf_init((v18 + 8), 0);
              v16 = 0;
              *a8 = v18;
              return v16;
            }

            v22 = 1;
LABEL_25:
            v24 = -1;
            v23 = utf8_normalizeOptCaseFoldAndHash(*(v18 + 8), v12 - 1, v22, sub_10004BA54, &v24);
            if (v23)
            {
              v16 = v23;
              _apfs_free(*(v18 + 8), *(v18 + 31));
              _apfs_free(v18, 72);
              return v16;
            }

            v18[14] = v24 & 0x3FFFFF;
            goto LABEL_21;
          }

          v18[14] = a5;
          goto LABEL_21;
        }

        _apfs_free(v18, 72);
      }

      return 12;
    }
  }

  return 22;
}

uint64_t sub_10004BA54(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = crc32c(*a3, a1, a2);
  *a3 = result;
  return result;
}

uint64_t update_time(uint64_t a1, void *a2, int a3)
{
  if (!a1)
  {
    sub_1000A6FD8();
  }

  if (!a2)
  {
    sub_1000A6FAC();
  }

  v4 = a3;
  if (!a3)
  {
    sub_1000A6F80();
  }

  if (*(a1 + 1108))
  {
    sub_1000A6F54();
  }

  result = get_timestamp();
  if (v4)
  {
    a2[5] = result;
  }

  if ((v4 & 2) != 0)
  {
    a2[6] = result;
  }

  a2[14] |= 0x40000uLL;
  return result;
}

uint64_t apfs_inc_parent_nlink(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  v3 = *(a1 + 376);
  if ((*(v3 + 57) & 2) != 0)
  {
    result = 0;
    ++*(a2 + 104);
  }

  else if ((*(v3 + 48) & 2) != 0)
  {
    result = xf_get((a2 + 408), 17, 0, &__dst, 8uLL);
    if (!result)
    {
      ++__dst;
      return xf_set((a2 + 408), 17, 0, &__dst, 8uLL);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t apfs_reset_parent_nlink(uint64_t a1, uint64_t a2)
{
  __src = 0;
  v2 = *(a1 + 376);
  if ((*(v2 + 57) & 2) != 0)
  {
    result = 0;
    *(a2 + 104) = 0;
  }

  else if ((*(v2 + 48) & 2) != 0)
  {
    return xf_set((a2 + 408), 17, 0, &__src, 8uLL);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t utf8_strlen_with_ascii_status(uint64_t a1, unint64_t a2, unsigned __int8 a3, _DWORD *a4, int *a5)
{
  if (!a1)
  {
    sub_1000A7004();
  }

  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  v11 = 0;
  v18 = 0;
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = a2 - v11;
  if (a2 > v11)
  {
    v13 = (a1 + v11);
    while (1)
    {
      v14 = sub_10004BD80(v13, v12, &v18);
      v15 = v18;
      if ((v18 & 0x80000000) != 0)
      {
        v10 = 0;
        if (!a5)
        {
          return v10;
        }

        v16 = 92;
        goto LABEL_30;
      }

      if (!v18)
      {
        break;
      }

      if (a4 && v18 >= 0x80)
      {
        *a4 = 1;
      }

      if (v15 >= 0x2000)
      {
        if ((a3 & 2) != 0 && ((v15 & 0x7FFFFFFE) == 0x200E || v15 - 8234 < 6 || v15 - 8298 < 6 || (~v15 & 0xFFFE) == 0 || v15 == 65279 || v15 - 64976 <= 0x1F))
        {
          v10 = 0;
          if (!a5)
          {
            return v10;
          }

          v16 = 1;
LABEL_30:
          *a5 = v16;
          return v10;
        }

        v10 += a3 & ((v15 & 0xFFFF0000) != 0);
      }

      v11 += v14;
      ++v10;
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v13 = (a1 + v11);
      v12 = -1;
    }
  }

  if (a5)
  {
    v16 = 0;
    goto LABEL_30;
  }

  return v10;
}

uint64_t sub_10004BD80(char *a1, uint64_t a2, int *a3)
{
  *a3 = -1;
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  if (a2 == -1)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v6 = 1;
LABEL_10:
    *a3 = v5;
    return v6;
  }

  if ((v5 - 194) <= 0x1D)
  {
    if (v4 != 1)
    {
      v7 = a1[1];
      if ((v7 & 0xC0) == 0x80)
      {
        v8 = v7 & 0x3F | ((v5 & 0x1F) << 6);
        v6 = 2;
        v5 = v8;
        goto LABEL_10;
      }
    }

    return 0;
  }

  if ((v5 & 0xF0) == 0xE0)
  {
    if (v4 < 3)
    {
      return 0;
    }

    if (v5 == 224)
    {
      if (a1[1] - 192 < 0xFFFFFFE0)
      {
        return 0;
      }

      goto LABEL_38;
    }

    if ((v5 - 225) > 0xB)
    {
      if (v5 == 237)
      {
        if (a1[1] > -97)
        {
          return 0;
        }

        goto LABEL_38;
      }
    }

    else if ((a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

    if ((~v5 & 0xEE) == 0 && (a1[1] & 0xC0) != 0x80)
    {
      return 0;
    }

LABEL_38:
    v11 = a1[2];
    if ((v11 & 0xC0) == 0x80)
    {
      v5 = ((v5 & 0xF) << 12) | ((a1[1] & 0x3F) << 6) | v11 & 0x3F;
      v6 = 3;
      goto LABEL_10;
    }

    return 0;
  }

  v6 = 0;
  if (v4 >= 4 && (v5 - 245) >= 0xFFFFFFFB)
  {
    if (v5 == 240)
    {
      v10 = a1[1];
      if ((v10 - 192) < 0xFFFFFFD0)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(v10) = a1[1];
      if ((v5 - 241) > 2)
      {
        if (v10 > -113)
        {
          return 0;
        }
      }

      else if ((v10 & 0xC0) != 0x80)
      {
        return 0;
      }
    }

    v12 = a1[2];
    if ((v12 & 0xC0) == 0x80)
    {
      v13 = a1[3];
      if ((v13 & 0xC0) == 0x80)
      {
        v5 = ((v5 & 7) << 18) | ((v10 & 0x3F) << 12) | ((v12 & 0x3F) << 6) | v13 & 0x3F;
        v6 = 4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  return v6;
}

uint64_t fs_lookup_name_with_parent_id(uint64_t a1, uint64_t a2, char *__s, size_t a4, uint64_t *a5, int *a6, void *a7)
{
  v34 = 0;
  v13 = *(*(a1 + 376) + 56);
  if ((v13 & 9) == 0)
  {
    v28[0] = 0;
    v14 = dir_rec_alloc_with_hash(a1, 0, __s, a4, -1, a2, 0, v28);
    if (!v14)
    {
      v14 = lookup_jobj_in_snap(a1, 1, a5, v28[0], *(a1 + 440), &v34);
      jobj_release(v14, v28[0]);
    }

    goto LABEL_18;
  }

  if (a4)
  {
    if (__s[a4 - 1])
    {
      ++a4;
      goto LABEL_10;
    }
  }

  else
  {
    a4 = strlen(__s) + 1;
  }

  if (a4 == 1)
  {
    v15 = 0;
    v14 = 22;
    goto LABEL_19;
  }

LABEL_10:
  if (a4 > 0x2FE)
  {
    v15 = 0;
    v14 = 7;
    goto LABEL_19;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28[0] = 4718601;
  v29 = 0u;
  v28[1] = a2;
  DWORD2(v31) = 0;
  v16 = a4 - 1;
  v33 = -1;
  v17 = utf8_normalizeOptCaseFoldAndHash(__s, a4 - 1, (v13 >> 3) & 1, sub_10004BA54, &v33);
  if (v17)
  {
    v14 = v17;
    if (v17 == 92)
    {
      v23 = __s;
      v24 = v16;
      v18 = iterate_jobjs_with_hint_and_snap(a1, 1, 0, *(a1 + 440), v28, sub_10004C218, &v23, a5, 4u);
      if (v18 == -1)
      {
        v14 = 0;
        if (*(&v24 + 1))
        {
          v34 = *(&v24 + 1);
        }
      }

      else if (v18)
      {
        v14 = v18;
      }

      else
      {
        v14 = 2;
      }

      v15 = -1;
      goto LABEL_19;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v15 = v33 & 0x3FFFFF;
  v25 = 0;
  v23 = __s;
  *&v24 = v33 & 0x3FFFFFLL;
  *(&v24 + 1) = v16;
  v26 = a1;
  v27 = a7 != 0;
  v21 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
  v22 = v33 << 10;
  v20 = iterate_raw_jobjs_with_hint(a1, 1, 0, &v21, 12, sub_10004C33C, &v23, 0, a5, 4100);
  if (v20 == -1)
  {
    v14 = 0;
    if (v25)
    {
      v34 = v25;
    }
  }

  else if (v20)
  {
    v14 = v20;
  }

  else
  {
    v14 = 2;
  }

LABEL_19:
  if (a7 && !v14)
  {
    *a7 = v34;
  }

  if (a6 && (v14 | 2) == 2)
  {
    *a6 = v15;
  }

  return v14;
}

uint64_t sub_10004C218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 + 1 != *(a1 + 62) || memcmp(*(a1 + 64), *a2, v2))
  {
    return 0;
  }

  v7 = _apfs_calloc_typed(1uLL, 0x48uLL, 0x10B004060F4C5C5uLL);
  *(a2 + 16) = v7;
  if (!v7)
  {
    return 12;
  }

  v8 = _apfs_malloc_typed(*(a1 + 62), 0x76690F2EuLL);
  v9 = *(a2 + 16);
  *(v9 + 8) = v8;
  if (!v8)
  {
    _apfs_free(v9, 72);
    return 12;
  }

  *v9 = *a1;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  *(v9 + 8) = *(a1 + 64);
  v9[2] = v11;
  v9[3] = v12;
  v9[1] = v10;
  memcpy(*(*(a2 + 16) + 64), *(a1 + 64), *(a1 + 62));
  v13 = xf_deep_copy(*(a2 + 16) + 32, (a1 + 32));
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v13;
  _apfs_free(*(*(a2 + 16) + 64), *(a1 + 62));
  _apfs_free(*(a2 + 16), 72);
  *(a2 + 16) = 0;
  return v5;
}

uint64_t sub_10004C33C(uint64_t a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  v17 = 0;
  v5 = *(a1 + 8);
  v6 = *(a5 + 8);
  if (v5 >> 10 < v6)
  {
    return 0;
  }

  if (v5 >> 10 != v6)
  {
    return 2;
  }

  v12 = *(a1 + 8) & 0x3FF;
  v13 = *(a5 + 16);
  v14 = *a5;
  if (v13 == (v5 & 0x3FF) && !strncmp((a1 + 12), *a5, v5 & 0x3FF))
  {
    v17 = 1;
  }

  else if (utf8_normalizeOptCaseFoldAndCompare((a1 + 12), (v12 - 1), v14, v13, (*(*(*(a5 + 32) + 376) + 56) >> 3) & 1, &v17) || (v17 & 1) == 0)
  {
    return 0;
  }

  if (*(a5 + 40) && (v16 = key_val_to_jobj(*(a5 + 32), a1, a2, a3, a4), (*(a5 + 24) = v16) == 0))
  {
    return 12;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
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

    pthread_mutex_lock((a1 + 1288));
    *(a1 + 480) &= ~0x400000000uLL;
    pthread_mutex_unlock((a1 + 1288));
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

uint64_t ino_is_class_v(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 96) & 0xF000) != 0x8000)
  {
    return 0;
  }

  if (get_vol_crypto(a1, a2) != 3 || (*(a2 + 64) & 8) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 76) & 0x1F;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return (v4 == 4) & ~apfs_kb_supports_class(a1, 4);
  }
}

uint64_t ino_get_class_check(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a1 + 504);
  if (!v3)
  {
    v3 = a1;
  }

  if ((*(*(v3 + 376) + 264) & 9) != 0)
  {
    sub_1000A7030();
  }

  if (ino_is_class_v(a1, a2))
  {
    *a3 = 5;
    return 1;
  }

  else
  {
    v7 = *(a2 + 76);

    return cp_to_ino_class(v7, a3);
  }
}

uint64_t cp_to_ino_class(char a1, unsigned int *a2)
{
  v2 = a1 & 0x1F;
  if (v2 > 7 || v2 == 5)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t sub_10004C630(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_1000A7088();
  }

  if (!a2)
  {
    sub_1000A705C();
  }

  return result;
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

unint64_t sub_10004C674(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 - 2;
  if (a2 - 2) < 5 && ((0x1Du >> v4))
  {
    v5 = qword_1000B30C0[v4];
    v6 = qword_1000B30E8[v4];
  }

  else
  {
    v6 = 100;
    if (((a4 > 4) & ((*(*(a1 + 376) + 48) & 2) >> 1)) != 0)
    {
      v6 = 80;
    }

    v5 = 3;
  }

  return 3 * a3 * v5 + a4 + v6;
}

unint64_t sub_10004C6E4(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 == 6)
  {
    return 0;
  }

  if (a2 == 2 || a2 == 4)
  {
    v4 = *(a1 + 392);
    if (!*(v4 + 648))
    {
      return 0;
    }

    v5 = 17920;
  }

  else
  {
    v4 = *(a1 + 392);
    v5 = 25600;
  }

  if (*(v4 + 640) == 1)
  {
    v6 = *(v4 + 656) == 0;
    v7 = 4000;
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 4000;
  }

  if (a3 / 0x64 < v7)
  {
    v7 = a3 / 0x64;
  }

  if (v7 <= 0x64)
  {
    return 100;
  }

  else
  {
    return v7;
  }
}

uint64_t fs_tx_can_log(uint64_t a1)
{
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  v2 = 1000000 * v5.tv_sec + SLODWORD(v5.tv_nsec) / 1000;
  atomic_fetch_add_explicit((a1 + 3824), 1u, memory_order_relaxed);
  v3 = v2 - *(a1 + 3816);
  if (*(a1 + 3824) >= 17)
  {
    if (v3 < 0xF4240)
    {
      result = 0;
      *(a1 + 3816) = v2;
      return result;
    }

    goto LABEL_5;
  }

  if (v3 > 0xF423F)
  {
LABEL_5:
    *(a1 + 3816) = v2;
    result = 1;
    *(a1 + 3824) = 1;
    return result;
  }

  return 1;
}

uint64_t sub_10004C838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t *a6)
{
  v9 = a3;
  v10 = a2;
  v12 = (*(a1 + 392) + 488);
  v13 = *(a1 + 376);
  v14 = *(v13 + 72);
  if (v14 && v14 == *(v13 + 80))
  {
    v12 = (a1 + 424);
  }

  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  v15 = sub_10004C674(a1, a2, a3, a4);
  spaceman_currently_available_space(a1, 0, &v58, 0, 0, 0);
  v16 = sub_10004C6E4(a1, v10, v58);
  pthread_mutex_lock((*(a1 + 392) + 504));
  v17 = spaceman_compare_currently_available_space(a1, v15, v16, 0, v12, &v57, &v56, &v53 + 1, &v55, &v54, &v53);
  v49 = a4;
  if (v17 != 28)
  {
    v25 = v17;
    v46 = a5;
    v50 = 0;
    v51 = 0;
    v22 = 0;
    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v18 = *a6;
  if (*a6 && v53 != 1)
  {
    v50 = 0;
    v51 = 0;
    v22 = 0;
    v25 = 28;
    goto LABEL_32;
  }

  v46 = a5;
  v47 = v9;
  v42 = v10;
  v44 = a6;
  v19 = v12;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v52 = 0;
  v50 = 0;
  v51 = v18 != 0;
  if (v18)
  {
    v23 = 10000000;
  }

  else
  {
    v23 = 250000000;
  }

  while (1)
  {
    if (HIBYTE(v53) != 1 || v18 || v55 < v57)
    {
      goto LABEL_21;
    }

    if (v20)
    {
      break;
    }

    if (v50 <= 31)
    {
      goto LABEL_16;
    }

LABEL_21:
    if (v53 != 1)
    {
      v25 = 28;
      goto LABEL_31;
    }

    v25 = 28;
    if (*(a1 + 1124) <= v51 || ((v18 != 0) & v21) != 0)
    {
      goto LABEL_31;
    }

    v59.tv_sec = 0;
    v59.tv_nsec = v23;
    ++v22;
    v26 = *(a1 + 392);
    *(v26 + 496) += v15;
    v27 = cv_wait((v26 + 568), (v26 + 504), 8, "blocks_in_txn", &v59);
    *(*(a1 + 392) + 496) -= v15;
    v21 |= v27 == 35;
LABEL_25:
    v28 = spaceman_compare_currently_available_space(a1, v15, v16, 0, v19, &v57, &v56, &v53 + 1, &v55, &v54, &v53);
    if (v28 != 28)
    {
      v25 = v28;
      goto LABEL_31;
    }
  }

  if (v54 > v20 || v50 >= 32)
  {
    goto LABEL_21;
  }

LABEL_16:
  ++v50;
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v52 = 0;
  v24 = tx_enter(*(a1 + 392), &v52);
  if (!v24)
  {
    if (!v20)
    {
      v20 = v52;
    }

    spaceman_free_up_some_blocks(*(a1 + 392), &v55, v52);
    tx_leave(*(a1 + 392), v52, 4);
    pthread_mutex_lock((*(a1 + 392) + 504));
    goto LABEL_25;
  }

  v25 = v24;
  pthread_mutex_lock((*(a1 + 392) + 504));
LABEL_31:
  v12 = v19;
  a6 = v44;
  v10 = v42;
  v9 = v47;
  if (v25)
  {
LABEL_32:
    *a6 = 0;
    if (fs_tx_can_log(a1) || v10 == 2 && v15 <= 0x31 && *(a1 + 3828) <= 9)
    {
      if (v25 == 28)
      {
        v59 = 0;
        v60 = 0u;
        __strlcpy_chk();
        v29 = sub_10004D0BC(v10);
        v43 = v56;
        v45 = v29;
        v40 = *(a1 + 3808);
        v41 = *v12;
        v39 = v57;
        v48 = v9;
        v30 = v55;
        v31 = HIBYTE(v53);
        v32 = v53;
        v33 = *(a1 + 1124);
        v34 = spaceman_entitled_reserve_active(*(a1 + 392), 0);
        log_debug("%s:%d: %s %s: ENOSPC: ttype %s (r %lld d %lld tx %d) blocks %lld free %lld txn %lld # %d th %lld rr %lld sh %lld fq %lld lim %d %d freeup %d wait %d er %d\n", "fs_tx_enter_internal", 28354, (a1 + 4048), &v59, v45, v48, v49, v51, v15, v43, v41, v33, v16, v40, v39, v30, v31, v32, v50, v22, v34);
        if (v10 == 2 && v15 <= 0x31)
        {
          ++*(a1 + 3828);
        }
      }

      else
      {
        log_err("%s:%d: %s failed to compare currently available space: error %d\n", "fs_tx_enter_internal", 28340, (a1 + 4048), v25);
      }
    }

    pthread_mutex_unlock((*(a1 + 392) + 504));
    return v25;
  }

LABEL_37:
  atomic_fetch_add_explicit((a1 + 1124), 1u, memory_order_relaxed);
  pthread_mutex_unlock((*(a1 + 392) + 504));
  v35 = *(a1 + 392);
  if (v46)
  {
    v36 = tx_enter_frozen(v35, a6);
    if (v36)
    {
      v25 = v36;
      log_err("%s:%d: %s tx_enter_frozen() failed: %d\n");
LABEL_52:
      pthread_mutex_lock((*(a1 + 392) + 504));
      atomic_fetch_add_explicit(v12, -v15, memory_order_relaxed);
      atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
      pthread_mutex_unlock((*(a1 + 392) + 504));
      *a6 = 0;
      return v25;
    }
  }

  else
  {
    v37 = tx_enter(v35, a6);
    if (v37)
    {
      v25 = v37;
      log_err("%s:%d: %s tx_enter() failed: %d\n");
      goto LABEL_52;
    }
  }

  if (*(a1 + 3828))
  {
    *(a1 + 3828) = 0;
  }

  v25 = obj_modify(a1, 0, *a6);
  if (v25)
  {
    tx_leave(*(a1 + 392), *a6, 0);
    goto LABEL_52;
  }

  return v25;
}

uint64_t fs_tx_leave_ext(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v10 = a2;
  v12 = *(a1 + 392);
  v13 = (v12 + 488);
  v14 = *(a1 + 376);
  v15 = *(v14 + 72);
  if (v15 && v15 == *(v14 + 80))
  {
    v13 = (a1 + 424);
  }

  pthread_mutex_lock((v12 + 504));
  atomic_fetch_add_explicit((a1 + 1124), 0xFFFFFFFF, memory_order_relaxed);
  v16 = sub_10004C674(a1, v10, a3, a4);
  v17 = v16;
  add_explicit = atomic_fetch_add_explicit(v13, -v16, memory_order_relaxed);
  v19 = add_explicit - v16;
  if ((add_explicit - v16) < 0)
  {
    log_err("%s:%d: %s old reserve was %lld, num_blocks %lld. blocks_in_txn_counter %lld num_active_txns=%d\n", "fs_tx_leave_ext", 28485, (a1 + 4048), add_explicit, v16, *v13, *(a1 + 1124));
    if (add_explicit < v17)
    {
      sub_1000A70B4();
    }
  }

  *(*(a1 + 376) + 256) = get_timestamp();
  fs_sb_dirty(a1, a5);
  v20 = *(a1 + 392);
  if (*(v20 + 496))
  {
    cv_wakeup((v20 + 568));
    v20 = *(a1 + 392);
  }

  pthread_mutex_unlock((v20 + 504));
  v32 = 0;
  v33 = 0;
  spaceman_currently_available_space(a1, 0, &v33, &v32, 0, 0);
  if (add_explicit)
  {
    v21 = (*(*(a1 + 376) + 48) & 2) == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21 && v33 >= 0xA01 && add_explicit + 4000 >= v32)
  {
    a6 |= 4u;
  }

  v22 = *(a1 + 392);
  v23 = v33 / 0x64;
  if (*(v22 + 640) == 1)
  {
    v21 = *(v22 + 656) == 0;
    v24 = 4000;
    if (v21)
    {
      v24 = 25600;
    }
  }

  else
  {
    v24 = 4000;
  }

  if (v23 >= v24)
  {
    v23 = v24;
  }

  if (v23 <= 0x64)
  {
    v23 = 100;
  }

  v25 = v23 + v19;
  v26 = v32;
  v27 = *(a1 + 3832);
  if (v25 >= v32)
  {
    *(a1 + 3832) = v27 + 1;
    if (v27 <= 99)
    {
      v28 = sub_10004D0BC(v10);
      log_info("%s:%d: %s gettin' low on space: ttype %s num_blocks %lld blocks_in_txn %lld free_blocks %lld xid %lld\n", "fs_tx_leave_ext", 28516, (a1 + 4048), v28, v17, v19, v26, a5);
    }
  }

  else if (v27 >= 100)
  {
    *(a1 + 3832) = 0;
  }

  if (!a5)
  {
    return 0;
  }

  ++*(a1 + 432);
  v29 = tx_leave(*(a1 + 392), a5, a6);
  v30 = v29;
  if (v29)
  {
    log_err("%s:%d: %s tx_leave failed: %d\n", "fs_tx_leave_ext", 28531, (a1 + 4048), v29);
  }

  return v30;
}

const char *sub_10004D0BC(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "UNKNOWN TXN TYPE";
  }

  else
  {
    return off_1000E4F80[a1 - 1];
  }
}

uint64_t apfs_deletefs_ext(uint64_t a1, unsigned int a2, void *a3)
{
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (*(a1 + 627) == 1)
  {
    log_err("%s:%d: %s Request to delete volume %u was denied, nx is read only\n", "apfs_deletefs_ext", 28835, (*(a1 + 384) + 212), a2);
    return 30;
  }

  else
  {
    v6 = *(a1 + 376);
    if (*(v6 + 180) > a2 && (v28 = 0, (v8 = *(v6 + 8 * a2 + 184)) != 0))
    {
      v9 = a2;
      v10 = obj_get(*(a1 + 392), 0, v8, &apfs_desc, 0, 0, 0, 0, &v28);
      if (v10)
      {
        v5 = v10;
        log_err("%s:%d: %s failed to get fsys idx=%u oid=%llu: %d\n", "apfs_deletefs_ext", 28848, (*(a1 + 384) + 212), a2, *(*(a1 + 376) + 8 * a2 + 184), v10);
      }

      else if (userfs_volume_is_mountable(v28, &v25))
      {
        v12 = *(v28[47] + 36);
        if (v12 == a2)
        {
          if (*(a1 + 629) != 1)
          {
            goto LABEL_18;
          }

          v13 = v28[63];
          if (!v13)
          {
            v13 = v28;
          }

          if (*(v13[47] + 264))
          {
LABEL_18:
            pthread_mutex_lock((v28 + 161));
            if ((v28[60] & 0x20000004460) != 0 || *(v28 + 280) > 0 || *(v28 + 278) > 0 || *(v28 + 279) >= 1)
            {
              pthread_mutex_unlock((v28 + 161));
              log_err("%s:%d: %s can not delete a volume that is already mounted/deleting/replicating\n", "apfs_deletefs_ext", 28889, v28 + 4048);
              v14 = 0;
              v5 = 16;
            }

            else
            {
              log_info("%s:%d: %s Deleting volume %s, volume index %u\n", "apfs_deletefs_ext", 28894, v28 + 4048, (v28[47] + 704), a2);
              v16 = v28;
              v28[60] |= 0x400uLL;
              pthread_mutex_unlock((v16 + 161));
              v17 = tx_enter(a1, &v27);
              if (v17)
              {
                v5 = v17;
                log_err("%s:%d: %s failed to enter transaction, error = %d\n", "apfs_deletefs_ext", 28900, (*(a1 + 384) + 212), v17);
                v14 = 0;
              }

              else
              {
                v18 = *(v28[47] + 216);
                v19 = obj_type_and_flags(v28);
                v20 = obj_size_phys(v28);
                v21 = obj_oid(v28);
                v22 = nx_reaper_add_ext(a1, v19, v20, 0, v21, v27, 1, &v26);
                if (v22)
                {
                  v5 = v22;
                  log_err("%s:%d: %s failed to add file system to reaper: %d\n", "apfs_deletefs_ext", 28911, (*(a1 + 384) + 212), v22);
                  v14 = 1;
                }

                else
                {
                  *(*(a1 + 376) + 8 * v9 + 184) = 0;
                  v23 = v28;
                  v24 = v28[47];
                  *(a1 + 656) += (*(v24 + 48) << 30) >> 31;
                  if (*(v24 + 964) != 1)
                  {
                    atomic_fetch_add_explicit((v23[49] + 648), -v18, memory_order_relaxed);
                  }

                  v5 = 0;
                  if (a3)
                  {
                    *a3 = v26;
                  }

                  v14 = 1;
                }
              }
            }
          }

          else
          {
            log_err("%s:%d: %s cannot delete encrypted volume in demo mode\n", "apfs_deletefs_ext", 28868, v28 + 4048);
            v14 = 0;
            v5 = 1;
          }
        }

        else
        {
          log_err("%s:%d: %s nx and apfs superblock disagree on fs_idx, nx_idx=%u, nx_oid=%llu, apfs_idx=%u\n", "apfs_deletefs_ext", 28861, v28 + 4048, a2, *(*(a1 + 376) + 8 * a2 + 184), v12);
          v14 = 0;
          v5 = 5;
        }

        if (v28)
        {
          obj_release(v28);
        }

        if (v14)
        {
          if (v5)
          {
            v15 = 0;
          }

          else
          {
            v15 = 5;
          }

          tx_leave(a1, v27, v15);
        }
      }

      else
      {
        log_err("%s:%d: %s Volume is not mountable, it can't be deleted (volume role %d) \n", "apfs_deletefs_ext", 28853, v28 + 4048, *(v28[47] + 964));
        return 45;
      }
    }

    else
    {
      log_err("%s:%d: %s Request to delete volume %u was denied, wrong volume index\n", "apfs_deletefs_ext", 28841, (*(a1 + 384) + 212), a2);
      return 22;
    }
  }

  return v5;
}

uint64_t apfs_is_volume_fsindex_allowed(int a1, int a2)
{
  v2 = 0;
  if (a2 != -1 && a2 <= 1)
  {
    v2 = 0;
    if (a1 == 1)
    {
      if (a2)
      {
        v2 = 1;
        log_err("%s:%d: Volume role %d is not allowed at fs index %d\n", "apfs_is_volume_fsindex_allowed", 30994, 1, a2);
      }
    }
  }

  return v2;
}

uint64_t apfs_is_volume_role_allowed(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 == 576)
  {
    if ((a5 & 1) == 0)
    {
      log_err("%s:%d: Volume role 0x%x is not allowed for an unencrypted volume\n");
      return 1;
    }
  }

  else if (a3 == 768)
  {
    log_err("%s:%d: Volume role 0x%x is not supported", a2);
    return 45;
  }

  if (a2 != a3)
  {
    if (a2 <= 319)
    {
      if (a2 <= 127)
      {
        if (a2 != 4 && a2 != 16)
        {
          goto LABEL_7;
        }
      }

      else if (a2 != 128 && a2 != 192)
      {
        if (a2 == 256)
        {
          log_err("%s:%d: cannot change role of xART volume\n");
          return 1;
        }

        goto LABEL_7;
      }
    }

    else if (a2 > 575)
    {
      if (a2 != 576 && a2 != 704 && a2 != 768)
      {
        goto LABEL_7;
      }
    }

    else if (a2 != 320)
    {
      if (a2 == 384)
      {
        log_err("%s:%d: cannot change role of Backup volume\n");
        return 1;
      }

      if (a2 == 448)
      {
        log_err("%s:%d: cannot change role of SideCar volume\n");
        return 1;
      }

      goto LABEL_7;
    }

    log_err("%s:%d: cannot change role of system-unique volume\n");
    return 1;
  }

LABEL_7:
  if (a3)
  {
    if (apfs_is_volume_fsindex_allowed(a3, a4))
    {
      return 1;
    }

    v10 = a3 == 704;
    if (a3 <= 191)
    {
      if (((a3 - 1) > 0x3F || ((1 << (a3 - 1)) & 0x800000008000800BLL) == 0) && a3 != 128)
      {
        goto LABEL_104;
      }

      goto LABEL_27;
    }

    if (a3 <= 511)
    {
      if (a3 != 192 && a3 != 256 && a3 != 320)
      {
        goto LABEL_104;
      }
    }

    else if (a3 > 639)
    {
      if (a3 != 640 && a3 != 704)
      {
        goto LABEL_104;
      }
    }

    else if (a3 != 512 && a3 != 576)
    {
LABEL_104:
      log_err("%s:%d: Volume role 0x%x is not supported in container\n", v9);
      return 45;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_27:
  v11 = a1[47];
  if (!*(v11 + 180))
  {
    return 0;
  }

  v22 = v10;
  v12 = 0;
  memset(out, 0, 37);
  while (1)
  {
    v23 = 0;
    v13 = *(v11 + 8 * v12 + 184);
    if (v13)
    {
      break;
    }

LABEL_72:
    ++v12;
    v11 = a1[47];
    if (v12 >= *(v11 + 180))
    {
      return 0;
    }
  }

  v14 = obj_get(a1[49], 0, v13, &apfs_desc, 0, 0, 0, 0, &v23);
  v8 = v14;
  if (v14)
  {
    v20 = (a1[48] + 212);
    v21 = strerror(v14);
    log_err("%s:%d: %s Failed to get fsys oid %lld - %s\n", "apfs_is_volume_role_allowed", 31214, v20, v13, v21);
    return v8;
  }

  v15 = 1;
  if (a3 > 191)
  {
    if (a3 > 511)
    {
      if (a3 == 512)
      {
        v16 = v23;
        v17 = *(*(v23 + 47) + 964);
        if (v17 == 512)
        {
          goto LABEL_66;
        }

        if (v22)
        {
          goto LABEL_47;
        }

        goto LABEL_79;
      }

      if (a3 != 640)
      {
        if (a3 == 704)
        {
          v17 = *(*(v23 + 47) + 964);
LABEL_47:
          if (v17 == 704)
          {
            goto LABEL_66;
          }

          v8 = 0;
        }

        goto LABEL_67;
      }

      if (*(*(v23 + 47) + 964) != 640)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (a3 == 192)
      {
        v16 = v23;
        if (*(*(v23 + 47) + 964) == 192)
        {
          goto LABEL_66;
        }

        goto LABEL_79;
      }

      if (a3 != 256)
      {
        v16 = v23;
        if (*(*(v23 + 47) + 964) == 320)
        {
          goto LABEL_66;
        }

LABEL_79:
        obj_release(v16);
        goto LABEL_72;
      }

      if (*(*(v23 + 47) + 964) != 256)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    uuid_unparse((a1[47] + 72), out);
    log_err("%s:%d: %s Volume role 0x%x already exists in container uuid %s\n", "apfs_is_volume_role_allowed", 31236, v23 + 4048, a3, out);
    v15 = 0;
    v8 = 17;
LABEL_67:
    if (a3 > 255)
    {
      if (a3 == 256 || a3 == 640 || a3 == 704)
      {
        goto LABEL_70;
      }
    }

    else if (a3 <= 0x20 && ((1 << a3) & 0x100010110) != 0)
    {
      goto LABEL_70;
    }

    v18 = v23;
LABEL_71:
    obj_release(v18);
    if ((v15 & 1) == 0)
    {
      return v8;
    }

    goto LABEL_72;
  }

  if (a3 > 15)
  {
    if (a3 == 16)
    {
      if (*(*(v23 + 47) + 964) == 16)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (a3 == 32)
    {
      if (*(*(v23 + 47) + 964) != 32)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    if (a3 != 128)
    {
      goto LABEL_67;
    }

    v16 = v23;
    if (*(*(v23 + 47) + 964) == 128)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (a3 == 1)
  {
    v16 = v23;
    if (*(*(v23 + 47) + 964) == 1)
    {
      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (a3 != 4)
  {
    goto LABEL_67;
  }

  if (*(*(v23 + 47) + 964) == 4)
  {
    goto LABEL_66;
  }

LABEL_62:
  v8 = 0;
LABEL_70:
  v18 = v23;
  if (!a5)
  {
    goto LABEL_71;
  }

  log_err("%s:%d: %s Encrypted volume is not allowed with special role = 0X%x\n", "apfs_is_volume_role_allowed", 31240, v23 + 4048, a3);
  obj_release(v23);
  return 1;
}

uint64_t apfs_newfs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v129 = 0;
  *v130 = 0;
  v127 = 0;
  v128 = 0;
  memset(uu, 0, sizeof(uu));
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  uuid_clear(uu);
  *a5 = 0;
  if (!a2)
  {
    v113 = a4;
    v114 = 0;
    v103 = 0;
    v104 = a5;
    v116 = 0;
    v12 = 0;
    v117 = 0;
    v102 = 0;
    v13 = 0;
    v14 = 0;
    v121 = 0;
    LODWORD(v105) = 0;
    v106 = 0;
    v112 = 0;
    v107 = 0;
    v108 = 0;
    v119 = 2;
    v110 = 0;
    v111 = 8;
    v15 = -1;
    v16 = 1073741826;
    v120 = 1073741826;
    v118 = 1073741826;
    v109 = 1073741826;
    goto LABEL_5;
  }

  v10 = *(*(a1 + 376) + 36);
  if (strnlen((a2 + 56), 0x100uLL) > 0xFF)
  {
    return 63;
  }

  if (!utf8_strlen_with_ascii_status(a2 + 56, 0, 0, 0, 0))
  {
    return 92;
  }

  v16 = *(a2 + 492);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  if (v18 % v10)
  {
    v20 = v18 / v10 + 1;
  }

  else
  {
    v20 = v18 / v10;
  }

  if (v19 % v10)
  {
    v21 = v19 / v10 + 1;
  }

  else
  {
    v21 = v19 / v10;
  }

  v15 = *(a2 + 48);
  v22 = *(a2 + 52);
  v23 = (v15 == 1) << 6;
  if (!v15)
  {
    v23 = 1;
  }

  if (*(a2 + 54))
  {
    v24 = 1;
  }

  else
  {
    v24 = v15 == -1;
  }

  if (v24)
  {
    v14 = *(a2 + 54);
  }

  else
  {
    v14 = v23;
  }

  v25 = v14 == 64 || v14 == 1;
  if (v25 && *(a2 + 452) > 0)
  {
    return 45;
  }

  v118 = *(a2 + 40);
  v113 = a4;
  v116 = v21;
  v26 = (v22 >> 6) & 1;
  v13 = (v22 >> 9) & 1;
  v111 = (v22 >> 2) & 3;
  v117 = (v22 >> 4) & 3;
  v121 = (v22 >> 7) & 1;
  v109 = *(a2 + 32);
  v110 = (v22 >> 8) & 1;
  HIDWORD(v108) = (a3 >> 5) & 1;
  HIDWORD(v107) = (a3 & 0x880) == 2176;
  LODWORD(v108) = (a3 >> 8) & 1;
  v112 = (v22 >> 10) & 1;
  LODWORD(v106) = *(a2 + 448);
  HIDWORD(v106) = *(a2 + 444);
  LODWORD(v107) = (a3 & 0x880) == 128;
  v119 = *(a2 + 36);
  v120 = *(a2 + 44);
  if (v22 & 1 | v13)
  {
    v12 = v22 & 1;
    if (v13)
    {
      if ((*(*(a1 + 376) + 1264) & 4) != 0)
      {
        return 22;
      }

      v115 = *(a2 + 48);
      v27 = (v22 >> 6) & 1;
      v28 = dev_crypto_type(*(a1 + 384));
      v26 = v27;
      v15 = v115;
      if (!v28)
      {
        return 22;
      }
    }

    v114 = v20;
    if (v26)
    {
      if (*(a2 + 440) > 0x80u)
      {
        return 22;
      }

      v104 = a5;
      LODWORD(v105) = *(a2 + 440);
      v102 = 1;
      v103 = a2 + 312;
    }

    else
    {
      v104 = a5;
      v105 = *(a2 + 440);
      v29 = strnlen((a2 + 312), 0x80uLL);
      is_volume_role_allowed = 22;
      if (v29 > 0x7F)
      {
        return is_volume_role_allowed;
      }

      v103 = a2 + 312;
      if (v29 != v105)
      {
        return is_volume_role_allowed;
      }

      v102 = 0;
    }
  }

  else
  {
    v102 = (v22 >> 6) & 1;
    v114 = v20;
    v104 = a5;
    if ((*(*(a1 + 376) + 1264) & 4) != 0 || !dev_crypto_type(*(a1 + 384)))
    {
      v103 = 0;
      v12 = 0;
      v13 = 0;
      LODWORD(v105) = 0;
      goto LABEL_5;
    }

    if ((a3 & 1) == 0)
    {
      v103 = 0;
      v13 = 0;
      LODWORD(v105) = 0;
      v12 = 1;
      goto LABEL_5;
    }

    v12 = 0;
    is_volume_role_allowed = 22;
    v103 = 0;
    if (v14 > 191)
    {
      if (v14 <= 319)
      {
        if (v14 != 192)
        {
          v13 = 0;
          LODWORD(v105) = 0;
          if (v14 != 256)
          {
            return is_volume_role_allowed;
          }

          goto LABEL_5;
        }
      }

      else if (v14 != 320 && v14 != 704)
      {
        v13 = 0;
        LODWORD(v105) = 0;
        if (v14 != 640)
        {
          return is_volume_role_allowed;
        }

        goto LABEL_5;
      }

      v13 = 0;
      LODWORD(v105) = 0;
      goto LABEL_5;
    }

    if (v14 > 0x20)
    {
      return is_volume_role_allowed;
    }

    v13 = 0;
    LODWORD(v105) = 0;
    if (((1 << v14) & 0x100010112) == 0)
    {
      return is_volume_role_allowed;
    }
  }

LABEL_5:
  v17 = (v12 | v13) != 0;
  is_volume_role_allowed = apfs_is_volume_role_allowed(a1, 0, v14, v15, v17);
  if (is_volume_role_allowed)
  {
    return is_volume_role_allowed;
  }

  v101 = v12;
  if (v119 != 2)
  {
    log_warn("%s:%d: %s fs tree type 0x%x invalid, using virtual btree instead\n", "apfs_newfs", 31801, (*(a1 + 384) + 212), v119);
  }

  if (v118 != 1073741826)
  {
    log_warn("%s:%d: %s extentref tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31805, (*(a1 + 384) + 212), v118);
  }

  if (v120 != 1073741826)
  {
    log_warn("%s:%d: %s snapmeta tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31809, (*(a1 + 384) + 212), v120);
  }

  if (v121 && v16 != 1073741826)
  {
    log_warn("%s:%d: %s fext tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31814, (*(a1 + 384) + 212), v16);
    v16 = 1073741826;
  }

  if (v17 & *(a1 + 629))
  {
    return 1;
  }

  if (v117)
  {
    return 22;
  }

  if (v14 == 704 && (!v114 || v114 != v116))
  {
    log_err("%s:%d: %s bad overprovisioning volume configuration: reserve %lld quota %lld\n", "apfs_newfs", 31844, (*(a1 + 384) + 212), v114, v116);
    return 22;
  }

  v31 = *(a1 + 376);
  if (v15 == -1)
  {
    if (v14 == 64)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v14 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v33;
    }

    if (v34 == -1)
    {
      v32 = *(v31 + 180);
      if (v32 < 3)
      {
        v15 = 2;
      }

      else
      {
        v35 = (v31 + 200);
        v36 = 2;
        while (*v35++)
        {
          if (v32 == ++v36)
          {
            v15 = *(v31 + 180);
            goto LABEL_93;
          }
        }

        v15 = v36;
LABEL_93:
        if ((v15 & 0x80000000) != 0)
        {
LABEL_96:
          if (v34 != -1)
          {
            v15 = v34;
            goto LABEL_98;
          }

          if (!v32)
          {
            v15 = 0;
            goto LABEL_116;
          }

          v40 = 0;
          while (*(v31 + 184 + 8 * v40))
          {
            if (v32 == ++v40)
            {
              v15 = v32;
              goto LABEL_60;
            }
          }

          v15 = v40;
          goto LABEL_60;
        }
      }
    }

    else
    {
      LODWORD(v32) = *(v31 + 180);
      v15 = v34;
    }

    if (v15 < v32 && !*(v31 + 8 * v15 + 184))
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

LABEL_60:
  if ((v15 & 0x80000000) != 0)
  {
LABEL_116:
    log_err("%s:%d: %s no space for a new file system (slot %d, max %d)\n", "apfs_newfs", 31879, (*(a1 + 384) + 212), v15, *(v31 + 180));
    return 34;
  }

  LODWORD(v32) = *(v31 + 180);
LABEL_98:
  if (v15 >= v32)
  {
    goto LABEL_116;
  }

  if (*(v31 + 8 * v15 + 184))
  {
    log_err("%s:%d: %s existing file system (slot %d)\n", "apfs_newfs", 31882, (*(a1 + 384) + 212), v15);
    return 16;
  }

  v38 = v16;
  v39 = tx_enter(a1, &v127);
  if (v39)
  {
    is_volume_role_allowed = v39;
    log_err("%s:%d: %s tx_enter() failed: %d\n", "apfs_newfs", 31888, (*(a1 + 384) + 212), v39);
    return is_volume_role_allowed;
  }

  if (v17)
  {
    v41 = *(a1 + 376);
    v42 = *(v41 + 1264);
    if ((v42 & 4) == 0)
    {
      if (dev_crypto_type(*(a1 + 384)))
      {
        goto LABEL_113;
      }

      v41 = *(a1 + 376);
      v42 = *(v41 + 1264);
    }

    *(v41 + 1264) = v42 | 4;
  }

LABEL_113:
  v43 = obj_create(*(a1 + 392), 0, 0, &apfs_desc, 0, 0, v127, v130);
  if (v43)
  {
    is_volume_role_allowed = v43;
    log_err("%s:%d: %s failed to create fs: %d\n");
LABEL_158:
    log_err("%s:%d: %s fs creation failed: %d ... cleaning up...\n", "apfs_newfs", 32403, (*(a1 + 384) + 212), is_volume_role_allowed);
    v128 = 0;
    if (*v130)
    {
      if (v124)
      {
        v64 = btree_delete(v124, v127, &v128);
        if (v64)
        {
          log_err("%s:%d: %s failed to delete fs root tree after fs creation failed: %d\n", "apfs_newfs", 32415, (*v130 + 4048), v64);
        }

        obj_release(v124);
      }

      if (v125)
      {
        v65 = btree_delete(v125, v127, &v128);
        if (v65)
        {
          log_err("%s:%d: %s failed to delete fs snap metadata tree after fs creation failed: %d\n", "apfs_newfs", 32431, (*v130 + 4048), v65);
        }

        obj_release(v125);
      }

      if (v126)
      {
        v66 = btree_delete(v126, v127, &v128);
        if (v66)
        {
          log_err("%s:%d: %s failed to delete fs extentref tree after fs creation failed: %d\n", "apfs_newfs", 32438, (*v130 + 4048), v66);
        }

        obj_release(v126);
      }

      if (v123)
      {
        v67 = supplemental_tree_destroy(*v130, v38, 5, v127, v123, &v128, v63);
        if (v67)
        {
          log_err("%s:%d: %s failed to delete fs fext tree after fs creation failed: %d\n", "apfs_newfs", 32446, (*v130 + 4048), v67);
        }
      }

      if (v122)
      {
        v68 = btree_delete(v122, v127, &v128);
        if (v68)
        {
          log_err("%s:%d: %s failed to delete fs clonegroup tree after fs creation failed: %d\n", "apfs_newfs", 32461, (*v130 + 4048), v68);
        }

        obj_release(v122);
      }

      v69 = *v130;
      v70 = *(*(*v130 + 376) + 128);
      if (v70)
      {
        v71 = omap_destroy(*v130, v70, v127, &v128);
        v69 = *v130;
        if (v71)
        {
          log_err("%s:%d: %s failed to destroy omap after fs creation failed: %d\n", "apfs_newfs", 32469, (*v130 + 4048), v71);
          v69 = *v130;
        }
      }

      if (*(v69 + 3600))
      {
        obj_release(*(v69 + 3600));
        v69 = *v130;
      }

      if (*(v69 + 3576))
      {
        obj_release(*(v69 + 3576));
        v69 = *v130;
      }

      jobj_release(v69, *(v69 + 488));
      jobj_release(v72, *(*v130 + 496));
    }

    if (v127)
    {
      tx_leave(a1, v127, 0);
      v127 = 0;
    }

    if (v128)
    {
      v73 = nx_reaper_wait(a1, v128);
      if (v73)
      {
        log_err("%s:%d: %s failed to wait on reaper: %d\n", "apfs_newfs", 32494, (*(a1 + 384) + 212), v73);
      }
    }

    if (*v130)
    {
      v74 = tx_enter(a1, &v127);
      if (v74)
      {
        log_err("%s:%d: %s Couldn't reopen transaction to clean up: %d\n", "apfs_newfs", 32502, (*(a1 + 384) + 212), v74);
      }

      else
      {
        spaceman_fs_bounds_clear(a1, *v130, v127);
        obj_delete_and_free(*v130, v127);
        tx_leave(a1, v127, 0);
        v127 = 0;
      }

      obj_release(*v130);
    }

    return is_volume_role_allowed;
  }

  v44 = a1;
  v45 = !v17;
  v46 = *v130;
  if (!v113)
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    *(*v130 + 1152) = v113;
  }

  *(*(v46 + 376) + 36) = v15;
  apfs_update_dev_name(v46);
  v47 = *(*v130 + 376);
  *(v47 + 964) = v14;
  uuid_copy((v47 + 1008), uu);
  v48 = *v130;
  *(*v130 + 3936) = 0;
  *(v48 + 3949) = (a3 & 8) != 0;
  apfs_set_formatted_by(*(v48 + 376), (a2 + 456), v127);
  if (a2 && !uuid_is_null(a2))
  {
    uuid_copy((*(*v130 + 376) + 240), a2);
    v53 = *v130;
    v54 = *(*v130 + 376);
    if (!strncmp((v54 + 240), "apfsuuid", 8uLL))
    {
      *(v54 + 255) = v15;
      v54 = *(v53 + 376);
    }

    v55 = sub_10004F020(v44, (v54 + 240));
    if (v55)
    {
      is_volume_role_allowed = v55;
      memset(out, 0, 37);
      uuid_unparse(a2, out);
      a1 = v44;
      log_err("%s:%d: %s UUID %s is not allowed, error %d\n");
      goto LABEL_158;
    }
  }

  else
  {
    if (v14 == 768)
    {
      sub_1000A710C(a1);
    }

    uuid_generate((*(*v130 + 376) + 240));
  }

  v49 = *v130;
  v50 = *(*v130 + 376);
  *(v50 + 176) = 16;
  *(v50 + 960) = 3;
  *(v50 + 966) = 0;
  if (v110)
  {
    *(v50 + 40) |= 0x10uLL;
  }

  if (v111 == 1)
  {
    v51 = 1;
  }

  else
  {
    if (v111 != 2)
    {
      goto LABEL_133;
    }

    v51 = 8;
  }

  *(v50 + 56) |= v51;
LABEL_133:
  if (v121)
  {
    *(v50 + 56) |= 0x20uLL;
  }

  if (v112)
  {
    *(v50 + 56) |= 0x80uLL;
    log_debug("%s:%d: %s allocated unwritten file extents are now supported\n", "apfs_newfs", 31997, (v49 + 4048));
    v49 = *v130;
    v50 = *(*v130 + 376);
  }

  *(v50 + 40) |= 2uLL;
  is_volume_role_allowed = spaceman_fs_bounds_set(v44, v49, v114, v116, v127);
  if (is_volume_role_allowed)
  {
    log_err("%s:%d: %s Could not set fs bounds for guarantee %lld and quota %lld: %d\n");
LABEL_157:
    a1 = v44;
    goto LABEL_158;
  }

  if (v17)
  {
    crypto_cache_create(*v130);
    v52 = meta_crypto_state_init(*v130, v127, v103, v105, *(*v130 + 376) + 96, *v130 + 536, *v130 + 632, *v130 + 920, 2 * v102);
    if (v52)
    {
      is_volume_role_allowed = v52;
      log_err("%s:%d: %s unable to create/store metadata crypto (%d)\n");
      goto LABEL_157;
    }
  }

  else
  {
    log_debug("%s:%d: %s FS will NOT be encrypted.\n", "apfs_newfs", 32033, (*v130 + 4048));
    v56 = *v130;
    v57 = *(*v130 + 376);
    *(v57 + 264) |= 1uLL;
    meta_crypto_state_init(v56, 0, 0, 0, v57 + 96, v56 + 536, v56 + 632, v56 + 920, 0);
    crypto_state_disable(*v130 + 536);
  }

  v58 = *v130;
  v59 = *(*v130 + 376);
  *(v59 + 116) = 0x4000000200000002;
  *(v59 + 124) = 1073741826;
  *(v59 + 1104) = 2;
  v60 = omap_create(v58, 0x40000000u, 0, v109, v127, &v129);
  if (v60)
  {
    is_volume_role_allowed = v60;
    log_err("%s:%d: %s fs omap initialization failed: %d\n");
    goto LABEL_157;
  }

  v61 = obj_oid(v129);
  *(*(*v130 + 376) + 128) = v61;
  obj_release(v129);
  v133 = xmmword_1000E4EE0;
  v134 = unk_1000E4EF0;
  v135 = xmmword_1000E4F00;
  v136 = unk_1000E4F10;
  v131 = off_1000E4EC0;
  v132 = unk_1000E4ED0;
  if (v121)
  {
    is_volume_role_allowed = authapfs_integrity_meta_create(*v130, *(a2 + 488), v127, 0);
    a1 = v44;
    if (is_volume_role_allowed)
    {
      goto LABEL_158;
    }

    HIDWORD(v132) = authapfs_hash_comparison_size(*(a2 + 488));
    DWORD2(v132) = *(a2 + 488);
    DWORD1(v132) |= 0x180u;
  }

  if (*(*(*v130 + 376) + 116) != 2)
  {
    is_volume_role_allowed = 22;
    goto LABEL_156;
  }

  extended = btree_create_extended(*v130, *(*(*v130 + 376) + 116) & 0xFFFF0000, 0, 0, 0, &v131, v127, &v124);
  if (extended)
  {
    is_volume_role_allowed = extended;
LABEL_156:
    log_err("%s:%d: %s fs root tree creation failed: %d\n");
    goto LABEL_157;
  }

  v75 = obj_oid(v124);
  v76 = *v130;
  v77 = *(*v130 + 376);
  *(v77 + 136) = v75;
  if (HIDWORD(v108))
  {
    *(v77 + 56) |= 0x200uLL;
    log_debug("%s:%d: %s expanded records are now supported\n", "apfs_newfs", 32150, (v76 + 4048));
    v76 = *v130;
    if (HIDWORD(v107))
    {
      *(*(*v130 + 376) + 48) |= 4uLL;
      log_debug("%s:%d: %s clone mapping is enabled for this volume\n", "apfs_newfs", 32154, (v76 + 4048));
      v76 = *v130;
    }
  }

  if (v108)
  {
    *(*(v76 + 376) + 48) |= 8uLL;
    log_debug("%s:%d: %s attribution tags are supported on this volume\n", "apfs_newfs", 32160, (v76 + 4048));
    v76 = *v130;
  }

  v78 = *(*(v76 + 376) + 120);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = apfs_key_compare;
  *&out[16] = 0x420000000FLL;
  if (v78 != 2)
  {
    is_volume_role_allowed = 22;
    goto LABEL_205;
  }

  v79 = btree_create_extended(v76, v78 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v127, &v126);
  if (v79)
  {
    is_volume_role_allowed = v79;
LABEL_205:
    log_err("%s:%d: %s fs extentref tree creation failed: %d\n");
    goto LABEL_157;
  }

  v80 = obj_oid(v126);
  v81 = *v130;
  v82 = *(*v130 + 376);
  *(v82 + 144) = v80;
  v83 = *(v82 + 124);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = apfs_key_compare;
  *&out[16] = 0x4200000010;
  if (v83 != 2)
  {
    is_volume_role_allowed = 22;
    goto LABEL_210;
  }

  v84 = btree_create_extended(v81, v83 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v127, &v125);
  if (v84)
  {
    is_volume_role_allowed = v84;
LABEL_210:
    log_err("%s:%d: %s fs snapshot metadata tree creation failed: %d\n");
    goto LABEL_157;
  }

  v85 = obj_oid(v125);
  v86 = *v130;
  *(*(*v130 + 376) + 152) = v85;
  if (v121)
  {
    v87 = supplemental_tree_create(v86, v38, 5, v127, &v123);
    if (v87)
    {
      is_volume_role_allowed = v87;
      log_err("%s:%d: %s fs fext tree creation failed: %d\n");
      goto LABEL_157;
    }

    v86 = *v130;
    *(*(*v130 + 376) + 1032) = v123;
  }

  if ((HIDWORD(v108) & v107) == 1)
  {
    memset(&out[32], 0, 64);
    *out = off_1000E4F20;
    *&out[16] = unk_1000E4F30;
    v88 = btree_create_extended(v86, 0, 0, 0, 0, out, v127, &v122);
    if (v88)
    {
      is_volume_role_allowed = v88;
      v89 = (*v130 + 4048);
      v90 = strerror(v88);
      log_err("%s:%d: %s clonegroup tree creation failed: %s\n", "apfs_newfs", 32235, v89, v90);
      goto LABEL_157;
    }

    v91 = obj_oid(v122);
    v92 = *v130;
    v93 = *(*v130 + 376);
    *(v93 + 1112) = v91;
    *(v93 + 1108) |= 1u;
    *(v93 + 1136) = 1024;
    *(v93 + 48) |= 4uLL;
    log_debug("%s:%d: %s clonegroups enabled for this volume\n", "apfs_newfs", 32244, (v92 + 4048));
    v86 = *v130;
  }

  name_checked = fs_obj_create_name_checked(v86, 1, 0, "root", 0, 2, 0x41EDu, SHIDWORD(v106), v106, 0, -1, 0, 0, (v86 + 488), v127, 0, -1);
  if (name_checked)
  {
    is_volume_role_allowed = name_checked;
    log_err("%s:%d: %s fs root dir creation failed: %d\n");
    goto LABEL_157;
  }

  __strlcpy_chk();
  v95 = fs_obj_create_name_checked(*v130, 1, 0, "private-dir", 0, 3, 0x41A4u, 0, 0, 0, -1, 0, 0, (*v130 + 496), v127, 0, -1);
  if (v95)
  {
    is_volume_role_allowed = v95;
    log_err("%s:%d: %s fs private dir creation failed: %d\n");
    goto LABEL_157;
  }

  if (v17)
  {
    if (v13)
    {
      return 22;
    }

    new_crypto_state_for_id = create_new_crypto_state_for_id(*v130, v127, 4);
    if (new_crypto_state_for_id)
    {
      is_volume_role_allowed = new_crypto_state_for_id;
      log_err("%s:%d: %s unable to create/store data sw crypto (%d)\n");
      goto LABEL_157;
    }

    if (!v101)
    {
      sub_1000A70E0();
    }

    v97 = *v130;
    *(*(*v130 + 376) + 264) |= 8uLL;
  }

  else
  {
    v97 = *v130;
  }

  *(*(v44 + 376) + 8 * v15 + 184) = obj_oid(v97);
  v98 = *(*v130 + 376);
  v98[140] = v127;
  v98[141] = (v98[7] >> 9) & 1 | 0xC;
  timestamp = get_timestamp();
  v100 = *v130;
  *(*(*v130 + 376) + 256) = timestamp;
  fs_sb_dirty(v100, v127);
  obj_release(v125);
  obj_release(v126);
  obj_release(v124);
  if (v122)
  {
    obj_release(v122);
  }

  *(v44 + 656) += (*(*(*v130 + 376) + 48) >> 1) & 1;
  tx_leave(v44, v127, 5);
  is_volume_role_allowed = 0;
  *v104 = *v130;
  return is_volume_role_allowed;
}

uint64_t sub_10004F020(void *a1, const unsigned __int8 *a2)
{
  v2 = a1[47];
  if (*(v2 + 180))
  {
    for (i = 0; i < *(v2 + 180); ++i)
    {
      v13 = 0;
      v6 = *(v2 + 8 * i + 184);
      if (v6)
      {
        v7 = obj_get(a1[49], 0, v6, &apfs_desc, 0, 0, 0, 0, &v13);
        if (v7)
        {
          v9 = v7;
          v10 = (a1[48] + 212);
          v11 = strerror(v7);
          log_err("%s:%d: %s Failed to get fsys oid %lld - %s\n", "apfs_is_volume_uuid_allowed", 31297, v10, v6, v11);
          return v9;
        }

        v8 = uuid_compare(a2, (v13[47] + 240));
        obj_release(v13);
        if (!v8)
        {
          return 17;
        }

        v2 = a1[47];
      }
    }
  }

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
    log_err("%s:%d: %s spaceman_free failed for LBA %llx, size %llu : %d %s\n", "apfs_free_data_blocks", 32582, (v7 + 4048), a3, a4, v9, v10);
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

uint64_t sub_10004F224(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  if (a2 + 1) < 7 && ((0x63u >> (a2 + 1)))
  {
    return 0;
  }

  v6 = *(a1 + 504);
  if (!v6)
  {
    v6 = a1;
  }

  if ((*(*(v6 + 376) + 264) & 9) != 0)
  {
    panic("assertion failed: %s", "fs_is_content_protected(apfs)");
  }

  LODWORD(v10) = 2622471;
  *(&v10 + 1) = a2;
  LODWORD(v11) = -1;
  inserted = insert_jobj(a1, 1, &v10, a3);
  if (!inserted)
  {
    if (v11 == 1)
    {
LABEL_12:
      BYTE1(v10) = 3;
      return remove_jobj(a1, 1, &v10, a3);
    }

    if (!v11)
    {
      log_debug("%s:%d: %s danger - crypto id %lld had refcnt %d\n", "icp_dec_ref", 34834, (a1 + 4048), *(&v10 + 1), 0);
      LODWORD(v11) = 1;
      goto LABEL_12;
    }

    return 0;
  }

  v8 = inserted;
  log_debug("%s:%d: %s was NOT able to update/decrement crypto state %lld, err = %d\n", "icp_dec_ref", 34828, (a1 + 4048), a2, inserted);
  return v8;
}

uint64_t sub_10004F388(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, char a6)
{
  needs_ctx();
  v10 = cpx_alloc(a3);
  v11 = v10;
  if (v10)
  {
    cpx_set_key_len(v10, a3);
    v12 = cpx_key(v11);
    memcpy(v12, a2, a3);
    cpx_set_use_offset_for_iv(v11, 1);
    if (a5)
    {
      cpx_set_aes_iv_key();
    }

    cpx_set_is_sep_wrapped_key(v11, a6 & 1);
  }

  return v11;
}

uint64_t load_wrapping_key(uint64_t a1, int a2, char a3, uint64_t a4)
{
  result = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  if (*(a1 + 96))
  {
    return result;
  }

  if (a3)
  {
    return result;
  }

  result = sub_10004F640(a1, &v17 + 1, &v17, &v16, &v19, &v18);
  if (result)
  {
    return result;
  }

  v8 = v18;
  v9 = v19;
  v23 = 0;
  result = 22;
  v20 = v24;
  v21 = 64;
  if (!v19 || !v18 || (v17 & 0x100) == 0)
  {
    return result;
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    goto LABEL_9;
  }

  memset(v24, 0, sizeof(v24));
  v22 = 0;
  result = (*(a1 + 80))(*(a1 + 88), 2, &v23);
  if (result)
  {
    return result;
  }

  if (!v23)
  {
    return 6;
  }

  result = (v9)(a1, &v20, 1, 1);
  if (result)
  {
    if (result != 2)
    {
      return result;
    }

    if (!a2)
    {
      return 2;
    }

    v12 = 1;
    result = (v8)(a1, &v20, 0, a4, 1);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = _apfs_calloc_typed(1uLL, 0x60uLL, 0x10A00405D85AB5CuLL);
  if (v13)
  {
    v10 = v13;
    v14 = v23;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    v15 = sub_10004F388(v14, v20, v21, 0, 0, v22);
    *(v10 + 9) = v15;
    if (v15)
    {
      *(a1 + 96) = v10;
LABEL_9:
      v11 = *(v10 + 9);
      if (!v11)
      {
        return 1;
      }

      if ((v16 & 1) == 0)
      {
        cpx_set_is_composite_key(v11, 1);
      }

      return 0;
    }

    _apfs_free(v10, 96);
  }

  if (v12)
  {
    (v8)(a1, 0, 0, a4, 1);
  }

  return 12;
}

uint64_t sub_10004F640(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, uint64_t (**a5)(uint64_t a1, uint64_t a2), uint64_t (**a6)())
{
  result = 22;
  if (a4 && a3 && a1 && a2 && a5 && a6)
  {
    v14 = 0;
    result = (*(a1 + 80))(*(a1 + 88), 0, &v14);
    if (result == 45)
    {
LABEL_11:
      result = 0;
      *a4 = 0;
      *a3 = 0;
      *a2 = 1;
      *a5 = sub_100052EA4;
      *a6 = sub_100052EF0;
      return result;
    }

    if (result)
    {
      return result;
    }

    v13 = is_sw_crypto(v14);
    if (v14)
    {
      if (is_sw_crypto(v14) && v13)
      {
        goto LABEL_11;
      }
    }

    else if (v13)
    {
      goto LABEL_11;
    }

    return 45;
  }

  return result;
}

uint64_t unload_wrapping_key(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v10 = 0;
    v5 = sub_10004F640(a1, &v11 + 1, &v11, &v10, &v13, &v12);
    if (!v5)
    {
      v14 = 1;
      v6 = (v12)(a1, 0, &v14, a3, HIBYTE(v11));
      if ((v6 & 0xFFFFFFFD) != 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    v8 = *(v7 + 72);
    if (v8)
    {
      cpx_free(v8);
      v7 = *(a1 + 96);
    }

    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    _apfs_free(*(a1 + 96), 96);
    *(a1 + 96) = 0;
  }

  return v5;
}

pthread_mutex_t *container_keybag_alloc(uint64_t a1, uint64_t a2)
{
  v4 = _apfs_calloc_typed(1uLL, 0x68uLL, 0x10A004023E33C9EuLL);
  v5 = v4;
  if (v4)
  {
    new_lock(v4);
    uuid_clear(&v5[1]);
    *&v5[1].__opaque[16] = a1;
    *&v5[1].__opaque[24] = 0;
    *&v5[1].__opaque[8] = a2;
  }

  return v5;
}

void container_keybag_free(pthread_mutex_t *a1)
{
  if (a1)
  {
    unload_wrapping_key(a1, 0, 0);
    free_lock(a1);

    _apfs_free(a1, 104);
  }
}

uint64_t nx_container_keybag_helper(uint64_t a1, int a2, uuid_t dst)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *dst = *(*(a1 + 376) + 1296);
        break;
      case 4:
        *(*(a1 + 376) + 1296) = *dst;
        break;
      case 5:
        *dst = 1801812339;
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      uuid_copy(dst, (*(a1 + 376) + 72));
    }

    else if (a2 == 2)
    {
      *dst = *(a1 + 384);
    }
  }

  else
  {
    *dst = a1;
  }

  return 0;
}

uint64_t akserror_to_errno(uint64_t result)
{
  if (result > -536870161)
  {
    switch(result)
    {
      case 0xE007C006:
      case 0xE007C007:
      case 0xE007C009:
      case 0xE007C010:
      case 0xE007C022:
        return 22;
      case 0xE007C008:
        return 13;
      case 0xE007C00A:
      case 0xE007C00D:
      case 0xE007C00F:
      case 0xE007C01A:
        return 5;
      case 0xE007C00B:
      case 0xE007C00C:
      case 0xE007C011:
      case 0xE007C012:
      case 0xE007C014:
      case 0xE007C015:
      case 0xE007C016:
      case 0xE007C017:
      case 0xE007C01B:
      case 0xE007C01C:
      case 0xE007C01D:
      case 0xE007C01E:
      case 0xE007C020:
        return 1;
      case 0xE007C00E:
        return 36;
      case 0xE007C013:
      case 0xE007C018:
      case 0xE007C019:
        return 92;
      case 0xE007C01F:
        return 30;
      case 0xE007C021:
        return 45;
      default:
        if (result == -536870160)
        {
          return 2;
        }

        if (!result)
        {
          return result;
        }

        break;
    }

    return 1;
  }

  if (result > -536870187)
  {
    if (result > -536870182)
    {
      if (result != -536870181)
      {
        if (result == -536870170)
        {
          return 45;
        }

        return 1;
      }

      return 28;
    }

    if (result == -536870186)
    {
      return 60;
    }

    v1 = 728;
LABEL_15:
    if (result == (v1 | 0xE0000000))
    {
      return 16;
    }

    return 1;
  }

  if (result > -536870199)
  {
    if (result == -536870198)
    {
      return 5;
    }

    v1 = 725;
    goto LABEL_15;
  }

  if (result != -536870211)
  {
    if (result == -536870206)
    {
      return 22;
    }

    return 1;
  }

  return 12;
}

uint64_t sub_10004FB68(pthread_mutex_t *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, uint64_t a6)
{
  v6 = a6;
  if (a4)
  {
    v11 = a4[9] != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a5 == 2 && (a3 | a4) == 0;
  v13 = a5 == 1 && (a3 | a4) == 0;
  if (a6)
  {
    pthread_mutex_lock(a1);
  }

  v78 = 0;
  v79 = 0;
  v77 = 0;
  v70 = 0u;
  *v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  if (v11)
  {
    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v17 = a4[9];
      v14 = v17 + 24;
      if (((v17 + 24) & 0xF) != 0)
      {
        v14 = v17 - ((v17 + 24) & 0xF) + 40;
      }
    }
  }

  else
  {
    v15 = (*&a1[1].__opaque[8])(*&a1[1].__opaque[16], 3, &v67);
    if (v15 || !v68 || !v67)
    {
      if (v15)
      {
        wrapping_key = v15;
      }

      else
      {
        wrapping_key = 2 * (a3 != 0);
      }

      if (!v6)
      {
        return wrapping_key;
      }

LABEL_30:
      pthread_mutex_unlock(a1);
      return wrapping_key;
    }

    if (a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }
  }

  v69 = 0;
  wrapping_key = sub_1000507FC(a1, v14, &v77, &v67, &v78, &v79, &v69, &v65);
  if (wrapping_key)
  {
    if (!v6)
    {
      return wrapping_key;
    }

    goto LABEL_30;
  }

  v19 = 0;
  if (a3 == 0 && v78 != 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0;
  }

  v66 = v20;
  v63 = a3 == 0 && v78 != 0;
  if (v63)
  {
    wrapping_key = tx_enter(v78, &v66);
    if (wrapping_key)
    {
      goto LABEL_49;
    }

    v19 = v66;
  }

  wrapping_key = load_wrapping_key(a1, v11, v13, v19);
  if (wrapping_key)
  {
    goto LABEL_39;
  }

  v24 = v79;
  *&v70 = "APFS/container";
  *(&v70 + 1) = v79 + 32;
  v64 = v79 + 32;
  v71[0] = v69 - 32;
  v71[1] = sub_1000509E4;
  *&v72 = sub_100052EF8;
  v25 = v78;
  *(&v72 + 1) = sub_10005304C;
  *&v73 = v77;
  if (!v63)
  {
    v25 = 0;
  }

  *(&v73 + 1) = *&a1[1].__opaque[24];
  *&v74 = v25;
  *(&v74 + 1) = v66;
  *(&v75 + 1) = &v67;
  v76 = v79;
  LODWORD(v75) = v65;
  if (a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = a3;
  }

  v80[0] = 0;
  v61 = a4 && !a4[8] && a4[9] == 0;
  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = v12;
  }

  v57 = v27;
  if (v27 != 1)
  {
    goto LABEL_67;
  }

  if (sub_1000509E4(&v70, v80))
  {
    goto LABEL_151;
  }

  if (v80[0])
  {
    goto LABEL_75;
  }

  if (!v74)
  {
LABEL_151:
    if (a4 && a4[9])
    {
      goto LABEL_67;
    }

LABEL_75:
    if (v80[0] != 1)
    {
LABEL_119:
      wrapping_key = 2;
      goto LABEL_39;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v28 = v70;
    goto LABEL_74;
  }

  v28 = v70;
  if (!a4[9])
  {
LABEL_74:
    log_err("%s:%d: malformed %s keybag%s\n", "keybag_operation", 460, v28, &byte_1000B36A6);
    goto LABEL_75;
  }

  log_err("%s:%d: malformed %s keybag%s\n", "keybag_operation", 460, v70, " - will replace");
LABEL_67:
  bzero(v64, v71[0]);
  *(v24 + 4) = 0x1000000002;
LABEL_76:
  if (!v26)
  {
LABEL_115:
    if ((v57 & 1) == 0)
    {
      goto LABEL_142;
    }

    if (!a4)
    {
      if (!v12)
      {
        wrapping_key = 0;
LABEL_145:
        if (wrapping_key == 0 && v63)
        {
          wrapping_key = (*&a1[1].__opaque[8])(*&a1[1].__opaque[16], 4, &v67);
        }

        goto LABEL_39;
      }

LABEL_128:
      if (v72)
      {
        wrapping_key = (v72)(&v70);
        v54 = v70;
        if (!wrapping_key)
        {
          log_debug("%s:%d: wrote %s keybag (v%d, %d keys, %d bytes)\n");
          goto LABEL_145;
        }
      }

      else
      {
        wrapping_key = 45;
        v54 = v70;
      }

      log_err("%s:%d: unable to write %d-byte %s keybag (%d)\n", "keybag_operation", 529, *(v24 + 9), v54, wrapping_key);
      goto LABEL_39;
    }

LABEL_117:
    if (!*(v24 + 17))
    {
      goto LABEL_142;
    }

    goto LABEL_128;
  }

  v56 = 0;
  uu2 = (v24 + 48);
  v59 = a2;
  v60 = v12;
  v62 = v24;
  while (1)
  {
    v29 = *(v24 + 9);
    if (v29 >= 0x11)
    {
      break;
    }

    v32 = 0;
    if (a4)
    {
      goto LABEL_88;
    }

LABEL_96:
    if (!v32)
    {
      goto LABEL_119;
    }

    v43 = a3[9];
    v44 = v43 + 24;
    v45 = v32[9];
    v46 = v43 - ((v43 + 24) & 0xF) + 40;
    if ((v44 & 0xF) == 0)
    {
      v46 = v44;
    }

    if (((v45 + 24) & 0xF) != 0)
    {
      v47 = v45 - ((v45 + 24) & 0xF) + 40;
    }

    else
    {
      v47 = v45 + 24;
    }

    if (v47 > v46)
    {
      wrapping_key = 40;
      goto LABEL_39;
    }

    memcpy(a3, v32, v47);
LABEL_114:
    if (!v61)
    {
      goto LABEL_115;
    }
  }

  v30 = v26[8];
  v31 = &v64[v29];
  v32 = uu2;
  while (uuid_compare(v26, v32) || v30 && v32[8] != v30)
  {
    v33 = v32[9];
    v34 = v33 + 24;
    v35 = v33 - ((v33 + 24) & 0xF) + 40;
    if ((v34 & 0xF) == 0)
    {
      v35 = v34;
    }

    v32 = (v32 + v35);
    if (v32 >= v31)
    {
      v32 = 0;
      break;
    }
  }

  v12 = v60;
  v24 = v62;
  if (!a4)
  {
    goto LABEL_96;
  }

LABEL_88:
  if (v32)
  {
    v36 = v6;
    v37 = v32[9];
    v38 = v37 + 24;
    v39 = v37 - ((v37 + 24) & 0xF) + 40;
    if ((v38 & 0xF) != 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38;
    }

    v41 = a4[9];
    if (a4[9])
    {
      v42 = v41 + 24;
      if (((v41 + 24) & 0xF) != 0)
      {
        v42 = v41 - ((v41 + 24) & 0xF) + 40;
      }
    }

    else
    {
      v42 = 0;
    }

    v48 = *(v24 + 9);
    if (v42 - v40 + v48 > v71[0])
    {
      wrapping_key = 28;
      LODWORD(v6) = v36;
      a2 = v59;
      goto LABEL_39;
    }

    if (v42 == v40)
    {
      memcpy(v32, a4, v40);
      v6 = v36;
      a2 = v59;
      v24 = v62;
    }

    else
    {
      memmove(v32, v32 + v40, v64 - (v32 + v40) + v48);
      if (v42 < v40)
      {
        bzero(&v64[*(v62 + 9) + v42 - v40], v40 - v42);
      }

      if (a4[9])
      {
        memcpy(&v64[*(v62 + 9) - v40], a4, v42);
        v24 = v62;
        *(v62 + 9) += v42 - v40;
      }

      else
      {
        v24 = v62;
        --*(v62 + 17);
        *(v62 + 9) -= v40;
        v56 = 1;
      }

      v6 = v36;
      a2 = v59;
      v12 = v60;
    }

    goto LABEL_114;
  }

  v49 = a4[9];
  if (!a4[9])
  {
    if (v61)
    {
      wrapping_key = 0;
    }

    else
    {
      wrapping_key = 2;
    }

    if (v61 & v56)
    {
      goto LABEL_141;
    }

    goto LABEL_145;
  }

  v50 = v49 + 24;
  v51 = v49 - ((v49 + 24) & 0xF) + 40;
  if ((v50 & 0xF) != 0)
  {
    v52 = v51;
  }

  else
  {
    v52 = v50;
  }

  v53 = *(v24 + 9);
  if (v52 + v53 > v71[0])
  {
    wrapping_key = 28;
    goto LABEL_39;
  }

  memcpy(&v64[v53], a4, v52);
  ++*(v24 + 17);
  *(v24 + 9) += v52;
LABEL_141:
  if (v57)
  {
    goto LABEL_117;
  }

LABEL_142:
  if (*(&v72 + 1))
  {
    wrapping_key = (*(&v72 + 1))(&v70);
    v55 = v70;
    if (!wrapping_key)
    {
      log_debug("%s:%d: wiped %s keybag\n");
      goto LABEL_145;
    }
  }

  else
  {
    wrapping_key = 45;
    v55 = v70;
  }

  log_err("%s:%d: unable to wipe %s keybag (%d)\n", "keybag_operation", 522, v55, wrapping_key);
LABEL_39:
  if (v63)
  {
    if (v66 == a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = 5;
    }

    v22 = tx_leave(v78, v66, v21);
    if (wrapping_key)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22 == 0;
    }

    if (v23)
    {
      wrapping_key = wrapping_key;
    }

    else
    {
      wrapping_key = v22;
    }
  }

LABEL_49:
  _apfs_free(v79, v69);
  if (v6)
  {
    goto LABEL_30;
  }

  return wrapping_key;
}

uint64_t nx_keybag_delete(pthread_mutex_t *a1, uint64_t a2, unsigned __int8 *src, unsigned __int16 a4)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  uuid_copy(&v8, src);
  LODWORD(v9) = a4;
  if (a1)
  {
    return sub_10004FB68(a1, a2, 0, &v8, 0, 1);
  }

  else
  {
    return 12;
  }
}

uint64_t apfs_container_keybag_helper(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *a3 = *(a1 + 3768);
        break;
      case 4:
        *(a1 + 3768) = *a3;
        break;
      case 5:
        *a3 = 1919247219;
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v5 = *(a1 + 392);
        goto LABEL_11;
      case 1:
        if (is_sw_crypto(*(a1 + 392)))
        {
          v6 = (*(a1 + 376) + 240);
        }

        else
        {
          v6 = (*(*(a1 + 392) + 376) + 72);
        }

        uuid_copy(a3, v6);
        break;
      case 2:
        v5 = *(*(a1 + 392) + 384);
LABEL_11:
        *a3 = v5;
        break;
    }
  }

  return 0;
}

void apfs_keybag_init(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  *dst = 0u;
  if (!a1)
  {
    sub_1000A71E8();
  }

  v3 = *(a1 + 376);
  if (!v3)
  {
    sub_1000A71BC();
  }

  v4 = *(a1 + 392);
  if (!v4)
  {
    sub_1000A7190();
  }

  v5 = *(v4 + 928);
  if (!v5)
  {
    sub_1000A7164();
  }

  uuid_copy(dst, (v3 + 240));
  LODWORD(v15[0]) = 1048579;
  v7 = sub_10004FB68(v5, 0, dst, 0, 0, 1);
  if (v7 != 2)
  {
    v13 = v7;
    if (!v7)
    {
      *(a1 + 3768) = *(v15 + 8);
      *(a1 + 3760) = container_keybag_alloc(a1, apfs_container_keybag_helper);
      return;
    }

    log_err("%s:%d: failed to get apfs volume keybag, err = %d\n", "apfs_keybag_get", 2717, v7);
    goto LABEL_13;
  }

  if (!a2)
  {
    v13 = 2;
    goto LABEL_13;
  }

  v13 = apfs_keybag_create(a1, a2, v8, v9, v10, v11, v12);
  if (v13)
  {
LABEL_13:
    *(a1 + 3760) = 0;
    log_err("%s:%d: failed to initialize volume keybag, err = %d\n", "apfs_keybag_init", 2776, v13);
  }
}

uint64_t apfs_keybag_create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1[142];
  if (v8)
  {
    v9 = *(v8 + 280);
    v10 = *(v8 + 288);
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  a1[471] = v9;
  a1[472] = v10;
  v11 = sub_100051308(a1, a2, a3, a4, a5, a6, a7);
  if (v11)
  {
    v12 = v11;
    log_err("%s:%d: failed to add apfs unlock records range in nx keybag, err = %d\n", "apfs_keybag_create", 3678, v11);
  }

  else
  {
    v13 = container_keybag_alloc(a1, apfs_container_keybag_helper);
    a1[470] = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return v12;
}

uint64_t apfs_keybag_iter_setup(uint64_t a1, void *a2)
{
  v9 = 0;
  result = 22;
  if (a1 && a2)
  {
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v10[0] = 0;
    v10[1] = 0;
    if (!sub_1000507FC(a1, 0, &v15, v10, &v14, &v13, &v12, &v11))
    {
      wrapping_key = load_wrapping_key(a1, 0, 0, 0);
      v6 = v12;
      if (!wrapping_key)
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        v16[0] = "APFS/container";
        v16[1] = v13 + 32;
        v16[2] = v12 - 32;
        v16[3] = sub_1000509E4;
        v16[4] = 0;
        v16[5] = 0;
        *&v17 = v15;
        *(&v17 + 1) = *(a1 + 96);
        v18 = v14;
        *(&v19 + 1) = v10;
        v20 = v13;
        LODWORD(v19) = v11;
        if (!sub_1000509E4(v16, &v9) && v9 == 1)
        {
          result = 0;
          v7 = v13;
          v8 = v13 + 48;
          a2[1] = v6;
          a2[2] = v7;
          *a2 = v8;
          return result;
        }
      }

      _apfs_free(v13, v6);
    }

    return 2;
  }

  return result;
}

uint64_t sub_1000507FC(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, void *a5, void *a6, size_t *a7, uint64_t a8)
{
  v9 = *(a1 + 88);
  if (!v9)
  {
    return 22;
  }

  result = (*(a1 + 80))(v9, 1, a1 + 64);
  if (!result)
  {
    result = (*(a1 + 80))(*(a1 + 88), 2, a3);
    if (!result)
    {
      result = (*(a1 + 80))(*(a1 + 88), 3, a4);
      if (!result)
      {
        result = (*(a1 + 80))(*(a1 + 88), 5, a8);
        if (!result)
        {
          *a5 = 0;
          v18 = (*(a1 + 80))(*(a1 + 88), 0, a5);
          if (v18 && v18 != 45)
          {
            if (!*(a4 + 8))
            {
              if (a2)
              {
                return 30;
              }

              else
              {
                return 2;
              }
            }

            *a5 = 0;
          }

          v19 = *(a4 + 8);
          v20 = v19 * dev_block_size(*a3);
          *a7 = v20;
          if (a2 >= 1 && *a5)
          {
            if (*(a4 + 8))
            {
              v21 = 0;
            }

            else
            {
              v21 = 48;
            }

            v22 = (v21 + a2) % dev_block_size(*a3);
            if (*(a4 + 8))
            {
              v23 = 0;
            }

            else
            {
              v23 = 48;
            }

            if (v22)
            {
              v24 = dev_block_size(*a3);
              if (*(a4 + 8))
              {
                v25 = 0;
              }

              else
              {
                v25 = 48;
              }

              v26 = v23 + a2 + v24 - (v25 + a2) % dev_block_size(*a3);
            }

            else
            {
              v26 = v23 + a2;
            }

            v20 = *a7 + v26;
            *a7 = v20;
          }

          if (!a6)
          {
            return 0;
          }

          v27 = _apfs_malloc_typed(v20, 0x756179F4uLL);
          *a6 = v27;
          if (v27)
          {
            result = 0;
          }

          else
          {
            result = 12;
          }

          if (a2 >= 1 && v27)
          {
            bzero(v27, *a7);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000509E4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 96);
  v5 = *(*(a1 + 88) + 8);
  v6 = dev_block_size(*(a1 + 48));
  v7 = *(a1 + 88);
  if (!*v7 || !v7[1])
  {
    return 2;
  }

  v8 = v6;
  cpx_setcpoff(*(*(a1 + 56) + 72), *v7);
  data = dev_read_data(*(a1 + 48));
  if (data)
  {
    v10 = data;
    log_err("%s:%d: dev_read_data failed with error %d\n", "container_kb_get", 1197, data);
    return v10;
  }

  v12 = *(*(a1 + 88) + 8);
  v13 = dev_block_size(*(a1 + 48));
  if (fletcher64_verify_cksum(v4, (v4 + 8), v12 * v13 - 8, 0, v14, v15))
  {
    log_err("%s:%d: Checksum failure\n");
LABEL_25:
    v10 = 0;
    *a2 = 0;
    return v10;
  }

  v16 = *(v4 + 24);
  if (v16 != 1801812339 && v16 != 1835754873 && v16 != 1919247219 || *(v4 + 32) != 2 && (**(a1 + 8) != 2 || v5 * v8 == 32))
  {
    log_err("%s:%d: %s: version error, bag->mk_obj.o_type %u != %u and %u, or locker->kl_version %u != %u, or size %lu != keybag_version_upgrade %lu\n", "container_kb_get", 1206, "container_kb_get");
    goto LABEL_25;
  }

  v17 = *(v4 + 36);
  v18 = v17 > 0xF && v5 * v8 - 32 >= v17;
  v19 = v18;
  *a2 = v19;
  if (!v18)
  {
    log_err("%s:%d: %d >= %lu && %d <= %lu\n", "container_kb_get", 1211, v17, 16, v17, v5 * v8 - 32);
  }

  return 0;
}

uint64_t apfs_keybag_iter_alloc(uint64_t a1, void *a2)
{
  if (!a1)
  {
    sub_1000A7214();
  }

  apfs_keybag_init(a1, 0);
  if (!*(a1 + 3760))
  {
    return 2;
  }

  v4 = _apfs_calloc_typed(1uLL, 0x18uLL, 0x10A0040319E9F20uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  pthread_mutex_lock(*(a1 + 3760));
  v6 = apfs_keybag_iter_setup(*(a1 + 3760), v5);
  if (v6)
  {
    pthread_mutex_unlock(*(a1 + 3760));
    _apfs_free(v5, 24);
  }

  else
  {
    *a2 = v5;
  }

  return v6;
}

uint64_t apfs_keybag_iter_next(unint64_t *a1, uuid_t dst, void *a3, int a4)
{
  v4 = a1[2] + *(a1[2] + 36) + 32;
  v5 = *a1;
  if (*a1 >= v4)
  {
    return 0;
  }

  while (a4 && *(v5 + 16) != a4)
  {
    v8 = *(v5 + 18);
    v9 = v8 + 24;
    v10 = v8 - ((v8 + 24) & 0xF) + 40;
    if ((v9 & 0xF) == 0)
    {
      v10 = v9;
    }

    v5 += v10;
    if (v5 >= v4)
    {
      return 0;
    }
  }

  uuid_copy(dst, v5);
  v12 = *(v5 + 18);
  if (a3)
  {
    *a3 = v5 + 24;
    a3[1] = v12;
  }

  v13 = v12 + 24;
  v14 = v12 - ((v12 + 24) & 0xF) + 40;
  if ((v13 & 0xF) == 0)
  {
    v14 = v13;
  }

  *a1 = v5 + v14;
  return 1;
}

uint64_t apfs_keybag_iter_free(uint64_t a1, uint64_t a2)
{
  _apfs_free(*(a2 + 16), *(a2 + 8));
  _apfs_free(a2, 24);
  v4 = *(a1 + 3760);

  return pthread_mutex_unlock(v4);
}

uint64_t apfs_keybag_lookup_record(uint64_t a1, unsigned __int8 *uu, __int16 a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000A726C();
  }

  if (uuid_is_null(uu))
  {
    sub_1000A7240();
  }

  apfs_keybag_init(a1, 0);
  v8 = *(a1 + 3760);
  if (!v8)
  {
    return 2;
  }

  return sub_100050E58(v8, uu, a3, a4);
}

uint64_t sub_100050E58(pthread_mutex_t *a1, const unsigned __int8 *a2, __int16 a3, uint64_t a4)
{
  bzero(dst, 0x228uLL);
  if (!a1)
  {
    return 2;
  }

  uuid_copy(dst, a2);
  v10 = a3;
  LOWORD(__n[0]) = 512;
  result = sub_10004FB68(a1, 0, dst, 0, 0, 1);
  if (!result)
  {
    if (a4)
    {
      if (*(a4 + 8) >= LOWORD(__n[0]))
      {
        memcpy(*a4, __n + 6, LOWORD(__n[0]));
        result = 0;
        *(a4 + 8) = LOWORD(__n[0]);
      }

      else
      {
        log_err("%s:%d: output buffer too small: len %zu, must be at least %d\n", "container_keybag_lookup_record", 2622, *(a4 + 8), LOWORD(__n[0]));
        return 22;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nx_keybag_lookup_record(uint64_t a1, unsigned __int8 *uu, __int16 a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000A72C4();
  }

  if (uuid_is_null(uu))
  {
    sub_1000A7298();
  }

  v8 = *(a1 + 928);

  return sub_100050E58(v8, uu, a3, a4);
}

uint64_t sub_100050FE4(uint64_t a1, uint64_t a2, void *a3)
{
  memset(v17, 0, sizeof(v17));
  bzero(dst, 0x228uLL);
  v6 = AKS_FV_service();
  if (!v6)
  {
    return 6;
  }

  v7 = v6;
  if (!*(v6 + 64))
  {
    return 6;
  }

  uuid_copy(dst, (*(a1 + 376) + 240));
  v19 = 11;
  if (a3)
  {
    v8 = a3[1];
    if (*a3)
    {
      __memcpy_chk();
    }

    v20 = v8;
    v10 = sub_10004FB68(*(*(a1 + 392) + 928), a2, 0, dst, 0, 1);
    v12 = a3;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_16:
    v9 = (*(v7 + 64))(v17, 5, 0, 0, 0, v12, 0);
    if (v9)
    {
      v14 = 2;
      do
      {
        if (!v14)
        {
          panic("failed to commit proposed wvek record, err = 0x%x\n", v9);
        }

        log_err("%s:%d: failed to commit proposed wvek record, err = 0x%x (%d more retries)\n", "apfs_commit_update_volume_key", 5143, v9, v14--);
        v9 = (*(v7 + 64))(v17, 5, 0, 0, 0, v12, 0);
      }

      while (v9);
    }

    uuid_copy(dst, (*(a1 + 376) + 240));
    v19 = 10;
    if (*v12)
    {
      __memcpy_chk();
    }

    v20 = v12[1];
    v15 = sub_10004FB68(*(*(a1 + 392) + 928), a2, 0, dst, 0, 1);
    if (v15)
    {
      log_err("%s:%d: failed to update wvek record in nx keybag, err = %d\n", "apfs_commit_update_volume_key", 5135, v15);
      v9 = 0;
    }

    else
    {
      v16 = nx_keybag_delete(*(*(a1 + 392) + 928), a2, (*(a1 + 376) + 240), 0xBu);
      if (v16)
      {
        log_err("%s:%d: failed to clean-up proposed wvek record in nx keybag, err = %d\n", "apfs_commit_update_volume_key", 5154, v16);
      }
    }

    goto LABEL_13;
  }

  v20 = 512;
  v10 = sub_10004FB68(*(*(a1 + 392) + 928), 0, dst, 0, 0, 1);
  if (!v10)
  {
    v11 = _apfs_calloc_typed(1uLL, 0x10uLL, 0x1080040FC6463CFuLL);
    if (!v11)
    {
      v9 = 12;
      goto LABEL_12;
    }

    v12 = v11;
    *v11 = &v21;
    v11[1] = v20;
    goto LABEL_16;
  }

LABEL_11:
  v9 = v10;
LABEL_12:
  log_err("%s:%d: failed to add proposed wvek record in nx keybag, err = %d\n", "apfs_commit_update_volume_key", 5157, v9);
  v12 = a3;
LABEL_13:
  if (v12 != a3)
  {
    _apfs_free(v12, 16);
  }

  return v9;
}

uint64_t sub_100051308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if (!a1)
  {
    sub_1000A7374();
  }

  v8 = a1[471];
  v9 = a1[472];
  v10 = a1[142];
  if (v10)
  {
    v11 = (v10 + 4);
    v12 = v10[32];
    v13 = v10[1];
    v8 -= v12 / dev_block_size(*v10);
  }

  else
  {
    v14 = a1[47];
    if (!v14)
    {
      sub_1000A7348();
    }

    v15 = a1[49];
    if (!v15)
    {
      sub_1000A731C();
    }

    v13 = *(v15 + 928);
    if (!v13)
    {
      sub_1000A72F0();
    }

    v11 = (v14 + 240);
  }

  uuid_copy(&v17, v11);
  LODWORD(v18) = 1048579;
  *(&v18 + 1) = v8;
  *&v19 = v9;
  return sub_10004FB68(v13, a2, 0, &v17, 0, 1);
}

uint64_t apfs_keybag_aks_remove_unlock_records(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v29 = 0;
  v6 = *(a1 + 376);
  v7 = *(v6 + 964) == 1 && uuid_is_null((v6 + 1008)) == 0;
  if (!*(a1 + 3760) || is_sw_crypto(*(a1 + 392)))
  {
    return 0;
  }

  v9 = AKS_FV_service();
  if (!v9)
  {
    return 6;
  }

  v10 = v9;
  if (!*(v9 + 64))
  {
    return 6;
  }

  v11 = _apfs_calloc_typed(1uLL, 0x58uLL, 0x1000040624EA6DBuLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  *src = 0;
  v34 = 0;
  v28[0] = 0;
  v28[1] = 0;
  v13 = apfs_keybag_iter_alloc(a1, v29);
  v14 = *v29;
  if (v13 || !apfs_keybag_iter_next(*v29, src, v28, a3))
  {
    v8 = 0;
    goto LABEL_32;
  }

  v15 = a3 == 3 && v7;
  do
  {
    bzero(dst, 0x228uLL);
    memset(v27, 0, sizeof(v27));
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = (*(v10 + 56))(v27, v28, v12);
    if (v16)
    {
      log_err("%s:%d: failed to get unlock record's aks state, err = 0x%x\n", "apfs_keybag_aks_remove_unlock_records", 3740, v16);
LABEL_18:
      v17 = 1;
      goto LABEL_19;
    }

    v17 = v12[20] != 1;
LABEL_19:
    uuid_copy(dst, src);
    v31 = a3;
    v32 = 0;
    v18 = sub_10004FB68(*(a1 + 3760), a2, 0, dst, 0, 0);
    if (v18)
    {
      v8 = v18;
      log_err("%s:%d: failed to delete unlock record in apfs keybag, err = %d\n", "apfs_keybag_aks_remove_unlock_records", 3750, v18);
      goto LABEL_32;
    }

    if (v17)
    {
      v19 = (*(v10 + 64))(v27, 11, 0, 0, v28, 0, 0);
      if (v19)
      {
        log_err("%s:%d: failed to remove unlock record's aks state, err = 0x%x\n", "apfs_keybag_aks_remove_unlock_records", 3757, v19);
      }
    }
  }

  while ((apfs_keybag_iter_next(v14, src, v28, a3) & 1) != 0);
  v25 = sub_100051308(a1, a2, v20, v21, v22, v23, v24);
  v8 = v25;
  if (v25)
  {
    log_err("%s:%d: failed to update nx keybag, err = %d\n", "apfs_keybag_aks_remove_unlock_records", 3767, v25);
  }

LABEL_32:
  if (v14)
  {
    apfs_keybag_iter_free(a1, v14);
  }

  _apfs_free(v12, 88);
  return v8;
}

uint64_t apfs_keybag_set_create_update_record(uint64_t a1, uint64_t a2, unsigned __int8 *uu, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int a7, unint64_t a8, uint64_t a9)
{
  LODWORD(v9) = a7;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  __dst = 0;
  v104 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  memset(dst, 0, sizeof(dst));
  memset(src, 0, sizeof(src));
  is_null = uuid_is_null(uu);
  v17 = uuid_is_null(a5);
  bzero(v114, 0x228uLL);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  if (!a1)
  {
    sub_1000A76B8();
  }

  if (!a2)
  {
    sub_1000A768C();
  }

  v18 = a4 != 0;
  if (a4 && *(a4 + 8) >= 0x201uLL)
  {
    log_err("%s:%d: Invalid data1 key length %lu\n");
    return 22;
  }

  if (a6 && *(a6 + 8) >= 0x201uLL)
  {
    log_err("%s:%d: Invalid data2 key length %lu\n");
    return 22;
  }

  v95 = a2;
  v20 = 0;
  v21 = is_null != 0;
  v19 = 22;
  if ((a4 != 0) == v21 || (a6 != 0) == (v17 != 0))
  {
    goto LABEL_14;
  }

  if ((v9 - 6) < 0xFFFFFFFB)
  {
    v20 = 0;
    v19 = 22;
    goto LABEL_14;
  }

  if (*(a1 + 1136))
  {
    v93 = 0;
    goto LABEL_55;
  }

  v24 = *(a1 + 392);
  if (!v24)
  {
    sub_1000A7660();
  }

  if (!*(v24 + 928))
  {
    sub_1000A7634();
  }

  if (!*(v24 + 376))
  {
    sub_1000A7608();
  }

  v25 = *(a1 + 376);
  if (!v25)
  {
    sub_1000A75DC();
  }

  v26 = *(v25 + 964);
  if (v9 == 2)
  {
    if (v26 == 1)
    {
      goto LABEL_35;
    }

LABEL_47:
    if ((*(v25 + 264) & 1) == 0)
    {
      goto LABEL_51;
    }

    v28 = 0;
    goto LABEL_49;
  }

  if (*(v25 + 964) > 0xFFu)
  {
    if (v26 == 256 || v26 == 704 || v26 == 640)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v26 > 0x20)
  {
    goto LABEL_47;
  }

  if (((1 << v26) & 0x100010110) != 0)
  {
    goto LABEL_46;
  }

  if (v26 != 1)
  {
    goto LABEL_47;
  }

LABEL_35:
  v27 = *(a1 + 3936);
  v28 = v27 != 0;
  if (*(v25 + 264))
  {
LABEL_49:
    if (!*(v25 + 976) || v28)
    {
      goto LABEL_53;
    }

LABEL_51:
    v29 = is_sw_crypto(v24);
    v30 = 0;
    v28 = 0;
    if (!a4 || v29)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (!v27)
  {
    goto LABEL_51;
  }

  v28 = 1;
LABEL_53:
  v30 = v95;
LABEL_54:
  v93 = v28;
  apfs_keybag_init(a1, v30);
LABEL_55:
  v94 = *(a1 + 3760);
  if (!v94)
  {
    if (*(a1 + 1136))
    {
      v20 = 0;
      v19 = 92;
      goto LABEL_14;
    }

    v38 = is_sw_crypto(*(a1 + 392));
    v20 = 0;
    v19 = 92;
    if (a4 || v38)
    {
      goto LABEL_14;
    }
  }

  v31 = v9 & 6;
  v32 = 64;
  if (v31 == 2 && (a8 & 2) != 0)
  {
    v98 = 4;
    v32 = 68;
  }

  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v92 = 4;
        v33 = *(a4 + 8);
        v107 = *a4;
        v108 = v33;
        uuid_copy(dst, uu);
        LOBYTE(v9) = 0;
        v34 = 0;
        v20 = 0;
        v19 = 13;
      }

      else
      {
        v44 = apfs_keybag_lookup_record(a1, a5, 3, 0);
        v19 = v44;
        if (v44)
        {
          if (v44 == 2)
          {
            v19 = 2;
            log_err("%s:%d: Cannot add a hint, there is no wkek associated to it, err = %d\n");
          }

          else
          {
            memset(out, 0, 37);
            uuid_unparse(a5, out);
            log_err("%s:%d: failed to lookup existing wkek for uuid = %s, err = %d\n");
          }

          v20 = 0;
          goto LABEL_14;
        }

        v92 = v9 & 6;
        v47 = *(a6 + 8);
        v107 = *a6;
        v108 = v47;
        uuid_copy(dst, a5);
        LOBYTE(v9) = 0;
        v34 = 0;
        v20 = 0;
      }

      goto LABEL_96;
    }

    out[0] = 0uLL;
    v39 = AKS_FV_service();
    if (v39)
    {
      v40 = v39;
      v41 = *(v39 + 32);
      if (v41)
      {
        if (*(v39 + 24))
        {
          v42 = v41(&v97, 2, &v110);
          if (!v42 && v110)
          {
            v107 = _apfs_calloc_typed(1uLL, v110, 0xF9C2921EuLL);
            if (v107 && (v108 = v110, (*&out[0] = _apfs_calloc_typed(1uLL, v110, 0xD7FEA3DAuLL)) != 0))
            {
              *(&out[0] + 1) = v110;
              v43 = apfs_keybag_lookup_record(a1, uu, 3, out);
              if (v43)
              {
                v19 = v43;
                _apfs_free(*&out[0], v110);
                log_err("%s:%d: failed to lookup rec to re-wrap, err = %d\n", "apfs_keybag_set_create_update_record", 4457, v19);
              }

              else
              {
                v9 = (*(v40 + 24))(&v97, a4, out, a5, a6, &v107);
                _apfs_free(*&out[0], v110);
                if (!v9)
                {
                  v92 = v31;
                  uuid_copy(dst, a5);
                  v34 = 0;
                  v20 = 0;
                  v19 = 0;
LABEL_96:
                  v18 = 1;
LABEL_101:
                  v48 = 1;
                  goto LABEL_102;
                }

                log_err("%s:%d: failed to re-wrap, err = 0x%x\n", "apfs_keybag_set_create_update_record", 4464, v9);
                v19 = akserror_to_errno(v9);
              }
            }

            else
            {
              v19 = 12;
            }

            goto LABEL_159;
          }

          log_err("%s:%d: %s failed to get wkek len from AKS (%ld): %d\n", "apfs_keybag_set_create_update_record", 4436, (a1 + 4048), v110, v42);
        }
      }
    }

    v19 = 6;
LABEL_159:
    v20 = 0;
    goto LABEL_14;
  }

  v92 = v9 & 6;
  if (v9 == 1)
  {
    if (a4)
    {
      v35 = *(a4 + 8);
      v107 = *a4;
      v108 = v35;
      uuid_copy(dst, uu);
    }

    if (a6)
    {
      v36 = *(a6 + 8);
      v105 = *a6;
      v106 = v36;
      uuid_copy(src, a5);
      v37 = *(a1 + 1136);
      LOBYTE(v9) = 0;
      v20 = 0;
      if (v37)
      {
        v34 = *(v37 + 8);
      }

      else
      {
        v34 = *(*(a1 + 392) + 928);
      }
    }

    else
    {
      LOBYTE(v9) = 0;
      v34 = 0;
      v20 = 0;
    }

    v19 = 13;
    goto LABEL_101;
  }

  v45 = AKS_FV_service();
  v46 = uuid_is_null(a5);
  v20 = 0;
  v19 = 22;
  if (a6 || !v46)
  {
    goto LABEL_14;
  }

  if ((a8 & 8) != 0)
  {
    v98 = v32;
  }

  if (is_sw_crypto(*(a1 + 392)))
  {
    if (*(*(a1 + 376) + 964) == 1)
    {
      if (!(a4 | *(a1 + 3936)))
      {
LABEL_93:
        log_err("%s:%d: can not create kek and vek without a secret\n");
        return 22;
      }
    }

    else if (!a4)
    {
      goto LABEL_93;
    }
  }

  if (!v45)
  {
    goto LABEL_178;
  }

  v65 = v45[4];
  if (!v65 || !v45[2] || !*v45)
  {
    goto LABEL_178;
  }

  if (v65(&v97, 2, &v110) || !v110)
  {
    log_err("%s:%d: failed to get wkek len from AKS (%ld): %d\n");
LABEL_178:
    v20 = 0;
    v19 = 6;
    goto LABEL_14;
  }

  if ((v45[4])(&v97, 1, &v109) || !v109)
  {
    log_err("%s:%d: failed to get wvek len from AKS (%ld): %d\n");
    goto LABEL_178;
  }

  v66 = v45;
  if (is_sw_crypto(*(a1 + 392)))
  {
    if (!a4 && v93)
    {
      goto LABEL_146;
    }

LABEL_181:
    v73 = *(a1 + 376);
    v74 = *(v73 + 964);
    if (v74 > 0xFF)
    {
      if (*(v73 + 964) > 0x2BFu)
      {
        if (v74 != 768 && v74 != 704)
        {
          goto LABEL_202;
        }
      }

      else if (v74 != 256 && v74 != 640)
      {
        goto LABEL_202;
      }
    }

    else if (v74 > 0x20 || ((1 << v74) & 0x100010110) == 0)
    {
LABEL_202:
      if (!uuid_compare(uu, (v73 + 240)))
      {
        v80 = *(*(a1 + 376) + 964);
        v19 = 22;
        if (v80 == 1 || v80 == 64)
        {
          return v19;
        }
      }

      if ((a8 & 8) != 0)
      {
        v110 = 0;
      }

      else
      {
        v107 = _apfs_calloc_typed(1uLL, v110, 0x1DC934A5uLL);
        if (!v107)
        {
          goto LABEL_230;
        }

        v108 = v110;
      }

      v67 = 1;
      goto LABEL_147;
    }

LABEL_46:
    log_err("%s:%d: %s invalid operation (%d) on volume role (0x%x)\n");
    return 22;
  }

  if (a4)
  {
    goto LABEL_181;
  }

LABEL_146:
  v67 = 0;
LABEL_147:
  v105 = _apfs_calloc_typed(1uLL, v109, 0x869AEDEDuLL);
  if (!v105)
  {
    goto LABEL_230;
  }

  v106 = v109;
  if (is_sw_crypto(*(a1 + 392)))
  {
    goto LABEL_149;
  }

  __dst = _apfs_calloc_typed(1uLL, v109, 0x7C6165AAuLL);
  if (!__dst)
  {
LABEL_230:
    v19 = 12;
LABEL_231:
    v20 = 64;
    goto LABEL_14;
  }

  v104 = v109;
  v75 = nx_keybag_lookup_record(*(a1 + 392), (*(a1 + 376) + 240), 2, &__dst);
  if (!v75)
  {
    if (!nx_keybag_lookup_record(*(a1 + 392), (*(a1 + 376) + 240), 5, &__dst))
    {
      v83 = sub_100050FE4(a1, v95, 0);
      if (v83)
      {
        v19 = v83;
        log_err("%s:%d: failed to fix-up and replace stale-invalid wvek with committed-proposed wvek, err = %d\n");
        goto LABEL_266;
      }
    }

    if ((v67 & 1) == 0)
    {
      sub_1000A73A0();
    }

    v76 = 0;
    goto LABEL_213;
  }

  v19 = v75;
  if (v75 != 2)
  {
    memset(out, 0, 37);
    uuid_unparse((*(a1 + 376) + 240), out);
    log_err("%s:%d: failed to lookup existing wvek for uuid = %s, err = %d\n");
    goto LABEL_266;
  }

LABEL_149:
  v20 = 64;
  v100 = _apfs_calloc_typed(1uLL, 0x40uLL, 0x1136D688uLL);
  if (!v100)
  {
    v19 = 12;
    goto LABEL_14;
  }

  v101 = 64;
  if (!v93)
  {
    if (!v67)
    {
      if (is_sw_crypto(*(a1 + 392)))
      {
        sub_1000A73CC();
      }

      v77 = (*v66)(&v97, 0, 0, *(a1 + 376) + 240, &v105, &v100);
      if (!v77)
      {
LABEL_236:
        if (!is_sw_crypto(*(a1 + 392)))
        {
          v82 = (v66[8])(&v97, 5, 0, 0, 0, &v105, 0);
          if (v82)
          {
            v78 = v82;
            log_err("%s:%d: failed to commit new sys bound vek, err = 0x%x\n");
            goto LABEL_252;
          }
        }

        v18 = 0;
        goto LABEL_262;
      }

      v78 = v77;
LABEL_251:
      log_err("%s:%d: failed to generate new vek, err = 0x%x\n");
      goto LABEL_252;
    }

    v76 = 1;
LABEL_213:
    if ((a8 & 8) != 0)
    {
      v107 = uu;
      v108 = 16;
    }

    else
    {
      v79 = sub_100052974(a1, a9, uu, &v107);
      if (v79)
      {
        v19 = v79;
        if (v79 != 2)
        {
          memset(out, 0, 37);
          uuid_unparse(uu, out);
          log_err("%s:%d: failed to lookup existing wkek for uuid = %s, err = %d\n");
          goto LABEL_266;
        }

        if (uuid_compare(uu, (*(a1 + 376) + 240)))
        {
          v19 = 2;
          log_err("%s:%d: failed to find existing wkek, err = %d\n");
          goto LABEL_266;
        }

        v84 = is_sw_crypto(*(a1 + 392)) ? 2 : 0;
        v85 = (v66[2])(&v97, v84, a4, uu, &v107);
        if (v85)
        {
          v78 = v85;
          log_err("%s:%d: failed to generate new kek, err = 0x%x\n");
          goto LABEL_252;
        }
      }
    }

    if (!v76)
    {
      if (is_sw_crypto(*(a1 + 392)))
      {
        sub_1000A73F8();
      }

      v113 = 0;
      memset(out, 0, sizeof(out));
      if ((v66[7])(&v97, &__dst, out))
      {
        return 1;
      }

      if ((BYTE4(out[2]) & 8) == 0)
      {
        return 13;
      }

      if ((BYTE4(out[2]) & 4) == 0)
      {
        v90 = (v66[8])(&v97, 3, 0, a4, &v107, &__dst, &v105);
        if (v90)
        {
          v78 = v90;
          log_err("%s:%d: can not bind kek to vek, err = 0x%x\n");
          goto LABEL_252;
        }

        memcpy(__dst, v105, v106);
        v104 = v106;
      }

      v91 = (v66[8])(&v97, 2, 0, a4, &v107, &__dst, &v105);
      if (v91)
      {
        v78 = v91;
        log_err("%s:%d: can not bind kek to vek, err = 0x%x\n", "apfs_keybag_set_create_update_record", 4364, v91);
        goto LABEL_252;
      }

      uuid_copy(dst, uu);
      v48 = 0;
      v18 = 1;
LABEL_270:
      v9 = (a8 >> 3) & 1;
      uuid_copy(src, (*(a1 + 376) + 240));
      v19 = 0;
      v34 = *(*(a1 + 392) + 928);
      v20 = 64;
LABEL_102:
      v49 = v94;
      v50 = !v18;
      v51 = v9 | !v18;
      if (v51)
      {
        if (!v34)
        {
          goto LABEL_129;
        }

        goto LABEL_104;
      }

      out[0] = 0uLL;
      memset(uua, 0, sizeof(uua));
      if (!v94)
      {
        sub_1000A7558();
      }

      if (!v107)
      {
        sub_1000A752C();
      }

      if (!v108)
      {
        sub_1000A7500();
      }

      pthread_mutex_lock(v94);
      uuid_copy(v114, dst);
      if (v92 == 4)
      {
        v55 = 4;
      }

      else
      {
        v55 = 3;
      }

      v115 = v55;
      v56 = v108;
      if (v107)
      {
        __memcpy_chk();
      }

      v116 = v56;
      v57 = sub_10004FB68(v94, v95, 0, v114, 0, 0);
      if (v57)
      {
        v19 = v57;
        log_err("%s:%d: failed to add/update unlock record in apfs keybag, err = %d\n");
      }

      else
      {
        v63 = sub_100051308(a1, v95, v58, v59, v60, v61, v62);
        if (!v63)
        {
          uuid_parse("64C0C6EB-0000-11AA-AA11-00306543ECAC", out);
          uuid_parse("C064EBC6-0000-11AA-AA11-00306543ECAC", uua);
          v64 = !uuid_compare(dst, out) || !uuid_compare(dst, uua);
          if (!*(a1 + 1136))
          {
            v69 = is_sw_crypto(*(a1 + 392));
            if (v92 != 4 && !v64 && !v69)
            {
              v70 = AKS_FV_service();
              v71 = (*(v70 + 64))(&v97, 22, 0, 0, &v107, 0, 0);
              if (v71)
              {
                v72 = 2;
                do
                {
                  if (!v72)
                  {
                    panic("failed to commit updated wkek record, err = 0x%x\n", v71);
                  }

                  log_err("%s:%d: failed to commit updated wkek record, err = 0x%x (%d more retries)\n", "apfs_keybag_set_create_update_record", 4527, v71, v72--);
                  v71 = (*(v70 + 64))(&v97, 22, 0, 0, &v107, 0, 0);
                }

                while (v71);
              }
            }
          }

          v19 = 0;
          v49 = v94;
          if (!v34)
          {
LABEL_129:
            if (v51)
            {
              goto LABEL_14;
            }

            goto LABEL_130;
          }

LABEL_104:
          if (!v105)
          {
            sub_1000A75B0();
          }

          if (!v106)
          {
            sub_1000A7584();
          }

          if (*(a1 + 1136))
          {
            v52 = 1;
          }

          else
          {
            v52 = v48;
          }

          if (((v52 | v50) & 1) != 0 || is_sw_crypto(*(a1 + 392)))
          {
            uuid_copy(v114, src);
            v115 = 2;
            v53 = v106;
            if (v105)
            {
              __memcpy_chk();
            }

            v116 = v53;
            v54 = sub_10004FB68(v34, v95, 0, v114, 0, 1);
          }

          else
          {
            v54 = sub_100050FE4(a1, v95, &v105);
          }

          v19 = v54;
          if (v54)
          {
            log_err("%s:%d: failed to add/update wvek record in nx keybag, err = %d\n", "apfs_keybag_set_create_update_record", 4551, v54);
          }

          goto LABEL_129;
        }

        v19 = v63;
        log_err("%s:%d: failed to apfs update unlock records range in nx keybag, err = %d\n");
      }

LABEL_130:
      pthread_mutex_unlock(v49);
      goto LABEL_14;
    }

    v86 = (*v66)(&v97, a4, &v107, *(a1 + 376) + 240, &v105, &v100);
    if (!v86)
    {
      if (!is_sw_crypto(*(a1 + 392)))
      {
        v87 = (v66[8])(&v97, 5, 0, 0, 0, &v105, 0);
        if (v87)
        {
          v78 = v87;
          log_err("%s:%d: failed to commit new kek bound vek, err = 0x%x\n");
          goto LABEL_252;
        }
      }

      uuid_copy(dst, uu);
      v18 = 1;
LABEL_262:
      nx_dev = apfs_get_nx_dev(a1);
      *(a1 + 536) = 0u;
      *(a1 + 552) = 0u;
      *(a1 + 568) = 0u;
      *(a1 + 584) = 0u;
      *(a1 + 600) = 0u;
      *(a1 + 616) = 0u;
      v89 = sub_10004F388(nx_dev, v100, v101, 0, 0, v102);
      *(a1 + 608) = v89;
      if (!v89)
      {
        v19 = 12;
        log_err("%s:%d: failed to store vek into crypto state, err = %d\n");
        goto LABEL_266;
      }

      if (is_sw_crypto(*(a1 + 392)))
      {
        v48 = 1;
        cpx_set_is_composite_key(*(a1 + 608), 1);
      }

      else
      {
        if ((cpx_is_sep_wrapped_key() & 1) == 0)
        {
          panic("HW CRYPTO: [create]: CP_RAW_KEY_WRAPPEDKEY is NOT set");
        }

        v48 = 1;
      }

      goto LABEL_270;
    }

    v78 = v86;
    goto LABEL_251;
  }

  if (v67)
  {
    sub_1000A74D4();
  }

  if (!*(*(a1 + 3936) + 608))
  {
    sub_1000A74A8();
  }

  if (__dst)
  {
    sub_1000A7424();
  }

  __dst = _apfs_calloc_typed(1uLL, v109, 0xC7ED7D23uLL);
  if (!__dst)
  {
    goto LABEL_230;
  }

  v104 = v109;
  v68 = nx_keybag_lookup_record(*(*(a1 + 3936) + 392), (*(*(a1 + 3936) + 376) + 240), 2, &__dst);
  if (!v68)
  {
    if (!*(*(a1 + 3936) + 608))
    {
      sub_1000A747C();
    }

    if (!__dst)
    {
      sub_1000A7450();
    }

    v81 = (v66[10])(&v97, &__dst, *(a1 + 376) + 240, &v105, &v100);
    if (v81)
    {
      v78 = v81;
      log_err("%s:%d: failed to generate new sibling vek, err = 0x%x\n");
LABEL_252:
      v19 = akserror_to_errno(v78);
      goto LABEL_231;
    }

    goto LABEL_236;
  }

  v19 = v68;
  memset(out, 0, 37);
  uuid_unparse((*(*(a1 + 3936) + 376) + 240), out);
  log_err("%s:%d: failed to lookup sibling wvek for uuid = %s, err = %d\n");
LABEL_266:
  v20 = 64;
LABEL_14:
  if (v110 && v107)
  {
    _apfs_free(v107, v110);
  }

  v22 = v109;
  if (v109 && v105)
  {
    _apfs_free(v105, v109);
    v22 = v109;
  }

  if (v22 && __dst)
  {
    _apfs_free(__dst, v22);
  }

  if (v20 && v100)
  {
    _apfs_free(v100, v20);
  }

  return v19;
}

uint64_t sub_100052974(uint64_t a1, uint64_t a2, unsigned __int8 *uu, uint64_t a4)
{
  if (a2)
  {
    if (**(a2 + 40))
    {
      v7 = 0;
      v8 = *(a2 + 32);
      while (1)
      {
        result = apfs_keybag_lookup_record(*(v8 + 8 * v7), uu, 3, a4);
        if (result != 2)
        {
          break;
        }

        if (++v7 >= **(a2 + 40))
        {
          return 2;
        }
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return apfs_keybag_lookup_record(a1, uu, 3, a4);
  }

  return result;
}

uint64_t apfs_vek_remove_aks_state(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  if ((*(*(a1 + 376) + 264) & 1) != 0 || is_sw_crypto(*(a1 + 392)))
  {
    return 22;
  }

  v4 = AKS_FV_service();
  if (!v4)
  {
    return 6;
  }

  v5 = *(v4 + 64);
  if (!v5)
  {
    return 6;
  }

  v6 = v5(v8, 6, 0, 0, 0, a2, 0);
  if (v6)
  {
    v7 = v6;
    log_err("%s:%d: failed to remove vek state, error = 0x%x\n", "apfs_vek_remove_aks_state", 5425, v6);
    return akserror_to_errno(v7);
  }

  else
  {
    log_debug("%s:%d: removed vek state\n", "apfs_vek_remove_aks_state", 5429);
    return 0;
  }
}

uint64_t apfs_keybag_purge(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000A77C0();
  }

  if (!a2)
  {
    sub_1000A7794();
  }

  if (!*(a1 + 376))
  {
    sub_1000A7768();
  }

  apfs_keybag_init(a1, 0);
  if (!*(a1 + 3760))
  {
    return 2;
  }

  if (!is_sw_crypto(*(a1 + 392)))
  {
    v4 = apfs_keybag_aks_remove_unlock_records(a1, a2, 3);
    if (v4)
    {
      log_err("%s:%d: failed to aks remove unlock records, err = %d\n", "apfs_keybag_purge", 5453, v4);
    }

    v5 = apfs_keybag_aks_remove_unlock_records(a1, a2, 6);
    if (v5)
    {
      log_err("%s:%d: failed to aks remove marked unlock records, err = %d\n", "apfs_keybag_purge", 5459, v5);
    }
  }

  pthread_mutex_lock(*(a1 + 3760));
  v6 = sub_10004FB68(*(a1 + 3760), a2, 0, 0, 3, 0);
  if (v6)
  {
    v7 = v6;
    log_err("%s:%d: failed to wipe unlock records in apfs keybag, err = %d\n", "apfs_keybag_purge", 5468, v6);
  }

  else
  {
    v17 = 0;
    *dst = 0u;
    v16 = 0u;
    v8 = *(a1 + 1136);
    if (v8)
    {
      v9 = (v8 + 32);
      v10 = *(v8 + 8);
    }

    else
    {
      v11 = *(a1 + 376);
      if (!v11)
      {
        sub_1000A773C();
      }

      v12 = *(a1 + 392);
      if (!v12)
      {
        sub_1000A7710();
      }

      v10 = *(v12 + 928);
      if (!v10)
      {
        sub_1000A76E4();
      }

      v9 = (v11 + 240);
    }

    uuid_copy(dst, v9);
    LODWORD(v16) = 3;
    v13 = sub_10004FB68(v10, a2, 0, dst, 0, 1);
    v7 = v13;
    if (v13)
    {
      log_err("%s:%d: failed to destroy apfs unlock records range in nx keybag, err = %d\n", "apfs_keybag_purge", 5474, v13);
    }

    else
    {
      *(a1 + 3768) = 0u;
    }
  }

  pthread_mutex_unlock(*(a1 + 3760));
  return v7;
}

uint64_t apfs_remove_volume_key(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 392);
  v10 = 0;
  v11 = 0;
  memset(v12, 0, sizeof(v12));
  v5 = is_sw_crypto(v4);
  if (!v5)
  {
    v10 = v12;
    v11 = 512;
    v6 = nx_keybag_lookup_record(*(a1 + 392), (*(a1 + 376) + 240), 2, &v10);
    if ((v6 & 0xFFFFFFFD) != 0)
    {
      v7 = v6;
      log_err("%s:%d: %s failed to get volume key, error = %d, tag %d\n", "apfs_remove_volume_key", 5510, (a1 + 4048), v6, 2);
      return v7;
    }

    if (!v10 || !v11)
    {
      sub_1000A77EC();
    }
  }

  v8 = nx_keybag_delete(*(v4 + 928), a2, (*(a1 + 376) + 240), 2u);
  if ((v8 & 0xFFFFFFFD) != 0)
  {
    v7 = v8;
    log_err("%s:%d: %s failed to delete volume key, error = %d, tag %d\n", "apfs_remove_volume_key", 5517, (a1 + 4048), v8, 2);
  }

  else
  {
    if (!v5)
    {
      apfs_vek_remove_aks_state(a1, &v10);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_100052EA4(uint64_t a1, uint64_t a2)
{
  uuid_copy(*a2, (a1 + 64));
  uuid_copy((*a2 + 16), (a1 + 64));
  *(a2 + 8) = 32;
  return 0;
}

uint64_t sub_100052EF8(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v2 + 36) + 32;
  v4 = v3 % dev_block_size(*(a1 + 48));
  v5 = *(v2 + 36);
  v6 = dev_block_size(*(a1 + 48));
  if (v4)
  {
    v7 = (v5 + 32) / v6 + 1;
  }

  else
  {
    v7 = (v5 + 32) / v6;
  }

  v16 = 0;
  v8 = *(a1 + 64);
  if (v8)
  {
    if (!spaceman_alloc(v8, 8, v7, *(a1 + 72), &v16, 0))
    {
      v9 = *(a1 + 88);
      v10 = v9[1];
      if (v10)
      {
        if (*v9)
        {
          spaceman_free(*(a1 + 64), 0, *v9, v10, *(a1 + 72));
          v9 = *(a1 + 88);
        }
      }

      *v9 = v16;
      *(*(a1 + 88) + 8) = v7;
      goto LABEL_12;
    }

    return 28;
  }

  if (*(*(a1 + 88) + 8) < v7)
  {
    return 28;
  }

LABEL_12:
  *(v2 + 8) = 0;
  *(v2 + 16) = *(a1 + 72);
  *(v2 + 24) = *(a1 + 80);
  *(v2 + 28) = 0;
  v12 = *(*(a1 + 88) + 8);
  v13 = dev_block_size(*(a1 + 48));
  fletcher64_set_cksum(v2, (v2 + 8), v12 * v13 - 8, 0, v14, v15);
  *(*(*(a1 + 56) + 72) + 12) = **(a1 + 88);
  return dev_write_data(*(a1 + 48), **(a1 + 88), *(*(a1 + 88) + 8));
}

uint64_t sub_10005304C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1[1] && *v1)
  {
    v3 = dev_block_size(*(a1 + 48));
    v4 = _apfs_calloc_typed(1uLL, v3, 0xA8AB1E48uLL);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 88);
      if (v6[1])
      {
        v7 = 0;
        do
        {
          dev_write_data(*(a1 + 48), v7 + *v6, 1);
          ++v7;
          v6 = *(a1 + 88);
        }

        while (v7 < v6[1]);
      }

      v8 = dev_block_size(*(a1 + 48));
      _apfs_free(v5, v8);
      v9 = *(a1 + 64);
      if (!v9)
      {
        dev_barrier(*(a1 + 48));
        return 0;
      }
    }

    else
    {
      v9 = *(a1 + 64);
      if (!v9)
      {
        return 0;
      }
    }

    spaceman_free(v9, 0, **(a1 + 88), *(*(a1 + 88) + 8), *(a1 + 72));
    **(a1 + 88) = 0;
    *(*(a1 + 88) + 8) = 0;
  }

  return 0;
}

_WORD *cpx_alloc(uint64_t a1)
{
  v1 = a1;
  result = _apfs_calloc_typed(1uLL, a1 + 24, 0x7B363F79uLL);
  if (result)
  {
    result[4] = v1;
  }

  return result;
}

uint64_t cpx_set_use_offset_for_iv(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = *(result + 4) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t cpx_set_is_composite_key(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = *(result + 4) & 0xFFFFFFDF | v2;
  return result;
}

void cpx_free(unsigned __int16 *a1)
{
  v2 = a1[4];
  bzero(a1 + 10, v2);

  _apfs_free(a1, v2 + 24);
}

uint64_t cpx_set_key_len(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (v2 >= a2)
  {
    LOWORD(v2) = a2;
  }

  *(result + 10) = v2;
  return result;
}

uint64_t io_get_device_block_size(int a1)
{
  v6 = 0;
  memset(&v5, 0, sizeof(v5));
  bzero(&v7, 0x878uLL);
  if (!ioctl(a1, 0x40046418uLL, &v6))
  {
    return v6;
  }

  if (!fstatfs(a1, &v7))
  {
    return v7.f_bsize;
  }

  if (!fstat(a1, &v5))
  {
    return v5.st_blksize;
  }

  v2 = __error();
  v3 = strerror(*v2);
  log_err("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v3);
  return 512;
}

uint64_t dev_crypto_type(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 72) + 168))();
  }

  return result;
}

uint64_t dev_read_async(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}
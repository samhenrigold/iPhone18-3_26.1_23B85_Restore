uint64_t sub_10003A7E0(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, _BYTE *a8)
{
  __chkstk_darwin(a1);
  v17 = &v23[-v16];
  bzero(&v23[-v16], v18);
  v25 = 0;
  v24 = 0;
  result = sub_100037408(a1, a2, a3, &v25, &v24);
  if (!result)
  {
    if (a8)
    {
      *a8 = v24;
    }

    if (a7)
    {
      *a7 = v25;
    }

    if ((*(*(a1 + 56) + 32) & 0xA) != 8)
    {
      goto LABEL_10;
    }

    if ((*(a1 + 407) & 0x7F) + 8 != a5)
    {
      sub_1000A634C();
    }

    v20 = *(a1 + 408);
    if (*a4 > v20)
    {
      *v17 = *a4 - v20;
      a4 = v17;
LABEL_10:
      if (v24)
      {
        return sub_1000375C8(a1, v25, a2, a3, a4, a5, a6);
      }

      else
      {
        return sub_100037E98(a1, v25, a2, a3, a4, a5, a6);
      }
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 + 4048);
    }

    else
    {
      v22 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_insert", 2273, v22, *a4, v20);
    return 22;
  }

  return result;
}

uint64_t bt_update_with_hint(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, const void *a5, unsigned int a6, unint64_t a7, unint64_t *a8)
{
  __chkstk_darwin(a1);
  v17 = (&v42 - v16);
  bzero(&v42 - v16, v18);
  v51 = 0;
  v50 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A63A4();
  }

  if (!*(a1 + 416))
  {
    return 22;
  }

  v19 = btree_entry_size_check(a1, a4, a6);
  if (v19)
  {
    return v19;
  }

  v19 = obj_modify(a1, (*(a1 + 400) >> 3) & 2, a7);
  if (v19)
  {
    return v19;
  }

  v22 = *(a1 + 392);
  v23 = *(v22 + 16);
  v44 = a3;
  v24 = v23 < a4 || *(v22 + 20) < a6;
  v45 = v24;
  v52 = 0;
  v49 = 0;
  v42 = a5;
  v43 = a8;
  if (a8)
  {
    v25 = *a8;
    if (*a8)
    {
      if (a8[1] == a1 && ((v45 | ((*(a1 + 400) & 0x10) >> 4)) & 1) == 0)
      {
        *v17 = v25;
        if (v25 != obj_oid(a1) && !btree_node_get(a1, v17, a2, (a7 != 0) | (((*(*(a1 + 56) + 32) >> 3) & 1) << 6) | 6u, 0, a7, &v52))
        {
          v26 = v52;
          if ((*(v52[7] + 32) & 2) != 0 && !sub_1000382F8(v52, v44, a4, &v50, &v49) && v49)
          {
            if ((*(v26[7] + 32) & 2) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_46;
          }

          obj_unlock(v26, 2u);
          obj_release(v26);
        }
      }
    }
  }

  v20 = 2;
  obj_lock(a1, 2u);
  obj_retain(a1);
  v28 = (a1 + 56);
  v27 = *(a1 + 56);
  if ((*(v27 + 32) & 2) == 0)
  {
    v29 = 0;
    v30 = 2;
    v26 = a1;
    while (1)
    {
      if (!*(v27 + 36))
      {
        v20 = v30;
        goto LABEL_41;
      }

      v31 = sub_100037408(v26, v44, a4, &v50, &v49);
      if (v31)
      {
        goto LABEL_58;
      }

      v32 = v50;
      if (!v49 && v50)
      {
        v32 = --v50;
      }

      v31 = btree_node_child_val(v26, v32, v17);
      if (v31 || (v31 = btree_node_get(a1, v17, a2, 3u, *(*v28 + 34) - 1, a7, &v51), v31))
      {
LABEL_58:
        v20 = v31;
        v52 = v26;
        goto LABEL_63;
      }

      if ((*(a1 + 400) & 0x10) != 0 && v51[14] != *v17)
      {
        sub_10003833C(v26, v32, v51 + 14, a7);
      }

      if (v26 != a1 || !v45)
      {
        obj_unlock(v26, 2u);
        obj_release(v26);
      }

      v26 = v51;
      if (!v51)
      {
        break;
      }

      v30 = 0;
      v20 = 0;
      v28 = v51 + 7;
      v27 = v51[7];
      v29 = 1;
      if ((*(v27 + 32) & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    v52 = 0;
    goto LABEL_61;
  }

  v29 = 0;
  v26 = a1;
LABEL_41:
  v52 = v26;
  if ((*(v26[7] + 32) & 2) == 0)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v20 = sub_1000382F8(v26, v44, a4, &v50, &v49);
  if (!v20)
  {
    if (!v49)
    {
LABEL_61:
      v20 = 2;
      goto LABEL_62;
    }

LABEL_46:
    v48 = 0;
    v47 = 0;
    v46 = 0;
    v33 = v50;
    v34 = btree_node_key_ptr(v26, v50, &v48, &v46);
    v36 = v42;
    v35 = v43;
    if (!v34)
    {
      v37 = v48;
      v38 = *(a1 + 8);
      if (!v38)
      {
        v38 = *(*a1 + 392);
      }

      if (!(*(a1 + 416))(v38, v48, v46, v44, a4, &v47) && v47)
      {
        panic("you can't change a key here!  (ekey %p eklen %d; key %p klen %d; n %p bt %p)\n", v37, v46, v44, a4, v26, a1);
      }
    }

    v20 = sub_1000375C8(v26, v33, v44, a4, v36, a6, a7);
    if (v20)
    {
      goto LABEL_62;
    }

    v39 = *(a1 + 392);
    v40 = *(v39 + 16);
    if (v40 < a4)
    {
      *(v39 + 16) = a4;
    }

    if (*(v39 + 20) >= a6)
    {
      if (v40 >= a4 && (*(a1 + 400) & 0x80) == 0)
      {
LABEL_72:
        if (v35)
        {
          *v35 = obj_oid(v26);
          v35[1] = a1;
        }

        goto LABEL_62;
      }
    }

    else
    {
      *(v39 + 20) = a6;
    }

    obj_dirty(a1, a7, 0);
    goto LABEL_72;
  }

LABEL_62:
  v26 = v52;
  if (v52)
  {
LABEL_63:
    obj_unlock(v26, 2u);
    obj_release(v26);
  }

  v41 = !v45;
  if (v26 == a1)
  {
    v41 = 1;
  }

  if ((v41 & 1) == 0)
  {
    obj_unlock(a1, 2u);
    obj_release(a1);
  }

  if (!obj_refcount(a1))
  {
    sub_1000A6378();
  }

  return v20;
}

uint64_t bt_update_via_callback(uint64_t a1, unint64_t a2, unint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7, unint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  __chkstk_darwin(a1);
  v19 = (&v31 - v18);
  bzero(&v31 - v18, v20);
  v38 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A6428();
  }

  if (!*(a1 + 416))
  {
    return 22;
  }

  v21 = btree_entry_size_check(a1, a4, a6);
  if (!v21)
  {
    obj_lock(a1, 2u);
    v22 = obj_modify(a1, (*(a1 + 400) >> 3) & 2, a8);
    if (v22)
    {
      v21 = v22;
      obj_unlock(a1, 2u);
      return v21;
    }

    v35 = a3;
    v34 = a7;
    v32 = a10;
    v33 = a5;
    v31 = a9;
    v37 = 0;
    v36 = 0;
    obj_retain(a1);
    v24 = 0;
    v21 = 2;
    v25 = a1;
    while (1)
    {
      v26 = v25;
      v27 = v25[7];
      if ((*(v27 + 32) & 2) != 0)
      {
        break;
      }

      if (!*(v27 + 36))
      {
        if (v24)
        {
LABEL_28:
          v21 = 2;
        }

        goto LABEL_29;
      }

      v28 = sub_100037408(v25, v35, a4, &v37, &v36);
      if (v28)
      {
        goto LABEL_22;
      }

      v29 = v37;
      if (!v36 && v37)
      {
        v29 = --v37;
      }

      v28 = btree_node_child_val(v25, v29, v19);
      if (v28 || (v28 = btree_node_get(a1, v19, a2, 3u, *(v25[7] + 34) - 1, a8, &v38), v28))
      {
LABEL_22:
        v21 = v28;
        obj_unlock(v25, 2u);
        obj_release(v25);
        if (!obj_refcount(a1))
        {
          sub_1000A63D0();
        }

        return v21;
      }

      v25 = v38;
      if ((*(a1 + 400) & 0x10) != 0 && v38[14] != *v19)
      {
        sub_10003833C(v26, v29, v38 + 14, a8);
      }

      obj_unlock(v26, 2u);
      obj_release(v26);
      v21 = 0;
      v24 = 1;
      if (!v25)
      {
        v21 = 2;
LABEL_33:
        if (!obj_refcount(a1))
        {
          sub_1000A63FC();
        }

        return v21;
      }
    }

    v30 = v35;
    v21 = sub_1000382F8(v25, v35, a4, &v37, &v36);
    if (!v21)
    {
      if (!v36)
      {
        goto LABEL_28;
      }

      v21 = sub_10003B280(v25, v37, v30, a4, v33, a6, v34, a8, v31, v32);
    }

LABEL_29:
    obj_unlock(v25, 2u);
    obj_release(v25);
    if (!v21)
    {
      if ((*(a1 + 400) & 0x80) != 0)
      {
        obj_dirty(a1, a8, 0);
      }

      v21 = 0;
    }

    goto LABEL_33;
  }

  return v21;
}

uint64_t sub_10003B280(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v10 = *(a1 + 56);
  if (*(v10 + 36) <= a2)
  {
    return 22;
  }

  v17 = *(v10 + 32);
  v18 = *(a1 + 376);
  if ((v17 & 4) != 0)
  {
    v19 = (v18 + 4 * a2);
  }

  else
  {
    v19 = (v18 + 8 * a2);
  }

  v20 = *v19;
  v21 = (v18 + 4 * a2 + 2);
  if ((v17 & 4) == 0)
  {
    v21 = (v18 + 8 * a2 + 4);
  }

  v22 = *v21;
  if (v20 == 0xFFFF)
  {
    v23 = 0;
  }

  else if ((v17 & 4) != 0)
  {
    v23 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v23 = *(v18 + 8 * a2 + 2);
  }

  if (v22 > 0xFFFD)
  {
    v24 = 0;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = btree_node_val_len(a1, a2);
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  result = sub_10003511C(a1, v20, v23);
  if (result)
  {
    return result;
  }

LABEL_17:
  if (!v24)
  {
    if (v20 != 0xFFFF)
    {
LABEL_27:
      if (v24 >= a6)
      {
        v28 = 1;
      }

      else
      {
        v28 = a7;
      }

      result = 22;
      if (v23 == a4 && v28)
      {
        result = a9(*(a1 + 384) + v20, v23, a3, a4, *(a1 + 392) - v22, v24, a5, a6, a10);
        if (!result)
        {
          obj_dirty(a1, a8, 0);
          return 0;
        }
      }

      return result;
    }

    return 22;
  }

  LODWORD(result) = sub_100035248(a1, v22, v24);
  v26 = result;
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (v20 != 0xFFFF && v26 == 0)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t bt_remove_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, void *a6, unsigned int *a7, void *a8, unsigned int *a9, unint64_t a10)
{
  v114 = a6;
  v14 = a3;
  v126 = 0u;
  v127 = 0u;
  v125 = 0u;
  v124 = 0;
  __chkstk_darwin(a1);
  v18 = (&v101 - v17);
  bzero(&v101 - v17, v19);
  v122 = 0;
  v123 = 0;
  v121 = 0;
  v120 = a5;
  v20 = *(*(a1 + 392) + 16);
  if (!obj_refcount(a1))
  {
    sub_1000A6588();
  }

  v119 = 0;
  v118 = 0;
  if (!*(a1 + 416))
  {
    return 22;
  }

  v21 = *(a1 + 400);
  v22 = (v21 >> 9) & 0x3FFF;
  if (!v22)
  {
    if ((((((v21 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72 >= a5)
    {
      goto LABEL_5;
    }

    return 22;
  }

  if (v22 != a5)
  {
    return 22;
  }

LABEL_5:
  v108 = a7;
  v109 = a8;
  obj_lock(a1, 2u);
  v23 = obj_modify(a1, (*(a1 + 400) >> 3) & 2, a10);
  if (v23)
  {
    v24 = v23;
    obj_unlock(a1, 2u);
    return v24;
  }

  v111 = a2;
  v112 = a10;
  v107 = &v101;
  *&v125 = a1;
  obj_retain(a1);
  v26 = sub_10003C3DC(a1, v14, 1, a4, &v120, a5, &v125 + 4, (&v125 | 0xA));
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = 0;
  v29 = 0;
  v106 = 0;
  v30 = 0;
  v104 = a9;
  v105 = (v20 + 7) & 0x1FFF8;
  v110 = a4;
  while (1)
  {
    if (v30)
    {
      v28 = v29;
      if ((BYTE10(v125) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v28 = v126;
      if ((BYTE10(v125) & 1) == 0 || WORD4(v125))
      {
        v113 = 0;
        v31 = v126;
        v28 = v29;
        if (!v126)
        {
          goto LABEL_85;
        }

        goto LABEL_25;
      }

      v106 = WORD4(v126);
      v27 = v125;
    }

    if (WORD4(v125))
    {
LABEL_161:
      sub_1000A6454();
    }

    v113 = 1;
    v31 = v126;
    if (!v126)
    {
      goto LABEL_85;
    }

LABEL_25:
    if ((*(a1 + 401) & 0x7FFE) == 0)
    {
      v117 = 0;
      if (BYTE10(v125))
      {
        v32 = btree_node_key_ptr(v31, WORD4(v126), &v123, &v118);
        if (v32)
        {
          goto LABEL_129;
        }

        v33 = v105;
        if ((*(v126 + 400) & 0x40) != 0)
        {
          v33 = v20;
        }

        v34 = v118;
        if ((*(v126 + 400) & 0x40) == 0)
        {
          v34 = (v118 + 7) & 0xFFF8;
        }

        v35 = v33 - v34;
        v36 = v35 < 0 ? 0 : v35;
      }

      else
      {
        v36 = 0;
      }

      v116 = sub_10003859C(v125);
      v37 = v126;
      v115 = (*(v125 + 407) & 0x7F) + 8;
      if (!sub_100038410(v126, 1u, &v116, &v115, v36, 0, 0))
      {
        v32 = sub_100038618(a1, v127, WORD4(v127), v37, (WORD4(v126) + ((BYTE10(v126) & 1) == 0)), v110, v120, 1u, &v116, &v115, v36, v111, v112, &v117);
        if (v32)
        {
          goto LABEL_129;
        }

        v38 = v117;
        if (v117)
        {
          break;
        }
      }
    }

LABEL_85:
    v29 = v28;
    if ((*(*(v125 + 56) + 32) & 2) != 0)
    {
      v124 = v27;
      v54 = sub_10003C3DC(v125, v14, 1, v110, &v120, a5, &v125 + 4, (&v125 | 0xA));
      if (v54)
      {
LABEL_99:
        v24 = v54;
        goto LABEL_100;
      }

      if (v113)
      {
        if ((BYTE10(v125) & 1) == 0 || WORD4(v125))
        {
          sub_1000A64AC();
        }
      }

      else if ((BYTE10(v125) & 1) == 0)
      {
        v24 = 2;
        goto LABEL_100;
      }

      if (v114)
      {
        v54 = btree_node_key_ptr(v125, 0, &v122, &v119 + 1);
        if (v54)
        {
          goto LABEL_99;
        }

        v59 = HIWORD(v119);
        v60 = v108;
        v61 = *v108;
        v62 = *v108 >= HIWORD(v119) ? HIWORD(v119) : v61;
        memcpy(v114, v122, v62);
        *v60 = v59;
        if (v61 < v59)
        {
          goto LABEL_151;
        }
      }

      if (v109)
      {
        v54 = btree_node_val_ptr(v125, 0, &v121, &v119);
        if (v54)
        {
          goto LABEL_99;
        }

        v63 = v119;
        v64 = v119 == 65534 ? 0 : v119;
        v65 = v104;
        v66 = *v104;
        v67 = *v104 >= v64 ? v64 : v66;
        memcpy(v109, v121, v67);
        *v65 = v63;
        if (v66 < v64)
        {
LABEL_151:
          v24 = 34;
          goto LABEL_100;
        }
      }

      v68 = v112;
      sub_10003C4D0(v125, WORD4(v125), v112);
      v69 = *(a1 + 392);
      if (!*(v69 + 24))
      {
        sub_1000A6530();
      }

      atomic_fetch_add_explicit((v69 + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      obj_dirty(a1, v68, 0);
      if (WORD4(v125))
      {
        v24 = 0;
        goto LABEL_167;
      }

      v24 = 0;
      if (*(*(v125 + 56) + 36) && v126)
      {
        v70 = btree_node_key_ptr(v125, 0, &v123, &v118);
        if (v70)
        {
          v24 = v70;
        }

        else
        {
          v24 = sub_1000375C8(v126, WORD4(v126), v123, v118, 0, 0, v112);
          if (!v24)
          {
            goto LABEL_167;
          }
        }

        v71 = *(a1 + 8);
        if (v71)
        {
          v72 = (v71 + 4048);
        }

        else
        {
          v72 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5068, v72, v24);
      }

LABEL_167:
      v73 = sub_10003C73C(a1, v125);
      v74 = v127;
      v75 = v113;
      if (v127)
      {
        if (v127 != v29 && v127 != v27)
        {
          obj_unlock(v127, 2u);
          obj_release(v74);
          v75 = v113;
        }

        *&v127 = 0;
      }

      v76 = v126;
      if (v126)
      {
        if (v126 != v29 && v126 != v27)
        {
          obj_unlock(v126, 2u);
          obj_release(v76);
          v75 = v113;
        }

        *&v126 = 0;
      }

      if (v75 && *(*(v125 + 56) + 36))
      {
        v54 = btree_node_key_ptr(v125, 0, &v123, &v118);
        if (v54)
        {
          goto LABEL_99;
        }

        if (v29)
        {
          v77 = sub_1000375C8(v29, v106, v123, v118, 0, 0, v112);
          v24 = v77;
          if (v77)
          {
            v78 = *(a1 + 8);
            if (v78)
            {
              v79 = (v78 + 4048);
            }

            else
            {
              v79 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5094, v79, v77);
          }

          if (v29 != v127 && v29 != v126 && v29 != v125)
          {
            obj_unlock(v29, 2u);
            obj_release(v29);
          }
        }

        else
        {
          v24 = 0;
        }

        v80 = v124;
        v81 = v124 + 7;
        if ((*(v124[7] + 32) & 2) == 0)
        {
          v82 = v120;
          v83 = v123;
          while (1)
          {
            LOWORD(v117) = 0;
            LOBYTE(v116) = 0;
            v27 = v80;
            v84 = sub_1000382F8(v80, v110, v82, &v117, &v116);
            if (v84)
            {
              v24 = v84;
              goto LABEL_13;
            }

            v85 = *(*v81 + 34);
            if ((v116 & 1) == 0)
            {
              break;
            }

            if (v85 == 1)
            {
              v90 = *(a1 + 8);
              if (v90)
              {
                v91 = (v90 + 4048);
              }

              else
              {
                v91 = (*(*(*a1 + 392) + 384) + 212);
              }

              v92 = obj_oid(v27);
              v93 = obj_subtype(v27);
              log_err("%s:%d: %s minkey update traversal unexpectedly found the removed key in level 1 node; oid %llu subtype 0x%x level %d\n", "bt_remove_internal", 5117, v91, v92, v93, *(*v81 + 34));
              goto LABEL_222;
            }

            if (v117)
            {
              sub_1000A6504();
            }

            v86 = sub_1000375C8(v27, 0, v83, v118, 0, 0, v112);
            if (v86)
            {
              v87 = *(a1 + 8);
              if (v87)
              {
                v88 = (v87 + 4048);
              }

              else
              {
                v88 = (*(*(*a1 + 392) + 384) + 212);
              }

              log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5123, v88, v86);
            }

            v24 = btree_node_child_val(v27, 0, v18);
            v89 = *(*v81 + 34);
            v124 = 0;
            if (!v24)
            {
              v24 = btree_node_get(a1, v18, v111, 3u, v89 - 1, v112, &v124);
            }

            if (v27 != v127 && v27 != v126 && v27 != v125)
            {
              obj_unlock(v27, 2u);
              obj_release(v27);
            }

            if (!v24)
            {
              v80 = v124;
              v81 = v124 + 7;
              if ((*(v124[7] + 32) & 2) == 0)
              {
                continue;
              }
            }

            goto LABEL_223;
          }

          if (v85 != 1)
          {
            sub_1000A64D8();
          }

LABEL_222:
          v24 = 0;
        }
      }

      else if (v29 && v29 != v127 && v29 != v125)
      {
        obj_unlock(v29, 2u);
        obj_release(v29);
      }

LABEL_223:
      v94 = v124;
      v95 = v111;
      if (v124)
      {
        if (v124 != v127 && v124 != v126 && v124 != v125)
        {
          obj_unlock(v124, 2u);
          obj_release(v94);
        }

        v124 = 0;
      }

      if (v73)
      {
        if (WORD4(v125) || !*(*(v125 + 56) + 36))
        {
          v96 = 0;
          v97 = 0;
        }

        else
        {
          v26 = btree_node_key_ptr(v125, 0, &v123, &v118);
          if (v26)
          {
LABEL_11:
            v24 = v26;
            goto LABEL_12;
          }

          v97 = v118;
          v100 = _apfs_malloc_typed(v118, 0x144C515AuLL);
          v96 = v100;
          if (v100)
          {
            memcpy(v100, v123, v118);
          }

          v24 = 0;
          v95 = v111;
        }

        if (v96)
        {
          v98 = v97;
        }

        else
        {
          v96 = v110;
          v98 = v120;
        }
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v99 = v125;
      obj_unlock(v125, 2u);
      obj_release(v99);
      *&v125 = 0;
      if (v73)
      {
        sub_10003C7E8(a1, v95, v96, v98, v112);
        if (v96 != v110)
        {
          _apfs_free(v96, v98);
        }
      }

LABEL_12:
      v27 = 0;
LABEL_13:
      v28 = 0;
      goto LABEL_101;
    }

    v49 = v127;
    if (v127 && v127 != v29 && v127 != v27)
    {
      obj_unlock(v127, 2u);
      obj_release(v49);
    }

    v50 = v126;
    v126 = v125;
    v127 = v50;
    *&v125 = 0;
    v51 = btree_node_child_val(v126, WORD4(v126), v18);
    if (!v51)
    {
      v51 = btree_node_get(a1, v18, v111, 3u, *(*(v126 + 56) + 34) - 1, v112, &v125);
      if (!v51)
      {
        v52 = v125;
        if ((*(a1 + 400) & 0x10) != 0)
        {
          v53 = v110;
          if (*(v125 + 112) != *v18)
          {
            sub_10003833C(v126, WORD4(v126), (v125 + 112), v112);
            v52 = v125;
          }
        }

        else
        {
          v53 = v110;
        }

        v51 = sub_10003C3DC(v52, v14, 1, v53, &v120, a5, &v125 + 4, (&v125 | 0xA));
        v30 = v113;
        if (!v51)
        {
          continue;
        }
      }
    }

    v24 = v51;
    v124 = v27;
LABEL_100:
    v28 = v29;
    goto LABEL_101;
  }

  v39 = v126;
  v103 = v126;
  if (v127)
  {
    ++WORD4(v127);
    if (!v126)
    {
      goto LABEL_50;
    }

    if (v28 != v126 && v126 != v27)
    {
      obj_unlock(v126, 2u);
      obj_release(v39);
      goto LABEL_50;
    }

    v102 = v126;
  }

  else
  {
    *&v127 = v126;
    if (*(*(v117 + 56) + 36))
    {
      v32 = btree_node_key_ptr(v117, 0, &v123, &v118);
      if (v32)
      {
        goto LABEL_129;
      }

      v40 = sub_1000382F8(v127, v123, v118, &v127 + 4, &v127 + 10);
    }

    else
    {
      v40 = sub_10003C3DC(v126, v14, 0, v110, &v120, a5, &v127 + 4, &v127 + 10);
    }

    v24 = v40;
    if (v40)
    {
      goto LABEL_130;
    }

LABEL_50:
    v102 = 0;
  }

  v41 = v28 != v127 || v28 == 0;
  v42 = v106;
  if (!v41)
  {
    v42 = WORD4(v127);
  }

  v106 = v42;
  *&v126 = v38;
  v32 = sub_10003C3DC(v38, v14, 0, v110, &v120, a5, &v126 + 4, &v126 + 10);
  if (!v32)
  {
    v43 = v125;
    obj_unlock(v125, 2u);
    obj_release(v43);
    *&v125 = 0;
    v32 = btree_node_child_val(v126, WORD4(v126), v18);
    if (!v32)
    {
      v44 = v112;
      v32 = btree_node_get(a1, v18, v111, 3u, *(*(v126 + 56) + 34) - 1, v112, &v125);
      if (!v32)
      {
        v45 = v125;
        if ((*(a1 + 400) & 0x10) != 0 && *(v125 + 112) != *v18)
        {
          sub_10003833C(v126, WORD4(v126), (v125 + 112), v44);
          v45 = v125;
        }

        v32 = sub_10003C3DC(v45, v14, 1, v110, &v120, a5, &v125 + 4, (&v125 | 0xA));
        if (!v32)
        {
          if (v28 == v103)
          {
            v48 = WORD4(v126);
            v46 = v102;
            if (v28 == a1 && !WORD4(v126))
            {
              v27 = v126;
              goto LABEL_85;
            }

            v47 = v113;
            if (!WORD4(v126))
            {
              v106 = WORD4(v127);
              goto LABEL_80;
            }

            if (v27 != v125)
            {
              sub_1000A6480();
            }

            v28 = v126;
            v27 = v125;
          }

          else
          {
            v46 = v102;
            if (v113)
            {
              v47 = 1;
              goto LABEL_81;
            }

            v48 = WORD4(v126);
            if (BYTE10(v126) == 1 && !WORD4(v126))
            {
              v106 = WORD4(v127);
              v47 = 1;
LABEL_80:
              v28 = v127;
              v27 = v126;
              goto LABEL_81;
            }

            v47 = 0;
            if (BYTE10(v125) != 1 || WORD4(v125))
            {
LABEL_81:
              v113 = v47;
              if (v46 && v46 != v28 && v46 != v27)
              {
                obj_unlock(v46, 2u);
                obj_release(v46);
              }

              goto LABEL_85;
            }

            v47 = 1;
            v28 = v126;
            v27 = v125;
          }

          v106 = v48;
          goto LABEL_81;
        }
      }
    }
  }

LABEL_129:
  v24 = v32;
LABEL_130:
  v124 = v27;
LABEL_101:
  v55 = v127;
  if (v127)
  {
    if (v127 != v28 && v127 != v27)
    {
      obj_unlock(v127, 2u);
      obj_release(v55);
    }

    *&v127 = 0;
  }

  v57 = v126;
  if (v126)
  {
    if (v126 != v28 && v126 != v27)
    {
      obj_unlock(v126, 2u);
      obj_release(v57);
    }

    *&v126 = 0;
  }

  v58 = v125;
  if (v125)
  {
    if (v125 != v28 && v125 != v27)
    {
      obj_unlock(v125, 2u);
      obj_release(v58);
    }

    *&v125 = 0;
  }

  if (v28 && v28 != v127 && v28 != v126)
  {
    obj_unlock(v28, 2u);
    obj_release(v28);
    v27 = v124;
  }

  if (v27 && v27 != v127 && v27 != v126 && v27 != v125)
  {
    obj_unlock(v27, 2u);
    obj_release(v27);
  }

  if (!obj_refcount(a1))
  {
    sub_1000A655C();
  }

  return v24;
}

uint64_t sub_10003C3DC(uint64_t a1, char a2, int a3, unint64_t *a4, _WORD *a5, unsigned int a6, _WORD *a7, BOOL *a8)
{
  if ((a2 & 1) == 0)
  {
    v13 = sub_100037408(a1, a4, *a5, a7, a8);
    if (v13)
    {
      return v13;
    }

    if (!*a8 && *a7)
    {
      v13 = 0;
      --*a7;
      return v13;
    }

    return 0;
  }

  if (!*(*(a1 + 56) + 36))
  {
    return 2;
  }

  *a7 = 0;
  *a8 = 1;
  if (!a3)
  {
    return 0;
  }

  __src = 0;
  v16 = 0;
  v13 = btree_node_key_ptr(a1, 0, &__src, &v16);
  if (!v13)
  {
    if (v16 >= a6)
    {
      v14 = a6;
    }

    else
    {
      v14 = v16;
    }

    *a5 = v14;
    memcpy(a4, __src, v14);
  }

  return v13;
}

void sub_10003C4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 56);
  v7 = *(v6 + 32) & 4;
  if (v7)
  {
    v8 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v8 = *(*(a1 + 376) + 8 * a2 + 2);
  }

  if (*(a1 + 440) <= v8)
  {
    *(a1 + 440) = 0;
    v7 = *(v6 + 32) & 4;
  }

  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  v11 = (v9 + 8 * a2);
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *v12;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = (v8 + 7) & 0xFFF8;
  }

  if (v13 != 0xFFFF && !sub_10003511C(a1, v13, v14))
  {
    sub_100040784(a1, 1, v13, v14);
  }

  v15 = *(a1 + 376);
  v16 = v15 + 4 * v4 + 2;
  v17 = v15 + 8 * v4 + 4;
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *v18;
  v20 = *(a1 + 400);
  v21 = btree_node_val_len(a1, v4);
  if ((v20 & 0x40) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = (v21 + 7) & 0xFFF8;
  }

  if (v19 <= 0xFFFD && !sub_100035248(a1, v19, v22))
  {
    sub_100040784(a1, 2, v19, v22);
  }

  v23 = *(a1 + 56);
  v24 = *(v23 + 36) - 1;
  if (v24 > v4)
  {
    sub_1000410A4(a1, v4, -1);
    v23 = *(a1 + 56);
    v24 = *(v23 + 36) - 1;
  }

  *(v23 + 36) = v24;
  v25 = *(v23 + 32);
  if ((v25 & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      goto LABEL_40;
    }

    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  v27 = *(v23 + 42) / v26;
  if (v27 - v24 >= 0x10)
  {
    v28 = 8;
    if ((v25 & 4) == 0 || ((v29 = *(a1 + 400), (v25 & 2) != 0) ? (v30 = v29 >> 23) : (LOWORD(v30) = (HIBYTE(v29) & 0x7F) + 8), (v31 = ((((v29 >> 27) & 0x1F000) - 56) / (((v29 >> 9) & 0x3FFF) + v30 + 4)) & 0xFFFE, (v27 - 8) >= v31) ? (v28 = 8) : (v28 = v27 - v31), v27 > v31))
    {
      v32 = v28 * v26;
      memmove((*(a1 + 384) - (v28 * v26)), *(a1 + 384), *(v23 + 44));
      *(a1 + 384) -= v32;
      v33 = *(a1 + 56);
      *(v33 + 42) -= v32;
      *(v33 + 46) += v32;
    }
  }

LABEL_40:

  obj_dirty(a1, a3, 0);
}

BOOL sub_10003C73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(v2 + 32);
  if ((~v3 & 3) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 36);
  if (!v4)
  {
    return 1;
  }

  if (*(a1 + 432) == *(a2 + 112))
  {
    return 0;
  }

  if ((v3 & 4) == 0 || (*(a2 + 400) & 4) != 0)
  {
    v8 = obj_size_phys(a2);
    if (*(*(a2 + 56) + 32))
    {
      v9 = -96;
    }

    else
    {
      v9 = -56;
    }

    v7 = (v9 + v8) >> 1 >= sub_1000404E4(a2);
  }

  else
  {
    v7 = v4 >= *(v2 + 42) >> 3;
  }

  return !v7;
}

void sub_10003C7E8(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v48 = a2;
  __chkstk_darwin(a1);
  v10 = (&v45 - v9);
  bzero(&v45 - v9, v11);
  v12 = *(a1 + 56);
  if (!v12)
  {
    return;
  }

  memset(v55, 0, sizeof(v55));
  v13 = *(v12 + 34);
  if (v13 >= 6)
  {
    v14 = v13 + 11;
    v17 = (v13 + 11);
    v16 = _apfs_malloc_typed(8 * v17, 0x2004093837F09uLL);
    v15 = _apfs_malloc_typed(2 * v17, 0x1000040BDFB0063uLL);
  }

  else
  {
    v14 = 8;
    v15 = v54;
    v16 = v55;
  }

  obj_lock(a1, 2u);
  if (obj_modify(a1, (*(a1 + 400) >> 3) & 2, a5))
  {

    obj_unlock(a1, 2u);
    return;
  }

  v54[0] = 0;
  v54[1] = 0;
  v50 = 0;
  v51 = 0;
  *v16 = a1;
  obj_retain(a1);
  LOWORD(v18) = 0;
  v19 = *v16;
  if ((*(*(*v16 + 56) + 32) & 2) == 0)
  {
    v46 = v14;
    v47 = a5;
    v20 = 0;
    v18 = 0;
    v52 = 0;
    v53 = 0;
    v49 = 0;
    v21 = v14;
    if ((v14 & 0xFFFE) == 0)
    {
      v21 = 1;
    }

    v22 = (v21 - 1);
    v23 = v16 + 1;
    while (!sub_100037408(v19, a3, a4, &v15[v20], &v49))
    {
      if (!v49 && v15[v18])
      {
        --v15[v18];
      }

      if (v22 == v18)
      {
        LOWORD(v14) = v46;
        LOWORD(v18) = v46 - 1;
        goto LABEL_67;
      }

      *v10 = 0;
      if (btree_node_child_val(*(v23 - 1), v15[v18], v10) || btree_node_get(a1, v10, v48, 3u, *(*(*(v23 - 1) + 56) + 34) - 1, v47, v23))
      {
        break;
      }

      v19 = *v23;
      if ((*(a1 + 400) & 0x10) != 0 && *(v19 + 112) != *v10)
      {
        sub_10003833C(*(v23 - 1), v15[v18], (v19 + 112), v47);
        v19 = *v23;
      }

      ++v20;
      ++v23;
      ++v18;
      if ((*(*(v19 + 56) + 32) & 2) != 0)
      {
        v24 = v18;
        v25 = v47;
        while (1)
        {
          v26 = v24;
          v27 = (v24 - 1);
          if (v24 < 1)
          {
            break;
          }

          if (v18 <= v24)
          {
            v28 = 0;
          }

          else
          {
            v28 = v16[v24 + 1];
          }

          sub_100041810(a1, v16[v27], v15[v27], v16[v24], v15[v24], v28, v48, v25);
          v29 = *(*(v16[v24--] + 56) + 36);
          if (v26 == 1 || v29)
          {
            if (v29)
            {
              if (btree_node_key_ptr(v16[v27], v15[v27], &v52, &v50))
              {
                goto LABEL_66;
              }

              v51 = 0;
              if (btree_node_key_ptr(v16[v26], 0, &v53, &v50 + 1))
              {
                goto LABEL_66;
              }

              v38 = *(a1 + 8);
              if (!v38)
              {
                v38 = *(*a1 + 392);
              }

              v39 = v53;
              v40 = (*(a1 + 416))(v38, v53, HIWORD(v50), v52, v50, &v51);
              if (!v40 && v51)
              {
                v40 = sub_1000375C8(v16[v27], v15[v27], v39, HIWORD(v50), 0, 0, v25);
              }

              if (v40)
              {
                goto LABEL_66;
              }
            }
          }

          else if (!v15[v27])
          {
            if (v27)
            {
              v30 = v16[v27];
              if (*(*(v30 + 56) + 36))
              {
                v31 = &v15[v27];
                v32 = v27 - 1;
                v33 = v26 - 1;
                while (1)
                {
                  if (*v31--)
                  {
                    goto LABEL_29;
                  }

                  v35 = btree_node_key_ptr(v30, 0, &v53, &v50 + 1);
                  if (v35)
                  {
                    goto LABEL_62;
                  }

                  v51 = 0;
                  v35 = btree_node_key_ptr(v16[v32], v15[v32], &v52, &v50);
                  if (v35)
                  {
                    goto LABEL_62;
                  }

                  v36 = *(a1 + 8);
                  if (!v36)
                  {
                    v36 = *(*a1 + 392);
                  }

                  v37 = v53;
                  v35 = (*(a1 + 416))(v36, v53, HIWORD(v50), v52, v50, &v51);
                  if (!v35 && v51)
                  {
                    v35 = sub_1000375C8(v16[v32], v15[v32], v37, HIWORD(v50), 0, 0, v47);
                  }

                  if (v35)
                  {
LABEL_62:
                    v41 = *(a1 + 8);
                    if (v41)
                    {
                      v42 = (v41 + 4048);
                    }

                    else
                    {
                      v42 = (*(*(*a1 + 392) + 384) + 212);
                    }

                    log_err("%s:%d: %s updating grandparent failed w/%d\n", "bt_merge_up", 4631, v42, v35);
                    goto LABEL_66;
                  }

                  if (--v33)
                  {
                    v30 = v16[v33];
                    --v32;
                    if (*(*(v30 + 56) + 36))
                    {
                      continue;
                    }
                  }

                  goto LABEL_29;
                }
              }
            }
          }

LABEL_59:
          if (!sub_10003C73C(a1, v16[v24]))
          {
            goto LABEL_66;
          }
        }

        sub_100041810(a1, 0, 0, *v16, *v15, v16[1], v48, v25);
LABEL_29:
        if ((v27 & 0x8000) != 0)
        {
          break;
        }

        v24 = v27;
        v25 = v47;
        goto LABEL_59;
      }
    }

LABEL_66:
    LOWORD(v14) = v46;
  }

LABEL_67:
  v43 = 0;
  do
  {
    v44 = v16[v43];
    obj_unlock(v44, 2u);
    obj_release(v44);
    ++v43;
  }

  while (v18 >= v43);
  if (v14 >= 9u)
  {
    _apfs_free(v16, 8 * v14);
    _apfs_free(v15, 2 * v14);
  }
}

uint64_t bt_remove_first(uint64_t a1, unint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6, unint64_t a7)
{
  v14 = *(*(a1 + 392) + 16);
  v15 = _apfs_malloc_typed(v14, 0xE12C8675uLL);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = bt_remove_internal(a1, a2, 1, v15, v14, a3, a4, a5, a6, a7);
  _apfs_free(v16, v14);
  return v17;
}

uint64_t bt_lookup_first(atomic_ullong *a1, unint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  __chkstk_darwin(a1);
  v13 = &v30[-v12];
  bzero(&v30[-v12], v14);
  v34 = 0;
  if (!obj_refcount(a1))
  {
    sub_1000A65B4();
  }

  if (!a1[52])
  {
    return 22;
  }

  v15 = a1[50];
  v16 = (v15 >> 9) & 0x3FFF;
  if (v16)
  {
    if (*a4 != v16)
    {
      return 22;
    }
  }

  v17 = (v15 >> 23);
  if (v17)
  {
    if (*a6 != v17)
    {
      return 22;
    }
  }

  v31 = 0;
  obj_lock(a1, 1u);
  obj_retain(a1);
  v19 = a1 + 7;
  v18 = a1[7];
  if ((*(v18 + 32) & 2) != 0)
  {
    v20 = a1;
LABEL_16:
    if (*(v18 + 36))
    {
      v33 = 0;
      v22 = btree_node_key_ptr(v20, 0, &v33, &v31 + 1);
      if (v22 || (v32 = 0, v22 = btree_node_val_ptr(v20, 0, &v32, &v31), v22))
      {
        v21 = v22;
      }

      else
      {
        v24 = v31;
        if (v31 == 65534)
        {
          v25 = 0;
        }

        else
        {
          v25 = v31;
        }

        v26 = HIWORD(v31);
        if (*a4 >= HIWORD(v31))
        {
          v27 = HIWORD(v31);
        }

        else
        {
          v27 = *a4;
        }

        if (*a4 >= HIWORD(v31) && *a6 >= v25)
        {
          v21 = 0;
        }

        else
        {
          v21 = 34;
        }

        memcpy(a3, v33, v27);
        if (*a6 >= v25)
        {
          v29 = v25;
        }

        else
        {
          v29 = *a6;
        }

        memcpy(a5, v32, v29);
        *a4 = v26;
        *a6 = v24;
      }
    }

    else
    {
      v21 = 2;
    }

    obj_unlock(v20, 1u);
    obj_release(v20);
  }

  else
  {
    v20 = a1;
    while (1)
    {
      *v13 = 0;
      v21 = btree_node_child_val(v20, 0, v13);
      if (!v21)
      {
        v21 = btree_node_get(a1, v13, a2, 2u, *(*v19 + 34) - 1, 0, &v34);
      }

      obj_unlock(v20, 1u);
      obj_release(v20);
      if (v21)
      {
        break;
      }

      v20 = v34;
      v19 = v34 + 7;
      v18 = v34[7];
      if ((*(v18 + 32) & 2) != 0)
      {
        goto LABEL_16;
      }
    }
  }

  return v21;
}

uint64_t bt_lookup_variant(uint64_t *a1, unint64_t a2, unint64_t *a3, unsigned int *a4, uint64_t a5, void *a6, unsigned int *a7, uint64_t a8, int a9, uint64_t *a10)
{
  v10 = a8;
  v13 = a5;
  if (!obj_refcount(a1))
  {
    sub_1000A65E0();
  }

  if (!a1[52])
  {
    return 22;
  }

  v18 = a1[50];
  v19 = (v18 >> 9) & 0x3FFF;
  if (v19)
  {
    if (*a4 != v19)
    {
      return 22;
    }
  }

  if ((v18 >> 23) && *a7 != (v18 >> 23))
  {
    return 22;
  }

  v20 = *a4;
  if ((v18 & 0x7FFE00) == 0 && v20 > (((((v18 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72)
  {
    return 22;
  }

  v26 = 0;
  v25 = 0;
  v21 = sub_10003D2BC(a1, a2, a3, v20, v10, a9, 0, a10, &v26, &v25);
  if (!v21)
  {
    v23 = v26;
    v24 = sub_10003D8E0(a1, v26, v25, a3, a4, v13, a6, a7, v10);
    v21 = v24;
    if (a10 && !v24)
    {
      *a10 = obj_oid(v23);
      a10[1] = a1;
    }

    obj_unlock(v23, 1u);
    obj_release(v23);
  }

  return v21;
}

uint64_t sub_10003D2BC(uint64_t *a1, unint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, unint64_t *a8, atomic_ullong **a9, unsigned __int16 *a10)
{
  v41 = a7;
  v42 = a6;
  v45 = a4;
  v43 = a2;
  v44 = a3;
  v37 = a9;
  v13 = a1[50];
  __chkstk_darwin(a1);
  v15 = (&v37 - v14);
  bzero(&v37 - v14, v16);
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  if (!a8)
  {
    goto LABEL_10;
  }

  v17 = *a8;
  if (!*a8)
  {
    goto LABEL_10;
  }

  if (a8[1] != a1)
  {
    goto LABEL_10;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_10;
  }

  *v15 = v17;
  if (v17 == obj_oid(a1) || btree_node_get(a1, v15, v43, v42 & 0x200 | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, 0, &v49))
  {
    goto LABEL_10;
  }

  v18 = v49;
  if ((*(v49[7] + 32) & 2) == 0 || sub_100037408(v49, v44, v45, &v47, &v46))
  {
    goto LABEL_9;
  }

  if (v46 == 1)
  {
    if (a5 == 4)
    {
      if (*(v18[7] + 36) > ++v47)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

    if (a5 == 2)
    {
      if (v47)
      {
        --v47;
        goto LABEL_86;
      }

LABEL_89:
      v46 = 0;
      goto LABEL_9;
    }

LABEL_86:
    v35 = v37;
    goto LABEL_87;
  }

  if (!a5)
  {
    if (v47 && *(v18[7] + 36) > v47)
    {
      v25 = 0;
      v34 = 2;
      v35 = v37;
      goto LABEL_60;
    }

    goto LABEL_9;
  }

  if (a5 - 3 <= 1 && v47 && *(v18[7] + 36) > v47)
  {
    goto LABEL_86;
  }

LABEL_9:
  obj_unlock(v18, 1u);
  obj_release(v18);
LABEL_10:
  v19 = a5 == 2;
  v38 = a5 - 3;
  v20 = a5 - 3 < 2;
  obj_lock(a1, 1u);
  v49 = a1;
  obj_retain(a1);
  v39 = a5;
  v40 = 0;
  v21 = v42 & 0x200;
  for (i = a1; ; i = v49)
  {
    v46 = 0;
    v24 = i + 7;
    v23 = i[7];
    if ((*(v23 + 32) & 2) == 0)
    {
      v25 = 0;
      while (1)
      {
        if (*(v23 + 34) <= v41)
        {
          goto LABEL_36;
        }

        v26 = sub_100037408(i, v44, v45, &v47, &v46);
        if (v26)
        {
          goto LABEL_55;
        }

        v27 = v47;
        if ((v46 & 1) == 0)
        {
          if (!v47)
          {
            v28 = 0;
            if (!v20)
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v27 = --v47;
        }

        v28 = v27;
        if (!v19 || v27 == 0)
        {
          if (!v20)
          {
            goto LABEL_26;
          }

LABEL_22:
          if (*(*v24 + 36) - 1 <= v28)
          {
            goto LABEL_26;
          }
        }

        if (v25)
        {
          obj_unlock(v25, 1u);
          obj_release(v25);
          v27 = v47;
        }

        v25 = v49;
        obj_retain(v49);
        v40 = v20 - v19 + v27;
LABEL_26:
        v29 = v49;
        if ((v42 & 0x100) != 0)
        {
          v30 = v49[7];
          if (*(v30 + 34) == 1 && *(v30 + 36) - 1 > v27 && !btree_node_child_val(v49, (v27 + 1), v15))
          {
            btree_node_get(a1, v15, v43, v42 & 0x300, *(v29[7] + 34) - 1, 0, &v48);
          }
        }

        v26 = btree_node_child_val(v29, v27, v15);
        if (v26)
        {
          goto LABEL_55;
        }

        v26 = btree_node_get(a1, v15, v43, v21 | 2u, *(v29[7] + 34) - 1, 0, &v48);
        if (v26)
        {
          goto LABEL_55;
        }

        btree_node_release(v29, v29 != v25);
        i = v48;
        v49 = v48;
        v24 = v48 + 7;
        v23 = v48[7];
        if ((*(v23 + 32) & 2) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    v25 = 0;
LABEL_36:
    v26 = sub_100037408(i, v44, v45, &v47, &v46);
    if (v26)
    {
LABEL_55:
      v34 = v26;
      goto LABEL_56;
    }

    v31 = v46;
    if (v46 != 1)
    {
      goto LABEL_44;
    }

    if (v39 == 2)
    {
      LOWORD(v32) = v47;
      if (!v47)
      {
        v46 = 0;
        goto LABEL_46;
      }

      v34 = 0;
LABEL_71:
      v47 = v32 - 1;
      goto LABEL_56;
    }

    if (v39 != 4)
    {
      break;
    }

    if (*(*v24 + 36) > ++v47)
    {
      break;
    }

    v46 = 0;
    v32 = v47;
LABEL_49:
    if (*(*v24 + 36) > v32)
    {
      v34 = 0;
      v46 = 1;
      goto LABEL_56;
    }

LABEL_50:
    if (!v25)
    {
      v34 = 2;
      v18 = v49;
      v35 = v37;
      if (!v49)
      {
        goto LABEL_61;
      }

LABEL_60:
      btree_node_release(v18, v18 != v25);
      goto LABEL_61;
    }

    btree_node_release(i, i != v25);
    v33 = btree_node_child_val(v25, v40, v15);
    if (v33 || (v33 = btree_node_get(a1, v15, v43, v21 | 2u, *(v25[7] + 34) - 1, 0, &v49), v33))
    {
      v34 = v33;
      v49 = 0;
      v35 = v37;
      goto LABEL_57;
    }

    obj_unlock(v25, 1u);
    obj_release(v25);
    v19 = 0;
    v20 = 0;
  }

  v31 = 1;
LABEL_44:
  if ((v31 & 1) == 0 && v39)
  {
LABEL_46:
    v32 = v47;
    if (v39 > 2 || !v47)
    {
      if (v38 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v34 = 0;
    v46 = 1;
    goto LABEL_71;
  }

  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

LABEL_56:
  v35 = v37;
  if (v25)
  {
LABEL_57:
    obj_unlock(v25, 1u);
    obj_release(v25);
  }

  v18 = v49;
  if (!v34)
  {
LABEL_87:
    v34 = 0;
    *v35 = v18;
    *a10 = v47;
    return v34;
  }

  if (v49)
  {
    goto LABEL_60;
  }

LABEL_61:
  *v35 = 0;
  return v34;
}

uint64_t sub_10003D8E0(uint64_t a1, void *a2, unsigned __int16 a3, void *a4, _DWORD *a5, unsigned int a6, void *a7, unsigned int *a8, int a9)
{
  __src = 0;
  v29 = 0;
  v30 = 0;
  if (a9 | a6)
  {
    v17 = btree_node_key_ptr(a2, a3, &__src, &v29 + 1);
    v18 = v17;
    if (a9)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_19:
      if (v18)
      {
        return v18;
      }

      goto LABEL_22;
    }

    v20 = *(a1 + 8);
    if (!v20)
    {
      v20 = *(*a1 + 392);
    }

    v21 = (*(a1 + 416))(v20, __src, HIWORD(v29), a4, *a5, &v30);
    if (v21)
    {
      return v21;
    }

    if (a9 == 2 && (v30 & 0x80000000) == 0 || a9 == 1 && v30 > 0 || a9 == 3 && v30 < 0 || a9 == 4 && v30 <= 0)
    {
      v18 = nx_corruption_detected_int(*(*a1 + 392));
      goto LABEL_19;
    }
  }

  else
  {
    __src = 0;
    HIWORD(v29) = 0;
  }

LABEL_22:
  v31 = 0;
  v21 = btree_node_val_ptr(a2, a3, &v31, &v29);
  if (v21)
  {
    return v21;
  }

  v22 = v29;
  if (v29 == 65534)
  {
    v23 = 0;
  }

  else
  {
    v23 = v29;
  }

  v24 = *a8;
  if (*a8 < v23 || (v18 = 0, a6) && HIWORD(v29) > a6)
  {
    v18 = 34;
  }

  if (a6)
  {
    v25 = HIWORD(v29);
    if (HIWORD(v29) >= a6)
    {
      v26 = a6;
    }

    else
    {
      v26 = HIWORD(v29);
    }

    memcpy(a4, __src, v26);
    *a5 = v25;
    v24 = *a8;
  }

  if (v24 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24;
  }

  memcpy(a7, v31, v27);
  *a8 = v22;
  return v18;
}

__n128 bt_iterator_init_with_hint(uint64_t a1, uint64_t *a2, unint64_t a3, int a4, unint64_t *a5, int a6, uint64_t a7, void *a8, unsigned int a9, _OWORD *a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v16 = a4 & 0x380;
  *(a1 + 16) = a4;
  *(a1 + 20) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = a8;
  *(a1 + 24) = a9;
  v17 = (a1 + 56);
  if (a10)
  {
    *v17 = *a10;
  }

  else
  {
    *v17 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a6;
  *(a1 + 52) = a9;
  if ((a4 & 4) != 0)
  {
    v18 = 4;
    goto LABEL_8;
  }

  if ((a4 & 2) == 0)
  {
    v18 = 3;
LABEL_8:
    v19 = bt_lookup_variant(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), v18, v16, v17);
    goto LABEL_9;
  }

  v21 = a4 & 0x380;
  v19 = bt_lookup_variant(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), 1, v16, (a1 + 56));
  if (v19 == 2)
  {
    v18 = 3;
    v16 = v21;
    goto LABEL_8;
  }

LABEL_9:
  if (v19)
  {
    *(a1 + 16) |= 1u;
    if (v19 != 2)
    {
      *(a1 + 28) = v19;
    }
  }

  else if (a10)
  {
    result = *v17;
    *a10 = *v17;
  }

  return result;
}

uint64_t bt_iterator_ended(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    return *(a1 + 16) & 1;
  }

  return result;
}

uint64_t bt_iterator_next(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    v3 = *(a1 + 16);
    result = 2;
    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 20);
      *(a1 + 52) = *(a1 + 24);
      if ((v3 & 8) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 4;
      }

      result = bt_lookup_variant(*a1, *(a1 + 8), *(a1 + 32), (a1 + 48), v4, *(a1 + 40), (a1 + 52), v5, v3 & 0x380, (a1 + 56));
      if (result == 2)
      {
        result = 0;
        *(a1 + 16) |= 1u;
      }

      *(a1 + 28) = result;
    }
  }

  return result;
}

uint64_t bt_iterate_individual(uint64_t *a1, unint64_t a2, int a3, const void *a4, uint64_t __n, _OWORD *a6, uint64_t (*a7)(void, void, void, void, uint64_t, __n128), uint64_t a8, uint64_t a9, void *a10)
{
  v10 = __n;
  v12 = a1[50];
  v13 = v12 >> 27;
  v14 = (v12 >> 27) & 0x1F000;
  v15 = (v12 >> 9) & 0x3FFF;
  if (v15)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = __n;
    if (v15 == __n)
    {
      goto LABEL_3;
    }

    return 34;
  }

  v16 = (((v14 - 160) >> 2) - 72);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  if ((v12 & 0x7FFE00) == 0 && v16 < __n)
  {
    return 34;
  }

LABEL_3:
  v17 = a9;
  if (!a9)
  {
    v17 = _apfs_calloc_typed(1uLL, v16, 0xB8D39D98uLL);
  }

  v18 = a10;
  if (!a10)
  {
    v18 = _apfs_calloc_typed(1uLL, v13 & 0x1F000, 0x1B34E303uLL);
  }

  v19 = 0;
  v20 = 12;
  if (v17 && v18)
  {
    v21 = v18;
    memcpy(v17, a4, v10);
    v22 = a1;
    v23 = v21;
    v25 = bt_iterator_init_with_hint(&v37, v22, a2, a3, v17, v10, v16, v21, v14, a6);
    if (v24)
    {
LABEL_10:
      v20 = v24;
      v19 = 0;
    }

    else
    {
      while (1)
      {
        if (HIDWORD(v38) || (v38 & 1) != 0)
        {
          v19 = 0;
          goto LABEL_23;
        }

        v28 = a7(v39, v40, *(&v39 + 1), DWORD1(v40), a8, v25);
        if (v28)
        {
          break;
        }

        v24 = bt_iterator_next(&v37);
        if (v24)
        {
          goto LABEL_10;
        }
      }

      v19 = v28;
LABEL_23:
      v20 = 0;
    }

    v18 = v23;
  }

  if (a9)
  {
    if (a10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v29 = v16;
    v30 = v18;
    _apfs_free(v17, v29);
    v18 = v30;
    if (a10)
    {
      goto LABEL_27;
    }
  }

  _apfs_free(v18, v13 & 0x1F000);
LABEL_27:
  if (v20)
  {
    return v20;
  }

  else
  {
    return v19;
  }
}

uint64_t bt_iterate_bulk(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, __int128 *a6, uint64_t (*a7)(void, uint64_t, void, void, uint64_t), uint64_t a8)
{
  v8 = a1[50];
  v47 = 0uLL;
  v46 = 4;
  v9 = (v8 >> 9) & 0x3FFF;
  if (v9)
  {
    v10 = v9 == a5;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    return 34;
  }

  v14 = a5;
  v19 = v8 >> 27;
  if ((v8 & 0x7FFE00) == 0 && a5 > (((((v8 >> 27) & 0xF000) - 160) >> 2) - 72))
  {
    return 34;
  }

  v45 = (v8 >> 27) & 0x1F000;
  v21 = _apfs_calloc_typed(1uLL, v19 & 0x1F000, 0x3E5049A1uLL);
  if (!v21)
  {
    return 12;
  }

  v22 = v21;
  memset(v51, 0, 128);
  memset(v49, 0, sizeof(v49));
  memset(v50, 0, sizeof(v50));
  memset(v48, 0, sizeof(v48));
  v23 = sub_10003E15C(a1, a2, a4, v14, a3, a6, v21, v45, &v46, v51, v49, v50, v48);
  if (v23)
  {
    v20 = v23;
  }

  else
  {
    v40 = v19;
    if (a6)
    {
      v47 = *a6;
    }

    v41 = a3 & 0xFFFFFFF9;
    v24 = 4;
    v42 = a1;
    v43 = a2;
    v44 = v22;
    while (1)
    {
      v25 = v46;
      if (v46 >= 1)
      {
        break;
      }

LABEL_20:
      v35 = v25 - 1;
      v36 = v51[v35];
      v37 = *(v49 + 2 * v35);
      v46 = v24;
      v22 = v44;
      v38 = sub_10003E15C(v42, v43, v36, v37, v41 | 4u, &v47, v44, v45, &v46, v51, v49, v50, v48);
      v24 <<= v24 < 16;
      if (v38)
      {
        v20 = v38;
        if (v38 == 2)
        {
          v20 = 0;
        }

        LODWORD(v19) = v40;
        goto LABEL_25;
      }
    }

    v26 = v48;
    v27 = v50;
    v28 = v49;
    v29 = v51;
    v30 = v46;
    while (1)
    {
      v32 = *v28++;
      v31 = v32;
      v33 = *v26++;
      v34 = a7(*v29, v31, *v27, v33, a8);
      if (v34)
      {
        break;
      }

      ++v27;
      ++v29;
      if (!--v30)
      {
        goto LABEL_20;
      }
    }

    v20 = v34;
    LODWORD(v19) = v40;
    v22 = v44;
  }

LABEL_25:
  _apfs_free(v22, v19 & 0x1F000);
  return v20;
}

uint64_t sub_10003E15C(uint64_t *a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6, char *a7, unsigned int a8, int *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a9;
  v34 = 0;
  v33 = 0;
  v16 = sub_10003E568(a1, a2, a3, a4, a5, a6, &v34, &v33);
  v17 = v34;
  if (v16)
  {
LABEL_10:
    if (!v17)
    {
      return v16;
    }

LABEL_11:
    obj_unlock(v17, 1u);
    obj_release(v17);
    return v16;
  }

  v18 = 0;
  v19 = v33;
  *a9 = 0;
  if (*(v17[7] + 36) <= v19 || v15 < 1)
  {
LABEL_7:
    if (v18)
    {
      v16 = 0;
    }

    else
    {
      v16 = 34;
    }

    goto LABEL_10;
  }

  while (1)
  {
    __src = 0;
    memset(__n, 0, sizeof(__n));
    v22 = btree_node_key_ptr(v17, v19, &__src, __n + 1);
    if (v22)
    {
      break;
    }

    v22 = btree_node_val_ptr(v17, v19, &__n[1], __n);
    if (v22)
    {
      break;
    }

    v23 = LOWORD(__n[0]);
    if (LOWORD(__n[0]) == 65534)
    {
      v24 = 0;
    }

    else
    {
      v24 = LOWORD(__n[0]);
    }

    v25 = HIWORD(__n[0]);
    v26 = v24 + HIWORD(__n[0]);
    v27 = a8 >= v26;
    a8 -= v26;
    if (!v27)
    {
      v18 = *a9;
      goto LABEL_7;
    }

    memcpy(a7, __src, HIWORD(__n[0]));
    v28 = *a9;
    *(a10 + 8 * v28) = a7;
    *(a11 + 4 * v28) = v25;
    v29 = &a7[v25];
    memcpy(v29, *&__n[1], v24);
    v30 = *a9;
    *(a12 + 8 * v30) = v29;
    *(a13 + 4 * v30) = v23;
    LOWORD(v19) = v19 + 1;
    v18 = *a9 + 1;
    *a9 = v18;
    if (*(v17[7] + 36) > v19)
    {
      a7 = &v29[v24];
      if (v18 < v15)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v16 = v22;
  if (v17)
  {
    goto LABEL_11;
  }

  return v16;
}

uint64_t bt_iterate_per_node(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5, unint64_t *a6, uint64_t (*a7)(const void *, void, uint64_t, void, uint64_t), uint64_t a8)
{
  v11 = a5;
  v13 = a3;
  v16 = a1[50];
  v17 = (v16 >> 9) & 0x3FFF;
  if (v17)
  {
    v40 = 0;
    v39 = 0;
    v18 = a5;
    if (v17 == a5)
    {
      goto LABEL_3;
    }

    return 34;
  }

  v18 = (((((v16 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72;
  v40 = 0;
  v39 = 0;
  if ((v16 & 0x7FFE00) == 0 && v18 < a5)
  {
    return 34;
  }

LABEL_3:
  v19 = v18;
  v20 = _apfs_calloc_typed(1uLL, v18, 0x13E032C7uLL);
  if (!v20)
  {
    return 12;
  }

  v21 = v20;
  v22 = sub_10003E568(a1, a2, a4, v11, v13, a6, &v40, &v39);
  if (!v22)
  {
    v35 = v13 & 0xFFF9;
    while (1)
    {
      v37 = 0;
      v38 = 0;
      v36 = 0;
      v28 = v40;
      v29 = v39;
      if (*(v40[7] + 36) > v39)
      {
        break;
      }

      v32 = 0;
      v30 = 0;
LABEL_26:
      v39 = v29;
      if (v19 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v19;
      }

      memcpy(v21, v30, v33);
      obj_unlock(v28, 1u);
      obj_release(v28);
      v40 = 0;
      v34 = sub_10003E568(a1, a2, v21, HIWORD(v36), v35 | 4u, 0, &v40, &v39);
      if (v34)
      {
        v24 = 0;
        if (v34 == 2)
        {
          v23 = 0;
        }

        else
        {
          v23 = v34;
        }

        goto LABEL_6;
      }
    }

    while (1)
    {
      v22 = btree_node_key_ptr(v28, v29, &v38, &v36 + 1);
      if (v22)
      {
        break;
      }

      v22 = btree_node_val_ptr(v28, v29, &v37, &v36);
      if (v22)
      {
        break;
      }

      v30 = v38;
      v31 = a7(v38, HIWORD(v36), v37, v36, a8);
      if (v31)
      {
        v24 = v31;
        v23 = 0;
        goto LABEL_6;
      }

      if (*(v28[7] + 36) <= ++v29)
      {
        v32 = HIWORD(v36);
        goto LABEL_26;
      }
    }
  }

  v23 = v22;
  v24 = 0;
LABEL_6:
  v25 = v40;
  if (v40)
  {
    obj_unlock(v40, 1u);
    obj_release(v25);
  }

  _apfs_free(v21, v19);
  if (v23)
  {
    return v23;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_10003E568(uint64_t *a1, unint64_t a2, unint64_t *a3, unsigned int a4, __int16 a5, unint64_t *a6, atomic_ullong **a7, unsigned __int16 *a8)
{
  if ((a5 & 4) != 0)
  {
    v17 = 4;
    goto LABEL_6;
  }

  if ((a5 & 2) == 0 || (v16 = sub_10003D2BC(a1, a2, a3, a4, 1u, a5 & 0x380, 0, a6, a7, a8), v16 == 2))
  {
    v17 = 3;
LABEL_6:
    v16 = sub_10003D2BC(a1, a2, a3, a4, v17, a5 & 0x380, 0, a6, a7, a8);
  }

  if (a6 && !v16)
  {
    *a6 = obj_oid(*a7);
    a6[1] = a1;
  }

  return v16;
}

uint64_t btree_create_extended(pthread_mutex_t **a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  v28 = 0;
  if ((a2 & 0xFFFFFFFE07FF03FFLL) != 0)
  {
    sub_1000A660C();
  }

  v9 = *(a6 + 5);
  if (v9 >= 0x200)
  {
    sub_1000A6638();
  }

  v12 = a4;
  v13 = a3;
  v15 = (v9 << 28) & 0x80000000 | (((v9 >> 4) & 1) << 30) | (((v9 >> 5) & 1) << 27) | a2;
  if ((v9 & 0x18) == 0)
  {
    v15 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = v15;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v17 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v9;
  }

  else
  {
    v17 = v9;
  }

  if ((v16 & 0x40000000) != 0 && (v16 & 0x88000000) != 0)
  {
    sub_1000A6690();
  }

  if ((v17 & 0x10) != 0 && (v17 & 0x28) != 0)
  {
    sub_1000A6664();
  }

  if (!a3)
  {
    v13 = *(*(*(*a1)[6].__opaque + 376) + 36);
  }

  if (v13 - 65537 < 0xFFFF0060 || a4 != 8 && (v17 & 1) != 0)
  {
    return 22;
  }

  if (a4 > (((v13 - 160) >> 2) - 72))
  {
    return 22;
  }

  v18 = a5;
  if (a5 + a4 > btree_entry_max_size(v17, v13, a4, a5))
  {
    return 22;
  }

  v19 = v17 | ((v13 >> 12) << 39) | ((v12 & 0x3FFF) << 9) | (v18 << 23);
  v20 = *a6;
  v27 = v19;
  v29 = v20;
  v26 = 0x300086583;
  if ((v17 & 0x80) != 0)
  {
    if (!authapfs_valid_hash_type(*(a6 + 6)))
    {
      v24 = *(a6 + 6);
      if (v24 <= 0xFFF)
      {
        v25 = *(a6 + 7);
        v27 = v19 & 0xFF000FFFFFFFFFFFLL | (v24 << 44) | ((v25 & 0x7F) << 56);
        if (v25 <= 0x7F)
        {
          WORD2(v26) = 11;
          v21 = 27;
          goto LABEL_24;
        }
      }
    }

    return 22;
  }

  v21 = 19;
LABEL_24:
  if (v17 >= 0x100)
  {
    WORD2(v26) = v21;
  }

  result = sub_10003E8A0(a1, v16, *(a6 + 4), &v26, a7, a8);
  if (!result)
  {
    atomic_fetch_add_explicit((*(*a8 + 392) + 32), 1uLL, memory_order_relaxed);
    v23 = a6[1];
    if (v23)
    {
      *(*a8 + 424) = v23;
    }

    obj_unlock(*a8, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_10003E8A0(pthread_mutex_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v19 = btree_node_desc;
  v6 = *(a4 + 4);
  if ((v6 & 0xFFE4) != 0)
  {
    sub_1000A66BC();
  }

  if ((a2 & 0xFFFFFFFE07FF03FFLL) != 0)
  {
    sub_1000A66E8();
  }

  v9 = *(a4 + 8);
  if (((v6 >> 3) ^ (v9 >> 7)))
  {
    sub_1000A6714();
  }

  if (v6 < 0x10 != ((v9 & 0x100) == 0))
  {
    sub_1000A6740();
  }

  DWORD2(v19) = (v9 >> 27) & 0x1F000;
  if (v6)
  {
    LODWORD(v19) = 2;
  }

  v20 = 0;
  DWORD1(v19) = a3;
  if ((v6 & 0x10) != 0)
  {
    v13 = 536870916;
  }

  else
  {
    v13 = 4;
  }

  v14 = *a1;
  if (obj_type(a1) == 13)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = obj_create(v14, v13 | a2, 0, &v19, a4, v15, a5, &v20);
  if (!v16)
  {
    v17 = v20;
    *a6 = v20;
    obj_dirty(v17, a5, 0);
  }

  return v16;
}

uint64_t btree_create(pthread_mutex_t **a1, unint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a4;
  v13 = a3;
  return btree_create_extended(a1, a2, a5, a6, a7, v11, a9, a10);
}

uint64_t btree_get_extended(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v16 = *(a6 + 28);
  if (v16 >= 0x40)
  {
    v17 = 96;
  }

  else
  {
    v17 = v16 + 32;
  }

  __chkstk_darwin(a1);
  v19 = &v45 - v18;
  bzero(&v45 - v18, v17);
  v48 = 0;
  v47 = btree_node_desc;
  if ((a2 & 0xFFFFFFFE07FF03FFLL) != 0)
  {
    sub_1000A676C();
  }

  v20 = *(a6 + 20);
  if (v20 >= 0x200)
  {
    sub_1000A6798();
  }

  if ((a5 & 0xFFFFFDF8) != 0)
  {
    sub_1000A67C4();
  }

  v45 = a4;
  v46 = a8;
  v21 = a3;
  v22 = (v20 << 28) & 0x80000000 | (((v20 >> 4) & 1) << 30) | (((v20 >> 5) & 1) << 27) | a2;
  if ((v20 & 0x18) == 0)
  {
    v22 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = v22;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v24 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v20;
  }

  else
  {
    v24 = v20;
  }

  if ((v23 & 0x40000000) != 0 && (v23 & 0x88000000) != 0)
  {
    sub_1000A6848();
  }

  if ((v24 & 0x10) != 0 && (v24 & 0x28) != 0)
  {
    sub_1000A681C();
  }

  *v19 = 25987;
  *(v19 + 1) = v17;
  v25 = *a1;
  v26 = *(v19 + 1) & 0xFFFFF07FFFFFFE00 | v24 | (((*(*(*(*a1 + 392) + 376) + 36) >> 12) & 0x1F) << 39);
  *(v19 + 1) = v26;
  *(v19 + 3) = *a6;
  *(v19 + 1) = -267452416;
  if ((v24 & 0x80) != 0)
  {
    if (authapfs_valid_hash_type(*(a6 + 24)))
    {
      return 22;
    }

    v37 = *(a6 + 24);
    if (v37 > 0xFFF)
    {
      return 22;
    }

    v38 = v26 & 0x80000FFFFFFFFFFFLL | ((*&v37 & 0x7FFFFLL) << 44);
    v39 = *(a6 + 28);
    *(v19 + 1) = v38 | ((v39 & 0x7F) << 56);
    if (v39 > 0x7F)
    {
      return 22;
    }

    if (v39 >= 0x40)
    {
      v40 = 64;
    }

    else
    {
      v40 = v39;
    }

    memcpy(v19 + 32, (a6 + 32), v40);
    v25 = *a1;
  }

  v27 = v23 | 0x20000000;
  if (v24 < 0x100)
  {
    v27 = v23;
  }

  v28 = *(a6 + 16);
  LODWORD(v47) = v27 & 0xFFFF0000 | 2;
  DWORD1(v47) = v28;
  v29 = 3;
  if ((v27 & 0x40000000) == 0)
  {
    v29 = 1;
  }

  if ((a5 & 1) == 0)
  {
    v29 = 0;
  }

  v30 = v27 | v29;
  if ((a5 & 2) != 0)
  {
    v30 |= 4uLL;
  }

  if ((a5 & 4) != 0)
  {
    v30 |= 0x20uLL;
  }

  if (a5 >= 0x200)
  {
    v31 = v30 | &_mh_execute_header;
  }

  else
  {
    v31 = v30;
  }

  if (obj_type(a1) == 13)
  {
    v32 = a1;
  }

  else
  {
    v32 = 0;
  }

  v33 = obj_get(v25, v31, v21, &v47, v19, v32, v45, a7, &v48);
  v34 = v33;
  if ((a5 & 4) == 0 || v33)
  {
    v35 = v48;
    if (v34)
    {
      v41 = 0;
    }

    else
    {
      v41 = v48;
    }

    *v46 = v41;
    if (!v34)
    {
      if (!v35)
      {
        if ((~v31 & 0x40000001) != 0)
        {
          goto LABEL_70;
        }

        v35 = 0;
LABEL_62:
        v43 = *(a6 + 8);
        v34 = 0;
        if (v43)
        {
          v35[53] = v43;
        }

        return v34;
      }

LABEL_53:
      if (v35[14] != v21 && (v31 & 0x40000001) != 0x40000001)
      {
LABEL_70:
        sub_1000A67F0();
      }

      goto LABEL_62;
    }
  }

  else
  {
    v35 = v48;
    v36 = v46;
    if ((v48[2] & 0x10) == 0)
    {
      *v46 = v48;
      goto LABEL_53;
    }

    if (a5)
    {
      v42 = 2;
    }

    else
    {
      v42 = 1;
    }

    btree_node_release(v48, v42 & ((a5 << 30) >> 31));
    *v36 = 0;
    return 2;
  }

  return v34;
}

uint64_t btree_get(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unsigned int a6, int a7, uint64_t a8, unint64_t a9, uint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a7;
  v13 = a5;
  return btree_get_extended(a1, a2, a3, a4, a6, v11, a9, a10);
}

uint64_t btree_iterate_nodes(uint64_t a1, unint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, unint64_t a6)
{
  v101 = a5;
  v102 = a6;
  v103 = a4;
  v100 = a2;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  __chkstk_darwin(a1);
  v9 = (&v85 - v8);
  bzero(&v85 - v8, v10);
  v99 = a3 & 0x180;
  v11 = v99 != 0;
  if (a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  obj_lock(a1, v12);
  v13 = *(a1 + 56);
  if (!v13)
  {
    obj_unlock(a1, v12);
    return 22;
  }

  v14 = *(v13 + 34);
  v15 = v14 + 1;
  v98 = v14;
  if (v14 < 8)
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v16 = &v105;
    v105 = 0u;
    v106 = 0u;
  }

  else
  {
    v16 = _apfs_calloc_typed(v14 + 1, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v16)
    {
      obj_unlock(a1, v12);
      return 12;
    }
  }

  *v16 = a1;
  *(v16 + 4) = 0;
  obj_retain(a1);
  if (a3)
  {
    v17 = obj_modify(a1, 2u, v102);
    if (v17)
    {
      goto LABEL_13;
    }

    if ((*(a1 + 400) & 0x80) != 0)
    {
      obj_dirty(a1, v102, 0);
    }
  }

  v17 = 0;
LABEL_13:
  v18 = a3 & 0x20;
  v96 = &v85;
  v95 = v15;
  if (!v103 || v17 | v18)
  {
    v19 = v101;
    if (v17)
    {
      goto LABEL_100;
    }

    goto LABEL_21;
  }

  v19 = v101;
  if ((a3 & 0x10) == 0 || *(*(a1 + 56) + 34))
  {
    v17 = (v103)(a1, v101);
  }

  if (!v17)
  {
LABEL_21:
    v20 = 0;
    v88 = a3 & 0xFFFFFE4F;
    v21 = a3 & 0xFFFFFE4D | 2;
    if (v99)
    {
      v21 = a3 & 0xFFFFFE4C;
    }

    v22 = v18 == 0;
    if (v103)
    {
      v23 = v18 != 0;
    }

    else
    {
      v23 = 0;
    }

    v87 = v11 << 7;
    v97 = (v11 << 7) | v21;
    v90 = a3 & 0xFFFFFE4C;
    v89 = a3 & 0xFFFFFE4C | 0x100;
    if (v103)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v92 = v24;
    v94 = v16;
    v93 = v23;
    do
    {
      v25 = &v16[v20];
      v26 = *v25;
      v27 = *(*v25 + 56);
      if ((*(v27 + 32) & 2) != 0 || (v28 = v25[4], *(v27 + 36) <= v28) || (a3 & 0x10) != 0 && *(v27 + 34) == 1)
      {
        if (v23)
        {
          v17 = v103();
          v26 = *v25;
        }

        else
        {
          v17 = 0;
        }

        btree_node_release(v26, v12);
        *v25 = 0;
        --v20;
        if (v17)
        {
          break;
        }

        continue;
      }

      *v9 = 0;
      v29 = btree_node_child_val(v26, v28, v9);
      if (v29)
      {
        v17 = v29;
        v54 = *(a1 + 8);
        if (v54)
        {
          v55 = (v54 + 4048);
        }

        else
        {
          v55 = (*(*(*a1 + 392) + 384) + 212);
        }

        v60 = *(*(*v25 + 56) + 34);
        v61 = obj_oid(*v25);
        log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child oid: %d\n", "btree_iterate_nodes", 6433, v55, v60, v61, v25[4], v17);
        break;
      }

      ++v25[4];
      if (v98 < ++v20)
      {
        v56 = *(a1 + 8);
        if (v56)
        {
          v57 = (v56 + 4048);
        }

        else
        {
          v57 = (*(*(*a1 + 392) + 384) + 212);
        }

        v62 = &v16[v20];
        v63 = *(v62 - 2);
        v64 = *(*(v63 + 56) + 34);
        v65 = obj_oid(v63);
        log_err("%s:%d: %s level %d node 0x%llx index %d: more levels than expected\n", "btree_iterate_nodes", 6440, v57, v64, v65, *(v62 - 4) - 1);
        v17 = 22;
        break;
      }

      v30 = &v16[v20];
      *(v30 + 4) = 0;
      v31 = (v30 - 1);
      v32 = btree_node_get(a1, v9, v100, v97, *(*(*(v30 - 2) + 56) + 34) - 1, v102, v30);
      v17 = v32;
      if (v32)
      {
        v33 = *(a1 + 8);
        if (v33)
        {
          v34 = (v33 + 4048);
          v35 = *(*(*v31 + 56) + 34);
          v36 = obj_oid(*v31);
          log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v34, v35, v36, *(v30 - 4) - 1, *v9, v97, v17);
        }

        else
        {
          v37 = (*(*(*a1 + 392) + 384) + 212);
          v38 = *(*(*v31 + 56) + 34);
          v39 = obj_oid(*v31);
          log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v37, v38, v39, *(v30 - 4) - 1, *v9, v97, v17);
        }

        v19 = v101;
        if (!v99)
        {
          goto LABEL_96;
        }
      }

      else if (!v99)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      if (*(*(*(v30 - 2) + 56) + 36) > *(v30 - 4))
      {
        v91 = &v85;
        __chkstk_darwin(v32);
        v41 = (&v85 - v40);
        bzero(&v85 - v40, v42);
        v104 = 0;
        v43 = *(v30 - 4);
        if (*(*(*v31 + 56) + 36) > v43)
        {
          v44 = btree_node_child_val(*v31, v43, v41);
          if (v44 || (v44 = btree_node_get(a1, v41, v100, v89, *(*(*v31 + 56) + 34) - 1, v102, &v104), v44))
          {
            v86 = v44;
            v45 = *(a1 + 8);
            if (v45)
            {
              v85 = (v45 + 4048);
            }

            else
            {
              v85 = (*(*(*a1 + 392) + 384) + 212);
            }

            v46 = *(*(*v31 + 56) + 34);
            v47 = obj_oid(*v31);
            log_err("%s:%d: %s level %d node 0x%llx: error prefetching index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6474, v85, v46, v47, *(v30 - 4), *v41, v89, v86);
            v19 = v101;
          }

          if (v104)
          {
            sub_1000A6874();
          }
        }
      }

      if (v17)
      {
        if (v17 != 45 && v17 != 16)
        {
          goto LABEL_96;
        }

        v49 = btree_node_get(a1, v9, v100, v90, *(*(*v31 + 56) + 34) - 1, v102, v30);
        if (v49)
        {
          v17 = v49;
LABEL_96:
          v76 = *(a1 + 8);
          if (v76)
          {
            v77 = (v76 + 4048);
          }

          else
          {
            v77 = (*(*(*a1 + 392) + 384) + 212);
          }

          v78 = *(*(*v31 + 56) + 34);
          v79 = obj_oid(*v31);
          log_err("%s:%d: %s level %d node 0x%llx: error getting index %d child flags 0x%x: %d\n", "btree_iterate_nodes", 6510, v77, v78, v79, *(v30 - 4) - 1, v88 | v87 | 2, v17);
          v16 = v94;
          break;
        }
      }

      else
      {
        v50 = obj_async_wait(*v30);
        if (v50)
        {
          v17 = v50;
          v66 = *(a1 + 8);
          if (v66)
          {
            v67 = (v66 + 4048);
          }

          else
          {
            v67 = (*(*(*a1 + 392) + 384) + 212);
          }

          v72 = *(*(*v30 + 56) + 34);
          v73 = obj_oid(*v31);
          v74 = *(v30 - 4) - 1;
          v75 = obj_oid(*v30);
          log_err("%s:%d: %s level %d node 0x%llx: error ON WAIT getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6487, v67, v72, v73, v74, v75, v97, v17);
          obj_release(*v30);
          goto LABEL_95;
        }
      }

      obj_lock(*v30, v12);
      if ((a3 & 1) == 0)
      {
        goto LABEL_72;
      }

      v51 = *v30;
      v52 = obj_type_and_flags(*v30);
      v53 = obj_modify(v51, (v52 >> 29) & 2, v102);
      if (v53)
      {
        v17 = v53;
        v58 = *(a1 + 8);
        if (v58)
        {
          v59 = (v58 + 4048);
        }

        else
        {
          v59 = (*(*(*a1 + 392) + 384) + 212);
        }

        v68 = *(*(*v30 + 56) + 34);
        v69 = obj_oid(*v31);
        v70 = *(v30 - 4) - 1;
        v71 = obj_oid(*v30);
        log_err("%s:%d: %s level %d node 0x%llx: error MODIFYING index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6501, v59, v68, v69, v70, v71, v97, v17);
        btree_node_release(*v30, 2);
LABEL_95:
        *v30 = 0;
        goto LABEL_96;
      }

LABEL_70:
      if (obj_oid(*v30) != *v9)
      {
        sub_10003833C(*(v30 - 2), (*(v30 - 4) - 1), (*v30 + 112), v102);
      }

LABEL_72:
      if (v92)
      {
        v17 = (v103)(*v30, v19);
      }

      else
      {
        v17 = 0;
      }

      v16 = v94;
      v23 = v93;
      if (v17)
      {
        break;
      }
    }

    while ((v20 & 0x8000) == 0);
  }

LABEL_100:
  v80 = v95;
  if (((v95 - 1) & 0x8000) == 0)
  {
    v81 = v98 + 1;
    v82 = &v16[v98];
    do
    {
      if (*v82)
      {
        if (!v17)
        {
          sub_1000A68A0();
        }

        btree_node_release(*v82, v12);
      }

      --v82;
    }

    while (v81-- > 1);
  }

  if (v16 != &v105)
  {
    _apfs_free(v16, (16 * v80));
  }

  return v17;
}

uint64_t btree_level_count(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(v2 + 34) + 1;
  return result;
}

uint64_t btree_node_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __chkstk_darwin(a1);
  v11 = (&v22 - v10);
  bzero(&v22 - v10, v12);
  if (a5 == 2)
  {
    if (obj_type(a1) == 13)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    *(a4 + 8) = v14;
    v15 = obj_subtype(a4);
    v16 = tree_key_compare_function_for_type(v15);
    if (!v16)
    {
      return 22;
    }

    *(a4 + 416) = v16;
    if (a4 != a3)
    {
      *(a4 + 400) = *(a3 + 400);
    }

    v13 = obj_checkpoint_known(a4);
    goto LABEL_11;
  }

  if (a5 == 1)
  {
    v13 = obj_checkpoint_start(a4);
LABEL_11:
    v17 = v13;
    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:
  if (!(*(*(a4 + 56) + 32) & 2 | v17))
  {
    v18 = 0;
    v22 = 0;
    while (v18 < *(*(a4 + 56) + 36))
    {
      *v11 = 0;
      v19 = btree_node_child_val(a4, v18, v11);
      if (v19)
      {
        return v19;
      }

      v19 = btree_node_get(a3, v11, 0, 2u, *(*(a4 + 56) + 34) - 1, 0, &v22);
      if (v19)
      {
        return v19;
      }

      v20 = v22;
      v17 = btree_node_checkpoint_traverse(a1, a2, a3, v22, a5);
      obj_unlock(v20, 1u);
      obj_release(v20);
      ++v18;
      if (v17)
      {
        return v17;
      }
    }

    return 0;
  }

  return v17;
}

uint64_t btree_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((**(a3 + 392) & 0x28) != 8)
  {
    sub_1000A68CC();
  }

  return btree_node_checkpoint_traverse(a1, a2, a3, a3, a4);
}

uint64_t btree_node_copy(uint64_t *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  __chkstk_darwin(a1);
  v15 = (&v41 - v14);
  bzero(&v41 - v14, v16);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v17 = (a3 >> 26) & 0x10 | a4;
  v18 = (a3 >> 22) & 0x20 | (8 * (a3 >> 31)) | v17;
  if ((v17 & 0x10) != 0 && (a3 >> 22) & 0x20 | (8 * (a3 >> 31)) & 0x28 | v17 & 0x28)
  {
    sub_1000A68F8();
  }

  LODWORD(v46[0]) = 2123139;
  *(v46 + 8) = *(a2 + 400);
  v19 = *(a2 + 416);
  *(&v46[0] + 1) = *(&v46[0] + 1) & 0xFFFFFFFFFFFFFE00 | BYTE8(v46[0]) & 0x47 | (a3 >> 22) & 0x20 | (8 * (a3 >> 31)) & 0x1B8 | v17 & 0x1B8;
  *(&v46[1] + 1) = v19;
  v20 = *(a2 + 56);
  WORD2(v46[0]) = *(v20 + 32) & 0x1B;
  WORD3(v46[0]) = *(v20 + 34);
  v21 = *(a2 + 8);
  if (!v21)
  {
    v21 = *(*a2 + 392);
  }

  v44 = 0;
  v22 = obj_subtype(a2);
  v23 = sub_10003E8A0(v21, a3, v22, v46, a5, a7);
  v24 = v23;
  if (!a6 || *(*(a2 + 56) + 32) & 2 | v23)
  {
    if (!v23)
    {
      v25 = a7;
      v26 = *(*a7 + 56);
      v27 = *(a2 + 56);
      v28 = obj_size_phys(a2) - 32;
      v29 = (v26 + 32);
      v30 = v25;
      memcpy(v29, (v27 + 32), v28);
      v31 = *v25;
      if (*(*(a2 + 56) + 32))
      {
        v32 = *(v31 + 392);
        *v32 = WORD4(v46[0]) & 0x1FF;
        v32[1] = (*(&v46[0] + 1) >> 27) & 0x1F000;
        v32[2] = (DWORD2(v46[0]) >> 9) & 0x3FFF;
        v32[3] = (*(&v46[0] + 1) >> 23);
      }

      sub_1000403E8(v31, v46, 0);
      v24 = 0;
      goto LABEL_30;
    }

    return v24;
  }

  v42 = a7;
  v33 = 0;
  v48 = 0;
  v45 = 0;
  v43 = (a3 >> 23) & 0x200;
  while (1)
  {
    if (v33 >= *(*(a2 + 56) + 36))
    {
      v24 = 0;
      goto LABEL_29;
    }

    *v15 = 0;
    v34 = btree_node_child_val(a2, v33, v15);
    if (v34 || (v34 = btree_node_get(a1, v15, 0, v43 | 2u, *(*(a2 + 56) + 34) - 1, 0, &v48), v34))
    {
      v24 = v34;
      goto LABEL_29;
    }

    v35 = v48;
    v36 = btree_node_copy(a1, v48, a3, v18, a5, a6, &v47);
    if (v36)
    {
      break;
    }

    v37 = btree_node_key_ptr(a2, v33, &v45, &v44);
    if (v37)
    {
      v24 = v37;
LABEL_19:
      v38 = a1[1];
      if (v38)
      {
        v39 = (v38 + 4048);
      }

      else
      {
        v39 = (*(*(*a1 + 392) + 384) + 212);
      }

      log_err("%s:%d: %s btree_node_insert_internal failed: %d\n", "btree_node_copy", 6692, v39, v24);
      goto LABEL_23;
    }

    *v15 = v47[14];
    v24 = sub_100037E98(*v42, v33, v45, v44, v15, (*(*v42 + 407) & 0x7Fu) + 8, a5);
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_23:
    obj_release(v47);
    obj_unlock(v35, 1u);
    obj_release(v35);
    v47 = 0;
    ++v33;
    if (v24)
    {
      goto LABEL_29;
    }
  }

  v24 = v36;
  obj_unlock(v35, 1u);
  obj_release(v35);
  if (v47)
  {
    obj_release(v47);
  }

LABEL_29:
  v30 = v42;
  obj_dirty(*v42, a5, 0);
LABEL_30:
  obj_unlock(*v30, 2u);
  return v24;
}

uint64_t btree_copy(uint64_t *a1, unint64_t a2, unsigned int a3, unint64_t a4, uint64_t *a5)
{
  *a5 = 0;
  if ((a3 & 0x18) != 0)
  {
    v9 = (a3 << 28) & 0x80000000 | (((a3 >> 4) & 1) << 30) | (((a3 >> 5) & 1) << 27) | a2;
  }

  else
  {
    v9 = a2;
  }

  obj_lock(a1, 1u);
  v10 = btree_node_copy(a1, a1, v9, a3, a4, 1, a5);
  if (v10)
  {
    v11 = *a5;
    if (*a5)
    {
      v16 = 0;
      btree_delete(v11, a4, &v16);
      obj_release(*a5);
      *a5 = 0;
    }
  }

  else
  {
    v12 = a1[49];
    v13 = *(*a5 + 392);
    v14 = *(v12 + 16);
    *(v13 + 32) = *(v12 + 32);
    *(v13 + 16) = v14;
  }

  obj_unlock(a1, 1u);
  return v10;
}

uint64_t btree_delete(uint64_t a1, unint64_t a2, void *a3)
{
  obj_lock(a1, 2u);
  if ((*(a1 + 19) & 0x80) != 0 || (*(a1 + 400) & 0x80) != 0)
  {
    v8 = btree_delete_node(a1, a1, a2);
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = obj_oid(v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(*a1 + 392);
    v11 = obj_type_and_flags(a1);
    v12 = obj_size_phys(a1);
    v13 = obj_oid(a1);
    if (a3)
    {
      v14 = nx_reaper_add(v10, v11, v12, v7, v13, a2, 0, a3);
    }

    else
    {
      v14 = nx_reaper_add_sub_object(v10, v11, v12, v7, v13, a2, 0);
    }

    v8 = v14;
    if (v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 + 4048);
      }

      else
      {
        v16 = (*(*(*a1 + 392) + 384) + 212);
      }

      v17 = obj_oid(a1);
      v18 = obj_type_and_flags(a1);
      log_err("%s:%d: %s error adding btree 0x%llx type 0x%x to reap list: %d\n", "btree_delete", 6818, v16, v17, v18, v8);
    }
  }

  obj_unlock(a1, 2u);
  return v8;
}

uint64_t btree_delete_node(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __chkstk_darwin(a1);
  v7 = (&v14 - v6);
  bzero(&v14 - v6, v8);
  if ((*(a2[7] + 32) & 2) == 0)
  {
    v9 = 0;
    v14 = 0;
    while (v9 < *(a2[7] + 36))
    {
      *v7 = 0;
      v10 = btree_node_child_val(a2, v9, v7);
      if (v10 || (v10 = btree_node_get(a1, v7, 0, 0, *(a2[7] + 34) - 1, 0, &v14), v10))
      {
        v12 = v10;
        goto LABEL_10;
      }

      v11 = v14;
      obj_lock(v14, 2u);
      v12 = btree_delete_node(a1, v11, a3);
      obj_unlock(v11, 2u);
      obj_release(v11);
      ++v9;
      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = 0;
LABEL_10:
  obj_delete_and_free(a2, a3);
  return v12;
}

uint64_t btree_node_count(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (obj_type(a1) != 2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(*(a1 + 392) + 32);
  return result;
}

uint64_t sub_1000403E8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  result = btree_node_sanity_check(a1, a2);
  if (!result)
  {
    if (a2)
    {
      *(a1 + 400) = *(a2 + 8);
      *(a1 + 416) = *(a2 + 24);
    }

    v8 = v6 + 56 + *(v6 + 42);
    *(a1 + 376) = v6 + 56;
    *(a1 + 384) = v8;
    v9 = obj_size_phys(a1);
    v10 = *(v6 + 32);
    v11 = -40;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v6 + v9 + v11;
    *(a1 + 392) = v12;
    if (v10)
    {
      v13 = *(a1 + 400) & 0xFFFFFFFFFFFFFE00 | *v12 & 0x1FF;
      *(a1 + 400) = v13;
      v14 = v13 & 0xFFFFF07FFFFFFFFFLL | (((*(v12 + 4) >> 12) & 0x1F) << 39);
      *(a1 + 400) = v14;
      v15 = v14 & 0xFFFFFFFFFF8001FFLL | ((*(v12 + 8) & 0x3FFFLL) << 9);
      *(a1 + 400) = v15;
      *(a1 + 400) = v15 & 0xFFFFFF80007FFFFFLL | (*(v12 + 12) << 23);
      *(a1 + 408) = obj_oid(a1);
    }

    if (a3)
    {

      return authapfs_validate_node(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000404E4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1[16] & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      v3 = 0;
      return (v1[23] + v3 + v1[25] + v1[27]);
    }

    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  v4 = v1[21];
  v5 = btree_node_toc_required_capacity(a1, 0);
  v3 = v4 - v5 * v2;
  if (v4 < (v5 * v2))
  {
    v3 = 0;
  }

  return (v1[23] + v3 + v1[25] + v1[27]);
}

uint64_t sub_100040564(uint64_t result, int a2, unsigned __int16 a3, __int16 *a4, unsigned __int16 *a5)
{
  if ((*(result + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 48;
  if (a2 != 1)
  {
    v6 = 52;
  }

  v7 = 392;
  if (a2 == 1)
  {
    v7 = 384;
  }

  v8 = *(*(result + 56) + v6);
  v9 = -1;
  if (v8 == 0xFFFF)
  {
    v13 = -1;
    if (a4)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v11 = result;
  v24 = a4;
  v25 = a5;
  v12 = *(result + v7);
  v13 = -1;
  do
  {
    v9 = v8;
    v14 = v8;
    if (a2 == 1)
    {
      v15 = *(*(v11 + 56) + 44);
      v16 = v15 >= v9;
      v17 = v15 - v9;
      if (v17 != 0 && v16 && v17 >= 4)
      {
        v20 = *(*(v11 + 384) + v14 + 2);
        if (v20 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v20 = (v20 + 7) & 0x1FFF8;
          }

          if (v20 <= v17)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      result = obj_size_phys(v11);
      v18 = *(v11 + 56);
      if (*(v18 + 32))
      {
        v19 = -96;
      }

      else
      {
        v19 = -56;
      }

      if (v9 <= (result - *(v18 + 42) + v19 - (*(v18 + 46) + *(v18 + 44))) && v9 >= 4u)
      {
        v21 = *(*(v11 + 392) - v14 + 2);
        if (v21 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v21 = (v21 + 7) & 0x1FFF8;
          }

          if (v21 <= v9)
          {
            goto LABEL_33;
          }
        }
      }
    }

    result = nx_corruption_detected_int(*(*v11 + 392));
    if (result)
    {
      break;
    }

LABEL_33:
    if (a2 == 1)
    {
      v22 = v14;
    }

    else
    {
      v22 = -v14;
    }

    v23 = (v12 + v22);
    if (v23[1] >= v5)
    {
      goto LABEL_39;
    }

    v8 = *v23;
    v13 = v9;
  }

  while (v8 != 0xFFFF);
  v9 = -1;
  v13 = -1;
LABEL_39:
  a4 = v24;
  a5 = v25;
  if (v24)
  {
LABEL_40:
    *a4 = v13;
  }

LABEL_41:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_100040784(uint64_t result, int a2, unsigned int a3, int a4)
{
  if (a3 >= 0xFFFE)
  {
    sub_1000A6950();
  }

  if (a4 == 65534 || !a4)
  {
    sub_1000A6924();
  }

  if ((*(result + 400) & 0x40) != 0)
  {
    v4 = a4;
  }

  else
  {
    v4 = (a4 + 7) & 0xFFF8;
  }

  v5 = *(result + 56);
  if (a2 == 1)
  {
    v6 = (v5 + 48);
    if (v4 > 3u)
    {
      v7 = (*(result + 384) + a3);
LABEL_12:
      v7[1] = v4;
      *v7 = *v6;
      *v6 = a3;
    }
  }

  else
  {
    v6 = (v5 + 52);
    if (v4 > 3u)
    {
      v7 = (*(result + 392) - a3);
      goto LABEL_12;
    }
  }

  v6[1] += v4;
  return result;
}

void *sub_100040824(void *result, unsigned int a2, int a3, int a4, unsigned int a5, int a6, unsigned int a7, unsigned int a8)
{
  if (a3)
  {
    if (a5 == 0xFFFF)
    {
      if (a6)
      {
        sub_1000A69D4();
      }
    }

    else
    {
      v8 = *(result[7] + 44);
      if (v8 <= a5)
      {
        sub_1000A697C();
      }

      if (a6 + a5 > v8)
      {
        sub_1000A69A8();
      }
    }
  }

  if (a4)
  {
    if (a7 == 65534)
    {
      if (a8 != 65534)
      {
        sub_1000A6A00();
      }
    }

    else if (a7 == 0xFFFF)
    {
      if (a8)
      {
        sub_1000A6A2C();
      }
    }

    else
    {
      if (((result[50] >> 27) & 0x1F000) - *(result[7] + 46) - (*(result[7] + 42) + *(result[7] + 44)) - 56 < a7)
      {
        sub_1000A6A84();
      }

      if (a7 < a8)
      {
        sub_1000A6A58();
      }
    }
  }

  v9 = result[47];
  if ((*(result[7] + 32) & 4) != 0)
  {
    if (a3)
    {
      *(v9 + 4 * a2) = a5;
    }

    if (a4)
    {
      *(v9 + 4 * a2 + 2) = a7;
    }
  }

  else
  {
    v10 = (v9 + 8 * a2);
    if (a3)
    {
      *v10 = a5;
      v10[1] = a6;
    }

    if (a4)
    {
      v10[2] = a7;
      v10[3] = a8;
    }
  }

  return result;
}

uint64_t sub_100040930(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(v6 + 32);
  if ((v7 & 4) != 0 && (*(a1 + 400) & 4) == 0)
  {
    sub_1000A6AB0();
  }

  v53 = 0;
  if (v7)
  {
    v10 = btree_node_copy(0, a1, 0x88000000uLL, (16 * v7) & 0x180, a3, 0, &v53);
    if (v10)
    {
      return v10;
    }

    v11 = *(a1 + 56);
    *(v11 + 36) = 0;
    *(v11 + 44) = 0;
    v12 = *(a1 + 376);
    v13 = *(a1 + 392) - *(a1 + 384);
    *(v11 + 46) = v13;
    *(v11 + 48) = 0xFFFF0000FFFFLL;
    bzero(v12, *(v11 + 42) + v13);
    v14 = v53;
    v15 = v53[7];
    goto LABEL_13;
  }

  v47 = btree_node_desc;
  v48 = 2123139;
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v49 = v7;
  v50 = *(v6 + 34);
  v8 = *(a1 + 40);
  LODWORD(v47) = *(a1 + 36);
  DWORD1(v47) = v8;
  DWORD2(v47) = (*(a1 + 400) >> 27) & 0x1F000;
  v9 = obj_create(*a1, 2281701376, 0, &v47, &v48, *(a1 + 8), a3, &v53);
  if (!v9)
  {
    v16 = v53;
    v17 = v53[7];
    v18 = *(a1 + 56);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = obj_exchange_phys(a1, v16);
    if (v20)
    {
      v10 = v20;
      v21 = *(a1 + 8);
      if (v21)
      {
        v22 = (v21 + 4048);
      }

      else
      {
        v22 = (*(*(*a1 + 392) + 384) + 212);
      }

      v23 = obj_oid(a1);
      v24 = obj_oid(v53);
      log_err("%s:%d: %s obj_exchange_phys (%llx, %llx) with xid %llu failed: %d\n", "btree_node_compact", 1572, v22, v23, v24, a3, v10);
LABEL_40:
      obj_free(v53);
      obj_release(v53);
      obj_dirty(a1, a3, 0);
      return v10;
    }

    sub_1000403E8(a1, &v48, 0);
    sub_1000403E8(v53, &v48, 0);
    v14 = v53;
    v15 = v53[7];
    *(*(a1 + 56) + 32) |= *(v15 + 32) & 0x8000;
LABEL_13:
    v25 = btree_node_toc_required_capacity(v14, a2);
    v26 = 2;
    if ((*(v15 + 32) & 4) == 0)
    {
      v26 = 3;
    }

    sub_100040F5C(a1, (v25 << v26) & 0xFFFC);
    v27 = v53;
    v28 = v53[7];
    if (*(v28 + 36))
    {
      v29 = 0;
      while (1)
      {
        v30 = *(v28 + 32);
        v31 = v27[47];
        v32 = v29;
        v33 = (v31 + 4 * v29);
        v34 = (v31 + 8 * v29);
        if ((v30 & 4) == 0)
        {
          v33 = v34;
        }

        v35 = v31 + 8 * v32;
        if ((v30 & 4) != 0)
        {
          v36 = (*(v27 + 100) >> 9) & 0x3FFF;
        }

        else
        {
          v36 = *(v35 + 2);
        }

        v37 = *v33;
        v38 = v31 + 4 * v32 + 2;
        v39 = (v35 + 4);
        if ((v30 & 4) != 0)
        {
          v39 = v38;
        }

        v40 = *v39;
        v41 = btree_node_val_len(v27, v32);
        if (v37 == 0xFFFF)
        {
          v43 = 0;
        }

        else
        {
          v42 = sub_10003511C(v27, v37, v36);
          if (v42)
          {
            break;
          }

          v27 = v53;
          v43 = (v53[48] + v37);
        }

        if (v40 > 0xFFFD)
        {
          v44 = 0;
        }

        else
        {
          v42 = sub_100035248(v27, v40, v41);
          if (v42)
          {
            break;
          }

          v44 = (v53[49] - v40);
        }

        v42 = sub_100037E98(a1, v32, v43, v36, v44, v41, a3);
        if (v42)
        {
          break;
        }

        v29 = v32 + 1;
        v27 = v53;
        v28 = v53[7];
        if (*(v28 + 36) <= (v32 + 1))
        {
          goto LABEL_34;
        }
      }

      v10 = v42;
      if (v7)
      {
        memcpy((*(a1 + 56) + 32), (v53[7] + 32), v53[49] - v53[7] - 32);
        v45 = a1;
      }

      else
      {
        obj_exchange_phys(a1, v53);
        sub_1000403E8(a1, 0, 0);
        v45 = v53;
      }

      sub_1000403E8(v45, 0, 0);
    }

    else
    {
LABEL_34:
      v10 = 0;
    }

    goto LABEL_40;
  }

  return v9;
}

uint64_t sub_100040D2C(uint64_t a1, uint64_t a2, unsigned __int16 a3, int a4, int a5)
{
  if (a5 == 0xFFFF)
  {
    return 22;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 52;
  if (a2 == 1)
  {
    v6 = 48;
  }

  v7 = 392;
  if (a2 == 1)
  {
    v7 = 384;
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  v9 = (*(a1 + 56) + v6);
  v10 = *(a1 + v7);
  v11 = v9[1] - v5;
  v9[1] = v11;
  if (a4 != 0xFFFF || *v9 == a5)
  {
    v12 = v5;
    v13 = v8;
    v14 = (v10 + a5 * v8);
    v15 = v14[1] - v12;
    if (v15 < 5u)
    {
      if (a4 == 0xFFFF)
      {
        *v9 = *v14;
      }

      else
      {
        *(v10 + v8 * a4) = *v14;
      }
    }

    else
    {
      v16 = (v10 + v8 * a4);
      if (a4 == 0xFFFF)
      {
        v16 = v9;
      }

      v17 = v8 * v12 + a5;
      *v16 = v17;
      v18 = (v10 + v13 * v17);
      v18[1] = v15;
      *v18 = *v14;
      v11 = v9[1];
    }
  }

  if (!v11 && *v9 != -1)
  {
    sub_1000A6ADC();
  }

  return 0;
}

uint64_t sub_100040E50(uint64_t a1, uint64_t a2, unsigned __int16 a3, _WORD *a4)
{
  v15 = -1;
  v14 = -1;
  sub_100040564(a1, a2, a3, &v14, &v15);
  if (v15 == 0xFFFF)
  {
    if ((a2 - 3) <= 0xFDu)
    {
      sub_1000A6B08();
    }

    if ((*(a1 + 400) & 0x40) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = (a3 + 7) & 0xFFF8;
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 46);
    if (v12 < v10)
    {
      return 28;
    }

    if (a2 == 1)
    {
      LOWORD(v9) = *(v11 + 44);
      *(v11 + 44) = v9 + v10;
      v13 = v12 - v10;
    }

    else
    {
      v13 = v12 - v10;
      v9 = *(a1 + 392) - *(v11 + 44) - (*(a1 + 384) + v13);
    }

    *(v11 + 46) = v13;
  }

  else
  {
    result = sub_100040D2C(a1, a2, a3, v14, v15);
    if (result)
    {
      return result;
    }

    LOWORD(v9) = v15;
  }

  result = 0;
  *a4 = v9;
  return result;
}

void sub_100040F5C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0 && (*(a1 + 400) & 4) == 0)
  {
    sub_1000A6B34();
  }

  v5 = *(v3 + 42);
  v6 = v5 - a2;
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return;
    }

    v10 = 2;
    if ((v4 & 4) == 0)
    {
      v10 = 3;
    }

    if (*(v3 + 36) > a2 >> v10)
    {
      sub_1000A6B8C();
    }

    if ((v4 & 4) != 0)
    {
      v11 = *(a1 + 400);
      v12 = ((v11 >> 27) & 0x1F000) - 56;
      v13 = (v11 >> 9) & 0x3FFF;
      v14 = (HIBYTE(v11) & 0x7F) + 8;
      v15 = (v11 >> 23);
      v16 = (v4 & 2) != 0 ? v15 : v14;
      if (((4 * (v12 / (v13 + v16 + 4))) & 0xFFFFFFFFFFFFFFF8) > a2)
      {
        sub_1000A6B60();
      }
    }

    memmove((*(a1 + 384) - v6), *(a1 + 384), *(v3 + 44));
    *(a1 + 384) -= v6;
    v8 = *(a1 + 56);
    *(v8 + 46) += v6;
    v9 = *(v8 + 42) - v6;
  }

  else
  {
    v7 = a2 - v5;
    if (*(v3 + 46) < (a2 - v5))
    {
      sub_1000A6BB8();
    }

    memmove((*(a1 + 384) + v7), *(a1 + 384), *(v3 + 44));
    bzero(*(a1 + 384), v7);
    *(a1 + 384) += v7;
    v8 = *(a1 + 56);
    *(v8 + 46) -= v7;
    v9 = *(v8 + 42) + v7;
  }

  *(v8 + 42) = v9;
}

void *sub_1000410A4(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = (a3 + a2) << v5;
  v7 = a2 + -a3;
  if ((v4 & 4) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = v7 << v8;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v6 = a2 << v8;
  }

  if (a3 >= 0)
  {
    v8 = v5;
    v9 = (a2 << v5);
  }

  return memmove((*(a1 + 376) + v6), (*(a1 + 376) + v9), ((*(v3 + 36) - v7) << v8) & 0xFFFC);
}

uint64_t sub_100041114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  if (a8 != 8)
  {
    return 22;
  }

  result = 0;
  *a5 = *a7;
  return result;
}

uint64_t sub_100041134(void *a1, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 0)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = -a3;
  }

  v8 = v7;
  if (a3 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  v11 = v10[7];
  if ((v11[16] & 4) != 0)
  {
    if ((v10[50] & 4) == 0)
    {
      goto LABEL_19;
    }

    v12 = 4;
  }

  else
  {
    v12 = 8;
  }

  v13 = btree_node_toc_required_capacity(v10, v7) * v12;
  v14 = v11[21];
  if (v14 >= v13)
  {
    goto LABEL_19;
  }

  if (v13 - v14 <= v11[23])
  {
    sub_100040F5C(v10, v13);
    goto LABEL_19;
  }

  v15 = sub_100040930(v10, v8, a4);
  if (!v15)
  {
LABEL_19:
    v54 = 0;
    v55 = 0;
    v53 = 0;
    if (v9 == a2)
    {
      if (v8 < 1)
      {
        v37 = 0;
        v38 = 0;
LABEL_53:
        v15 = 0;
      }

      else
      {
        v36 = btree_node_key_ptr(a2, 0, &v55, &v53 + 1);
        if (v36)
        {
          v15 = v36;
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            v39 = btree_node_val_ptr(a2, v38, &v54, &v53);
            if (v39)
            {
              break;
            }

            v39 = sub_100037E98(a1, *(a1[7] + 36), v55, HIWORD(v53), v54, v53, a4);
            if (v39)
            {
              break;
            }

            v40 = a2[47];
            v41 = (v40 + 4 * v38);
            v42 = (v40 + 8 * v38);
            if ((*(a2[7] + 32) & 4) != 0)
            {
              v43 = v41;
            }

            else
            {
              v43 = v42;
            }

            v44 = *v43;
            if ((a2[50] & 0x40) != 0)
            {
              v45 = HIWORD(v53);
            }

            else
            {
              v45 = (HIWORD(v53) + 7) & 0xFFF8;
            }

            sub_100040784(a2, 1, v44, v45);
            if (v53 && v53 != 65534)
            {
              v46 = a2[47];
              v47 = (v46 + 8 * v38 + 4);
              if ((*(a2[7] + 32) & 4) != 0)
              {
                v47 = (v46 + 4 * v38 + 2);
              }

              if ((a2[50] & 0x40) != 0)
              {
                v48 = v53;
              }

              else
              {
                v48 = (v53 + 7) & 0xFFF8;
              }

              sub_100040784(a2, 2, *v47, v48);
            }

            v37 = ++v38;
            if (v38 >= v8)
            {
              goto LABEL_53;
            }

            v39 = btree_node_key_ptr(a2, v38, &v55, &v53 + 1);
          }

          while (!v39);
          v15 = v39;
          v37 = v38;
        }
      }

      sub_1000410A4(a2, 0, -v37);
      *(a2[7] + 36) -= v38;
    }

    else if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      sub_1000410A4(a2, 0, v8);
      v16 = 0;
      v17 = a2[7];
      *(v17 + 36) += v8;
      *(v17 + 32) |= 0x8000u;
      v18 = a2[47];
      do
      {
        if ((*(v17 + 32) & 4) != 0)
        {
          *(v18 + 4 * v16) = -1;
        }

        else
        {
          *(v18 + 8 * v16) = 0xFFFF0000FFFFLL;
        }

        ++v16;
      }

      while (v8 > v16);
      LOWORD(v19) = 0;
      while (1)
      {
        v20 = btree_node_key_ptr(a1, (*(a1[7] + 36) - 1), &v55, &v53 + 1);
        if (v20)
        {
          break;
        }

        v20 = btree_node_val_ptr(a1, (*(a1[7] + 36) - 1), &v54, &v53);
        if (v20)
        {
          break;
        }

        v20 = sub_1000375C8(a2, (v8 + ~v19), v55, HIWORD(v53), v54, v53, a4);
        if (v20)
        {
          break;
        }

        v21 = a1[7];
        v22 = *(v21 + 36) - 1;
        *(v21 + 36) = v22;
        v23 = a1[47];
        v24 = (v23 + 4 * v22);
        v25 = (v23 + 8 * v22);
        if ((*(v21 + 32) & 4) != 0)
        {
          v26 = v24;
        }

        else
        {
          v26 = v25;
        }

        v27 = *v26;
        if ((a1[50] & 0x40) != 0)
        {
          v28 = HIWORD(v53);
        }

        else
        {
          v28 = (HIWORD(v53) + 7) & 0xFFF8;
        }

        sub_100040784(a1, 1, v27, v28);
        if (v53 && v53 != 65534)
        {
          v29 = a1[7];
          v30 = *(v29 + 36);
          v31 = a1[47];
          v32 = v31 + 4 * v30 + 2;
          v33 = v31 + 8 * v30 + 4;
          if ((*(v29 + 32) & 4) != 0)
          {
            v34 = v32;
          }

          else
          {
            v34 = v33;
          }

          if ((a1[50] & 0x40) != 0)
          {
            v35 = v53;
          }

          else
          {
            v35 = (v53 + 7) & 0xFFF8;
          }

          sub_100040784(a1, 2, *v34, v35);
        }

        v19 = (v19 + 1);
        if (v19 >= v8)
        {
          v15 = 0;
          *(a2[7] + 32) &= ~0x8000u;
          goto LABEL_75;
        }
      }

      v15 = v20;
      *(a2[7] + 32) &= ~0x8000u;
      sub_1000410A4(a2, 0, (v19 - v8));
    }

LABEL_75:
    v49 = v9[7];
    if ((*(v49 + 32) & 4) != 0)
    {
      if ((v9[50] & 4) == 0)
      {
LABEL_81:
        *(v9 + 220) = 0;
        obj_dirty(a1, a4, 0);
        obj_dirty(a2, a4, 0);
        return v15;
      }

      v50 = 4;
    }

    else
    {
      v50 = 8;
    }

    v51 = btree_node_toc_required_capacity(v9, 8);
    if (*(v49 + 42) > (v51 * v50))
    {
      sub_100040F5C(v9, (v51 * v50));
    }

    goto LABEL_81;
  }

  return v15;
}

void sub_1000415EC(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 2123139;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = *(a1 + 56);
  v10 = *(v6 + 32) & 0x18 | v5;
  v11 = a2;
  v12 = *(a1 + 400);
  v13 = *(a1 + 416);
  bzero((v6 + 32), ((*(a1 + 400) >> 27) & 0x1F000) - 72);
  v7 = *(a1 + 56);
  v8 = obj_size_phys(a1);
  sub_1000348B8(v7, v8, &v9);
  sub_1000403E8(a1, &v9, 0);
  obj_dirty(a1, a3, 0);
}

void sub_1000416B0(void *result, uint64_t a2, uint64_t a3)
{
  if (result[54] == *(a3 + 112))
  {
    v5 = *(a2 + 56);
    if ((*(v5 + 32) & 2) != 0 || !*(v5 + 36))
    {
      result[54] = *(a2 + 112);
    }

    else
    {
      __chkstk_darwin(result);
      v7 = (&v13 - v6);
      bzero(&v13 - v6, v8);
      v9 = btree_node_child_val(a2, (*(*(a2 + 56) + 36) - 1), v7);
      if (v9)
      {
        v10 = result[1];
        if (v10)
        {
          v11 = (v10 + 4048);
        }

        else
        {
          v11 = (*(*(*result + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to update rightmost leaf field: %d\n", "bt_update_last_leaf", 2521, v11, v9);
        v12 = 0;
      }

      else
      {
        v12 = *v7;
      }

      result[54] = v12;
    }
  }
}

void sub_100041810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = a6;
  v71 = a6;
  __chkstk_darwin(a1);
  v17 = (&v62 - v16);
  bzero(&v62 - v16, v18);
  v69 = 0;
  v68 = 0;
  v19 = *(a4 + 56);
  if (!a2)
  {
    if ((*(v19 + 32) & 2) != 0 || *(v19 + 36) != 1)
    {
      return;
    }

    if (a5 || v10 && (*(v10 + 16) & 0x10) != 0)
    {
      if (btree_node_child_val(a4, 0, v17) || btree_node_get(a1, v17, a7, 3u, *(*(a4 + 56) + 34) - 1, a8, &v71))
      {
        return;
      }

      v10 = v71;
      if ((*(a1 + 400) & 0x10) != 0 && *(v71 + 112) != *v17)
      {
        sub_10003833C(a4, 0, (v71 + 112), a8);
      }

      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (sub_1000404E4(v10) > 0x27)
    {
      v46 = *(v10 + 56);
      if (*(v46 + 46) > 0x27u || ((*(v46 + 32) & 4) == 0 || (*(v10 + 400) & 4) != 0) && (sub_100040930(v10, 0, a8), *(*(v10 + 56) + 46) > 0x27u))
      {
        sub_10003C4D0(a4, 0, a8);
        sub_1000415EC(a4, (*(*(a4 + 56) + 34) - 1), a8);
        v47 = sub_100041134(a4, v10, -*(*(v10 + 56) + 36), a8);
        if (!v47)
        {
          sub_1000416B0(a1, a4, v10);
          obj_delete_and_free(v10, a8);
          if (v44)
          {
            obj_unlock(v10, 2u);
            obj_release(v10);
          }

          atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
          obj_dirty(a1, a8, 0);
          return;
        }

        v48 = *(a1 + 8);
        if (v48)
        {
          v49 = (v48 + 4048);
        }

        else
        {
          v49 = (*(*(*a1 + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to move all entries: %d\n", "bt_merge_nodes", 4374, v49, v47);
        sub_100041134(a4, v10, *(*(a4 + 56) + 36), a8);
        sub_1000415EC(a4, (*(*(a4 + 56) + 34) + 1), a8);
        if (!btree_node_key_ptr(v10, 0, &v69, &v68))
        {
          *v17 = *(v10 + 112);
          sub_100037E98(a4, 0, v69, v68, v17, (*(a4 + 407) & 0x7Fu) + 8, a8);
        }
      }
    }

    if (!v44)
    {
      return;
    }

    obj_unlock(v10, 2u);
    v61 = v10;
    goto LABEL_106;
  }

  if (*(v19 + 36))
  {
    if (*(*(a2 + 56) + 36) - 1 > a3)
    {
      v20 = (a3 + 1);
      if (!btree_node_child_val(a2, v20, v17))
      {
        v70 = 0;
        if (!btree_node_get(a1, v17, a7, 3u, *(*(a2 + 56) + 34) - 1, a8, &v70))
        {
          if ((*(a1 + 400) & 0x10) != 0 && v70[14] != *v17)
          {
            sub_10003833C(a2, v20, v70 + 14, a8);
          }

          v21 = *(a4 + 56);
          if ((*(v21 + 32) & 4) != 0)
          {
            v50 = *(v21 + 36);
            v24 = v70;
            v66 = v70[7];
            v43 = *(v66 + 36);
            v51 = v43 + v50;
            if (v43 + v50 <= btree_node_toc_required_capacity(a4, 0))
            {
              v67 = 0;
              LOWORD(v29) = v43;
            }

            else
            {
              if (v50 >= (v51 >> 1))
              {
                v29 = 0;
              }

              else
              {
                v29 = (v51 >> 1) - v50;
              }

              v67 = v29;
            }
          }

          else
          {
            v63 = v20;
            v22 = 8 * btree_node_toc_required_capacity(a4, 0);
            v23 = sub_1000404E4(a4);
            v24 = v70;
            v25 = sub_1000404E4(v70);
            v26 = 0;
            v27 = 0;
            v66 = v24[7];
            v67 = 0;
            v28 = *(v66 + 36);
            v64 = v23 - ((v25 + v23) >> 1);
            v65 = v28;
            do
            {
              LOWORD(v29) = v26;
              if (v65 <= v26)
              {
                break;
              }

              if (v26 && !v67)
              {
                v30 = 8 * (btree_node_toc_required_capacity(a4, v26) & 0x1FFF);
                v31 = v30 >= v22;
                v32 = v30 - v22;
                if (!v31)
                {
                  v32 = 0;
                }

                if ((v32 + v27) <= v64)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v26;
                }

                v67 = v33;
              }

              v34 = v24[50];
              v35 = *(v66 + 32);
              if ((v34 & 0x40) != 0)
              {
                if ((v35 & 4) != 0)
                {
                  v37 = (v34 >> 9) & 0x3FFF;
                }

                else
                {
                  v37 = *(v24[47] + 8 * v29 + 2);
                }
              }

              else
              {
                if ((v35 & 4) != 0)
                {
                  v36 = (v34 >> 9) & 0x3FFF;
                }

                else
                {
                  v36 = *(v24[47] + 8 * v29 + 2);
                }

                v37 = (v36 + 7) & 0x1FFF8;
              }

              v38 = v37 + v27;
              v39 = btree_node_val_len(v24, v29);
              if (v39 == 65534)
              {
                v40 = 0;
              }

              else
              {
                v40 = v39;
              }

              if ((v34 & 0x40) == 0)
              {
                v40 = (v40 + 7) & 0x1FFF8;
              }

              v27 = v38 + v40;
              v26 = (v29 + 1);
              v41 = 8 * (btree_node_toc_required_capacity(a4, v26) & 0x1FFF);
              v31 = v41 >= v22;
              v42 = v41 - v22;
              if (!v31)
              {
                v42 = 0;
              }
            }

            while (v42 + v27 <= v23);
            LOWORD(v20) = v63;
            v43 = v65;
          }

          if (v43 != v29)
          {
            if ((*(*(a2 + 56) + 32) & 4) != 0)
            {
              v52 = (*(a2 + 400) >> 9) & 0x3FFF;
            }

            else
            {
              v52 = *(*(a2 + 376) + 8 * v20 + 2);
            }

            if ((*(v66 + 32) & 4) != 0)
            {
              v53 = (*(v24 + 100) >> 9) & 0x3FFF;
            }

            else
            {
              v53 = *(v24[47] + 8 * v67 + 2);
            }

            v68 = v53;
            v54 = *(a2 + 400);
            if ((v54 & 0x40) != 0)
            {
              v55 = v52;
            }

            else
            {
              v55 = (v52 + 7) & 0x1FFF8;
            }

            v56 = (v53 + 7) & 0x1FFF8;
            if ((v54 & 0x40) != 0)
            {
              v56 = v53;
            }

            if (v55 >= v56)
            {
              LOWORD(v29) = v67;
            }

            else
            {
              if ((v54 & 0x40) == 0)
              {
                LOWORD(v53) = (v53 + 7) & 0xFFF8;
                LOWORD(v52) = (v52 + 7) & 0xFFF8;
              }

              v57 = sub_100038410(a2, 0, 0, 0, v53 - v52, 0, 0);
              LOWORD(v29) = v67;
              if (!v57)
              {
                goto LABEL_105;
              }
            }
          }

          if (v29 && !sub_100041134(a4, v24, -v29, a8))
          {
            if (*(v24[7] + 36))
            {
              v58 = btree_node_key_ptr(v24, 0, &v69, &v68);
              if (v58 || (v58 = sub_1000375C8(a2, v20, v69, v68, 0, 0, a8)) != 0)
              {
                v59 = *(a1 + 8);
                if (v59)
                {
                  v60 = (v59 + 4048);
                }

                else
                {
                  v60 = (*(*(*a1 + 392) + 384) + 212);
                }

                log_err("%s:%d: %s btree_node_key_update failed: %d\n", "bt_merge_nodes", 4515, v60, v58);
              }
            }

            else
            {
              sub_10003C4D0(a2, v20, a8);
              sub_1000416B0(a1, a2, v24);
              obj_delete_and_free(v24, a8);
              atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
              obj_dirty(a1, a8, 0);
            }
          }

LABEL_105:
          obj_unlock(v24, 2u);
          v61 = v24;
LABEL_106:
          obj_release(v61);
        }
      }
    }
  }

  else
  {
    sub_10003C4D0(a2, a3, a8);
    v45 = *(a2 + 56);
    if ((*(v45 + 32) & 1) != 0 && !*(v45 + 36))
    {
      sub_1000415EC(a2, 0, a8);
    }

    sub_1000416B0(a1, a2, a4);
    obj_delete_and_free(a4, a8);
    atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);

    obj_dirty(a1, a8, 0);
  }
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

uint64_t omap_recent_sanity_callback(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, int a5, _DWORD *a6, int a7)
{
  v21 = 0;
  v22 = 0;
  v13 = obj_type(a1);
  v14 = 0;
  v15 = a1;
  if (v13 == 13)
  {
    v15 = *(a1 + 392);
    v14 = a1;
  }

  v16 = 22;
  if (a5 == 16 && a7 == 16)
  {
    v17 = a4[1];
    if (v17 <= a3)
    {
      return 0;
    }

    v18 = *a6;
    if ((*a6 & 5) != 0)
    {
      return 0;
    }

    else
    {
      v23 = 0;
      if ((v18 & 8) != 0)
      {
        v20 = 536870936;
      }

      else
      {
        v20 = 24;
      }

      LODWORD(v22) = a6[1];
      v16 = obj_get(*(v15 + 392), v20, *a4, &v21, 0, v14, v17, 0, &v23);
      if (v16)
      {
        if (obj_type(a1) == 13)
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (a1 + 4048), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }

        else
        {
          log_err("%s:%d: %s check of oid:xid %lld:%lld  size %d paddr 0x%llx flags 0x%x failed: %d\n", "omap_recent_sanity_callback", 1071, (*(a1 + 384) + 212), *a4, a4[1], a6[1], *(a6 + 1), *a6, v16);
        }
      }

      else
      {
        obj_release(v23);
      }
    }
  }

  return v16;
}

uint64_t nx_check_recent_sanity(uint64_t *a1)
{
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v50 = 0;
  v2 = spaceman_get(a1, &v53);
  if (v2)
  {
    v3 = v2;
    log_err("%s:%d: %s unable to get spaceman: %d\n");
    return v3;
  }

  v4 = v53[47];
  v5 = obj_xid(v53);
  v6 = 0;
  v7 = 0;
  v8 = v5 - 3;
  if (v5 < 3)
  {
    v8 = 0;
  }

  v43 = v8;
  v44 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  do
  {
    v9 = v4 + 48 + 48 * v6;
    if (!*(v9 + 16))
    {
LABEL_27:
      v3 = 0;
      goto LABEL_30;
    }

    v10 = 0;
    v11 = -1;
    while (!*(v9 + 20))
    {
      v17 = (v53[v6 + 112] + 8 * v10);
LABEL_22:
      v18 = *v17;
      v44 = v4;
      v45 = __PAIR64__(v10, v6);
      v19 = obj_get(a1[49], 0x40000000uLL, v18, &sm_cib_desc, &v44, 0, 0, 0, &v48);
      if (v19)
      {
        v21 = v19;
        log_err("%s:%d: %s unable to read cib %lld @ %lld: %d\n", "nx_check_recent_sanity", 1152, (a1[48] + 212), v10, v18, v19);
        v3 = v21;
        goto LABEL_30;
      }

      obj_release(v48);
      v20 = 1;
LABEL_24:
      v10 += v20;
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_27;
      }
    }

    v12 = *(v4 + 44);
    v13 = v10 / v12;
    if (v10 / v12 == v11 && v7 != 0)
    {
      v13 = v11;
LABEL_21:
      v17 = (v7 + 8 * (v10 - v12 * v13) + 40);
      goto LABEL_22;
    }

    v15 = *(v53[v6 + 112] + 8 * v13);
    if (v49)
    {
      obj_release(v49);
      v49 = 0;
    }

    v46 = v4;
    v47 = __PAIR64__(v13, v6);
    v16 = obj_get(a1[49], 0x40000000uLL, v15, &sm_cab_desc, &v46, 0, 0, 0, &v49);
    if (!v16)
    {
      v7 = v49[7];
      if (obj_xid(v49) <= v43)
      {
        v20 = *(v7 + 36);
        v11 = v13;
        goto LABEL_24;
      }

      v12 = *(v4 + 44);
      v11 = v13;
      goto LABEL_21;
    }

    v3 = v16;
    log_err("%s:%d: %s unable to read cab %d @ %lld: %d\n", "nx_check_recent_sanity", 1125, (a1[48] + 212), v13, v15, v16);
LABEL_30:
    if (v49)
    {
      obj_release(v49);
      v49 = 0;
    }
  }

  while (!(v3 | v6++));
  obj_release(v53);
  if (v3)
  {
    return v3;
  }

  v24 = *(a1[47] + 160);
  if (v24)
  {
    v25 = obj_get(a1[49], 0x40000000uLL, v24, &om_desc, 0, 0, 0, 0, &v52);
    if (v25)
    {
      v3 = v25;
      log_err("%s:%d: %s unable to get omap: %d\n");
      return v3;
    }

    if (obj_xid(v52) <= v43)
    {
      obj_release(v52);
    }

    else
    {
      v3 = nx_check_recent_sanity_omap(a1, v52, v43);
      obj_release(v52);
      if (v3)
      {
        log_err("%s:%d: %s omap check failed with error: %d\n");
        return v3;
      }
    }
  }

  v26 = a1[47];
  if (!*(v26 + 180))
  {
    return 0;
  }

  v27 = 0;
  while (2)
  {
    v28 = *(v26 + 8 * v27 + 184);
    if (!v28)
    {
      goto LABEL_75;
    }

    v29 = obj_get(a1[49], 0, v28, &apfs_desc, 0, 0, 0, 0, &v51);
    if (v29)
    {
      v41 = v29;
      log_err("%s:%d: %s unable to get fs[%d] oid %lld, %d\n", "nx_check_recent_sanity", 1194, (a1[48] + 212), v27, v28, v29);
      return v41;
    }

    v30 = obj_xid(v51);
    v31 = v51;
    if (v30 <= v43)
    {
      goto LABEL_74;
    }

    v32 = *(v51[47] + 128);
    if (!v32)
    {
      goto LABEL_53;
    }

    v33 = obj_get(a1[49], 0x40000000uLL, v32, &om_desc, 0, v51, 0, 0, &v52);
    if (!v33)
    {
      if (obj_xid(v52) <= v43)
      {
        obj_release(v52);
        v31 = v51;
      }

      else
      {
        v34 = nx_check_recent_sanity_omap(v51, v52, v43);
        obj_release(v52);
        v31 = v51;
        if (v34)
        {
          log_err("%s:%d: %s omap check failed for omap %lld: %d\n");
          goto LABEL_80;
        }
      }

LABEL_53:
      v35 = v31[47];
      v36 = *(v35 + 144);
      if (v36)
      {
        v50 = 0;
        extentref_tree = apfs_get_extentref_tree(v31, v36, 0, &v50);
        if (extentref_tree)
        {
          v34 = extentref_tree;
          log_err("%s:%d: %s unable to get extentref tree %lld: %d\n", "nx_check_recent_sanity", 1228, v51 + 4048, *(v51[47] + 144), extentref_tree);
        }

        else if (obj_xid(v50) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v38 = btree_check_recent_sanity(v50, v43, 0, 0);
          v34 = v38;
          if (v38)
          {
            log_err("%s:%d: %s extentref tree %lld: %d\n", "nx_check_recent_sanity", 1233, v51 + 4048, *(v51[47] + 144), v38);
          }
        }

        if (v50)
        {
          obj_release(v50);
        }

        v31 = v51;
        if (v34)
        {
LABEL_78:
          v42 = v31;
          goto LABEL_81;
        }

        v35 = v51[47];
      }

      if (*(v35 + 152))
      {
        v50 = 0;
        snap_meta_tree = apfs_get_snap_meta_tree(v31, 0, &v50);
        if (snap_meta_tree)
        {
          v34 = snap_meta_tree;
          log_err("%s:%d: %s unable to get snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1250, v51 + 4048, *(v51[47] + 152), snap_meta_tree);
        }

        else if (obj_xid(v50) <= v43)
        {
          v34 = 0;
        }

        else
        {
          v40 = btree_check_recent_sanity(v50, v43, 0, 0);
          v34 = v40;
          if (v40)
          {
            log_err("%s:%d: %s snap meta tree %lld: %d\n", "nx_check_recent_sanity", 1255, v51 + 4048, *(v51[47] + 144), v40);
          }
        }

        if (v50)
        {
          obj_release(v50);
        }

        v31 = v51;
        if (v34)
        {
          goto LABEL_78;
        }
      }

LABEL_74:
      obj_release(v31);
LABEL_75:
      ++v27;
      v26 = a1[47];
      if (v27 >= *(v26 + 180))
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v34 = v33;
  log_err("%s:%d: %s unable to get omap %lld: %d\n");
LABEL_80:
  v42 = v51;
LABEL_81:
  obj_release(v42);
  return v34;
}

uint64_t nx_check_recent_sanity_omap(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v14 = 0;
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *(v6 + 40);
  v16 = 0u;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v15 = omap_key_cmp;
  DWORD2(v16) = 11;
  if (v8 != 2)
  {
    extended = 22;
    goto LABEL_8;
  }

  extended = btree_get_extended(a1, v8 & 0xFFFF0000, v7, 0, 0, &v15, 0, &v14);
  if (extended)
  {
LABEL_8:
    obj_type(a1);
    log_err("%s:%d: %s unable to get omap tree: %d\n");
    return extended;
  }

  if (obj_xid(v14) <= a3)
  {
    obj_release(v14);
  }

  else
  {
    extended = btree_check_recent_sanity(v14, a3, omap_recent_sanity_callback, 0);
    obj_release(v14);
    if (extended)
    {
      return extended;
    }
  }

LABEL_10:
  v10 = *(a2 + 376);
  v11 = *(v10 + 56);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v10 + 44);
  v16 = 0u;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v15 = omap_snapshot_key_cmp;
  DWORD2(v16) = 19;
  if (v12 != 2)
  {
    extended = 22;
    goto LABEL_17;
  }

  extended = btree_get_extended(a1, v12 & 0xFFFF0000, v11, 0, 0, &v15, 0, &v14);
  if (extended)
  {
LABEL_17:
    obj_type(a1);
    log_err("%s:%d: %s unable to get omap snapshot tree: %d\n");
    return extended;
  }

  if (obj_xid(v14) <= a3)
  {
    extended = 0;
  }

  else
  {
    extended = btree_check_recent_sanity(v14, a3, 0, 0);
  }

  obj_release(v14);
  return extended;
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

uint64_t file_type_to_dirent_type(unsigned int a1)
{
  if (a1 >> 12 == 7)
  {
    return 0;
  }

  else
  {
    return word_1000B3088[(a1 >> 12) ^ 8];
  }
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

uint64_t compute_attr_tag_hash(const void *a1, CC_LONG a2)
{
  *md = 0u;
  v7 = 0u;
  memset(&v5, 0, sizeof(v5));
  CC_SHA256_Init(&v5);
  CC_SHA256_Update(&v5, a1, a2);
  CC_SHA256_Final(md, &v5);
  return *(&v7 + 1) & 0x1FFFFFFFFFFFFFLL;
}

uint64_t apfs_update_dev_name(uint64_t result)
{
  if (result)
  {
    if (*(result + 504))
    {
      return snprintf((result + 4048), 0x20uLL, "%ss%d:%lld");
    }

    else
    {
      return snprintf((result + 4048), 0x20uLL, "%ss%d");
    }
  }

  return result;
}

uint64_t sub_100043338(uint64_t a1)
{
  *(a1 + 32) = 1112756289;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 116) = 0x4000000200000002;
  *(a1 + 124) = 1073741826;
  *(a1 + 1040) = vdup_n_s32(0x40000002u);
  *(a1 + 1068) = 2;
  *(a1 + 1104) = 2;
  return 0;
}

uint64_t sub_100043388(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000440C0(a1, *(v2 + 116));
  if (v3)
  {
    return v3;
  }

  v3 = sub_1000440C0(a1, *(v2 + 120));
  if (v3)
  {
    return v3;
  }

  v3 = sub_1000440C0(a1, *(v2 + 124));
  if (v3)
  {
    return v3;
  }

  v6 = *(v2 + 56);
  if ((v6 & 0x20) != 0)
  {
    v3 = sub_1000440C0(a1, *(v2 + 1040));
    if (v3)
    {
      return v3;
    }

    v6 = *(v2 + 56);
  }

  if ((v6 & 0x40) != 0)
  {
    v3 = sub_1000440C0(a1, *(v2 + 1044));
    if (v3)
    {
      return v3;
    }
  }

  v3 = sub_100044008(a1 + 3304, "apfs-stream-id-lock", 0x100u);
  if (v3)
  {
    return v3;
  }

  v7 = sub_100044008(a1 + 3440, "apfs-dir-stats-id-lock", 0x10u);
  if (v7)
  {
    v4 = v7;
LABEL_16:
    sub_100044074(a1 + 3304);
    return v4;
  }

  v8 = initialize_phys_range_lock_state(a1 + 3656, 0x20u);
  if (v8)
  {
    v4 = v8;
    sub_100044074(a1 + 3440);
    goto LABEL_16;
  }

  *(a1 + 376) = v2;
  *(a1 + 392) = *(*a1 + 392);
  new_lock((a1 + 1224));
  new_lock((a1 + 1288));
  new_lock((a1 + 1352));
  new_lock((a1 + 1416));
  new_lock((a1 + 1480));
  new_lock((a1 + 1672));
  new_lock((a1 + 1544));
  new_lock((a1 + 1608));
  new_lock((a1 + 1160));
  new_lock((a1 + 3240));
  new_lock((a1 + 1736));
  new_lock((a1 + 3960));
  new_rwlock((a1 + 1800));
  new_rwlock((a1 + 3016));
  new_rwlock((a1 + 2000));
  rolling_stats_init(a1 + 3840, 0xE10u, 0x18u);
  apfs_update_dev_name(a1);
  *(a1 + 600) = 0;
  if ((*(*(a1 + 376) + 57) & 1) != 0 && (fs_is_fully_unencrypted(a1) & 1) == 0)
  {
    *(a1 + 696) = 1;
  }

  new_lock((a1 + 4080));
  new_cv((a1 + 4144));
  return 0;
}

uint64_t sub_1000435D8(uint64_t a1)
{
  v2 = *(a1 + 3640);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  sub_100044074(a1 + 3440);
  sub_100044074(a1 + 3304);
  rolling_stats_destroy(a1 + 3840);
  free_rwlock((a1 + 2816));
  free_rwlock((a1 + 2608));
  free_rwlock((a1 + 2408));
  free_rwlock((a1 + 2200));
  free_rwlock((a1 + 2000));
  free_rwlock((a1 + 3016));
  free_rwlock((a1 + 1800));
  free_lock((a1 + 3240));
  free_lock((a1 + 1160));
  free_lock((a1 + 1224));
  free_lock((a1 + 1544));
  free_lock((a1 + 1608));
  free_lock((a1 + 1416));
  free_lock((a1 + 1480));
  free_lock((a1 + 1672));
  free_lock((a1 + 1288));
  free_lock((a1 + 1352));
  free_lock((a1 + 1736));
  free_lock((a1 + 3960));
  release_phys_range_lock_state(a1 + 3656);
  apfs_keybag_free(*(a1 + 3760));
  free_lock((a1 + 4080));
  free_cv((a1 + 4144));
  return 0;
}

uint64_t sub_1000436E8(uint64_t a1, char a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v26 = 0;
  if (a4 < 0x14)
  {
    return 28;
  }

  v8 = *(a3 + 16);
  if (v8 >= 5)
  {
    log_err("%s:%d: %s bogus phase, %u\n", "apfs_reap", 637, (a1 + 4048), v8);
    return 5;
  }

  v11 = obj_modify(a1, 0, a5);
  if (v11)
  {
    v5 = v11;
    log_err("%s:%d: %s failed to modify the apfs_t before reaping (error %d).\n");
    return v5;
  }

  if (a2)
  {
    spaceman_fs_bounds_clear(*(a1 + 392), a1, a5);
    obj_delete_and_free(a1, a5);
    return 0;
  }

  v5 = 0;
  v12 = *(a3 + 16);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return v5;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return v5;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    v13 = sub_1000440F8(a1, a5, &v26, a3);
    if (v13)
    {
      return v13;
    }

    *a3 = 0;
    *(a3 + 16) = 2;
  }

  v13 = sub_1000442B8(a1, a5, *(*(a1 + 376) + 144), &v26, a3);
  if (v13)
  {
    return v13;
  }

  v15 = *(a1 + 376);
  v16 = *(v15 + 224);
  if (*(v15 + 232) != v16)
  {
    log_err("%s:%d: %s freed != alloced (%llu freed, %llu alloced)\n", "apfs_reap", 677, (a1 + 4048), *(v15 + 232), v16);
    v15 = *(a1 + 376);
  }

  v17 = *(v15 + 56);
  if ((v17 & 0x20) != 0)
  {
    v18 = supplemental_tree_destroy(a1, *(v15 + 1040), 5, a5, 0, 0, v14);
    if (v18)
    {
      v5 = v18;
      strerror(v18);
      log_err("%s:%d: %s supplemental_tree_destroy(fext_tree) failed: %d (%s)\n");
      return v5;
    }

    v15 = *(a1 + 376);
    v17 = *(v15 + 56);
  }

  if ((v17 & 0x40) != 0)
  {
    v19 = supplemental_tree_destroy(a1, *(v15 + 1044), 6, a5, 0, 0, v14);
    if (v19)
    {
      v5 = v19;
      strerror(v19);
      log_err("%s:%d: %s supplemental_tree_destroy(pfkur_tree) failed: %d (%s)\n");
      return v5;
    }
  }

  *(a3 + 16) = 3;
LABEL_31:
  obj_cache_remove_new_fs_objects(*(*(a1 + 392) + 392), a1);
  v20 = *(a1 + 3576);
  if (v20)
  {
    obj_release(v20);
    *(a1 + 3576) = 0;
  }

  v21 = *(a1 + 3624);
  if (v21)
  {
    obj_release(v21);
    *(a1 + 3624) = 0;
  }

  v22 = *(a1 + 3584);
  if (v22)
  {
    obj_release(v22);
    *(a1 + 3584) = 0;
  }

  v23 = omap_destroy(a1, *(*(a1 + 376) + 128), a5, 0);
  if (v23)
  {
    v5 = v23;
    log_err("%s:%d: %s omap_destroy returned %d!\n");
    return v5;
  }

  v13 = apfs_remove_volume_key(a1, a5);
  if (v13)
  {
    return v13;
  }

  log_debug("%s:%d: %s removed key for volume\n", "apfs_reap", 753, (a1 + 4048));
  v5 = apfs_keybag_purge(a1, a5);
  if ((v5 & 0xFFFFFFFD) != 0)
  {
    log_err("%s:%d: %s failed to delete unlock records, error = %d\n");
  }

  else
  {
    log_debug("%s:%d: %s removed unlock records for volume\n", "apfs_reap", 761, (a1 + 4048));
    v25 = *(a1 + 376);
    *(v25 + 976) = 0;
    *(v25 + 1032) = 0;
    *(v25 + 1048) = 0;
    *(v25 + 1096) = 0;
    *(v25 + 1112) = 0;
    *(v25 + 128) = 0u;
    *(v25 + 144) = 0u;
    *(v25 + 1072) = 0u;
    fs_sb_dirty(a1, a5);
    *(a3 + 16) = 4;
  }

  return v5;
}

uint64_t apfs_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  v15 = 0;
  v5 = *(*(a3 + 376) + 128);
  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = obj_get(*(a1 + 392), 0x40000000uLL, v5, &om_desc, 0, a3, 0, 0, &v15);
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 400);
    if (!v11 || !*(v11 + 76))
    {
      log_err("%s:%d: %s failed to get omap %lld: %d\n");
    }

    return v10;
  }

  v10 = omap_checkpoint_traverse(a3, a2, v15, a4);
  v12 = v15[2];
  obj_release(v15);
  if (!v10)
  {
    if ((v12 & 0x4000000000) == 0)
    {
      return 0;
    }

LABEL_13:
    obj_set_skip_checkpoint_traverse(a3, 1);
    return 0;
  }

  v13 = *(a1 + 400);
  if (!v13 || !*(v13 + 76))
  {
    log_err("%s:%d: %s omap checkpoint traverse (op %d) failed: %d\n");
  }

  return v10;
}

uint64_t get_vol_crypto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 504);
  if (!v2)
  {
    v2 = a1;
  }

  v3 = *(*(v2 + 376) + 264) & 0x109;
  if (v3 > 7)
  {
    if (v3 == 8)
    {
      return 2;
    }

    else
    {
      if (v3 != 256)
      {
        goto LABEL_12;
      }

      return 3;
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 0;
      }

LABEL_12:
      sub_1000A6BE4();
    }

    return 1;
  }
}

uint64_t apfs_get_fsroot_tree_ext(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = v9[47];
  v11 = *(v10 + 116);
  v12 = *(v10 + 136);
  memset(&v14[2], 0, 64);
  v14[0] = *off_1000E4C40;
  v14[1] = unk_1000E4C50;
  if ((*(v10 + 56) & 0x20) == 0 || (result = authapfs_get_hash_args(a1, v14), !result))
  {
    if (v11 == 2)
    {
      return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, v14, a4, a5);
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t apfs_has_secondary_fsroot(uint64_t a1)
{
  if (*(*(a1 + 376) + 57))
  {
    return fs_is_fully_unencrypted(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t apfs_get_secondary_fsroot_tree_ext(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if ((*(a1[47] + 57) & 1) == 0)
  {
    return 45;
  }

  v10 = v5[47];
  v11 = *(v10 + 1104);
  v12 = *(v10 + 1096);
  if (fs_is_fully_unencrypted(a1))
  {
    return 45;
  }

  if (v11 != 2)
  {
    return 22;
  }

  return btree_get_extended(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, off_1000E4CA0, a4, a5);
}

uint64_t apfs_get_extentref_tree(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (*(a1[47] + 120) == 2)
  {
    return btree_get_extended(a1, *(a1[47] + 120) & 0xFFFF0000, a2, 0, a3 != 0, &off_1000E4D00, a3, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_snap_meta_tree(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v3 = a1[47];
  if (*(v3 + 124) == 2)
  {
    return btree_get_extended(a1, *(v3 + 124) & 0xFFFF0000, *(v3 + 152), 0, a2 != 0, &off_1000E4D60, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t apfs_get_doc_id_tree_ext(uint64_t *a1, int a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6[47];
  if (*(v7 + 1068) != 2)
  {
    return 22;
  }

  v8 = 1072;
  if (a2)
  {
    v8 = 1080;
  }

  return btree_get_extended(a1, *(v7 + 1068) & 0xFFFF0000, *(v7 + v8), a4, a5 != 0, off_1000E4DC0, a5, a6);
}

uint64_t apfs_doc_id_index_supported(uint64_t a1)
{
  v1 = *(*(a1 + 376) + 964);
  result = 1;
  if (v1 > 63)
  {
    if (v1 != 64 && v1 != 576)
    {
      return 0;
    }
  }

  else
  {
    if (v1)
    {
      v3 = v1 == 2;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100044008(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 120) = a3;
  v4 = _apfs_calloc_typed(a3, 0x10uLL, 0x10200405730B0C9uLL);
  *(a1 + 112) = v4;
  if (!v4)
  {
    return 12;
  }

  new_lock(a1);
  new_cv((a1 + 64));
  return 0;
}

void sub_100044074(uint64_t a1)
{
  free_cv((a1 + 64));
  free_lock(a1);
  v2 = *(a1 + 112);
  v3 = 16 * *(a1 + 120);

  _apfs_free(v2, v3);
}

uint64_t sub_1000440C0(uint64_t a1, int a2)
{
  if ((a2 | 0x40000000u) >> 30 == 1 && a2 == 2)
  {
    return 0;
  }

  else
  {
    return nx_corruption_detected_int(*(*a1 + 392));
  }
}

uint64_t sub_1000440F8(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v18 = 0;
  v19 = 0;
  v8 = a4[1];
  if (v8)
  {
    while (1)
    {
LABEL_2:
      v9 = fs_lookup_snapshot_metadata_by_xid(a1, v8, &v19);
      if (v9)
      {
        v15 = v9;
        log_err("%s:%d: %s Couldn't find snapshot metadata for xid %llu\n");
        return v15;
      }

      v10 = v19;
      v11 = *(v19 + 2);
      if (v11)
      {
        v12 = sub_1000442B8(a1, a2, v11, a3, a4);
        if (v12)
        {
          return v12;
        }

        v10 = v19;
      }

      fs_delete_supplemental_tree(a1, 5, *(v10 + 3), a2, 0);
      fs_delete_supplemental_tree(a1, 6, *(v19 + 3), a2, 0);
      fs_delete_clone_superblock(a1, *(v19 + 3), a2);
      next_snapshot_xid = omap_find_next_snapshot_xid(a1, a4[1], &v18);
      if (next_snapshot_xid)
      {
        break;
      }

      v8 = v18;
      *a4 = 0;
      a4[1] = v8;
    }

    v15 = next_snapshot_xid;
    if (next_snapshot_xid == 2)
    {
      goto LABEL_13;
    }

    log_err("%s:%d: %s lookup_next_snapshot() returned %d\n", "apfs_reap_snapshots", 615, (a1 + 4048), next_snapshot_xid);
  }

  else
  {
    v16 = omap_find_next_snapshot_xid(a1, 0, &v18);
    if (!v16)
    {
      v8 = v18;
      a4[1] = v18;
      goto LABEL_2;
    }

    v15 = v16;
    if (v16 == 2)
    {
LABEL_13:
      fs_delete_snapshot_metadata_tree(a1, a2, 0, v14);
      return 0;
    }

    else
    {
      log_err("%s:%d: %s Hit %d looking up first snapshot\n");
    }
  }

  return v15;
}

uint64_t sub_1000442B8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  extentref_tree = apfs_get_extentref_tree(a1, a3, 0, &v24);
  if (extentref_tree)
  {
    v11 = extentref_tree;
    log_err("%s:%d: apfs_get_extentref_tree(oid=%llu) returned %d\n", "apfs_reap_extentref_blocks", 510, a3, extentref_tree);
  }

  else
  {
    v23 = *a5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    bt_iterator_init_with_hint(v25, v24, 0, 4, &v23, 8, 8, &v20, 0x14u, 0);
    if ((v12 & 0xFFFFFFFD) != 0)
    {
      v11 = v12;
      log_err("%s:%d: %s tree_iter_init() returned %d\n", "apfs_reap_extentref_blocks", 520, (a1 + 4048), v12);
    }

    else
    {
      while (1)
      {
        if (bt_iterator_ended(v25))
        {
          btree_delete(v24, a2, 0);
          v11 = 0;
          goto LABEL_5;
        }

        v14 = v23 & 0xFFFFFFFFFFFFFFFLL;
        *a5 = v23 & 0xFFFFFFFFFFFFFFFLL;
        if (v20 >> 60 == 1 && v21 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = v20 & 0xFFFFFFFFFFFFFFFLL;
          if ((v20 & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            if (apfs_free_data_blocks(a1, a2, v14, v20 & 0xFFFFFFFFFFFFFFFLL))
            {
              log_err("%s:%d: %s extent at lba %llu len %llu couldn't be freed: %d\n");
            }
          }

          else
          {
            log_err("%s:%d: %s found bogus 0-length extent at lba %llu, ignoring\n");
          }

          v17 = *a4 + v16;
          *a4 = v17;
          if (v17 > 0x4000)
          {
            break;
          }
        }

        v18 = bt_iterator_next(v25);
        if ((v18 & 0xFFFFFFFD) != 0)
        {
          v19 = v18;
          log_err("%s:%d: %s iter_next returned %d\n", "apfs_reap_extentref_blocks", 552, (a1 + 4048), v18);
          v11 = v19;
          goto LABEL_5;
        }
      }

      v11 = 36;
    }
  }

LABEL_5:
  if (v24)
  {
    obj_release(v24);
  }

  return v11;
}

uint64_t userfs_volume_is_mountable(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  v4 = *(a1 + 376);
  v5 = *(v4 + 964);
  if (v5 > 0x3F)
  {
    if (v5 != 64 && v5 != 576 && v5 != 768)
    {
      goto LABEL_18;
    }
  }

  else if (v5 >= 3)
  {
LABEL_18:
    log_warn("%s:%d: Refusing to mount volume with role: %u\n");
    return 0;
  }

  if ((*(v4 + 48) & 2) != 0)
  {
    log_warn("%s:%d: Refusing to mount conformance volume.\n");
    return 0;
  }

  v6 = *(v4 + 56);
  if ((v6 & 9) == 0)
  {
    log_warn("%s:%d: Refusing to mount fully sensitive volume.\n");
    return 0;
  }

  if ((v6 & 0x10) != 0)
  {
    log_warn("%s:%d: Refusing to mount incomplete volume.\n");
    return 0;
  }

  if (v5 == 1 && !uuid_is_null((v4 + 1008)))
  {
    log_warn("%s:%d: Allowing read-only mount of read-only system volume.\n", "userfs_volume_is_mountable", 155);
    *a2 = 1;
  }

  if ((*(*(a1 + 376) + 56) & 0x20) != 0)
  {
    log_warn("%s:%d: Refusing to mount sealed volume.\n");
    return 0;
  }

  if (apfs_has_secondary_fsroot(a1))
  {
    log_warn("%s:%d: Refusing to mount a volume formatted with a secondary fs_root tree.\n");
    return 0;
  }

  v9 = *(a1 + 376);
  if ((*(v9 + 57) & 2) != 0)
  {
    log_warn("%s:%d: Refusing to mount a volume formatted with expanded records.\n");
    return 0;
  }

  v7 = 1;
  if ((*(v9 + 48) & 8) != 0)
  {
    log_warn("%s:%d: Allowing read-only mount of a volume with attribution tag records.\n", "userfs_volume_is_mountable", 183);
    *a2 = 1;
  }

  return v7;
}

void *_apfs_obj_zalloc(size_t size, uint64_t a2)
{
  if (size == 0x2000)
  {
    v2 = qword_1000E8598;
    goto LABEL_5;
  }

  v2 = size;
  if (size == 4096)
  {
    v2 = *(&apfs_zone_infos + ((a2 << 63 >> 63) & 0x78) + 8);
LABEL_5:
    v3 = v2;
    v4 = 3442331901;
    goto LABEL_7;
  }

  v3 = size;
  v4 = 889960617;
LABEL_7:
  result = malloc_type_calloc(1uLL, v3, v4);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v2, memory_order_relaxed);
  }

  return result;
}

void *_apfs_zalloc(unsigned int a1)
{
  v1 = *(&apfs_zone_infos + 3 * a1 + 1);
  result = malloc_type_calloc(1uLL, v1, 0xCD2DD0FDuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, v1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc_typed(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void _apfs_obj_zfree(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x2000)
  {
    if (!a1)
    {
      return;
    }

    v4 = &qword_1000E8598;
  }

  else
  {
    v3 = a2;
    if (a2 != 4096)
    {
      if (!a1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (!a1)
    {
      return;
    }

    v4 = (&apfs_zone_infos + ((a3 << 63 >> 63) & 0x78) + 8);
  }

  v3 = *v4;
LABEL_9:
  free(a1);
  atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v3, memory_order_relaxed);
}

void _apfs_zfree(void *a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(&apfs_zone_infos + 3 * a2 + 1);
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -v2, memory_order_relaxed);
  }
}

void _apfs_free(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, -a2, memory_order_relaxed);
  }
}

void *_apfs_malloc_typed(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a1, memory_order_relaxed);
  }

  return result;
}

void *_apfs_realloc_typed(void *a1, uint64_t a2, size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_realloc(a1, size, type_id);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, size - a2, memory_order_relaxed);
  }

  return result;
}

void *_apfs_calloc(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x7012DB5EuLL);
  if (result)
  {
    atomic_fetch_add_explicit(&apfs_allocated_mem_total, a2 * a1, memory_order_relaxed);
  }

  return result;
}

char *jobj_type_to_str(unsigned int a1)
{
  if (a1 < 0x15)
  {
    return (&off_1000E4E20)[a1];
  }

  v1 = byte_100103778;
  snprintf(byte_100103778, 0x20uLL, "Unknown type %d", a1);
  return v1;
}

void update_size_tracking(uint64_t result, uint64_t a2, void *a3, unint64_t a4)
{
  v11 = a4;
  if ((*(a2 + 64) & 2) != 0)
  {
    if (a4)
    {

      sub_100044AF0(result, a2, a3, a4);
    }

    else
    {
      v7 = fs_tx_enter(result, 4, 2, 0, &v11);
      if (v7)
      {
        v8 = v7;
        v9 = *(a2 + 8);
        v10 = strerror(v7);
        log_err("%s:%d: %s failed to enter tx to update size tracking for ino %llu: %s (%d); size tracking may go out of sync\n", "update_size_tracking", 5147, (result + 4048), v9, v10, v8);
      }

      else
      {
        sub_100044AF0(result, a2, a3, v11);
        fs_tx_leave(result, 4, 2, 0, v11);
      }
    }
  }
}

void sub_100044AF0(uint64_t result, uint64_t a2, void *a3, unint64_t a4)
{
  if ((*(a2 + 64) & 2) != 0)
  {
    __dst = 0;
    if (xf_get((a2 + 408), 10, 0, &__dst, 8uLL) || !__dst)
    {
      if (nx_ratelimit_log_allowed(*(result + 392)))
      {
        log_err("%s:%d: %s ino %llu is flagged to maintain dir-stats but has no dir-stats key\n", "update_dir_stats", 689, (result + 4048), *(a2 + 8));
      }
    }

    else
    {
      sub_100044BB0(result, __dst, a3, 0, 0, a4);
    }
  }
}

uint64_t sub_100044BB0(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v33 = 0;
  if ((*(*(a1 + 376) + 56) & 0x200) != 0)
  {
    v9 = 18;
  }

  else
  {
    v9 = 10;
  }

  LOBYTE(v33) = v9;
  WORD1(v33) = 0;
  v34 = a2;
  v35 = 0;
  v36 = *a3;
  v37 = a3[4];
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  xf_init(&v39, 0);
  if (a3[2])
  {
    HIDWORD(v40) |= 4u;
    xf_set(&v39, 1, 0, a3 + 2, 8uLL);
  }

  if (a3[3])
  {
    HIDWORD(v40) |= 8u;
    xf_set(&v39, 3, 0, a3 + 3, 8uLL);
  }

  v10 = (a4 >> 5) & 1;
  v11 = a4 & 0xFFFFFFDF;
  if (a3[5])
  {
    HIDWORD(v40) |= 0x800u;
    xf_set(&v39, 4, 0, a3 + 5, 8uLL);
  }

  v12 = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  v31 = (a1 + 4048);
  v15 = v10;
  while (1)
  {
    BYTE1(v33) = 4;
    DWORD2(v40) = v11;
    *&v38 = a3[6];
    if (v10)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = v11 | v16;
    if (v13)
    {
      v17 |= 0x100000u;
    }

    if (v10 & 1) != 0 || (v13)
    {
      DWORD2(v40) = v17;
    }

    if (v15 == 1)
    {
      v18 = 0x4000;
      goto LABEL_24;
    }

    if (v15 == 2)
    {
      DWORD2(v40) = v17 | 0x40;
      if (v34 == v12)
      {
        v18 = 16448;
LABEL_24:
        DWORD2(v40) = v17 | v18;
      }
    }

    inserted = insert_jobj(a1, 1, &v33, a6);
    if ((inserted & 0xFFFFFFFD) != 0)
    {
      v20 = inserted;
      v21 = v34;
      v22 = strerror(inserted);
      log_err("%s:%d: %s failed to update dir-stats %llu: %s (%d)\n", "update_dir_stats_by_key_ext", 574, v31, v21, v22, v20);
    }

    if ((DWORD2(v40) & 0x400000) == 0)
    {
      break;
    }

    v24 = 0;
    if (!v34)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v24)
    {
      goto LABEL_51;
    }

    if (++v14 == 1025)
    {
      goto LABEL_52;
    }
  }

  if (v15)
  {
    v23 = v34;
    v10 = (DWORD2(v40) >> 5) & 1;
  }

  else
  {
    v23 = v34;
    if ((BYTE8(v40) & 0x40) != 0)
    {
      v25 = v34;
    }

    else
    {
      v25 = v12;
    }

    LOBYTE(v10) = (BYTE8(v40) & 0x20) != 0;
    if ((BYTE8(v40) & 0x20) != 0)
    {
      v15 = 1;
    }

    else
    {
      v12 = v25;
      v15 = (BYTE8(v40) & 0x40) >> 5;
    }
  }

  v13 = (DWORD2(v40) >> 20) & 1;
  if (a5)
  {
    v26 = v23 == a5;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(&v38 + 1);
  v24 = v26 || v23 == *(&v38 + 1);
  v34 = *(&v38 + 1);
  *(&v38 + 1) = 0;
  if (v27)
  {
    goto LABEL_48;
  }

LABEL_51:
  if (v14 < 0x400)
  {
    return xf_release(&v39);
  }

LABEL_52:
  if (nx_ratelimit_log_allowed(*(a1 + 392)))
  {
    log_err("%s:%d: %s stopped updating dir-stats due to chain being too long\n", "update_dir_stats_by_key_ext", 627, v31);
  }

  return xf_release(&v39);
}

uint64_t crypto_obj_release(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    cpx_free(v2);
  }

  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  _apfs_free(a1, 96);
  return 0;
}

uint64_t parse_os_version(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 48) > 9)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = a1;
    v2 = v1 + 10 * v2 - 48;
    v4 = *++a1;
    v1 = v4;
  }

  while ((v4 - 48) < 0xA);
  if (!v2 || v1 == 0)
  {
    return 0;
  }

  v6 = v3[2];
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = 0;
  v8 = 2;
  do
  {
    v7 = v6 + 10 * v7 - 48;
    v6 = a1[v8++];
  }

  while ((v6 - 48) < 0xA);
  v9 = (v1 << 16) | (v2 << 24) | v7;
  if (v7)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t cp_os_version()
{
  result = dword_100103798;
  if (!dword_100103798)
  {
    memset(v2, 0, sizeof(v2));
    v1 = 63;
    sysctlbyname("kern.osversion", v2, &v1, 0, 0);
    *(v2 + v1) = 0;
    if (LOBYTE(v2[0]))
    {
      result = parse_os_version(v2);
      dword_100103798 = result;
      if (!result)
      {
        result = 1;
        dword_100103798 = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t wrap_crypto_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 20) = *(a2 + 48);
  v3 = *(a2 + 56);
  *(a3 + 28) = *(a2 + 12);
  *(a3 + 32) = v3;
  *(a3 + 36) = *(a2 + 60);
  return 0;
}

uint64_t meta_crypto_state_init(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 5;
  *(a5 + 8) = 6;
  update_record = 0;
  *(a5 + 12) = cp_os_version();
  *(a5 + 16) = 1;
  if ((*(*(a1 + 392) + 625) & 1) == 0)
  {
    if (a6)
    {
      *(a6 + 64) = 0;
    }

    if (a7)
    {
      *(a7 + 64) = 1;
    }

    if (apfs_has_secondary_fsroot(a1))
    {
      return 45;
    }

    else
    {
      v17 = *(a1 + 504);
      if (!v17)
      {
        v17 = a1;
      }

      if (*(*(v17 + 376) + 264))
      {
        return 0;
      }

      else if (*(*(a1 + 376) + 964) == 1)
      {
        return 22;
      }

      else
      {
        memset(uu, 0, sizeof(uu));
        memset(dst, 0, sizeof(dst));
        uuid_clear(uu);
        if (a3)
        {
          v23 = apfs_keybag_create(a1, a2, v18, v19, v20, v21, v22);
          if (v23)
          {
            update_record = v23;
            log_err("%s:%d: %s unable to create apfs volume keybag (%d)\n", "apfs_appex_meta_crypto_state_init", 1686, (a1 + 4048), v23);
          }

          else
          {
            v25[0] = a3;
            v25[1] = a4;
            uuid_copy(dst, (*(a1 + 376) + 240));
            update_record = apfs_keybag_set_create_update_record(a1, a2, dst, v25, uu, 0, 2, a9, 0);
            if (update_record)
            {
              log_err("%s:%d: %s unable to create KEK/VEK in apfs volume keybag (%d)\n");
            }

            else
            {
              log_debug("%s:%d: %s created apfs volume KEK/VEK\n", "apfs_appex_meta_crypto_state_init", 1704, (a1 + 4048));
            }
          }
        }

        else
        {
          update_record = 22;
          log_err("%s:%d: %s password is null (%d)\n");
        }
      }
    }
  }

  return update_record;
}

unint64_t apfs_kb_supports_class(uint64_t a1, uint64_t a2)
{
  if (a2 > 0x40)
  {
    return 0;
  }

  v3 = a2;
  vol_crypto = get_vol_crypto(a1, a2);
  if (vol_crypto == 1)
  {
    v10 = get_vol_crypto(a1, v6);
    v8 = 255;
    if (v10 != 1)
    {
      v9 = "get_vol_crypto(apfs) == VOL_CPROTECTED";
LABEL_9:
      panic("assertion failed: %s", v9);
    }

    return (v8 >> v3) & 1;
  }

  if (vol_crypto == 3)
  {
    v7 = get_vol_crypto(a1, v6);
    v8 = 223;
    if (v7 != 3)
    {
      v9 = "get_vol_crypto(apfs) == VOL_PFKEY";
      goto LABEL_9;
    }

    return (v8 >> v3) & 1;
  }

  return 0;
}

void jobj_release(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    switch(*a2)
    {
      case 1u:
        _apfs_free(*(a2 + 9), *(a2 + 32));
        goto LABEL_20;
      case 2u:
        v3 = a2;
        v4 = 40;
        goto LABEL_36;
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

        xf_release((a2 + 408));
        if ((a2[117] & 0x10) != 0)
        {
          free_rwlock((a2 + 448));
          free_rwlock((a2 + 120));
          *(a2 + 14) &= ~0x100000000000uLL;
        }

        _apfs_zfree(a2, 2u);
        return;
      case 4u:
        v4 = *(a2 + 1);
        if (v4 <= 0x17)
        {
          sub_1000A6C3C();
        }

        goto LABEL_35;
      case 5u:
        v4 = *(a2 + 1);
        if (v4 <= 0x27)
        {
          sub_1000A6C94();
        }

        goto LABEL_35;
      case 6u:
      case 0xCu:
        v3 = a2;
        v4 = 24;
        goto LABEL_36;
      case 7u:
        v4 = *(a2 + 1);
        if (v4 <= 0x27)
        {
          sub_1000A6CC0();
        }

        goto LABEL_35;
      case 8u:
        v3 = a2;
        v4 = 56;
        goto LABEL_36;
      case 9u:
        xf_release((a2 + 32));
        _apfs_free(*(a2 + 8), *(a2 + 31));
        goto LABEL_33;
      case 0xAu:
      case 0x12u:
        xf_release((a2 + 64));
        v3 = a2;
        v4 = 96;
        goto LABEL_36;
      case 0xBu:
        v4 = *(a2 + 1);
        if (v4 <= 0x1F)
        {
          sub_1000A6C68();
        }

        goto LABEL_35;
      case 0xDu:
        v5 = a2[16];
        if (v5 == 2)
        {
          goto LABEL_18;
        }

        if (v5 != 1)
        {
          return;
        }

        v4 = *(a2 + 1);
        if (v4 <= 0x1F)
        {
          sub_1000A6C10();
        }

LABEL_35:
        v3 = a2;
LABEL_36:

        _apfs_free(v3, v4);
        break;
      case 0x10u:
LABEL_18:
        xf_release((a2 + 56));
LABEL_20:
        v3 = a2;
        v4 = 80;
        goto LABEL_36;
      case 0x11u:
        v3 = a2;
        v4 = 32;
        goto LABEL_36;
      case 0x13u:
        xf_release((a2 + 48));
LABEL_33:
        v3 = a2;
        v4 = 72;
        goto LABEL_36;
      default:
        log_err("%s:%d: *** Can't release unknown obj type %d\n", "jobj_release", 2834, *a2);
        return;
    }
  }
}

void make_jkey_from_jobj(const char *result, unsigned __int8 *a2, uint64_t a3, int *a4)
{
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
    if ((*(*(result + 47) + 57) & 2) == 0)
    {
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(result + 49));
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s ***: expanded obj type %d (obj_id %llu) found on unsupported volume\n", "make_jkey_from_jobj", 1209, result + 4048, *a2, *(a2 + 1));
      *a4 = 0;
      return;
    }

    if ((v9 & 0xFC) == 0x10)
    {
      *(a3 + 8) = v9;
    }

    else
    {
      v14 = nx_is_panic_on_corruption_enabled(*(result + 49));
      log_corrupt(v14, "%s:%d: %s Cannot make large jkey from unknown type %d (obj_id %llu)\n", "make_large_jkey_header_from_jobj", 1186, result + 4048, *a2, *(a2 + 1));
      v9 = *a2;
    }
  }

  switch(v9)
  {
    case 4u:
      v20 = *(a2 + 10);
      *(a3 + 8) = v20;
      memcpy((a3 + 10), a2 + 24, v20);
      v21 = *(a2 + 10);
      goto LABEL_23;
    case 5u:
    case 8u:
      *(a3 + 8) = *(a2 + 2);
      v15 = 16;
      goto LABEL_26;
    case 9u:
      v17 = *(a2 + 31);
      if ((*(*(result + 47) + 56) & 9) != 0)
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

      memcpy((a3 + v18), *(a2 + 8), v17);
      v15 = v19 + *(a2 + 31);
      goto LABEL_26;
    case 0xAu:
      v15 = 96;
      goto LABEL_26;
    case 0xBu:
      v22 = *(a2 + 12);
      *(a3 + 8) = v22;
      memcpy((a3 + 10), a2 + 26, v22);
      v21 = *(a2 + 12);
LABEL_23:
      v15 = v21 + 10;
      goto LABEL_26;
    case 0xDu:
      *a4 = 16;
      *(a3 + 8) = __ROR8__(*(a2 + 2), 8);
      return;
    case 0xEu:
      *a4 = 0;
      v16 = nx_is_panic_on_corruption_enabled(*(result + 49));
      log_corrupt(v16, "%s:%d: %s ***: expanded type seen on in-memory obj!\n", "make_jkey_from_jobj", 1324, result + 4048);
      return;
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
}

uint64_t jobj_to_key_val(uint64_t a1, unsigned __int16 *__src, uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int a6)
{
  v6 = *(__src + 1);
  v7 = *__src;
  v8 = v7 << 60;
  if ((v7 & 0xF0) != 0)
  {
    v8 = 0xE000000000000000;
  }

  *a3 = v8 & 0xF000000000000000 | v6 & 0xFFFFFFFFFFFFFFFLL;
  v9 = *a4;
  if ((v9 - 4096) < 0xFFFFF001)
  {
    return 22;
  }

  if (v7 >= 0x10u)
  {
    if ((*(*(a1 + 376) + 57) & 2) == 0)
    {
      log_err("%s:%d: %s expanded obj type %hhu found on unsupported volume\n", "jobj_to_key_val", 1512, (a1 + 4048), v7);
      return 22;
    }

    if (v9 <= 0xB)
    {
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s large key size (%u) on record (%llu) is too small\n");
      return 22;
    }

    *(a3 + 8) = v7;
    if (v7 <= 0x11u)
    {
      if (v7 != 16)
      {
        result = 0;
        v18 = *(__src + 3);
        *(a3 + 12) = *(__src + 2);
        *a5 = v18;
        v19 = 20;
LABEL_43:
        *a4 = v19;
        return result;
      }

      v40 = __src[28];
      *(a3 + 12) = *(__src + 1);
      *a5 = *(__src + 4);
      *(a5 + 8) = *(__src + 5);
      *(a5 + 16) = *(__src + 12);
      *(a5 + 20) = *(__src + 13);
      if (v40 && xf_serialize(__src + 28, (a5 + 24), a6 - 24))
      {
        log_err("%s:%d: %s failed to serialize purgeable %llu into jval of size %u\n");
        return 7;
      }

LABEL_56:
      result = 0;
      v19 = 28;
      goto LABEL_43;
    }

    if (v7 == 18)
    {
      v41 = __src[32];
      *(a5 + 24) = *(__src + 2);
      *a5 = *(__src + 3);
      *(a5 + 8) = *(__src + 4);
      *(a5 + 16) = *(__src + 5);
      *(a5 + 32) = *(__src + 7);
      *(a5 + 40) = *(__src + 6);
      *(a5 + 48) = *(__src + 23);
      if (v41 && xf_serialize(__src + 32, (a5 + 52), a6 - 52))
      {
        log_err("%s:%d: %s failed to serialize dir-stats %lld into jval of size %u\n");
        return 7;
      }
    }

    else if (v7 == 19)
    {
      v20 = __src[24];
      *(a3 + 12) = *(__src + 1);
      *a5 = *(__src + 4) & 0xFFFFFFFFFFFFFFLL | (*(__src + 10) << 56);
      if (!v20 || !xf_serialize(__src + 24, (a5 + 8), a6 - 8))
      {
        goto LABEL_56;
      }

      log_err("%s:%d: %s failed to serialize clone mapping <%llu/%llu> into jval of size %u\n");
      return 7;
    }

    result = 0;
    v19 = 12;
    goto LABEL_43;
  }

  switch(v7)
  {
    case 1:
      *a5 = *(__src + 1);
      *(a5 + 16) = *(__src + 2);
      *(a5 + 32) = *(__src + 6);
      *(a5 + 40) = *(__src + 7);
      v16 = __src[32];
      *(a5 + 48) = v16;
      strlcpy((a5 + 50), *(__src + 9), v16);
      goto LABEL_40;
    case 2:
      v43 = __src;
      v32 = *(__src + 1);
      v33 = *(__src + 3);
      *a5 = *(__src + 2) & 0xFFFFFFFFFFFFFFFLL | (v32 << 60);
      *(a5 + 8) = v33;
      v34 = *(__src + 8);
      *(a5 + 16) = v34;
      if (v34 < 0 && v32 == 1)
      {
        log_debug("%s:%d: inserting bad phy ext @ %p : kind %d refcnt %d\n", "jobj_to_key_val", 1538, &v43, 1, v34);
        panic("bad pext.\n");
      }

      goto LABEL_40;
    case 3:
      *a4 = 8;
      *a5 = *(__src + 2);
      *(a5 + 8) = *(__src + 3);
      *(a5 + 16) = *(__src + 4);
      *(a5 + 24) = *(__src + 5);
      *(a5 + 32) = *(__src + 6);
      *(a5 + 40) = *(__src + 7);
      *(a5 + 56) = *(__src + 18);
      *(a5 + 48) = *(__src + 8);
      *(a5 + 60) = *(__src + 19);
      *(a5 + 64) = *(__src + 20);
      *(a5 + 68) = *(__src + 21);
      *(a5 + 72) = *(__src + 22);
      *(a5 + 76) = *(__src + 23);
      *(a5 + 80) = __src[48];
      *(a5 + 82) = __src[49];
      *(a5 + 84) = *(__src + 13);
      if (!__src[204])
      {
        return 0;
      }

      result = xf_serialize(__src + 204, (a5 + 92), a6 - 92);
      if (!result)
      {
        return result;
      }

      log_debug("%s:%d: %s failed to serialize ino %lld into jval of size %u\n");
      return 7;
    case 4:
      v26 = __src[10];
      *(a3 + 8) = v26;
      if (v26 + 10 > v9)
      {
        return 7;
      }

      strlcpy((a3 + 10), __src + 24, v26);
      *a4 = *(a3 + 8) + 10;
      *a5 = *(__src + 4);
      v27 = __src[11];
      *(a5 + 2) = v27;
      memcpy((a5 + 4), __src + __src[10] + 24, v27);
      return 0;
    case 5:
      v22 = *(__src + 3);
      *(a3 + 8) = *(__src + 2);
      *a4 = 16;
      *a5 = v22;
      v23 = __src[16];
      *(a5 + 8) = v23;
      strlcpy((a5 + 10), __src + 34, v23);
      return 0;
    case 6:
      result = 0;
      *a5 = *(__src + 4);
      goto LABEL_42;
    case 7:
      *a4 = 8;
      sub_1000460D0(__src, a5);
      return 0;
    case 8:
      v28 = *(__src + 2);
      *(a3 + 8) = v28;
      *a4 = 16;
      v29 = *(__src + 5);
      if (HIBYTE(v29))
      {
        log_debug("%s:%d: %s File extent too large (%llu > %llu): laddr %llu, paddr %llu\n", "jobj_to_key_val", 1573, (a1 + 4048), v29, 0xFFFFFFFFFFFFFFLL, v28, *(__src + 3));
        __assert_rtn("jobj_to_key_val", "jobj.c", 1574, "0");
      }

      v30 = *(__src + 4);
      if (v30 == -1)
      {
        panic("fext %lld (pos %lld len %lld flags %x can not have crypto-id -1\n", v6, v28, *(__src + 5), *(__src + 48));
      }

      result = 0;
      v31 = *(__src + 3);
      *a5 = v29 & 0xFFFFFFFFFFFFFFLL | (*(__src + 48) << 56);
      *(a5 + 8) = v31;
      *(a5 + 16) = v30;
      return result;
    case 9:
      v37 = __src[31];
      if ((*(*(a1 + 376) + 56) & 9) != 0)
      {
        if (v37 + 12 > v9)
        {
          return 7;
        }

        *(a3 + 8) = v37 & 0x3FF | (*(__src + 14) << 10);
        v38 = 12;
        v39 = 12;
      }

      else
      {
        if (v37 + 10 > v9)
        {
          return 7;
        }

        *(a3 + 8) = v37;
        v38 = 10;
        v39 = 10;
      }

      strlcpy((a3 + v38), *(__src + 8), v37);
      *a4 = v39 + __src[31];
      *(a5 + 16) = __src[30];
      v42 = __src[16];
      *a5 = *(__src + 2);
      *(a5 + 8) = *(__src + 3);
      if (!v42)
      {
        return 0;
      }

      result = xf_serialize(__src + 16, (a5 + 18), a6 - 18);
      if (result)
      {
        log_debug("%s:%d: failed to serialize drec %lld/%s into jval of size %u\n", "jobj_to_key_val", 1682, *(__src + 1), *(__src + 8), a6);
        return 0;
      }

      return result;
    case 10:
      result = 0;
      *a5 = *(__src + 12);
      *(a5 + 16) = vextq_s8(*(__src + 3), *(__src + 3), 8uLL);
      goto LABEL_42;
    case 11:
      v36 = __src[12];
      *(a3 + 8) = v36;
      if (v36 + 10 > v9)
      {
        return 7;
      }

      strlcpy((a3 + 10), __src + 26, v36);
      result = 0;
      v21 = *(a3 + 8) + 10;
      goto LABEL_49;
    case 12:
      result = 0;
      v21 = 8;
LABEL_49:
      *a4 = v21;
      *a5 = *(__src + 2);
      return result;
    case 13:
      v24 = *(__src + 16);
      if (v24 == 2)
      {
        if (__src[28] && xf_serialize(__src + 28, (a5 + 26), a6 - 26))
        {
          log_debug("%s:%d: %s failed to serialize file info with obj_id <%lld> into jval of size <%u>\n");
          return 7;
        }

        *(a5 + 24) = __src[24];
        *a5 = *(__src + 3);
        *(a5 + 8) = *(__src + 4);
        *(a5 + 16) = *(__src + 5);
      }

      else
      {
        if (v24 != 1)
        {
          return 22;
        }

        v25 = *(__src + 26);
        if (v25 + 3 > a6)
        {
          return 7;
        }

        *(a5 + 2) = v25;
        *a5 = __src[12];
        memcpy((a5 + 3), __src + 27, v25);
      }

      result = 0;
      *(a3 + 8) = __ROR8__(*(__src + 2), 8);
      v19 = 16;
      goto LABEL_43;
    case 14:
      *a4 = 0;
      v35 = nx_is_panic_on_corruption_enabled(*(a1 + 392));
      log_corrupt(v35, "%s:%d: %s ***: expanded type seen on in-memory obj!\n");
      return 22;
    default:
LABEL_40:
      result = 0;
LABEL_42:
      v19 = 8;
      goto LABEL_43;
  }
}

void *sub_1000460D0(_DWORD *__src, _DWORD *a2)
{
  v2 = *(__src + 10);
  *a2 = __src[4];
  v3 = a2 + 1;
  if (v2 == 6)
  {
    v4 = HIBYTE(*(__src + 19)) + *(__src + 19);
  }

  else
  {
    v4 = *(__src + 19);
  }

  return memcpy(v3, __src + 5, v4 + 20);
}

uint64_t key_size_for_jobj(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 < 0xFu || (*(*(a1 + 376) + 57) & 2) != 0)
  {
    result = 8;
    switch(*a2)
    {
      case 1u:
      case 2u:
      case 3u:
      case 6u:
      case 7u:
      case 0xAu:
      case 0xCu:
        return result;
      case 4u:
        v5 = *(a2 + 10);
        goto LABEL_12;
      case 5u:
      case 8u:
      case 0xDu:
        return 16;
      case 9u:
        v5 = *(a2 + 31);
        if ((*(*(a1 + 376) + 56) & 9) == 0)
        {
          goto LABEL_12;
        }

        result = v5 + 12;
        break;
      case 0xBu:
        v5 = *(a2 + 12);
LABEL_12:
        result = v5 + 10;
        break;
      case 0xEu:
        is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
        log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s ***: expanded type seen on in-memory obj!\n");
        return 0;
      case 0x10u:
      case 0x13u:
        result = 28;
        break;
      case 0x11u:
        result = 20;
        break;
      case 0x12u:
        result = 12;
        break;
      default:
        log_err("%s:%d: ***: unknown obj type %d\n", "key_size_for_jobj", 1931, *a2);
        return 0;
    }
  }

  else
  {
    v3 = nx_is_panic_on_corruption_enabled(*(a1 + 392));
    log_corrupt(v3, "%s:%d: %s ***: expanded obj type %d found on unsupported volume\n");
    return 0;
  }

  return result;
}

uint64_t val_size_for_jobj(uint64_t a1, unsigned __int16 *a2)
{
  if (*a2 < 0xFu || (*(*(a1 + 376) + 57) & 2) != 0)
  {
    result = 20;
    switch(*a2)
    {
      case 1:
        return a2[32] + 50;
      case 2:
        return result;
      case 3:
        if (a2[204])
        {
          return xf_get_size(a2 + 204) + 92;
        }

        else
        {
          return 92;
        }

      case 4:
        return a2[11] + 4;
      case 5:
        return a2[16] + 10;
      case 6:
        return 4;
      case 7:
        if (a2[10] == 6)
        {
          size = HIBYTE(a2[19]) + a2[19];
        }

        else
        {
          size = a2[19];
        }

        return size + 24;
      case 8:
        return 24;
      case 9:
        if (a2[16])
        {
          return xf_get_size(a2 + 16) + 18;
        }

        else
        {
          return 18;
        }

      case 0xA:
        return 32;
      case 0xB:
      case 0xC:
      case 0x11:
        return 8;
      case 0xD:
        v6 = *(a2 + 2);
        if (v6 == 2)
        {
          if (a2[28])
          {
            return xf_get_size(a2 + 28) + 26;
          }

          else
          {
            return 26;
          }
        }

        if (v6 == 1)
        {
          return *(a2 + 26) + 3;
        }

        log_err("%s:%d: Unknown subtype %d for file info object %lld\n");
        break;
      case 0xE:
        log_err("%s:%d: %s ***: expanded type seen on in-memory obj\n");
        return 0;
      case 0x10:
        if (!a2[28])
        {
          return 24;
        }

        size = xf_get_size(a2 + 28);
        return size + 24;
      case 0x12:
        if (a2[32])
        {
          return xf_get_size(a2 + 32) + 52;
        }

        else
        {
          return 52;
        }

      case 0x13:
        if (a2[24])
        {
          return xf_get_size(a2 + 24) + 8;
        }

        else
        {
          return 8;
        }

      default:
        log_err("%s:%d: ***: unknown obj type %d\n");
        return 0;
    }
  }

  else
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(*(a1 + 392));
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s ***: expanded obj type %d found on unsupported volume\n", "val_size_for_jobj", 1945, (a1 + 4048), *a2);
  }

  return 0;
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

          result = sub_1000467D0(a1, a2, a3, a4, a5);
        }

        else
        {
          log_err("%s:%d: %s key size (%zu) on expanded record (%llu) is too small\n", "jobj_validate_key_val", 2403, (a1 + 4048), a3, *a2 & 0xFFFFFFFFFFFFFFFLL);
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

uint64_t sub_1000467D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
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
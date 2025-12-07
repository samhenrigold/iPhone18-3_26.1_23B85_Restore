@interface MDQueryStringCreateForRanking
@end

@implementation MDQueryStringCreateForRanking

uint64_t ____MDQueryStringCreateForRanking_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 4)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
      *(a2 + 48) = 16;
      goto LABEL_14;
    }

    v4 = *v3;
    if (!*v3 || !*(v3 + 72) || *(v3 + 24) > 8u || (*v4 != 42 || (v4[1] != 42 || v4[2]) && v4[1]) && ((v6 = *(a1 + 40)) == 0 || strcmp(*v3, v6)))
    {
      *(a2 + 48) = 16;
      db_free_qp(v3);
      *(a2 + 16) = 0;
LABEL_14:
      *a2 = 0;
      *(a2 + 8) = 0;
      return a2;
    }

    v8 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (v8)
    {
      free(v4);
      v9 = strdup(*(a1 + 40));
      v3 = *(a2 + 16);
      *v3 = v9;
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      remove_outside_stars((v3 + 72));
      v10 = *(a1 + 48);
      if ((v10 & 0x100) == 0)
      {
LABEL_20:
        if ((v10 & 0x400) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else if ((v10 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    *(*(a2 + 16) + 32) |= 0x44uLL;
    if ((v10 & 0x400) == 0)
    {
LABEL_21:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_29:
    remove_outside_stars((*(a2 + 16) + 72));
    add_trailing_star((*(a2 + 16) + 72));
    v10 = *(a1 + 48);
    if ((v10 & 0x200) == 0)
    {
LABEL_22:
      if ((v10 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_30:
    *(*(a2 + 16) + 32) = *(*(a2 + 16) + 32) & 0xFFFFFFFFFFFFFFBBLL | 0x40;
    if ((v10 & 2) == 0)
    {
LABEL_24:
      v11 = *(a2 + 16);
      *(v11 + 32) = *(v11 + 32) & 0xFFFFFFFFFF7FFFFFLL | (16 * v10) & 0x800000;
      if ((v10 & 0x40000) != 0)
      {
        remove_outside_stars((v11 + 72));
      }

      else
      {
        if ((v10 & 0x20000) == 0)
        {
          return a2;
        }

        remove_leading_star((v11 + 72));
        add_trailing_star((*(a2 + 16) + 72));
      }

      *(*(a2 + 16) + 32) &= 0xFFFFFFFFFFFFFFBBLL;
      return a2;
    }

LABEL_23:
    *(*(a2 + 16) + 32) &= 0xFFFFFFFFFEFFFFBBLL;
    goto LABEL_24;
  }

  return a2;
}

void *____MDQueryStringCreateForRanking_block_invoke_2(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (a2 && a3 && a4)
  {
    v7 = *(a3 + 48);
    if (v7 == 32 || v7 == 16)
    {
      *a2 = a3;
      a2[1] = 0;
      db_free_query_node(a2);
      return a4;
    }

    else
    {
      v10 = *(a4 + 48);
      if (v10 == 32 || v10 == 16)
      {
        *a2 = 0;
        a2[1] = a4;
        db_free_query_node(a2);
      }

      else
      {
        *a2 = a3;
        a2[1] = a4;
        return a2;
      }
    }
  }

  else
  {
    if (a3)
    {
      db_free_query_node(a3);
    }

    if (a4)
    {
      db_free_query_node(a4);
    }

    free(a2);
    return 0;
  }

  return v5;
}

@end
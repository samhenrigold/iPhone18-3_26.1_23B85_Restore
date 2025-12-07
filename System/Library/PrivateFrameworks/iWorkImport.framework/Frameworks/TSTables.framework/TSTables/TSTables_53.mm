uint64_t *sub_22167DED4(uint64_t *result, TST::TableRBTree_Node **a2, TST::TableRBTree_Node **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167DF84(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree_Node>(v18);
      result = sub_22167DF84(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167DF94(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::HeaderStorageBucket_Header::~HeaderStorageBucket_Header(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167E018(uint64_t *result, TST::HeaderStorageBucket_Header **a2, TST::HeaderStorageBucket_Header **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167E0C8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorageBucket_Header>(v18);
      result = sub_22167E0C8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

double sub_22167E0D8(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *&result = sub_2215E99F8(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

void sub_22167E134(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::~TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167E1B8(uint64_t *result, TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive **a2, TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167E268(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive>(v18);
      result = sub_22167E268(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_22167E278(uint64_t *result, TST::TableSortOrderArchive_SortRuleArchive **a2, TST::TableSortOrderArchive_SortRuleArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167E328(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive_SortRuleArchive>(v18);
      result = sub_22167E328(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167E338(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::TableSortOrderUIDArchive_SortRuleArchive::~TableSortOrderUIDArchive_SortRuleArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167E3BC(uint64_t *result, TST::TableSortOrderUIDArchive_SortRuleArchive **a2, TST::TableSortOrderUIDArchive_SortRuleArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167E46C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderUIDArchive_SortRuleArchive>(v18);
      result = sub_22167E46C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167E47C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::CellRange::~CellRange(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167E500(uint64_t *result, TST::CellRange **a2, TST::CellRange **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167E5B0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v18);
      result = sub_22167E5B0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167E5C0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x223D9FC70]();
          MEMORY[0x223DA1450](v5, 0x10A1C40759568C3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167E644(uint64_t *result, TSP::UUIDRectArchive **a2, TSP::UUIDRectArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167E6F4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x223DA0320](v18);
      result = sub_22167E6F4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

double sub_22167E704(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  return sub_22167E760(a1 + 10, a2 + 80);
}

double sub_22167E760(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  return sub_22167E7BC(a1 + 10, a2 + 80);
}

double sub_22167E7BC(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  return sub_22167E818(a1 + 10, a2 + 80);
}

double sub_22167E818(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  return sub_22167E874(a1 + 10, a2 + 80);
}

double sub_22167E874(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *&result = sub_22167E8D0(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

__n128 sub_22167E8D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  LODWORD(v10) = *(a1 + 20);
  *(a1 + 20) = *(a2 + 80);
  *(a2 + 80) = v10;
  LOBYTE(v10) = *(a1 + 84);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = v10;
  return result;
}

void sub_22167E944(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::StrokeLayerArchive_StrokeRunArchive::~StrokeLayerArchive_StrokeRunArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167E9C8(uint64_t *result, TST::StrokeLayerArchive_StrokeRunArchive **a2, TST::StrokeLayerArchive_StrokeRunArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167EA78(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::StrokeLayerArchive_StrokeRunArchive>(v18);
      result = sub_22167EA78(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

__n128 sub_22167EA88(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  *(a1 + 6) = *(a2 + 96);
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v16 = a1[14];
  v17 = a1[15];
  *(a1 + 7) = *(a2 + 112);
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  v18 = a1[16];
  v19 = a1[17];
  *(a1 + 8) = *(a2 + 128);
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  v20 = a1[18];
  v21 = a1[19];
  *(a1 + 9) = *(a2 + 144);
  *(a2 + 144) = v20;
  *(a2 + 152) = v21;
  v22 = a1[20];
  v23 = a1[21];
  result = *(a2 + 160);
  *(a1 + 10) = result;
  *(a2 + 160) = v22;
  *(a2 + 168) = v23;
  v25 = a1[22];
  a1[22] = *(a2 + 176);
  *(a2 + 176) = v25;
  return result;
}

void sub_22167EB4C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::MergeOperationArchive::~MergeOperationArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167EBD0(uint64_t *result, TST::MergeOperationArchive **a2, TST::MergeOperationArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167EC80(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOperationArchive>(v18);
      result = sub_22167EC80(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167EC90(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167ED14(uint64_t *result, TST::CellListArchive_OptionalCell **a2, TST::CellListArchive_OptionalCell **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167EDC4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::CellListArchive_OptionalCell>(v18);
      result = sub_22167EDC4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167EDD4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167EE58(uint64_t *result, TST::ConcurrentCellListArchive_OptionalCell **a2, TST::ConcurrentCellListArchive_OptionalCell **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167EF08(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::ConcurrentCellListArchive_OptionalCell>(v18);
      result = sub_22167EF08(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167EF18(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::CellDiffArchive::~CellDiffArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167EF9C(uint64_t *result, TST::CellDiffArchive **a2, TST::CellDiffArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F04C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::CellDiffArchive>(v18);
      result = sub_22167F04C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F05C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::HierarchicalCellDiffMapArchive_BoxedRow::~HierarchicalCellDiffMapArchive_BoxedRow(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F0E0(uint64_t *result, TST::HierarchicalCellDiffMapArchive_BoxedRow **a2, TST::HierarchicalCellDiffMapArchive_BoxedRow **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F190(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HierarchicalCellDiffMapArchive_BoxedRow>(v18);
      result = sub_22167F190(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F1A0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::~DoubleStyleMapArchive_DoubleStyleMapEntryArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F224(uint64_t *result, TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive **a2, TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F2D4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive>(v18);
      result = sub_22167F2D4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F2E4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::StyleTableMapArchive_StyleTableMapEntryArchive::~StyleTableMapArchive_StyleTableMapEntryArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F368(uint64_t *result, TST::StyleTableMapArchive_StyleTableMapEntryArchive **a2, TST::StyleTableMapArchive_StyleTableMapEntryArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F418(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::StyleTableMapArchive_StyleTableMapEntryArchive>(v18);
      result = sub_22167F418(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F428(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::FormulaPredArgDataArchive::~FormulaPredArgDataArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F4AC(uint64_t *result, TST::FormulaPredArgDataArchive **a2, TST::FormulaPredArgDataArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F55C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(v18);
      result = sub_22167F55C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F56C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::ConditionalStyleSetArchive_ConditionalStyleRule::~ConditionalStyleSetArchive_ConditionalStyleRule(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F5F0(uint64_t *result, TST::ConditionalStyleSetArchive_ConditionalStyleRule **a2, TST::ConditionalStyleSetArchive_ConditionalStyleRule **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F6A0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRule>(v18);
      result = sub_22167F6A0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F6B0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::~ConditionalStyleSetArchive_ConditionalStyleRulePrePivot(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F734(uint64_t *result, TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot **a2, TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F7E4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot>(v18);
      result = sub_22167F7E4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167F7F4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::FilterRulePrePivotArchive::~FilterRulePrePivotArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_22167F878(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::FilterRuleArchive::~FilterRuleArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167F8FC(uint64_t *result, TST::FilterRulePrePivotArchive **a2, TST::FilterRulePrePivotArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167F9AC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRulePrePivotArchive>(v18);
      result = sub_22167F9AC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_22167F9BC(uint64_t *result, TST::FilterRuleArchive **a2, TST::FilterRuleArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167FA6C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRuleArchive>(v18);
      result = sub_22167FA6C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167FA7C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::UniqueIndexArchive_UniqueIndexEntryArchive::~UniqueIndexArchive_UniqueIndexEntryArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167FB00(uint64_t *result, TST::UniqueIndexArchive_UniqueIndexEntryArchive **a2, TST::UniqueIndexArchive_UniqueIndexEntryArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167FBB0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive_UniqueIndexEntryArchive>(v18);
      result = sub_22167FBB0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167FBC0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::HiddenStateExtentArchive_RowOrColumnState::~HiddenStateExtentArchive_RowOrColumnState(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_22167FC44(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::UniqueIndexArchive::~UniqueIndexArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167FCC8(uint64_t *result, TST::HiddenStateExtentArchive_RowOrColumnState **a2, TST::HiddenStateExtentArchive_RowOrColumnState **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167FD78(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStateExtentArchive_RowOrColumnState>(v18);
      result = sub_22167FD78(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_22167FD88(uint64_t *result, TST::UniqueIndexArchive **a2, TST::UniqueIndexArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167FE38(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive>(v18);
      result = sub_22167FE38(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167FE48(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::HiddenStatesArchive::~HiddenStatesArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22167FECC(uint64_t *result, TST::HiddenStatesArchive **a2, TST::HiddenStatesArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22167FF7C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesArchive>(v18);
      result = sub_22167FF7C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22167FF8C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::FormulaStoreArchive_FormulaStorePair::~FormulaStoreArchive_FormulaStorePair(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680010(uint64_t *result, TST::FormulaStoreArchive_FormulaStorePair **a2, TST::FormulaStoreArchive_FormulaStorePair **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2216800C0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive_FormulaStorePair>(v18);
      result = sub_2216800C0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2216800D0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCE::FormulaArchive::~FormulaArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680154(uint64_t *result, TSCE::FormulaArchive **a2, TSCE::FormulaArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221680204(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v18);
      result = sub_221680204(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221680214(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::GroupColumnArchive::~GroupColumnArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680298(uint64_t *result, TST::GroupColumnArchive **a2, TST::GroupColumnArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221680348(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(v18);
      result = sub_221680348(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221680358(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::ColumnAggregateArchive::~ColumnAggregateArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_2216803DC(uint64_t *result, TST::ColumnAggregateArchive **a2, TST::ColumnAggregateArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22168048C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(v18);
      result = sub_22168048C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22168049C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::GroupByArchive_AggNodeArchive::~GroupByArchive_AggNodeArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680520(uint64_t *result, TST::GroupByArchive_AggNodeArchive **a2, TST::GroupByArchive_AggNodeArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2216805D0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(v18);
      result = sub_2216805D0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2216805E0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x223D9FAE0]();
          MEMORY[0x223DA1450](v5, 0x10A1C4029F168B5);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_221680664(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2216806E8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCE::IndexSetArchive::~IndexSetArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_22168076C(uint64_t *result, TSK::FormatStructArchive **a2, TSK::FormatStructArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22168081C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x223DA02D0](v18);
      result = sub_22168081C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_22168082C(uint64_t *result, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive **a2, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2216808DC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive>(v18);
      result = sub_2216808DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2216808EC(uint64_t *result, TSCE::IndexSetArchive **a2, TSCE::IndexSetArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_22168099C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v18);
      result = sub_22168099C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2216809AC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680A30(uint64_t *result, TST::GroupByArchive_GroupNodeArchive **a2, TST::GroupByArchive_GroupNodeArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221680AE0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(v18);
      result = sub_221680AE0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221680AF0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::GroupByArchive_AggregatorArchive::~GroupByArchive_AggregatorArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680B74(uint64_t *result, TST::GroupByArchive_AggregatorArchive **a2, TST::GroupByArchive_AggregatorArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221680C24(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggregatorArchive>(v18);
      result = sub_221680C24(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221680C34(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::GroupByArchive::~GroupByArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680CB8(uint64_t *result, TST::GroupByArchive **a2, TST::GroupByArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221680D68(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive>(v18);
      result = sub_221680D68(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221680D78(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCE::OwnerUIDMapperArchive::~OwnerUIDMapperArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_221680DFC(uint64_t a1, TSCE::OwnerUIDMapperArchive **a2, TSCE::OwnerUIDMapperArchive **a3, int a4, int a5)
{
  if (a5 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  if (v9 >= 1)
  {
    v10 = a3;
    v11 = a2;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = *v11++;
      result = sub_221680EAC(v12, v14);
      --v9;
    }

    while (v9);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = &a3[a5];
    v19 = &a2[a5];
    do
    {
      v20 = *v18++;
      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerUIDMapperArchive>();
      result = sub_221680EAC(v20, v21);
      *v19++ = v21;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221680EBC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::SummaryCellVendorArchive_SummaryCellEntry::~SummaryCellVendorArchive_SummaryCellEntry(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221680F40(uint64_t *result, TST::SummaryCellVendorArchive_SummaryCellEntry **a2, TST::SummaryCellVendorArchive_SummaryCellEntry **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221680FF0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::SummaryCellVendorArchive_SummaryCellEntry>(v18);
      result = sub_221680FF0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221681000(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::HeaderNameMgrTileArchive_NameFragmentArchive::~HeaderNameMgrTileArchive_NameFragmentArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_221681084(uint64_t *result, TST::HeaderNameMgrTileArchive_NameFragmentArchive **a2, TST::HeaderNameMgrTileArchive_NameFragmentArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221681134(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrTileArchive_NameFragmentArchive>(v18);
      result = sub_221681134(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221681144(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TST::HeaderNameMgrArchive_PerTableArchive::~HeaderNameMgrArchive_PerTableArchive(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_2216811C8(uint64_t *result, TST::HeaderNameMgrArchive_PerTableArchive **a2, TST::HeaderNameMgrArchive_PerTableArchive **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221681278(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrArchive_PerTableArchive>(v18);
      result = sub_221681278(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_221681288(uint64_t *result, TST::WidthHeightCacheFittingEntry **a2, TST::WidthHeightCacheFittingEntry **a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_221681338(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCacheFittingEntry>(v18);
      result = sub_221681338(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221681348(TSCK::CollaboratorCursorArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSCK::CollaboratorCursorArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CollaboratorTableCursorSubselectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_);
}

uint64_t sub_2216813CC(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_ImportWarningSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TST::_ImportWarningSetArchive_default_instance_);
}

uint64_t sub_221681450(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CellFormatAndValueArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TST::_CellFormatAndValueArchive_default_instance_);
}

uint64_t sub_2216814D4(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, TST::_CellBorderArchive_default_instance_);
}

uint64_t sub_221681558(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TST::_CommentStorageWrapperArchive_default_instance_);
}

uint64_t sub_2216815DC(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, TST::_CellSpecArchive_default_instance_);
}

uint64_t sub_221681660(uint64_t a1)
{
  v2 = sub_2216816D8(a1, 1);
  *v2 = &unk_2834B20B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2216816D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170889C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::CellID::~CellID);
}

uint64_t sub_221681764(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217088CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::CellUIDLookupListArchive::~CellUIDLookupListArchive);
}

uint64_t sub_2216817F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217088FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TST::CellUIDListArchive::~CellUIDListArchive);
}

uint64_t sub_22168187C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170892C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_221681904);
}

uint64_t sub_221681924(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170895C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2216819AC);
}

void *sub_2216819CC(uint64_t a1)
{
  v2 = sub_221681A40(a1, 1);
  *v2 = &unk_2834B2428;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221681A40(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170898C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::CellRange::~CellRange);
}

void *sub_221681ACC(uint64_t a1)
{
  v2 = sub_221681B40(a1, 1);
  *v2 = &unk_2834B24D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221681B40(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217089BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::ExpandedCellRange::~ExpandedCellRange);
}

void *sub_221681BCC(uint64_t a1)
{
  v2 = sub_221681C44(a1, 1);
  *v2 = &unk_2834B2588;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TableSelection_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_221681C44(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217089EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::TableSelection::~TableSelection);
}

uint64_t sub_221681CD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708A1C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::TileRowInfo::~TileRowInfo);
}

uint64_t sub_221681D5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708A4C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::Tile::~Tile);
}

uint64_t sub_221681DE8(uint64_t a1)
{
  v2 = sub_221681E60(a1, 1);
  *v2 = &unk_2834B2798;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TileStorage_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_221681E60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708A7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::TileStorage_Tile::~TileStorage_Tile);
}

uint64_t sub_221681EEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708AAC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::TileStorage::~TileStorage);
}

uint64_t sub_221681F78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708ADC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::PopUpMenuModel_CellValue::~PopUpMenuModel_CellValue);
}

uint64_t sub_221682004(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708B0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::PopUpMenuModel::~PopUpMenuModel);
}

uint64_t sub_221682090(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708B3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ImportWarningSetArchive_FormulaImportWarning::~ImportWarningSetArchive_FormulaImportWarning);
}

uint64_t sub_22168211C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708B6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TST::ImportWarningSetArchive::~ImportWarningSetArchive);
}

void *sub_2216821A8(uint64_t a1)
{
  v2 = sub_22168221C(a1, 1);
  *v2 = &unk_2834B2BB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellRefImportWarningSetPairArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22168221C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708B9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::CellRefImportWarningSetPairArchive::~CellRefImportWarningSetPairArchive);
}

uint64_t sub_2216822A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708BCC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ImportWarningSetByCellRefArchive::~ImportWarningSetByCellRefArchive);
}

uint64_t sub_221682334(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708BFC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TST::TableDataList_ListEntry::~TableDataList_ListEntry);
}

uint64_t sub_2216823C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708C2C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TST::TableDataList::~TableDataList);
}

uint64_t sub_22168244C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708C5C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::TableDataListSegment::~TableDataListSegment);
}

uint64_t sub_2216824D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708C8C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221682560);
}

uint64_t sub_221682580(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708CBC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::TableRBTree::~TableRBTree);
}

uint64_t sub_22168260C(uint64_t a1)
{
  v2 = sub_221682688(a1, 1);
  *v2 = &unk_2834B3088;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_Header_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221682688(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708CEC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::HeaderStorageBucket_Header::~HeaderStorageBucket_Header);
}

uint64_t sub_221682714(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708D1C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::HeaderStorageBucket::~HeaderStorageBucket);
}

uint64_t sub_2216827A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708D4C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::HeaderStorage::~HeaderStorage);
}

uint64_t sub_22168282C(uint64_t a1)
{
  v2 = sub_2216828CC(a1, 1);
  *v2 = &unk_2834B3298;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DataStore_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 184) = 0;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2216828CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708D7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 192, TST::DataStore::~DataStore);
}

uint64_t sub_221682958(uint64_t a1)
{
  v2 = sub_2216829E8(a1, 1);
  *v2 = &unk_2834B3348;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 113) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2216829E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708DB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, TST::TableInfoArchive::~TableInfoArchive);
}

void *sub_221682A74(uint64_t a1)
{
  v2 = sub_221682AE8(a1, 1);
  *v2 = &unk_2834B33F8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CategoryInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221682AE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708DE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::CategoryInfoArchive::~CategoryInfoArchive);
}

void *sub_221682B74(uint64_t a1)
{
  v2 = sub_221682BE8(a1, 1);
  *v2 = &unk_2834B34A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_WPTableInfoArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221682BE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708E18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::WPTableInfoArchive::~WPTableInfoArchive);
}

uint64_t sub_221682C74(uint64_t a1)
{
  v2 = sub_221682D14(a1, 1);
  *v2 = &unk_2834B3558;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(scc_info_TableStyleNetworkArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 304) = 0;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  return v2;
}

uint64_t sub_221682D14(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708E48(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 312, TST::TableStyleNetworkArchive::~TableStyleNetworkArchive);
}

uint64_t sub_221682DA0(uint64_t a1)
{
  v2 = sub_221682E18(a1, 1);
  *v2 = &unk_2834B3608;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221682E18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708E84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::~TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive);
}

uint64_t sub_221682EA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708EB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::TableGroupSortOrderUIDArchive::~TableGroupSortOrderUIDArchive);
}

uint64_t sub_221682F30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708EE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221682FB8);
}

uint64_t sub_221682FD8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708F14(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::TableSortOrderArchive::~TableSortOrderArchive);
}

uint64_t sub_221683064(uint64_t a1)
{
  v2 = sub_2216830DC(a1, 1);
  *v2 = &unk_2834B38C8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_SortRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2216830DC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708F44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::TableSortOrderUIDArchive_SortRuleArchive::~TableSortOrderUIDArchive_SortRuleArchive);
}

uint64_t sub_221683168(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708F74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::TableSortOrderUIDArchive::~TableSortOrderUIDArchive);
}

void *sub_2216831F4(uint64_t a1)
{
  v2 = sub_221683268(a1, 1);
  *v2 = &unk_2834B3A28;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SortRuleReferenceTrackerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221683268(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708FA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::SortRuleReferenceTrackerArchive::~SortRuleReferenceTrackerArchive);
}

uint64_t sub_2216832F4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221708FD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::CellRegion::~CellRegion);
}

uint64_t sub_221683380(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709004(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::CellUIDRegionArchive::~CellUIDRegionArchive);
}

uint64_t sub_22168340C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709034(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TST::StructuredTextImportRecord::~StructuredTextImportRecord);
}

uint64_t sub_221683498(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709064(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TST::StructuredTextImportRecordUID::~StructuredTextImportRecordUID);
}

uint64_t sub_221683524(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709094(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 632, TST::TableModelArchive::~TableModelArchive);
}

uint64_t sub_2216835B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217090D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 232, TST::SummaryModelArchive::~SummaryModelArchive);
}

uint64_t sub_22168363C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709100(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TST::SummaryModelGroupByChangeStateArchive::~SummaryModelGroupByChangeStateArchive);
}

uint64_t sub_2216836C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709130(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, TST::ColumnRowUIDMapArchive::~ColumnRowUIDMapArchive);
}

uint64_t sub_221683754(uint64_t a1)
{
  v2 = sub_2216837CC(a1, 1);
  *v2 = &unk_2834B4058;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_StrokeLayerArchive_StrokeRunArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2216837CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709160(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::StrokeLayerArchive_StrokeRunArchive::~StrokeLayerArchive_StrokeRunArchive);
}

uint64_t sub_221683858(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709190(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::StrokeLayerArchive::~StrokeLayerArchive);
}

uint64_t sub_2216838E4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217091C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, TST::StrokeSidecarArchive::~StrokeSidecarArchive);
}

uint64_t sub_221683970(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217091F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_2216839F8);
}

uint64_t sub_221683A18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709220(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 232, TST::Cell::~Cell);
}

uint64_t sub_221683AA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709250(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::MergeRegionMapArchive::~MergeRegionMapArchive);
}

uint64_t sub_221683B30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709280(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, TST::CellMapArchive::~CellMapArchive);
}

void *sub_221683BBC(uint64_t a1)
{
  v2 = sub_221683C30(a1, 1);
  *v2 = &unk_2834B4528;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221683C30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217092B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::CellListArchive_OptionalCell::~CellListArchive_OptionalCell);
}

uint64_t sub_221683CBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217092E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::CellListArchive::~CellListArchive);
}

uint64_t sub_221683D48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709310(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TST::ConcurrentCellMapArchive::~ConcurrentCellMapArchive);
}

void *sub_221683DD4(uint64_t a1)
{
  v2 = sub_221683E48(a1, 1);
  *v2 = &unk_2834B4738;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ConcurrentCellListArchive_OptionalCell_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221683E48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709340(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell);
}

uint64_t sub_221683ED4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709370(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::ConcurrentCellListArchive::~ConcurrentCellListArchive);
}

uint64_t sub_221683F60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217093A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 152, TST::CellFormatAndValueArchive::~CellFormatAndValueArchive);
}

uint64_t sub_221683FEC(uint64_t a1)
{
  v2 = sub_22168406C(a1, 1);
  *v2 = &unk_2834B4948;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 54) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_22168406C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217093DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::CellSpecArchive::~CellSpecArchive);
}

void *sub_2216840F8(uint64_t a1)
{
  v2 = sub_22168416C(a1, 1);
  *v2 = &unk_2834B49F8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_22168416C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170940C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::CommentStorageWrapperArchive::~CommentStorageWrapperArchive);
}

void *sub_2216841F8(uint64_t a1)
{
  v2 = sub_22168426C(a1, 1);
  *v2 = &unk_2834B4AA8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellDiffArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22168426C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170943C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::CellDiffArchive::~CellDiffArchive);
}

void *sub_2216842F8(uint64_t a1)
{
  v2 = sub_22168436C(a1, 1);
  *v2 = &unk_2834B4B58;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellDiffArray_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_22168436C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170946C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::CellDiffArray::~CellDiffArray);
}

uint64_t sub_2216843F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170949C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::CellDiffArraySegment::~CellDiffArraySegment);
}

uint64_t sub_221684484(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217094CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::CellDiffMapArchive::~CellDiffMapArchive);
}

uint64_t sub_221684510(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217094FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::HierarchicalCellDiffMapArchive_BoxedRow::~HierarchicalCellDiffMapArchive_BoxedRow);
}

uint64_t sub_22168459C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170952C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 248, TST::HierarchicalCellDiffMapArchive::~HierarchicalCellDiffMapArchive);
}

void *sub_221684628(uint64_t a1)
{
  v2 = sub_2216846A0(a1, 1);
  *v2 = &unk_2834B4EC8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DoubleStyleMapArchive_DoubleStyleMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_2216846A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709568(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::~DoubleStyleMapArchive_DoubleStyleMapEntryArchive);
}

uint64_t sub_22168472C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709598(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::DoubleStyleMapArchive::~DoubleStyleMapArchive);
}

uint64_t sub_2216847B8(uint64_t a1)
{
  v2 = sub_221684830(a1, 1);
  *v2 = &unk_2834B5028;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_StyleTableMapEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221684830(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217095C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::StyleTableMapArchive_StyleTableMapEntryArchive::~StyleTableMapArchive_StyleTableMapEntryArchive);
}

uint64_t sub_2216848BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217095F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::StyleTableMapArchive::~StyleTableMapArchive);
}

uint64_t sub_221684948(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709628(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TST::SelectionArchive::~SelectionArchive);
}

uint64_t sub_2216849D4(uint64_t a1)
{
  v2 = sub_221684A54(a1, 1);
  *v2 = &unk_2834B5238;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DeathhawkRdar39989167CellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 52) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221684A54(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709658(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::DeathhawkRdar39989167CellSelectionArchive::~DeathhawkRdar39989167CellSelectionArchive);
}

uint64_t sub_221684AE0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709688(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221684B68);
}

uint64_t sub_221684B88(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217096B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_221684C10);
}

uint64_t sub_221684C30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217096E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_221684CB8);
}

uint64_t sub_221684CD8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709718(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_221684D60);
}

void *sub_221684D80(uint64_t a1)
{
  v2 = sub_221684DF4(a1, 1);
  *v2 = &unk_2834B55A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_AutofillSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221684DF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709748(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::AutofillSelectionArchive::~AutofillSelectionArchive);
}

uint64_t sub_221684E80(uint64_t a1)
{
  v2 = sub_221684EF8(a1, 1);
  *v2 = &unk_2834B5658;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FilterRulePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_221684EF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709778(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::FilterRulePrePivotArchive::~FilterRulePrePivotArchive);
}

void *sub_221684F84(uint64_t a1)
{
  v2 = sub_221684FF8(a1, 1);
  *v2 = &unk_2834B5708;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FilterRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221684FF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217097A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::FilterRuleArchive::~FilterRuleArchive);
}

uint64_t sub_221685084(uint64_t a1)
{
  v2 = sub_2216850FC(a1, 1);
  *v2 = &unk_2834B57B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TableStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2216850FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217097D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::TableStyleArchive::~TableStyleArchive);
}

uint64_t sub_221685188(uint64_t a1)
{
  v2 = sub_221685200(a1, 1);
  *v2 = &unk_2834B5868;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221685200(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709808(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::CellStyleArchive::~CellStyleArchive);
}

uint64_t sub_22168528C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709838(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TST::FormulaPredArgDataArchive::~FormulaPredArgDataArchive);
}

uint64_t sub_221685318(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709868(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TST::FormulaPredArgArchive::~FormulaPredArgArchive);
}

uint64_t sub_2216853A4(uint64_t a1)
{
  v2 = sub_221685420(a1, 1);
  *v2 = &unk_2834B5A78;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredicatePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221685420(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709898(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::FormulaPredicatePrePivotArchive::~FormulaPredicatePrePivotArchive);
}

uint64_t sub_2216854AC(uint64_t a1)
{
  v2 = sub_221685534(a1, 1);
  *v2 = &unk_2834B5B28;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredicateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 85) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221685534(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217098C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TST::FormulaPredicateArchive::~FormulaPredicateArchive);
}

void *sub_2216855C0(uint64_t a1)
{
  v2 = sub_221685638(a1, 1);
  *v2 = &unk_2834B5BD8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_221685638(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217098F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::~ConditionalStyleSetArchive_ConditionalStyleRulePrePivot);
}

void *sub_2216856C4(uint64_t a1)
{
  v2 = sub_22168573C(a1, 1);
  *v2 = &unk_2834B5C88;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRule_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_22168573C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709928(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ConditionalStyleSetArchive_ConditionalStyleRule::~ConditionalStyleSetArchive_ConditionalStyleRule);
}

uint64_t sub_2216857C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709958(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ConditionalStyleSetArchive_ConditionalStyleRules::~ConditionalStyleSetArchive_ConditionalStyleRules);
}

uint64_t sub_221685854(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709988(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::ConditionalStyleSetArchive::~ConditionalStyleSetArchive);
}

uint64_t sub_2216858E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217099B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TST::FilterSetArchive::~FilterSetArchive);
}

uint64_t sub_22168596C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217099E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::UniqueIndexArchive_UniqueIndexEntryArchive::~UniqueIndexArchive_UniqueIndexEntryArchive);
}

uint64_t sub_2216859F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709A18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::UniqueIndexArchive::~UniqueIndexArchive);
}

uint64_t sub_221685A84(uint64_t a1)
{
  v2 = sub_221685AFC(a1, 1);
  *v2 = &unk_2834B60A8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_HiddenStateExtentArchive_RowOrColumnState_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 31) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_221685AFC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709A48(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::HiddenStateExtentArchive_RowOrColumnState::~HiddenStateExtentArchive_RowOrColumnState);
}

uint64_t sub_221685B88(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709A78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 184, TST::HiddenStateExtentArchive::~HiddenStateExtentArchive);
}

void *sub_221685C14(uint64_t a1)
{
  v2 = sub_221685C8C(a1, 1);
  *v2 = &unk_2834B6208;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_HiddenStatesArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_221685C8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709AB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::HiddenStatesArchive::~HiddenStatesArchive);
}

uint64_t sub_221685D18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709AE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::HiddenStatesOwnerArchive::~HiddenStatesOwnerArchive);
}

uint64_t sub_221685DA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709B14(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TST::ExpandCollapseStateArchive::~ExpandCollapseStateArchive);
}

void *sub_221685E30(uint64_t a1)
{
  v2 = sub_221685EA4(a1, 1);
  *v2 = &unk_2834B6418;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221685EA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709B44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::TokenAttachmentArchive::~TokenAttachmentArchive);
}

uint64_t sub_221685F30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709B74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::ExpressionNodeArchive::~ExpressionNodeArchive);
}

uint64_t sub_221685FBC(uint64_t a1)
{
  v2 = sub_221686034(a1, 1);
  *v2 = &unk_2834B6578;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_BooleanNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_221686034(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709BA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::BooleanNodeArchive::~BooleanNodeArchive);
}

uint64_t sub_2216860C0(uint64_t a1)
{
  v2 = sub_22168613C(a1, 1);
  *v2 = &unk_2834B6628;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_NumberNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_22168613C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709BD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::NumberNodeArchive::~NumberNodeArchive);
}

uint64_t sub_2216861C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709C04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::StringNodeArchive::~StringNodeArchive);
}

uint64_t sub_221686254(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709C34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::IdentifierNodeArchive::~IdentifierNodeArchive);
}

void *sub_2216862E0(uint64_t a1)
{
  v2 = sub_221686354(a1, 1);
  *v2 = &unk_2834B6838;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ArrayNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221686354(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709C64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::ArrayNodeArchive::~ArrayNodeArchive);
}

void *sub_2216863E0(uint64_t a1)
{
  v2 = sub_221686454(a1, 1);
  *v2 = &unk_2834B68E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ListNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221686454(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709C94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::ListNodeArchive::~ListNodeArchive);
}

uint64_t sub_2216864E0(uint64_t a1)
{
  v2 = sub_221686558(a1, 1);
  *v2 = &unk_2834B6998;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_OperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_221686558(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709CC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::OperatorNodeArchive::~OperatorNodeArchive);
}

void *sub_2216865E4(uint64_t a1)
{
  v2 = sub_221686658(a1, 1);
  *v2 = &unk_2834B6A48;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PostfixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221686658(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709CF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::PostfixOperatorNodeArchive::~PostfixOperatorNodeArchive);
}

void *sub_2216866E4(uint64_t a1)
{
  v2 = sub_221686758(a1, 1);
  *v2 = &unk_2834B6AF8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PrefixOperatorNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221686758(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709D24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::PrefixOperatorNodeArchive::~PrefixOperatorNodeArchive);
}

uint64_t sub_2216867E4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709D54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::FunctionNodeArchive::~FunctionNodeArchive);
}

void *sub_221686870(uint64_t a1)
{
  v2 = sub_2216868E4(a1, 1);
  *v2 = &unk_2834B6C58;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2216868E4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709D84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::FunctionEndNodeArchive::~FunctionEndNodeArchive);
}

uint64_t sub_221686970(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709DB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::DateNodeArchive::~DateNodeArchive);
}

uint64_t sub_2216869FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709DE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TST::ReferenceNodeArchive::~ReferenceNodeArchive);
}

uint64_t sub_221686A88(uint64_t a1)
{
  v2 = sub_221686B04(a1, 1);
  *v2 = &unk_2834B6E68;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DurationNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221686B04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709E14(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::DurationNodeArchive::~DurationNodeArchive);
}

uint64_t sub_221686B90(uint64_t a1)
{
  v2 = sub_221686C08(a1, 1);
  *v2 = &unk_2834B6F18;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ArgumentPlaceholderNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221686C08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709E44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ArgumentPlaceholderNodeArchive::~ArgumentPlaceholderNodeArchive);
}

void *sub_221686C94(uint64_t a1)
{
  v2 = sub_221686D08(a1, 1);
  *v2 = &unk_2834B6FC8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_EmptyExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221686D08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709E74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::EmptyExpressionNodeArchive::~EmptyExpressionNodeArchive);
}

uint64_t sub_221686D94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709EA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::VariableNodeArchive::~VariableNodeArchive);
}

void *sub_221686E20(uint64_t a1)
{
  v2 = sub_221686E94(a1, 1);
  *v2 = &unk_2834B7128;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpillOriginRefNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221686E94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709ED4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::SpillOriginRefNodeArchive::~SpillOriginRefNodeArchive);
}

uint64_t sub_221686F20(uint64_t a1)
{
  v2 = sub_221686FA0(a1, 1);
  *v2 = &unk_2834B71D8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_LayoutHintArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 52) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221686FA0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709F04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::LayoutHintArchive::~LayoutHintArchive);
}

uint64_t sub_22168702C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709F34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::CompletionTokenAttachmentArchive::~CompletionTokenAttachmentArchive);
}

uint64_t sub_2216870B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709F64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::HiddenStateFormulaOwnerArchive::~HiddenStateFormulaOwnerArchive);
}

uint64_t sub_221687144(uint64_t a1)
{
  v2 = sub_2216871BC(a1, 1);
  *v2 = &unk_2834B73E8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaStoreArchive_FormulaStorePair_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2216871BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709F94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::FormulaStoreArchive_FormulaStorePair::~FormulaStoreArchive_FormulaStorePair);
}

uint64_t sub_221687248(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709FC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::FormulaStoreArchive::~FormulaStoreArchive);
}

uint64_t sub_2216872D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221709FF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TST::MergeOperationArchive::~MergeOperationArchive);
}

void *sub_221687360(uint64_t a1)
{
  v2 = sub_2216873D4(a1, 1);
  *v2 = &unk_2834B75F8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_MergeOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_2216873D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A024(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::MergeOwnerArchive::~MergeOwnerArchive);
}

void *sub_221687460(uint64_t a1)
{
  v2 = sub_2216874D4(a1, 1);
  *v2 = &unk_2834B76A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_2216874D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A054(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::PencilAnnotationArchive::~PencilAnnotationArchive);
}

uint64_t sub_221687560(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A084(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::PencilAnnotationOwnerArchive::~PencilAnnotationOwnerArchive);
}

uint64_t sub_2216875EC(uint64_t a1)
{
  v2 = sub_221687678(a1, 1);
  *v2 = &unk_2834B7808;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_AccumulatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 100) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221687678(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A0B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, TST::AccumulatorArchive::~AccumulatorArchive);
}

uint64_t sub_221687704(uint64_t a1)
{
  v2 = sub_221687780(a1, 1);
  *v2 = &unk_2834B78B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_GroupColumnArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221687780(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A0E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::GroupColumnArchive::~GroupColumnArchive);
}

uint64_t sub_22168780C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A114(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::GroupColumnListArchive::~GroupColumnListArchive);
}

uint64_t sub_221687898(uint64_t a1)
{
  v2 = sub_221687918(a1, 1);
  *v2 = &unk_2834B7A18;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ColumnAggregateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221687918(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A144(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::ColumnAggregateArchive::~ColumnAggregateArchive);
}

uint64_t sub_2216879A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A174(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::ColumnAggregateListArchive::~ColumnAggregateListArchive);
}

uint64_t sub_221687A30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A1A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::GroupByArchive_AggNodeArchive::~GroupByArchive_AggNodeArchive);
}

void *sub_221687ABC(uint64_t a1)
{
  v2 = sub_221687B30(a1, 1);
  *v2 = &unk_2834B7C28;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_AggregatorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221687B30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A1D4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::GroupByArchive_AggregatorArchive::~GroupByArchive_AggregatorArchive);
}

uint64_t sub_221687BBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A204(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive);
}

uint64_t sub_221687C48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A234(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive);
}

uint64_t sub_221687CD4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A264(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive);
}

uint64_t sub_221687D60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A294(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 224, TST::GroupByArchive::~GroupByArchive);
}

uint64_t sub_221687DEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A2D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::CategoryOwnerArchive::~CategoryOwnerArchive);
}

uint64_t sub_221687E78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A300(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::CategoryOwnerRefArchive::~CategoryOwnerRefArchive);
}

uint64_t sub_221687F04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A330(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TST::PivotGroupingColumnOptionsMapArchive::~PivotGroupingColumnOptionsMapArchive);
}

uint64_t sub_221687F90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A360(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 128, TST::PivotOwnerArchive::~PivotOwnerArchive);
}

void *sub_22168801C(uint64_t a1)
{
  v2 = sub_221688094(a1, 1);
  *v2 = &unk_2834B8258;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RichTextPayloadArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_221688094(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A39C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::RichTextPayloadArchive::~RichTextPayloadArchive);
}

void *sub_221688120(uint64_t a1)
{
  v2 = sub_221688194(a1, 1);
  *v2 = &unk_2834B8308;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221688194(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A3CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::FormulaEqualsTokenAttachmentArchive::~FormulaEqualsTokenAttachmentArchive);
}

uint64_t sub_221688220(uint64_t a1)
{
  v2 = sub_22168829C(a1, 1);
  *v2 = &unk_2834B83B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 47) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_22168829C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A3FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::CellFillStandIn::~CellFillStandIn);
}

uint64_t sub_221688328(uint64_t a1)
{
  v2 = sub_2216883A0(a1, 1);
  *v2 = &unk_2834B8468;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2216883A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A42C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::FormulaSelectionArchive::~FormulaSelectionArchive);
}

uint64_t sub_22168842C(uint64_t a1)
{
  v2 = sub_2216884AC(a1, 1);
  *v2 = &unk_2834B8518;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2216884AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A45C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TST::CellBorderArchive::~CellBorderArchive);
}

uint64_t sub_221688538(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A48C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, TST::DefaultCellStylesContainerArchive::~DefaultCellStylesContainerArchive);
}

uint64_t sub_2216885C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A4BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::MultiTableRemapperArchive::~MultiTableRemapperArchive);
}

uint64_t sub_221688650(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A4EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 232, TST::ChangePropagationMapWrapper::~ChangePropagationMapWrapper);
}

void *sub_2216886DC(uint64_t a1)
{
  v2 = sub_221688754(a1, 1);
  *v2 = &unk_2834B87D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_221688754(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A51C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::SummaryCellVendorArchive_SummaryCellEntry::~SummaryCellVendorArchive_SummaryCellEntry);
}

uint64_t sub_2216887E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A54C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::SummaryCellVendorArchive::~SummaryCellVendorArchive);
}

void *sub_22168886C(uint64_t a1)
{
  v2 = sub_2216888E0(a1, 1);
  *v2 = &unk_2834B8938;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_2216888E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A57C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TST::CategoryOrderArchive::~CategoryOrderArchive);
}

void *sub_22168896C(uint64_t a1)
{
  v2 = sub_2216889E0(a1, 1);
  *v2 = &unk_2834B89E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2216889E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A5AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::PivotOrderArchive::~PivotOrderArchive);
}

uint64_t sub_221688A6C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A5DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TST::HeaderNameMgrTileArchive_NameFragmentArchive::~HeaderNameMgrTileArchive_NameFragmentArchive);
}

uint64_t sub_221688AF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A60C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::HeaderNameMgrTileArchive::~HeaderNameMgrTileArchive);
}

uint64_t sub_221688B84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A63C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TST::HeaderNameMgrArchive_PerTableArchive::~HeaderNameMgrArchive_PerTableArchive);
}

uint64_t sub_221688C10(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A66C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TST::HeaderNameMgrArchive::~HeaderNameMgrArchive);
}

uint64_t sub_221688C9C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A69C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221688D24);
}

uint64_t sub_221688D44(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A6CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TST::WidthHeightCache::~WidthHeightCache);
}

void *sub_221688DD0(uint64_t a1)
{
  v2 = sub_221688E44(a1, 1);
  *v2 = &unk_2834B8EB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221688E44(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A6FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TST::LayoutEngineArchive::~LayoutEngineArchive);
}

uint64_t sub_221688ED0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170A72C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TST::CollaboratorTableCursorSubselectionArchive::~CollaboratorTableCursorSubselectionArchive);
}

uint64_t sub_221689030(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 92);

  return sub_221567030(v2, va, v4);
}

uint64_t sub_221689058(google::protobuf::UnknownFieldSet *a1)
{

  return google::protobuf::UnknownFieldSet::AddVarint(a1);
}

uint64_t sub_2216890C4(uint64_t a1, uint64_t a2)
{

  return google::protobuf::internal::UnknownFieldParse();
}

uint64_t sub_2216890DC()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(scc_info_CollaboratorTableCursorSubselectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TST::CollaboratorTableCursorSubselectionArchive::table_cursor_subselection = 200;
  qword_2812E9AB0 = &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_;
  sub_221681348(0xC8, 11, 0);
  if (atomic_load_explicit(scc_info_ImportWarningSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TST::import_warning_set = 500;
  qword_2812E9AC0 = &TST::_ImportWarningSetArchive_default_instance_;
  sub_2216813CC(0x1F4, 11, 0);
  if (atomic_load_explicit(scc_info_CellFormatAndValueArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TST::format_and_value = 501;
  qword_2812E9AD0 = &TST::_CellFormatAndValueArchive_default_instance_;
  sub_221681450(0x1F5, 11, 0);
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TST::cell_border = 503;
  qword_2812E9AE0 = TST::_CellBorderArchive_default_instance_;
  sub_2216814D4(0x1F7, 11, 0);
  if (atomic_load_explicit(scc_info_CommentStorageWrapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TST::comment_storage = 504;
  qword_2812E9AF0 = &TST::_CommentStorageWrapperArchive_default_instance_;
  sub_221681558(0x1F8, 11, 0);
  if (atomic_load_explicit(scc_info_CellSpecArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TST::cell_spec = 505;
  qword_2812E9B00 = TST::_CellSpecArchive_default_instance_;

  return sub_2216815DC(0x1F9, 11, 0);
}

void sub_221689410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  TSUIndexSet::~TSUIndexSet(v13 + 1);
  TSUIndexSet::~TSUIndexSet(&a12);

  _Unwind_Resume(a1);
}

void sub_22168A570(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22168A61C;
  v9[3] = &unk_2784680D0;
  v11 = *(a1 + 40);
  v10 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v5, v9, v6);
  objc_msgSend_removeObjectsForKeys_(v4, v7, *(a1 + 32), v8);
}

void sub_22168A61C(uint64_t a1, void *a2)
{
  v18 = a2;
  v6 = objc_msgSend_unsignedLongLongValue(v18, v3, v4, v5);
  v9 = *(a1 + 48);
  if (HIDWORD(v9))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_28;
  }

  v11 = *(a1 + 40);
  v12 = v11 & 0xFFFF00000000;
  if (v11 != 0x7FFFFFFFLL || v12 == 0x7FFF00000000)
  {
    v14 = v6 >> 15;
    v16 = v11 == 0x7FFFFFFF && v12 != 0x7FFF00000000;
    if (v11 > v14 && !v16)
    {
      goto LABEL_28;
    }

    v17 = v11 + HIDWORD(v9) - 1;
    if (v11 == 0x7FFFFFFF)
    {
      v17 = 0x7FFFFFFF;
    }

    if (v17 < v14)
    {
      goto LABEL_28;
    }

    if (v11 != 0x7FFFFFFFLL && v12 == 0x7FFF00000000)
    {
      goto LABEL_27;
    }
  }

  if ((v6 & 0x7FFF) >= WORD2(v11) && (!v9 || WORD2(v11) == 0x7FFF || (v6 & 0x7FFF) <= (v9 + WORD2(v11) - 1)))
  {
LABEL_27:
    objc_msgSend_addObject_(*(a1 + 32), v7, v18, v8);
  }

LABEL_28:
}

long double sub_22168AAA0(int a1, int a2, double a3)
{
  if (a2 < a1 || a1 < 0 || ((v4 = 1.0, a3 >= 0.0) ? (v5 = a3 <= 1.0) : (v5 = 0), !v5))
  {
    sub_22137A674("bdtr", 1);
    return 0.0;
  }

  v6 = a2 - a1;
  if (a2 == a1)
  {
    return v4;
  }

  if (a1)
  {

    return sub_2212F4E64(v6, (a1 + 1), 1.0 - a3);
  }

  else
  {
    v8 = 1.0 - a3;

    return pow(v8, v6);
  }
}

void sub_22168F4B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  if (objc_msgSend_isDrawable(v10, v6, v7, v8))
  {
    objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(*(a1 + 32), v9, a4, 1, &stru_2834BADA0, 0);
  }
}

void sub_221690118(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_221691578(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  objc_opt_class();
  v7 = TSUDynamicCast();
  v11 = v7;
  if (v7 && objc_msgSend_smartFieldKind(v7, v8, v9, v10) == 32)
  {
    objc_msgSend_setCharacterStyle_range_undoTransaction_(*(a1 + 32), v12, *(a1 + 40), a3, a4, 0);
  }
}

void *sub_221692958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_formatType(a2, a2, a3, a4);
  v8 = v7 - 270;
  if (v7 - 270) <= 4 && ((0x17u >> v8))
  {
    result = objc_msgSend_containsIndex_(*(a1 + 40), v5, *(*(a1 + 32) + qword_221803870[v8]), v6);
  }

  else
  {
    result = objc_msgSend_containsIndex_(*(a1 + 40), v5, 0, v6);
  }

  if (result)
  {
    v10 = sub_22121E75C(v7);
    if (objc_msgSend_cellFormatKind(*(a1 + 32), v11, v12, v13) == v10 && objc_msgSend_hasValue(*(a1 + 32), v14, v15, v16))
    {
      result = objc_msgSend_setDefaultFormatForValue(*(a1 + 32), v14, v17, v16);
    }

    else
    {
      result = objc_msgSend_p_clearFormatOfCellFormatKind_(*(a1 + 32), v14, v10, v16);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void sub_221692FD4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221693A7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221693F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void TSCEReferenceSet::TSCEReferenceSet(TSCEReferenceSet *this)
{
  this->_vptr$TSCEReferenceSet = &unk_2834B9F48;
  *&this->_dependencyTracker = 0u;
  *&this->_cellRefs.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  this->_cellRefs.__table_.__size_ = 0;
  this->_cellRefs.__table_.__max_load_factor_ = 1.0;
  this->_rangeRefs.__tree_.__size_ = 0;
  this->_rangeRefs.__tree_.__end_node_.__left_ = 0;
  this->_rangeRefs.__tree_.__begin_node_ = &this->_rangeRefs.__tree_.__end_node_;
  *&this->_datalessRefs = 0u;
  *&this->_tableUuidRefs = 0u;
  *&this->_spanningRefs = 0u;
  this->_wholeOwnerRefs = 0;
}

{
  this->_vptr$TSCEReferenceSet = &unk_2834B9F48;
  *&this->_dependencyTracker = 0u;
  *&this->_cellRefs.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  this->_cellRefs.__table_.__size_ = 0;
  this->_cellRefs.__table_.__max_load_factor_ = 1.0;
  this->_rangeRefs.__tree_.__size_ = 0;
  this->_rangeRefs.__tree_.__end_node_.__left_ = 0;
  this->_rangeRefs.__tree_.__begin_node_ = &this->_rangeRefs.__tree_.__end_node_;
  *&this->_datalessRefs = 0u;
  *&this->_tableUuidRefs = 0u;
  *&this->_spanningRefs = 0u;
  this->_wholeOwnerRefs = 0;
}

void TSCEReferenceSet::TSCEReferenceSet(TSCEReferenceSet *this, TSCEDependencyTracker *a2)
{
  v3 = a2;
  this->_vptr$TSCEReferenceSet = &unk_2834B9F48;
  this->_dependencyTracker = v3;
  this->_cellRefs.__table_.__bucket_list_ = 0u;
  *&this->_cellRefs.__table_.__first_node_.__next_ = 0u;
  this->_cellRefs.__table_.__max_load_factor_ = 1.0;
  this->_rangeRefs.__tree_.__size_ = 0;
  this->_rangeRefs.__tree_.__end_node_.__left_ = 0;
  this->_rangeRefs.__tree_.__begin_node_ = &this->_rangeRefs.__tree_.__end_node_;
  *&this->_datalessRefs = 0u;
  *&this->_tableUuidRefs = 0u;
  *&this->_spanningRefs = 0u;
  this->_wholeOwnerRefs = 0;
}

{
  v3 = a2;
  this->_vptr$TSCEReferenceSet = &unk_2834B9F48;
  this->_dependencyTracker = v3;
  this->_cellRefs.__table_.__bucket_list_ = 0u;
  *&this->_cellRefs.__table_.__first_node_.__next_ = 0u;
  this->_cellRefs.__table_.__max_load_factor_ = 1.0;
  this->_rangeRefs.__tree_.__size_ = 0;
  this->_rangeRefs.__tree_.__end_node_.__left_ = 0;
  this->_rangeRefs.__tree_.__begin_node_ = &this->_rangeRefs.__tree_.__end_node_;
  *&this->_datalessRefs = 0u;
  *&this->_tableUuidRefs = 0u;
  *&this->_spanningRefs = 0u;
  this->_wholeOwnerRefs = 0;
}

void TSCEReferenceSet::TSCEReferenceSet(TSCEReferenceSet *this, const TSCEReferenceSet *a2)
{
  this->_vptr$TSCEReferenceSet = &unk_2834B9F48;
  this->_dependencyTracker = a2->_dependencyTracker;
  this->_cellRefs.__table_.__bucket_list_ = 0u;
  *&this->_cellRefs.__table_.__first_node_.__next_ = 0u;
  this->_rangeRefs.__tree_.__end_node_.__left_ = 0;
  this->_rangeRefs.__tree_.__begin_node_ = &this->_rangeRefs.__tree_.__end_node_;
  this->_cellRefs.__table_.__max_load_factor_ = 1.0;
  this->_rangeRefs.__tree_.__size_ = 0;
  *&this->_datalessRefs = 0u;
  *&this->_tableUuidRefs = 0u;
  *&this->_spanningRefs = 0u;
  this->_wholeOwnerRefs = 0;
  TSCEReferenceSet::operator=(this, a2);
}

void sub_221694400(_Unwind_Exception *a1)
{
  sub_221279750(v3, *(v1 + 64));
  sub_22141E5C4(v2);

  _Unwind_Resume(a1);
}

uint64_t TSCEReferenceSet::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a1 + 8), *(a2 + 8));
  if (a1 != a2)
  {
    *(a1 + 48) = *(a2 + 48);
    sub_221699698((a1 + 16), *(a2 + 32), 0);
    sub_221699AD4((a1 + 56), *(a2 + 56), (a2 + 64));
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = sub_221699614(v4);
    MEMORY[0x223DA1450](v5, 0x10A0C408EF24B1CLL);
  }

  *(a1 + 112) = 0;
  if (*(a2 + 112))
  {
    operator new();
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = sub_2210BDEC0(v6);
    MEMORY[0x223DA1450](v7, 0x10A0C408EF24B1CLL);
  }

  *(a1 + 80) = 0;
  if (*(a2 + 80))
  {
    operator new();
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    v9 = sub_22141E5C4(v8);
    MEMORY[0x223DA1450](v9, 0x10A0C408EF24B1CLL);
  }

  *(a1 + 88) = 0;
  if (*(a2 + 88))
  {
    operator new();
  }

  v10 = *(a1 + 96);
  if (v10)
  {
    v11 = sub_2210BDEC0(v10);
    MEMORY[0x223DA1450](v11, 0x10A0C408EF24B1CLL);
  }

  *(a1 + 96) = 0;
  if (*(a2 + 96))
  {
    operator new();
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    v13 = sub_2210BDEC0(v12);
    MEMORY[0x223DA1450](v13, 0x10A0C408EF24B1CLL);
  }

  *(a1 + 104) = 0;
  if (*(a2 + 104))
  {
    operator new();
  }

  v14 = *(a1 + 120);
  *(a1 + 120) = 0;

  v18 = *(a2 + 120);
  if (v18)
  {
    v19 = objc_msgSend_mutableCopy(v18, v15, v16, v17);
    v20 = *(a1 + 120);
    *(a1 + 120) = v19;
  }

  v21 = *(a1 + 128);
  if (v21)
  {
    v22 = sub_2210BDEC0(v21);
    MEMORY[0x223DA1450](v22, 0x10A0C408EF24B1CLL);
  }

  *(a1 + 128) = 0;
  if (*(a2 + 128))
  {
    operator new();
  }

  return a1;
}

void TSCEReferenceSet::~TSCEReferenceSet(TSCEReferenceSet *this)
{
  this->_vptr$TSCEReferenceSet = &unk_2834B9F48;
  datalessRefs = this->_datalessRefs;
  if (datalessRefs)
  {
    v3 = sub_2210BDEC0(datalessRefs);
    MEMORY[0x223DA1450](v3, 0x10A0C408EF24B1CLL);
  }

  columnRowUidRefs = this->_columnRowUidRefs;
  if (columnRowUidRefs)
  {
    v5 = sub_22141E5C4(columnRowUidRefs);
    MEMORY[0x223DA1450](v5, 0x10A0C408EF24B1CLL);
  }

  tableUuidRefs = this->_tableUuidRefs;
  if (tableUuidRefs)
  {
    v7 = sub_2210BDEC0(tableUuidRefs);
    MEMORY[0x223DA1450](v7, 0x10A0C408EF24B1CLL);
  }

  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (geometryVolatileRefs)
  {
    v9 = sub_2210BDEC0(geometryVolatileRefs);
    MEMORY[0x223DA1450](v9, 0x10A0C408EF24B1CLL);
  }

  spanningRefs = this->_spanningRefs;
  if (spanningRefs)
  {
    v11 = sub_221699614(spanningRefs);
    MEMORY[0x223DA1450](v11, 0x10A0C408EF24B1CLL);
  }

  categoryRefs = this->_categoryRefs;
  this->_categoryRefs = 0;

  wholeOwnerRefs = this->_wholeOwnerRefs;
  if (wholeOwnerRefs)
  {
    v14 = sub_2210BDEC0(wholeOwnerRefs);
    MEMORY[0x223DA1450](v14, 0x10A0C408EF24B1CLL);
  }

  sub_221279750(&this->_rangeRefs, this->_rangeRefs.__tree_.__end_node_.__left_);
  sub_22141E5C4(&this->_cellRefs);
}

{
  TSCEReferenceSet::~TSCEReferenceSet(this);

  JUMPOUT(0x223DA1450);
}

void TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v6, a2, (a2 + 16), a4);
  }

  else
  {
    v7 = -1;
  }

  v14 = v7;
  v15 = a2[32];
  v8 = *a2;
  v9 = *(a2 + 1);
  v12 = (*a2 & 0xFFFF00000000) != 0x7FFF00000000 && (v9 & 0xFFFF00000000) != 0x7FFF00000000 && v8 == 0x7FFFFFFF;
  if (v12 && v9 == 0x7FFFFFFF)
  {
    LODWORD(v8) = WORD2(v8);
    LODWORD(v9) = WORD2(v9);
  }

  v13[0] = v8;
  v13[1] = v9;
  sub_221427DE8(a3, v13);
}

uint64_t TSCEReferenceSet::operator==(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSCEReferenceSet::operator==(const TSCEReferenceSet &) const", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceSet.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 206, 0, "Can't compare reference sets from different calcEngines");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if (!sub_221694DC0(a1 + 16, (a2 + 16)) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v17 = *(a1 + 56);
  if (v17 != (a1 + 64))
  {
    v18 = *(a2 + 56);
    while (v17[4] == v18[4] && v17[5] == v18[5] && sub_22169B260((v17 + 6), v18 + 6))
    {
      v19 = v17[1];
      v20 = v17;
      if (v19)
      {
        do
        {
          v17 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v17 = v20[2];
          v26 = *v17 == v20;
          v20 = v17;
        }

        while (!v26);
      }

      v21 = v18[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v18[2];
          v26 = *v22 == v18;
          v18 = v22;
        }

        while (!v26);
      }

      v18 = v22;
      if (v17 == (a1 + 64))
      {
        goto LABEL_21;
      }
    }

    return 0;
  }

LABEL_21:
  v23 = *(a1 + 80);
  v24 = *(a2 + 80);
  v25 = v23 == v24;
  v26 = v23 == v24 || v23 == 0;
  if (!v26 && v24 != 0)
  {
    v25 = sub_221694E5C(v23, v24);
  }

  v28 = *(a1 + 88);
  v29 = *(a2 + 88);
  v30 = v28 == v29;
  if (v28 != v29 && v28 != 0 && v29 != 0)
  {
    v30 = sub_221694ED4(v28, v29);
  }

  v33 = *(a1 + 96);
  v34 = *(a2 + 96);
  v35 = v33 == v34;
  if (v33 != v34 && v33 && v34)
  {
    v35 = sub_221694F70(v33, v34);
  }

  v36 = *(a1 + 120);
  v37 = *(a2 + 120);
  isEqual = v36 == v37;
  if (v36 != v37 && v36 && v37)
  {
    v39 = objc_msgSend_count(v36, v34, v15, v16);
    if (v39 == objc_msgSend_count(*(a2 + 120), v40, v41, v42))
    {
      isEqual = objc_msgSend_isEqual_(*(a1 + 120), v43, *(a2 + 120), v44);
    }

    else
    {
      isEqual = 0;
    }
  }

  v47 = *(a1 + 104);
  v48 = *(a2 + 104);
  v49 = v47 == v48;
  if (v47 != v48 && v47 && v48)
  {
    v49 = sub_221694F70(v47, v48);
  }

  v50 = *(a1 + 128);
  v51 = *(a2 + 128);
  v52 = v50 == v51;
  if (v50 != v51 && v50 && v51)
  {
    v52 = sub_221694F70(*(a1 + 128), v51);
  }

  if (((v25 && v49 && v30 && v35) & isEqual) != 1 || !v52)
  {
    return 1;
  }

  v81 = 0;
  v82 = &v81;
  v83 = 0x5812000000;
  v84 = sub_221694FF8;
  v85 = sub_221695004;
  v86 = &unk_22188E88F;
  memset(v87, 0, sizeof(v87));
  v88 = 1065353216;
  v73 = 0;
  v74 = &v73;
  v75 = 0x5812000000;
  v76 = sub_221694FF8;
  v77 = sub_221695004;
  v78 = &unk_22188E88F;
  memset(v79, 0, sizeof(v79));
  v80 = 1065353216;
  v65 = 0;
  v66 = &v65;
  v67 = 0x5812000000;
  v68 = sub_221694FF8;
  v69 = sub_221695004;
  v70 = &unk_22188E88F;
  memset(v71, 0, sizeof(v71));
  v72 = 1065353216;
  v57 = 0;
  v58 = &v57;
  v59 = 0x5812000000;
  v60 = sub_221694FF8;
  v61 = sub_221695004;
  v62 = &unk_22188E88F;
  memset(v63, 0, sizeof(v63));
  v64 = 1065353216;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_221695158;
  v56[3] = &unk_278468218;
  v56[5] = &v81;
  v56[6] = a1;
  v56[4] = &v65;
  TSCEReferenceSet::foreachSpanningRangeRef(a1, v56);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2216951EC;
  v55[3] = &unk_278468218;
  v55[5] = &v73;
  v55[6] = a1;
  v55[4] = &v57;
  TSCEReferenceSet::foreachSpanningRangeRef(a2, v55);
  if (sub_221427FD0((v66 + 6), v58 + 6))
  {
    v45 = sub_221427FD0((v82 + 6), v74 + 6);
  }

  else
  {
    v45 = 0;
  }

  _Block_object_dispose(&v57, 8);
  sub_221087B80(v63);
  _Block_object_dispose(&v65, 8);
  sub_221087B80(v71);
  _Block_object_dispose(&v73, 8);
  sub_221087B80(v79);
  _Block_object_dispose(&v81, 8);
  sub_221087B80(v87);
  return v45;
}

void sub_221694D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a23, 8);
  sub_221087B80(v36 + 48);
  _Block_object_dispose(va, 8);
  sub_221087B80(v35 + 48);
  _Block_object_dispose((v37 - 256), 8);
  sub_221087B80(v34 + 48);
  _Block_object_dispose((v37 - 168), 8);
  sub_221087B80(v33 + 48);
  _Unwind_Resume(a1);
}

BOOL sub_221694DC0(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_221119F90(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == v5[2] && v3[3] == v5[3] && sub_22169B1D4((v3 + 4), v5 + 4));
  return v4;
}

BOOL sub_221694E5C(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_2210C3024(a2, v3 + 8);
    if (!v5)
    {
      break;
    }
  }

  while (v3[8] == *(v5 + 8));
  return v4;
}

BOOL sub_221694ED4(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_221119F90(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == v5[2] && v3[3] == v5[3] && sub_221694F70((v3 + 4), v5 + 4));
  return v4;
}

BOOL sub_221694F70(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_221119F90(a2, v3 + 2);
    if (!v5)
    {
      break;
    }
  }

  while (v3[2] == v5[2] && v3[3] == v5[3]);
  return v4;
}

void TSCEReferenceSet::foreachSpanningRangeRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 112);
  if (v4)
  {
    v18 = 0;
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      do
      {
        v6 = *(v5 + 16);
        v15 = v13;
        v16 = 0uLL;
        v17 = v6;
        v7 = v5[3];
        if (v7 != v5 + 4)
        {
          v8 = 0;
          do
          {
            v14 = *(v7 + 2);
            v9 = v7[8];
            if (v9)
            {
              while (1)
              {
                v15 = v9[1];
                v16 = v14;
                v3[2](v3, &v15, &v18);
                v8 = v18;
                if (v18)
                {
                  break;
                }

                v9 = v9->i64[0];
                if (!v9)
                {
                  goto LABEL_11;
                }
              }

              v8 = 1;
            }

LABEL_11:
            if (v8)
            {
              break;
            }

            v10 = v7[1];
            if (v10)
            {
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v11 = v7[2];
                v12 = *v11 == v7;
                v7 = v11;
              }

              while (!v12);
            }

            v7 = v11;
          }

          while (v11 != v5 + 4);
          if (v8)
          {
            break;
          }
        }

        v5 = *v5;
      }

      while (v5);
    }
  }
}

void sub_221695158(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = 0xFFFFFFFFLL;
  v4.i64[1] = 0xFFFFFFFFLL;
  v5.i64[0] = 0xFFFF00000000;
  v5.i64[1] = 0xFFFF00000000;
  v6 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a2, v5), vdupq_n_s64(0x7FFF00000000uLL))));
  v7 = vuzp1_s16(v6, v6);
  v7.i32[1] = vuzp1_s16(v7, vmovn_s64(vceqq_s64(vandq_s8(*a2, v4), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  v8 = 40;
  if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v7, 0xFuLL)), 0x8000400020001)) == 15)
  {
    v8 = 32;
  }

  TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(*(a1 + 48), a2->i8, (*(*(a1 + v8) + 8) + 48), a4);
}

void sub_2216951EC(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = 0xFFFFFFFFLL;
  v4.i64[1] = 0xFFFFFFFFLL;
  v5.i64[0] = 0xFFFF00000000;
  v5.i64[1] = 0xFFFF00000000;
  v6 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a2, v5), vdupq_n_s64(0x7FFF00000000uLL))));
  v7 = vuzp1_s16(v6, v6);
  v7.i32[1] = vuzp1_s16(v7, vmovn_s64(vceqq_s64(vandq_s8(*a2, v4), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  v8 = 40;
  if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v7, 0xFuLL)), 0x8000400020001)) == 15)
  {
    v8 = 32;
  }

  TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(*(a1 + 48), a2->i8, (*(*(a1 + v8) + 8) + 48), a4);
}

uint64_t TSCEReferenceSet::isEqualToDepTrackerPrecedents(TSCEReferenceSet *this, const TSCEReferenceSet *a2, uint64_t a3, uint64_t a4)
{
  if (this->_dependencyTracker != a2->_dependencyTracker)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSCEReferenceSet::isEqualToDepTrackerPrecedents(const TSCEReferenceSet &) const", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceSet.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 295, 0, "Can't compare reference sets from different calcEngines");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  wholeOwnerRefs = this->_wholeOwnerRefs;
  v16 = a2->_wholeOwnerRefs;
  v17 = wholeOwnerRefs == v16;
  v18 = wholeOwnerRefs == v16 || wholeOwnerRefs == 0;
  if (!v18 && v16 != 0)
  {
    v17 = sub_221694F70(wholeOwnerRefs, v16);
  }

  if (!sub_221694DC0(&this->_cellRefs, &a2->_cellRefs.__table_.__bucket_list_.__ptr_) || this->_rangeRefs.__tree_.__size_ != a2->_rangeRefs.__tree_.__size_)
  {
    return 0;
  }

  begin_node = this->_rangeRefs.__tree_.__begin_node_;
  if (begin_node != &this->_rangeRefs.__tree_.__end_node_)
  {
    v21 = a2->_rangeRefs.__tree_.__begin_node_;
    while (begin_node->_cellRefs.__table_.__first_node_.__next_ == v21[4] && begin_node->_cellRefs.__table_.__size_ == v21[5] && sub_22169B260(&begin_node->_cellRefs.__table_.__max_load_factor_, v21 + 6))
    {
      dependencyTracker = begin_node->_dependencyTracker;
      v23 = begin_node;
      if (dependencyTracker)
      {
        do
        {
          begin_node = dependencyTracker;
          dependencyTracker = dependencyTracker->super.isa;
        }

        while (dependencyTracker);
      }

      else
      {
        do
        {
          begin_node = v23->_cellRefs.__table_.__bucket_list_.__ptr_;
          v18 = begin_node->_vptr$TSCEReferenceSet == v23;
          v23 = begin_node;
        }

        while (!v18);
      }

      v24 = v21[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v21[2];
          v18 = *v25 == v21;
          v21 = v25;
        }

        while (!v18);
      }

      v21 = v25;
      if (begin_node == &this->_rangeRefs.__tree_.__end_node_)
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

LABEL_29:
  if (!v17)
  {
    return 0;
  }

  memset(v66, 0, sizeof(v66));
  v67 = 1065353216;
  memset(v64, 0, sizeof(v64));
  v65 = 1065353216;
  datalessRefs = this->_datalessRefs;
  if (datalessRefs && v66 != datalessRefs)
  {
    v67 = *(datalessRefs + 8);
    sub_22169B2DC(v66, *(datalessRefs + 2), 0);
  }

  v27 = a2->_datalessRefs;
  if (v27 && v64 != v27)
  {
    v65 = *(v27 + 8);
    sub_22169B2DC(v64, *(v27 + 2), 0);
  }

  LOWORD(v56) = 4;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 5;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 6;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 7;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 8;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 9;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 13;
  sub_221142C34(v66, &v56);
  LOWORD(v56) = 4;
  sub_221142C34(v64, &v56);
  LOWORD(v56) = 5;
  sub_221142C34(v64, &v56);
  LOWORD(v56) = 6;
  sub_221142C34(v64, &v56);
  LOWORD(v56) = 7;
  sub_221142C34(v64, &v56);
  LOWORD(v56) = 8;
  sub_221142C34(v64, &v56);
  LOWORD(v56) = 9;
  sub_221142C34(v64, &v56);
  LOWORD(v56) = 13;
  sub_221142C34(v64, &v56);
  if (sub_221694E5C(v66, v64))
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x5812000000;
    v59 = sub_221694FF8;
    v60 = sub_221695004;
    v61 = &unk_22188E88F;
    memset(v62, 0, sizeof(v62));
    v63 = 1065353216;
    v48 = 0;
    v49 = &v48;
    v50 = 0x5812000000;
    v51 = sub_221694FF8;
    v52 = sub_221695004;
    v53 = &unk_22188E88F;
    memset(v54, 0, sizeof(v54));
    v55 = 1065353216;
    v40 = 0;
    v41 = &v40;
    v42 = 0x5812000000;
    v43 = sub_221694FF8;
    v44 = sub_221695004;
    v45 = &unk_22188E88F;
    memset(v46, 0, sizeof(v46));
    v47 = 1065353216;
    v32 = 0;
    v33 = &v32;
    v34 = 0x5812000000;
    v35 = sub_221694FF8;
    v36 = sub_221695004;
    v37 = &unk_22188E88F;
    memset(v38, 0, sizeof(v38));
    v39 = 1065353216;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_221695910;
    v31[3] = &unk_278468218;
    v31[5] = &v56;
    v31[6] = this;
    v31[4] = &v40;
    TSCEReferenceSet::foreachSpanningRangeRef(this, v31);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2216959A4;
    v30[3] = &unk_278468218;
    v30[5] = &v48;
    v30[6] = this;
    v30[4] = &v32;
    TSCEReferenceSet::foreachSpanningRangeRef(a2, v30);
    if (sub_221427FD0((v41 + 6), v33 + 6))
    {
      v28 = sub_221427FD0((v57 + 6), v49 + 6);
    }

    else
    {
      v28 = 0;
    }

    _Block_object_dispose(&v32, 8);
    sub_221087B80(v38);
    _Block_object_dispose(&v40, 8);
    sub_221087B80(v46);
    _Block_object_dispose(&v48, 8);
    sub_221087B80(v54);
    _Block_object_dispose(&v56, 8);
    sub_221087B80(v62);
  }

  else
  {
    v28 = 0;
  }

  sub_2210BDEC0(v64);
  sub_2210BDEC0(v66);
  return v28;
}

void sub_22169584C(_Unwind_Exception *a1)
{
  sub_2210BDEC0(v1 - 176);
  sub_2210BDEC0(v1 - 128);
  _Unwind_Resume(a1);
}

void sub_221695910(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = 0xFFFFFFFFLL;
  v4.i64[1] = 0xFFFFFFFFLL;
  v5.i64[0] = 0xFFFF00000000;
  v5.i64[1] = 0xFFFF00000000;
  v6 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a2, v5), vdupq_n_s64(0x7FFF00000000uLL))));
  v7 = vuzp1_s16(v6, v6);
  v7.i32[1] = vuzp1_s16(v7, vmovn_s64(vceqq_s64(vandq_s8(*a2, v4), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  v8 = 40;
  if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v7, 0xFuLL)), 0x8000400020001)) == 15)
  {
    v8 = 32;
  }

  TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(*(a1 + 48), a2->i8, (*(*(a1 + v8) + 8) + 48), a4);
}

void sub_2216959A4(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = 0xFFFFFFFFLL;
  v4.i64[1] = 0xFFFFFFFFLL;
  v5.i64[0] = 0xFFFF00000000;
  v5.i64[1] = 0xFFFF00000000;
  v6 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a2, v5), vdupq_n_s64(0x7FFF00000000uLL))));
  v7 = vuzp1_s16(v6, v6);
  v7.i32[1] = vuzp1_s16(v7, vmovn_s64(vceqq_s64(vandq_s8(*a2, v4), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  v8 = 40;
  if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v7, 0xFuLL)), 0x8000400020001)) == 15)
  {
    v8 = 32;
  }

  TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(*(a1 + 48), a2->i8, (*(*(a1 + v8) + 8) + 48), a4);
}

BOOL TSCEReferenceSet::isEmpty(TSCEReferenceSet *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (this->_cellRefs.__table_.__size_)
  {
    return 0;
  }

  if (this->_rangeRefs.__tree_.__size_)
  {
    return 0;
  }

  spanningRefs = this->_spanningRefs;
  if (spanningRefs)
  {
    if (spanningRefs[3])
    {
      return 0;
    }
  }

  datalessRefs = this->_datalessRefs;
  if (datalessRefs)
  {
    if (datalessRefs[3])
    {
      return 0;
    }
  }

  columnRowUidRefs = this->_columnRowUidRefs;
  if (columnRowUidRefs)
  {
    if (columnRowUidRefs[3])
    {
      return 0;
    }
  }

  tableUuidRefs = this->_tableUuidRefs;
  if (tableUuidRefs)
  {
    if (tableUuidRefs[3])
    {
      return 0;
    }
  }

  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (geometryVolatileRefs)
  {
    if (geometryVolatileRefs[3])
    {
      return 0;
    }
  }

  categoryRefs = this->_categoryRefs;
  if (categoryRefs)
  {
    if (objc_msgSend_count(categoryRefs, a2, a3, a4))
    {
      return 0;
    }
  }

  wholeOwnerRefs = this->_wholeOwnerRefs;
  return !wholeOwnerRefs || wholeOwnerRefs[3] == 0;
}

void *TSCEReferenceSet::clear(TSCEReferenceSet *this)
{
  sub_22169B470(&this->_cellRefs);
  sub_221279750(&this->_rangeRefs, this->_rangeRefs.__tree_.__end_node_.__left_);
  this->_rangeRefs.__tree_.__end_node_.__left_ = 0;
  this->_rangeRefs.__tree_.__size_ = 0;
  this->_rangeRefs.__tree_.__begin_node_ = &this->_rangeRefs.__tree_.__end_node_;
  spanningRefs = this->_spanningRefs;
  if (spanningRefs)
  {
    sub_22169B4CC(spanningRefs);
  }

  datalessRefs = this->_datalessRefs;
  if (datalessRefs)
  {
    sub_2210BE918(datalessRefs);
  }

  columnRowUidRefs = this->_columnRowUidRefs;
  if (columnRowUidRefs)
  {
    sub_22169B470(columnRowUidRefs);
  }

  tableUuidRefs = this->_tableUuidRefs;
  if (tableUuidRefs)
  {
    sub_2210BE918(tableUuidRefs);
  }

  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (geometryVolatileRefs)
  {
    sub_2210BE918(geometryVolatileRefs);
  }

  categoryRefs = this->_categoryRefs;
  if (categoryRefs)
  {
    objc_msgSend_removeAllObjects(categoryRefs, v2, v3, v4);
  }

  result = this->_wholeOwnerRefs;
  if (result)
  {

    return sub_2210BE918(result);
  }

  return result;
}

uint64_t TSCEReferenceSet::count(TSCEReferenceSet *this, const char *a2, uint64_t a3, uint64_t a4)
{
  datalessRefs = this->_datalessRefs;
  if (datalessRefs)
  {
    datalessRefs = *(datalessRefs + 3);
  }

  columnRowUidRefs = this->_columnRowUidRefs;
  if (columnRowUidRefs)
  {
    for (i = columnRowUidRefs[2]; i; i = *i)
    {
      datalessRefs += i[7];
    }
  }

  tableUuidRefs = this->_tableUuidRefs;
  if (tableUuidRefs)
  {
    tableUuidRefs = *(tableUuidRefs + 3);
  }

  v9 = &datalessRefs[tableUuidRefs];
  wholeOwnerRefs = this->_wholeOwnerRefs;
  if (wholeOwnerRefs)
  {
    wholeOwnerRefs = wholeOwnerRefs[3];
  }

  v11 = wholeOwnerRefs + v9;
  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (geometryVolatileRefs)
  {
    geometryVolatileRefs = geometryVolatileRefs[3];
  }

  v13 = geometryVolatileRefs + v11;
  categoryRefs = this->_categoryRefs;
  if (categoryRefs)
  {
    categoryRefs = objc_msgSend_count(categoryRefs, a2, a3, a4);
  }

  result = categoryRefs + v13;
  for (j = this->_cellRefs.__table_.__first_node_.__next_; j; j = *j)
  {
    result += j[7];
  }

  begin_node = this->_rangeRefs.__tree_.__begin_node_;
  if (begin_node != &this->_rangeRefs.__tree_.__end_node_)
  {
    do
    {
      dependencyTracker = begin_node->_dependencyTracker;
      v19 = begin_node;
      if (dependencyTracker)
      {
        do
        {
          ptr = dependencyTracker;
          dependencyTracker = dependencyTracker->super.isa;
        }

        while (dependencyTracker);
      }

      else
      {
        do
        {
          ptr = v19->_cellRefs.__table_.__bucket_list_.__ptr_;
          v21 = ptr->_vptr$TSCEReferenceSet == v19;
          v19 = ptr;
        }

        while (!v21);
      }

      result += begin_node->_rangeRefs.__tree_.__size_;
      begin_node = ptr;
    }

    while (ptr != &this->_rangeRefs.__tree_.__end_node_);
  }

  spanningRefs = this->_spanningRefs;
  if (spanningRefs)
  {
    for (k = spanningRefs[2]; k; k = *k)
    {
      v24 = k[3];
      if (v24 != k + 4)
      {
        do
        {
          v25 = v24[1];
          v26 = v24;
          if (v25)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v21 = *v27 == v26;
              v26 = v27;
            }

            while (!v21);
          }

          result += v24[9];
          v24 = v27;
        }

        while (v27 != k + 4);
      }
    }
  }

  return result;
}

TSCEReferenceSet *TSCEReferenceSet::insertAnyRef(TSCEReferenceSet *this, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  refType = a2->_refType;
  if (refType <= 2)
  {
    if (!a2->_refType)
    {
      v15.coordinate = a2->_spanningRef.rangeRef.range._topLeft;
      v15._tableUID = a2->_spanningRef.rangeRef._tableUID;
      return TSCEReferenceSet::insertRef(this, &v15);
    }

    if (refType == 1)
    {
      p_spanningRef = &a2->_spanningRef;

      return TSCEReferenceSet::insertRef(this, &p_spanningRef->rangeRef, a3, a4);
    }

    else
    {
      if (refType != 2)
      {
        goto LABEL_18;
      }

      v9 = &a2->_spanningRef;

      return TSCEReferenceSet::insertRef(this, v9, a3, a4);
    }
  }

  else
  {
    if (a2->_refType <= 0xDu)
    {
      if (refType == 3)
      {
        v15.coordinate = TSCEAnyRef::containedTableUID(a2, a2, a3, a4);
        v15._tableUID._lower = v12;
        return TSCEReferenceSet::insertWholeOwnerRef(this, &v15);
      }

      if (refType == 10)
      {
        v15.coordinate = TSCEAnyRef::containedTableUID(a2, a2, a3, a4);
        v15._tableUID._lower = v7;
        return TSCEReferenceSet::insertGeometryVolatileRef(this, &v15);
      }

      goto LABEL_18;
    }

    if (refType != 14)
    {
      if (refType == 15)
      {
        p_tableUID = &a2->_spanningRef.rangeRef._tableUID;

        return TSCEReferenceSet::insertTableUid(this, p_tableUID);
      }

LABEL_18:
      datalessRefs = this->_datalessRefs;
      if (!datalessRefs)
      {
        operator new();
      }

      LOWORD(v15.coordinate.row) = refType;
      return sub_22169B528(datalessRefs, &v15, &v15);
    }

    v13 = &a2->_spanningRef.rangeRef._tableUID;

    return TSCEReferenceSet::insertColumnRowUid(this, v13, &a2->_uuidValue);
  }
}

TSCEReferenceSet *TSCEReferenceSet::insertRef(TSCEReferenceSet *this, const TSCECellRef *a2)
{
  coordinate = a2->coordinate;
  if (*&a2->coordinate != 0x7FFFFFFF && (*&a2->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v9[1] = v2;
    v9[2] = v3;
    v8[0] = *&coordinate & 0xFFFFFFFFFFFFLL;
    tableUID = a2->_tableUID;
    v9[0] = &tableUID;
    v6 = sub_22169B75C(&this->_cellRefs.__table_.__bucket_list_.__ptr_, &tableUID, &unk_2218038DB, v9);
    return sub_2210CE644(v6 + 4, v8, v8);
  }

  return this;
}

TSCEReferenceSet *TSCEReferenceSet::insertRef(TSCEReferenceSet *this, TSCERangeRef *a2, uint64_t a3, uint64_t a4)
{
  bottomRight = a2->range._bottomRight;
  v7 = *&a2->range._topLeft & 0xFFFF00000000;
  v8 = *&bottomRight & 0xFFFF00000000;
  v9 = *&a2->range._topLeft;
  if (v9 != 0x7FFFFFFF || v7 == 0x7FFF00000000 || v8 == 0x7FFF00000000)
  {
    if (v9 != 0x7FFFFFFF && v7 == 0x7FFF00000000 && v8 == 0x7FFF00000000 && bottomRight.row != 0x7FFFFFFFLL)
    {
      goto LABEL_23;
    }
  }

  else if (bottomRight.row == 0x7FFFFFFF)
  {
LABEL_23:
    tableUID = a2->_tableUID;
    v18.rangeRef.range = a2->range;
    v18.rangeRef._tableUID = tableUID;
    v18.rangeContext = 1;
    return TSCEReferenceSet::insertRef(this, &v18, a3, a4);
  }

  if (TSCERangeRef::isSingleCell(a2))
  {
    v18.rangeRef.range._topLeft = a2->range._topLeft;
    *&v18.rangeRef.range._bottomRight.row = a2->_tableUID;
    return TSCEReferenceSet::insertRef(this, &v18);
  }

  else
  {
    v18.rangeRef.range._topLeft = &a2->_tableUID;
    v17 = sub_2213460C4(&this->_rangeRefs, &a2->_tableUID._lower, &unk_2218038DB, &v18);
    return sub_22169A478((v17 + 48), &a2->range, a2);
  }
}

void *TSCEReferenceSet::insertRef(TSCEReferenceSet *this, TSCESpanningRangeRef *a2, uint64_t a3, uint64_t a4)
{
  p_tableUID = &a2->rangeRef._tableUID;
  if (*&a2->rangeRef._tableUID == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEReferenceSet::insertRef(const TSCESpanningRangeRef &)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceSet.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 549, 0, "Why are we getting invalid tableUID here?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  spanningRefs = this->_spanningRefs;
  if (!spanningRefs)
  {
    operator new();
  }

  p_rangeContext = &a2->rangeContext;
  v17 = sub_22169BC44(spanningRefs, &a2->rangeContext, &unk_2218038DB, &p_rangeContext);
  p_rangeContext = p_tableUID;
  v18 = sub_2213460C4(v17 + 3, p_tableUID, &unk_2218038DB, &p_rangeContext);
  return sub_22169A478((v18 + 48), &a2->rangeRef.range, a2);
}

void *TSCEReferenceSet::insertColumnRowUid(TSCEReferenceSet *this, TSKUIDStruct *a2, TSKUIDStruct *a3)
{
  columnRowUidRefs = this->_columnRowUidRefs;
  if (!columnRowUidRefs)
  {
    operator new();
  }

  v7 = a2;
  v5 = sub_22169BEA8(columnRowUidRefs, a2, &unk_2218038DB, &v7);
  return sub_2210C2B00(v5 + 4, a3, a3);
}

void *TSCEReferenceSet::insertTableUid(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  tableUuidRefs = this->_tableUuidRefs;
  if (!tableUuidRefs)
  {
    operator new();
  }

  return sub_2210C2B00(tableUuidRefs, a2, a2);
}

TSCEReferenceSet *TSCEReferenceSet::insertGeometryVolatileRef(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (!geometryVolatileRefs)
  {
    operator new();
  }

  sub_2210C2B00(geometryVolatileRefs, a2, a2);
  objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v5, a2, v6);
  return TSCEReferenceSet::insertRef(this, &v8);
}

void *TSCEReferenceSet::insertWholeOwnerRef(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  wholeOwnerRefs = this->_wholeOwnerRefs;
  if (!wholeOwnerRefs)
  {
    operator new();
  }

  return sub_2210C2B00(wholeOwnerRefs, a2, a2);
}

uint64_t **TSCEReferenceSet::insertRef(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  if (a2 <= 0xF && ((1 << a2) & 0xC40F) != 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEReferenceSet::insertRef(TSCEReferenceType)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceSet.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 505, 0, "Inserting these refTypes requires accompanying data, refType was %d", a2);

    v14 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
  }

  else
  {
    v16 = *(a1 + 80);
    if (!v16)
    {
      operator new();
    }

    return sub_22169AC64(v16, &v17, &v17);
  }
}
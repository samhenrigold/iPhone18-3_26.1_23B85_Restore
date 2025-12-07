uint64_t sub_1AF8DA510(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + (a6 << 6) + 32);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *v9;
      v14 = *(v8 + 32);
      *(v9 - 4) = *v8;
      *(v9 - 3) = v10;
      *v9 = v14;
      *(v9 - 2) = v11;
      *(v9 - 1) = v12;
      v15 = v14;

      result = sub_1AF9043AC(v8);
      v9 += 8;
      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA5C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + 56 * a6 + 32);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *v9;
      v14 = *(v8 + 32);
      *(v9 - 4) = *v8;
      *(v9 - 3) = v10;
      *v9 = v14;
      *(v9 - 2) = v11;
      *(v9 - 1) = v12;
      v15 = v14;

      result = sub_1AF9043AC(v8);
      v9 += 7;
      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA67C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + 56 * a6);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = v9[4];
      v14 = *(v8 + 32);
      *v9 = *v8;
      v9[1] = v10;
      *(v9 + 2) = v14;
      v9[2] = v11;
      v9[3] = v12;
      v15 = v14;

      sub_1AF8CBBC8();
      result = sub_1AF9043AC(v8);
      v9 += 7;
      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA734(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = result + 48 * a3;
    v9 = (a4 + 56 * a6 + 32);
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *v9;
      v14 = *(v8 + 32);
      *(v9 - 4) = *v8;
      *(v9 - 3) = v10;
      *v9 = v14;
      *(v9 - 2) = v11;
      *(v9 - 1) = v12;
      v15 = v14;

      result = sub_1AF9043AC(v8);
      v8 += 48;
      v9 += 7;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA7EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = (result + 48 * a3);
    v9 = (a4 + 48 * a6 + 24);
    do
    {
      v10 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      v16 = v8[5];
      v17 = *v8;
      v14 = v9[1];
      v15 = v13;

      *(v9 - 3) = v17;
      *(v9 - 2) = v10;
      *(v9 - 1) = v12;
      *v9 = v11;
      v9[1] = v13;
      v9[2] = v16;
      result = sub_1AF9043AC(v8);
      v8 += 6;
      v9 += 6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA8B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = a4 + 48 * a6;
    v9 = result + 56 * a3 + 16;
    do
    {
      v10 = *(v9 - 8);
      v11 = *v9;
      v12 = *(v9 + 8);
      v13 = *(v9 + 16);
      *v8 = *(v9 - 16);
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 24) = v12;
      *(v8 + 32) = v13;
      v14 = v13;

      v8 += 48;
      v9 += 56;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF8DA944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = result + (a3 << 6);
    v8 = a4 + 48 * a6;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = *(v7 + 32);
    *v8 = *v7;
    *(v8 + 8) = v9;
    *(v8 + 16) = v10;
    *(v8 + 24) = v11;
    *(v8 + 32) = v12;
    v13 = v12;
    v14 = a7 - 1;
    if (a7 != 1)
    {
      v15 = v7 + 64;
      v16 = (a4 + 48 * a6 + 80);
      do
      {
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v22 = *(v15 + 32);
        *(v16 - 4) = *v15;
        *(v16 - 3) = v17;
        *(v16 - 2) = v18;
        *(v16 - 1) = v19;
        *v16 = v22;
        v16 += 3;

        v20 = v13;
        v13 = v22;
        v15 += 64;
        --v14;
      }

      while (v14);
    }

    v21 = v13;
  }

  return result;
}

uint64_t sub_1AF8DAA3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = 0;
    v9 = result + 48 * a3;
    v10 = a4 + 48 * a6;
    do
    {
      v11 = *(v9 + v8 + 8);
      v12 = *(v9 + v8 + 16);
      v13 = *(v9 + v8 + 24);
      v14 = v10 + v8;
      v15 = *(v9 + v8 + 32);
      *v14 = *(v9 + v8);
      *(v14 + 8) = v11;
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      *(v14 + 32) = v15;
      v16 = v15;

      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

BOOL sub_1AF8DAAD0(void *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v22 = a2;
  v21 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v23 = a3;
  v9 = a3;
  v10 = HIDWORD(a3);
  v24 = a4;
  v11 = a4;
  v12 = HIWORD(a4);
  v25 = BYTE2(a4);
  v13 = sub_1AF445CA8(&v22);
  if (v13 != [a1 width])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v14 = sub_1AF445CB0(&v22);
  if (v14 != [a1 height])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v15 = sub_1AF8FE1B8(&v22);
  if ([a1 mipmapLevelCount] < v15)
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v16 = sub_1AF467494(&v22);
  if (v16 != [a1 pixelFormat])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v17 = sub_1AF8FE1C4(&v22);
  if (v17 != [a1 textureType])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v18 = sub_1AF8FE1D0(&v22);
  if (v18 != [a1 arrayLength])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v19 = sub_1AF8FE1D8(&v22);
  return v19 == [a1 storageMode];
}

uint64_t sub_1AF8DADB8(char a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1AF904A34(0, a2, type metadata accessor for ShaderScript, &off_1ED72CE68, a3);
  v10 = v9;
  v11 = *(v5 + 8);
  result = sub_1AF649C6C(*(v11 + 40), v9, v13);
  if (LOBYTE(v13[0]) == 1)
  {
    v13[0] = v10;
    v13[1] = a4;
    v14 = 1;
    MEMORY[0x1EEE9AC00](result);

    sub_1AF63023C(a1 & 1, v11, a5);

    return sub_1AF635250(v13);
  }

  return result;
}

uint64_t sub_1AF8DAED8(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v9 = *(v4 + 8);
  result = sub_1AF649C6C(*(v9 + 40), a2, v11);
  if (LOBYTE(v11[0]) == 1)
  {
    v11[0] = a2;
    v11[1] = a3;
    v12 = 1;
    MEMORY[0x1EEE9AC00](result);

    sub_1AF63023C(a1 & 1, v9, a4);

    return sub_1AF635250(v11);
  }

  return result;
}

uint64_t sub_1AF8DAFC8(uint64_t result)
{
  if (v1[10] >= 1)
  {
    v2 = v1;
    v3 = v1[7];
    if (v3)
    {
      v4 = result;
      v5 = v1[5];
      v6 = v5 + 48 * v3;
      v67 = v1;
      v68 = result;
      v71 = v6;
      do
      {
        v7 = *(v5 + 40);
        if (v4)
        {
          v8 = v2[9];
          v9 = *(*(v7 + 40) + 16);
          v10 = *(v9 + 128);
          if (!*(v10 + 16) || (result = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v11 & 1) == 0) || *(*(v9 + 24) + 16 * *(*(v10 + 56) + 8 * result) + 32) != &type metadata for TextureLoadingOptions)
          {
            *&v82[0] = &type metadata for TextureLoadingOptions;
            *(&v82[0] + 1) = &off_1F2543FE0;
            v84 = 0;
            swift_retain_n();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v77 = *(v8 + 96);
            v13 = v77;
            *(v8 + 96) = 0x8000000000000000;
            v14 = sub_1AF41A124(v7);
            v16 = v15;
            v17 = *(v13 + 16) + ((v15 & 1) == 0);
            if (*(v13 + 24) >= v17)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF8469BC();
                v13 = v77;
              }
            }

            else
            {
              sub_1AF830278(v17, isUniquelyReferenced_nonNull_native);
              type metadata accessor for ComponentsDataChunk();
              v13 = v77;
              v18 = sub_1AF41A124(v7);
              if ((v16 & 1) != (v19 & 1))
              {
                result = sub_1AFDFF1A8();
                __break(1u);
                return result;
              }

              v14 = v18;
            }

            *(v8 + 96) = v13;

            v36 = *(v8 + 96);
            if ((v16 & 1) == 0)
            {
              sub_1AF0FBA0C(&v77);
              v37 = v77;
              v36[(v14 >> 6) + 8] |= 1 << v14;
              *(v36[6] + 8 * v14) = v7;
              *(v36[7] + 8 * v14) = v37;
              ++v36[2];
            }

            v38 = v36[7];
            sub_1AF63515C(v82, &v77);
            v81 = 0;
            v80 = 0uLL;
            v39 = *(v38 + 8 * v14);
            v40 = swift_isUniquelyReferenced_nonNull_native();
            *(v38 + 8 * v14) = v39;
            if ((v40 & 1) == 0)
            {
              v39 = sub_1AF420EA0(0, v39[2] + 1, 1, v39);
              *(v38 + 8 * v14) = v39;
            }

            v42 = v39[2];
            v41 = v39[3];
            if (v42 >= v41 >> 1)
            {
              *(v38 + 8 * v14) = sub_1AF420EA0(v41 > 1, v42 + 1, 1, v39);
            }

            v43 = *(v38 + 8 * v14);
            *(v43 + 16) = v42 + 1;
            v44 = v43 + 72 * v42;
            *(v44 + 32) = v77;
            v45 = v78;
            v46 = v79;
            v47 = v80;
            *(v44 + 96) = v81;
            *(v44 + 64) = v46;
            *(v44 + 80) = v47;
            *(v44 + 48) = v45;
            result = sub_1AF635250(v82);
          }
        }

        else
        {
          v20 = *(v7 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v20);
          os_unfair_lock_lock(*(v7 + 344));
          v21 = v2[9];
          v22 = *(v7 + 232);
          v23 = *(v7 + 240);
          if (v23 != v22)
          {
            v24 = *(v7 + 192);
            if (v24)
            {
              v25 = *(v7 + 208);
              sub_1AF75D408(*(v7 + 232), *(v7 + 240), v24);
              sub_1AF75D364(v22, v23, v25);
            }

            sub_1AF705690(v22, v23);
          }

          v26 = *(v7 + 24);

          *&v79 = 0;
          v77 = 0u;
          v78 = 0u;
          v83 = 0;
          memset(v82, 0, sizeof(v82));
          v27 = sub_1AF65A4B4(v26, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v77, v82);

          sub_1AF5DD41C(v82);
          sub_1AF5DD41C(&v77);
          if (sub_1AF649CEC(v27))
          {
            sub_1AF649D40(v27, v21);
            v6 = v71;
          }

          else
          {
            v70 = v5;
            v28 = *(v7 + 232);
            v29 = *(v7 + 240);
            v69 = *(v7 + 120);
            v30 = *(v7 + 28);
            v31 = *(v7 + 32);
            v32 = *(v7 + 16);
            v33 = *(v7 + 40);
            v34 = *(v33 + 200);
            v76 = *(*(v32 + 88) + 8 * v27 + 32);

            if ((v34 & 1) != 0 || *(v76 + 200) == 1)
            {
              *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v33 = *(v7 + 40);
            }

            v35 = v2;
            v75 = *(v7 + 128);
            v48 = *(v7 + 256);
            sub_1AF5B4FCC(v33, v28, v29, 0, v7);
            v72 = *(v7 + 256);
            v49 = v72 - v48;
            v73 = v48;
            if (v72 == v48)
            {
              v50 = 0;
            }

            else
            {
              v50 = v48;
            }

            v74 = v50;
            *&v82[0] = v50;
            v51 = *(*(v7 + 40) + 24);
            v52 = *(v51 + 16);
            if (v52)
            {
              v53 = v51 + 32;

              for (i = 0; i != v52; ++i)
              {
                v55 = (v53 + 40 * i);
                if ((v55[4] & 1) == 0)
                {
                  v56 = *v55;
                  v58 = v55[2];
                  v57 = v55[3];
                  v59 = *(v76 + 24);
                  v60 = *(v59 + 16);
                  if (v60)
                  {
                    v61 = (v59 + 32);
                    while (*v61 != v56)
                    {
                      v61 += 5;
                      if (!--v60)
                      {
                        goto LABEL_37;
                      }
                    }
                  }

                  else
                  {
LABEL_37:
                    sub_1AF640BC8(v75 + v58 * v74 + v57, v49);
                  }
                }
              }

              v2 = v67;
            }

            else
            {
              v2 = v35;
            }

            if (*(v32 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v32 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v49);
            }

            if (*(v7 + 184))
            {
              v62 = 0;
            }

            else
            {
              v62 = *(v7 + 168);
            }

            MEMORY[0x1EEE9AC00](v63);
            DWORD2(v78) = -1;
            *&v79 = v73;
            *(&v79 + 1) = v72;
            *&v80 = v73;
            *(&v80 + 1) = v72;
            *&v77 = v73;
            *(&v77 + 1) = v72;
            *&v78 = v62;
            if (v64 >= 1)
            {
              do
              {
                sub_1AF6248A8(v27, v30 | (v31 << 32), v69, v32, &v77, sub_1AF5C5E08);
              }

              while ((*(&v77 + 1) - v77) > 0);
            }

            v65 = *(v7 + 192);
            v4 = v68;
            v5 = v70;
            v6 = v71;
            if (v65)
            {
              v66 = *(v7 + 208);
              sub_1AF75D364(v73, v72, v65);
              sub_1AF75D364(v73, v72, v66);
            }
          }

          os_unfair_lock_unlock(*(v7 + 344));
          os_unfair_lock_unlock(*(v7 + 376));
        }

        v5 += 48;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_1AF8DB780(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v9 = *(v4 + 8);
  result = sub_1AF649C6C(*(v9 + 40), a2, v11);
  if ((v11[0] & 1) == 0)
  {
    v11[0] = a2;
    v11[1] = a3;
    v12 = 0;
    MEMORY[0x1EEE9AC00](result);

    sub_1AF63023C(a1 & 1, v9, a4);

    return sub_1AF635250(v11);
  }

  return result;
}

uint64_t sub_1AF8DB86C(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v21 = a1;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  v22 = a2;
  v23 = a3;
  v11 = HIWORD(a3);
  v24 = BYTE2(a3);
  v12 = sub_1AF8FE1C4(&v21);
  if (v12 > 8)
  {
    return 1;
  }

  if (((1 << v12) & 0x63) != 0)
  {
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v23 = v3;
    v24 = v11;
    v14 = sub_1AF445CA8(&v21);
  }

  else if (((1 << v12) & 0x11C) != 0)
  {
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v23 = v3;
    v24 = v11;
    v13 = sub_1AF445CA8(&v21);
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v24 = v11;
    v23 = v3;
    v14 = sub_1AF445CB0(&v21);
    if (v14 <= v13)
    {
      v14 = v13;
    }
  }

  else
  {
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v23 = v3;
    v24 = v11;
    v20 = sub_1AF445CA8(&v21);
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v24 = v11;
    v23 = v3;
    v17 = sub_1AF445CB0(&v21);
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v24 = v11;
    v23 = v3;
    v18 = sub_1AF478AC0(&v21);
    if (v18 <= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (v19 <= v20)
    {
      v14 = v20;
    }

    else
    {
      v14 = v19;
    }
  }

  v15 = log2f(fmaxf(v14, 1.0));
  return (floorf(v15) + 1.0);
}

uint64_t sub_1AF8DBA78(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v62 = a6;
  v68 = a5;
  v65 = a2;
  *&v67 = a1;
  v8 = sub_1AFDFC4F8();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = sub_1AF8DC964(a4[4], a4[5], *(a4 + 24) | (*(a4 + 50) << 16));
  v15 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v15 setCountStyle_];
  v16 = [v15 stringFromByteCount_];
  ObjectType = sub_1AFDFCEF8();
  v18 = v17;

  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v19 = sub_1AFDFC538();
  sub_1AF477C68(v19, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();

  v20 = sub_1AFDFC528();
  v21 = sub_1AFDFDB88();

  if (sub_1AFDFDCE8())
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v64 = v10;
    v24 = v23;
    *&aBlock = v23;
    *v22 = 136315138;
    v25 = sub_1AF740B70(ObjectType, v18, &aBlock);

    *(v22 + 4) = v25;
    v26 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v20, v21, v26, "downloadGPUTextureToCPU", "size: %s", v22, 0xCu);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
    v27 = v24;
    v10 = v64;
    MEMORY[0x1B271DEA0](v27, -1, -1);
    MEMORY[0x1B271DEA0](v22, -1, -1);
  }

  else
  {
  }

  (*(v69 + 16))(v10, v13, v70);
  sub_1AFDFC578();
  swift_allocObject();
  v28 = sub_1AFDFC568();
  ObjectType = swift_getObjectType();
  v29 = sub_1AF473048(0);
  v30 = v29;
  v31 = *a4;
  if (*a4 && a4[2] == v29)
  {
    goto LABEL_12;
  }

  v32 = [a3 label];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1AFDFCEF8();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = sub_1AF6F35A0(v30, 0, v34, v36);
  v39 = v38;
  v41 = v40;

  swift_unknownObjectRelease();
  *a4 = v37;
  a4[1] = v39;
  a4[2] = v41;
  CFXTextureDescriptorFromMTLTexture(a3, &aBlock, v42, v43);
  *(a4 + 2) = aBlock;
  a4[6] = v72;
  v31 = *a4;
  if (*a4)
  {
LABEL_12:
    v64 = v13;
    v65 = v28;
    v44 = a4[1];
    v45 = swift_unknownObjectRetain();
    v47 = sub_1AF6F3F0C(v45, v46);
    v48 = sub_1AFDFCEC8();
    [v47 pushDebugGroup_];

    v51 = sub_1AF6F3BD8(v49, v50);
    sub_1AF4674F0(0, 0, 0, &aBlock);
    v67 = aBlock;
    v52 = v72;
    sub_1AF4674F0([a3 width], objc_msgSend(a3, sel_height), objc_msgSend(a3, sel_depth), &aBlock);
    v63 = aBlock;
    v53 = v72;
    v54 = sub_1AF472034();
    v55 = sub_1AF472FC8();
    aBlock = v67;
    v72 = v52;
    v76 = v63;
    v77 = v53;
    [v47 copyFromTexture:a3 sourceSlice:0 sourceLevel:0 sourceOrigin:&aBlock sourceSize:&v76 toBuffer:v31 destinationOffset:v44 destinationBytesPerRow:v54 destinationBytesPerImage:v55];
    v56 = v68;
    if (v68)
    {
      v57 = swift_allocObject();
      v58 = v62;
      *(v57 + 16) = v56;
      *(v57 + 24) = v58;
      v74 = sub_1AF6FC894;
      v75 = v57;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v72 = sub_1AF719CC4;
      v73 = &unk_1F2544A08;
      v59 = _Block_copy(&aBlock);
      sub_1AF0FBD8C(v56, v58);

      [v51 addCompletedHandler_];
      swift_unknownObjectRelease();
      _Block_release(v59);
      sub_1AF0FB8EC(v56, v58);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v13 = v64;
    v28 = v65;
    [v47 popDebugGroup];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1AF8F7290(v28, "downloadGPUTextureToCPU");

  return (*(v69 + 8))(v13, v70);
}

void *sub_1AF8DC0E8(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (!a1)
    {

      return sub_1AF708F90();
    }

    if (a1 == 2)
    {

      return sub_1AF70924C();
    }

LABEL_18:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38E30);
    type metadata accessor for MTLTextureType(0);
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (a1 == 5)
  {

    return sub_1AF7097AC();
  }

  else
  {
    if (a1 != 7)
    {
      goto LABEL_18;
    }

    return sub_1AF7094F0();
  }
}

char *sub_1AF8DC244()
{
  sub_1AF0D4E74(0);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v4 = *v0;
  v38 = 0x80000001AFF39BE0;
  v33 = (v5 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 0x20u;
  v32 = xmmword_1AFE431C0;
  do
  {
    v9 = *(&unk_1F24FEB28 + v7);
    if ((v9 & ~v4) != 0)
    {
      goto LABEL_3;
    }

    if (v9 <= 15)
    {
      if (v9 > 3)
      {
        if (v9 == 4)
        {
          v10 = &type metadata for TextureRequireNonSRGB;
          v11 = &off_1F25461D8;
        }

        else
        {
          if (v9 != 8)
          {
            goto LABEL_26;
          }

          v10 = &type metadata for TextureRequireUnpremultiply;
          v11 = &off_1F25461F8;
        }
      }

      else if (v9 == 1)
      {
        v10 = &type metadata for TextureRequireCPURepresentation;
        v11 = &off_1F2544440;
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_26;
        }

        v10 = &type metadata for TextureRequireGPURepresentation;
        v11 = &off_1F25442D0;
      }
    }

    else if (v9 <= 63)
    {
      if (v9 == 16)
      {
        v10 = &type metadata for TextureRequireCubemap;
        v11 = &off_1F2546218;
      }

      else
      {
        if (v9 != 32)
        {
LABEL_26:
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v12 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          v13 = qword_1ED73B890;
          sub_1AF8FE14C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v14 = swift_allocObject();
          *(v14 + 16) = v32;
          *(v14 + 56) = MEMORY[0x1E69E6158];
          *(v14 + 64) = sub_1AF0D544C();
          *(v14 + 32) = 0xD000000000000016;
          *(v14 + 40) = v38;
          sub_1AFDFC4C8(v12, &dword_1AF0CE000, v13, "%{public}s", 10, 2, v14);

          v15 = v34;
          sub_1AFDFC288();
          v16 = v36;
          v17 = v37[12];
          v18 = v37[16];
          v19 = &v36[v37[20]];
          (*v33)(v36, v15, v35);
          *(v16 + v17) = v12;
          *(v16 + v18) = 0;
          *v19 = 0xD000000000000016;
          *(v19 + 1) = v38;
          sub_1AFDFC608();

          sub_1AF904B7C(v16, sub_1AF0D4E74);
          v10 = &type metadata for NullEntityComponent;
          v11 = &off_1F2532748;
          goto LABEL_33;
        }

        v10 = &type metadata for TextureRequireMipmap;
        v11 = &off_1F2546458;
      }
    }

    else
    {
      switch(v9)
      {
        case 64:
          v10 = &type metadata for TextureRequireMipmapGeneration;
          v11 = &off_1F2546238;
          break;
        case 128:
          v10 = &type metadata for TextureRequirePremultiplyWithLinearAlpha;
          v11 = &off_1F2546258;
          break;
        case 256:
          v10 = &type metadata for TextureRequireIOSurface;
          v11 = &off_1F2546278;
          break;
        default:
          goto LABEL_26;
      }
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AF422C28(0, *(v6 + 2) + 1, 1, v6);
    }

    v21 = *(v6 + 2);
    v20 = *(v6 + 3);
    if (v21 >= v20 >> 1)
    {
      v6 = sub_1AF422C28(v20 > 1, v21 + 1, 1, v6);
    }

    *(v6 + 2) = v21 + 1;
    v8 = &v6[16 * v21];
    *(v8 + 4) = v10;
    *(v8 + 5) = v11;
LABEL_3:
    v7 += 8;
  }

  while (v7 != 104);
  v22 = v31;
  if ((v31[3] & 0x80000000) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AF422C28(0, *(v6 + 2) + 1, 1, v6);
    }

    v24 = *(v6 + 2);
    v23 = *(v6 + 3);
    if (v24 >= v23 >> 1)
    {
      v6 = sub_1AF422C28(v23 > 1, v24 + 1, 1, v6);
    }

    *(v6 + 2) = v24 + 1;
    v25 = &v6[16 * v24];
    *(v25 + 4) = &type metadata for TextureRequireSizeLimit;
    *(v25 + 5) = &off_1F25464F8;
  }

  if (*(v22 + 57) << 8 != 768)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AF422C28(0, *(v6 + 2) + 1, 1, v6);
    }

    v27 = *(v6 + 2);
    v26 = *(v6 + 3);
    if (v27 >= v26 >> 1)
    {
      v6 = sub_1AF422C28(v26 > 1, v27 + 1, 1, v6);
    }

    *(v6 + 2) = v27 + 1;
    v28 = &v6[16 * v27];
    *(v28 + 4) = &type metadata for TextureRequireAnimationRepresentation;
    *(v28 + 5) = &off_1F25444F0;
  }

  return v6;
}

uint64_t sub_1AF8DC840()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_1AF8DC89C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1AFDFE218();

    v6 = 0xD000000000000016;
  }

  else
  {
    sub_1AFDFE218();

    v6 = 0xD000000000000017;
  }

  MEMORY[0x1B2718AE0](a1, a2);
  return v6;
}

uint64_t sub_1AF8DC964(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v23 = a1;
  v19 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = a1;
  v6 = HIDWORD(a1);
  v24 = a2;
  v7 = a2;
  v8 = HIDWORD(a2);
  v25 = a3;
  v9 = a3;
  v10 = HIWORD(a3);
  v26 = BYTE2(a3);
  v11 = sub_1AF8FE1B8(&v23);
  v12 = 0;
  if (v11)
  {
    v13 = 0;
    v18 = v11;
    do
    {
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v25 = v9;
      v26 = v10;
      v22 = sub_1AF467494(&v23);
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v26 = v10;
      v25 = v9;
      v21 = sub_1AF445CA8(&v23);
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v26 = v10;
      v25 = v9;
      v20 = sub_1AF445CB0(&v23);
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v26 = v10;
      v25 = v9;
      v14 = sub_1AF478AC0(&v23);
      v12 += sub_1AF472C1C(v21, v20, v14, v13++, v22);
    }

    while (v18 != v13);
  }

  LOBYTE(v23) = v5;
  BYTE1(v23) = v19;
  BYTE2(v23) = v3;
  BYTE3(v23) = v4;
  HIDWORD(v23) = v6;
  v24 = __PAIR64__(v8, v7);
  v25 = v9;
  v26 = v10;
  v15 = sub_1AF8FE1C4(&v23);
  if (v15 <= 4)
  {
    if (v15 <= 1)
    {
      if (v15 != 1)
      {
LABEL_15:
        v16 = 1;
        return v16 * v12;
      }
    }

    else if (v15 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v15 > 6)
  {
    if (v15 != 8)
    {
      goto LABEL_15;
    }

LABEL_12:
    LOBYTE(v23) = v5;
    BYTE1(v23) = v19;
    BYTE2(v23) = v3;
    BYTE3(v23) = v4;
    HIDWORD(v23) = v6;
    v24 = __PAIR64__(v8, v7);
    v25 = v9;
    v26 = v10;
    v16 = sub_1AF8FE1D0(&v23);
    return v16 * v12;
  }

  if (v15 == 5)
  {
    v16 = 6;
  }

  else
  {
    LOBYTE(v23) = v5;
    BYTE1(v23) = v19;
    BYTE2(v23) = v3;
    BYTE3(v23) = v4;
    HIDWORD(v23) = v6;
    v24 = __PAIR64__(v8, v7);
    v25 = v9;
    v26 = v10;
    v16 = 6 * sub_1AF8FE1D0(&v23);
  }

  return v16 * v12;
}

unint64_t sub_1AF8DCC60(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000019;
    v7 = 0x656C7A7A697773;
    if (a1 != 10)
    {
      v7 = 0x4D656761726F7473;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6F43656C706D6173;
    v9 = 0x6E654C7961727261;
    if (a1 != 7)
    {
      v9 = 0x6567617375;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5465727574786574;
    v2 = 0x746867696568;
    v3 = 0x6874706564;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x726F466C65786970;
    if (a1 != 1)
    {
      v4 = 0x6874646977;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1AF8DCE00(char a1)
{
  result = 0x5465727574786574;
  switch(a1)
  {
    case 1:
      result = 0x726F466C65786970;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
    case 4:
      result = 0x6874706564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6F43656C706D6173;
      break;
    case 7:
      result = 0x6E654C7961727261;
      break;
    case 8:
      result = 0x656372756F736572;
      break;
    case 9:
      result = 0x6567617375;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x656C7A7A697773;
      break;
    case 12:
      result = 0x4D656761726F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF8DCF90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AF8DCC60(*a1);
  v5 = v4;
  if (v3 == sub_1AF8DCC60(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8DD018()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE847B8[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD0A0(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE847B8[v2]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD0EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FDF3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF8DD138@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF8FD9A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF8DD178@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FDF3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF8DD1A0(uint64_t a1)
{
  v2 = sub_1AF905E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DD1DC(uint64_t a1)
{
  v2 = sub_1AF905E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DD218(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF8DCE00(*a1);
  v5 = v4;
  if (v3 == sub_1AF8DCE00(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8DD2A0()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF8DCE00(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD304(uint64_t a1)
{
  sub_1AF8DCE00(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AF8DD358(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF8DCE00(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8DD3B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FDD7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF8DD3E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF8DCE00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF8DD430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8FDD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8DD458(uint64_t a1)
{
  v2 = sub_1AF905EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DD494(uint64_t a1)
{
  v2 = sub_1AF905EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DD4D0(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  v33 = a4;
  v4 = a3;
  v7 = a2 >> 8;
  v8 = a2 >> 16;
  v27 = a2 >> 24;
  v24 = HIDWORD(a2);
  v23 = HIDWORD(a3);
  sub_1AF9061B8(0, &unk_1EB640380, sub_1AF905E98, &type metadata for TextureDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF905E98();
  v13 = v10;
  v14 = v33;
  sub_1AFDFF3F8();
  v21 = v7;
  v22 = a2;
  LOBYTE(v28) = a2;
  BYTE1(v28) = v7;
  v20 = v8;
  BYTE2(v28) = v8;
  v15 = v23;
  v16 = v24;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v24;
  v29 = v4;
  v30 = v23;
  v32 = BYTE2(v14);
  v31 = v14;
  v28 = sub_1AF8FE1C4(&v28);
  v34 = 0;
  type metadata accessor for MTLTextureType(0);
  sub_1AF9027C4(&unk_1EB63FE60, type metadata accessor for MTLTextureType, protocol conformance descriptor for MTLTextureType);
  v17 = v25;
  sub_1AFDFE918();
  if (v17)
  {
    return (*(v26 + 8))(v12, v13);
  }

  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  v28 = sub_1AF467494(&v28);
  v34 = 1;
  type metadata accessor for MTLPixelFormat(0);
  sub_1AF9027C4(&qword_1EB640390, type metadata accessor for MTLPixelFormat, protocol conformance descriptor for MTLPixelFormat);
  sub_1AFDFE918();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF445CA8(&v28);
  LOBYTE(v28) = 2;
  v25 = v13;
  sub_1AFDFE8F8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF445CB0(&v28);
  LOBYTE(v28) = 3;
  sub_1AFDFE8F8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF478AC0(&v28);
  LOBYTE(v28) = 4;
  sub_1AFDFE8F8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF8FE1B8(&v28);
  LOBYTE(v28) = 5;
  sub_1AFDFE8F8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF448440(&v28);
  LOBYTE(v28) = 6;
  sub_1AFDFE8F8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF8FE1D0(&v28);
  LOBYTE(v28) = 7;
  sub_1AFDFE8F8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  v28 = sub_1AF4676C8(&v28);
  v34 = 8;
  type metadata accessor for MTLTextureUsage(0);
  sub_1AF9027C4(&qword_1EB640398, type metadata accessor for MTLTextureUsage, protocol conformance descriptor for MTLTextureUsage);
  sub_1AFDFE918();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v14;
  sub_1AF905F60(&v28);
  LOBYTE(v28) = 9;
  sub_1AFDFE8C8();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  v34 = 10;
  type metadata accessor for MTLTextureSwizzleChannels(0);
  sub_1AF9027C4(&qword_1EB6403A0, type metadata accessor for MTLTextureSwizzleChannels, protocol conformance descriptor for MTLTextureSwizzleChannels);
  sub_1AFDFE918();
  LOBYTE(v28) = v22;
  BYTE1(v28) = v21;
  BYTE2(v28) = v20;
  BYTE3(v28) = v27;
  HIDWORD(v28) = v16;
  v29 = v4;
  v30 = v15;
  v32 = BYTE2(v14);
  v31 = v33;
  sub_1AF8FE1D8(&v28);
  LOBYTE(v28) = 11;
  sub_1AFDFE968();
  return (*(v26 + 8))(v12, v25);
}

uint64_t sub_1AF8DDBF4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF900B10(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 18) = BYTE2(v6);
  }

  return result;
}

uint64_t sub_1AF8DDC7C(__int16 a1)
{
  if (a1)
  {
    MEMORY[0x1B2718AE0](0x61726F7453757063, 0xEB000000002C6567);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1B2718AE0](0x61726F7453757067, 0xEB000000002C6567);
  if ((a1 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x1B2718AE0](0x2C424752536E6F6ELL, 0xE800000000000000);
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3A310);
  }

  if ((a1 & 0x10) != 0)
  {
    MEMORY[0x1B2718AE0](0x2C70616D65627563, 0xE800000000000000);
  }

  if ((a1 & 0x20) != 0)
  {
    MEMORY[0x1B2718AE0](0x657461636F6C6C61, 0xEF2C70616D70694DLL);
    if ((a1 & 0x40) == 0)
    {
LABEL_11:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3A2F0);
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  MEMORY[0x1B2718AE0](0x65746172656E6567, 0xEF2C70616D70694DLL);
  if ((a1 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((a1 & 0x100) != 0)
  {
LABEL_13:
    MEMORY[0x1B2718AE0](0x6361667275536F69, 0xEA00000000002C65);
  }

LABEL_14:
  v2 = sub_1AF8FD3D4(1, 0, 0xE000000000000000);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1B27189E0](v2, v4, v6, v8);

  return v9;
}

uint64_t sub_1AF8DDF28()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1AFDFF288();
  if (v3 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
    sub_1AFDFF2A8();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DDFC8()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[2] < 0)
  {
    MEMORY[0x1B271ACB0](1);
    MEMORY[0x1B271ACB0](v2);
    return MEMORY[0x1B271ACB0](v1);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
    return sub_1AFDFF2A8();
  }
}

uint64_t sub_1AF8DE03C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  sub_1AFDFF288();
  if (v4 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    MEMORY[0x1B271ACB0](v3);
    MEMORY[0x1B271ACB0](v2);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v3);
    MEMORY[0x1B271ACB0](v2);
    sub_1AFDFF2A8();
  }

  return sub_1AFDFF2F8();
}

void sub_1AF8DE0F4()
{
  unk_1EB6C3288 = 0;
  xmmword_1EB6C3278 = 0x42uLL;
  byte_1EB6C3290 = -2;
  unk_1EB6C32A8 = 0;
  xmmword_1EB6C3298 = 0uLL;
  word_1EB6C32B0 = 768;
}

void sub_1AF8DE124()
{
  unk_1ED73B4E8 = 0;
  xmmword_1ED73B4D8 = 2uLL;
  byte_1ED73B4F0 = -2;
  unk_1ED73B508 = 0;
  xmmword_1ED73B4F8 = 0uLL;
  word_1ED73B510 = 768;
}

void sub_1AF8DE154()
{
  unk_1EB6C32C8 = 0;
  xmmword_1EB6C32B8 = 0x46uLL;
  byte_1EB6C32D0 = -2;
  unk_1EB6C32E8 = 0;
  xmmword_1EB6C32D8 = 0uLL;
  word_1EB6C32F0 = 768;
}

uint64_t sub_1AF8DE1B4(uint64_t a1)
{
  v2 = sub_1AF905D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DE1F0(uint64_t a1)
{
  v2 = sub_1AF905D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DE22C(void *a1)
{
  v2 = v1;
  sub_1AF9061B8(0, &qword_1EB640368, sub_1AF905D9C, &type metadata for TextureOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF905D9C();
  sub_1AFDFF3F8();
  v10[1] = *v2;
  sub_1AF905E44();
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF8DE3A8()
{
  MEMORY[0x1B271ACB0](*v0);
  v1 = *(v0 + 24);
  if (v1 < 0xFE)
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    sub_1AFDFF2A8();
    if ((v1 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v2);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v2);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  v4 = *(v0 + 56);
  if ((v4 & 0xFF00) != 0x300)
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2A8();
    if ((v4 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v5);
    }
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF8DE4AC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  if (v4 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v1);
      MEMORY[0x1B271ACB0](v3);
      goto LABEL_5;
    }

    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
    MEMORY[0x1B271ACB0](v3);
  }

  sub_1AFDFF2A8();
LABEL_5:
  v5 = *(v0 + 28);
  if ((v5 & 0xFF00) != 0x300)
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v8);
    MEMORY[0x1B271ACB0](v7);
    sub_1AFDFF2A8();
    if ((v5 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v6);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DE608(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 28);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v3);
  if (v5 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v5 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v2);
      MEMORY[0x1B271ACB0](v4);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v2);
      MEMORY[0x1B271ACB0](v4);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v9 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2A8();
    if ((v9 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v8);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

double sub_1AF8DE768@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AF8FE244(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_1AF8DE7CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_1AF8FD008(v5, v7) & 1;
}

uint64_t sub_1AF8DE828@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireCPURepresentation, &v28);
  v4 = v28;
  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireGPURepresentation, &v28);
  if (v28)
  {
    v4 |= 2uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireNonSRGB, &v28);
  if (v28)
  {
    v4 |= 4uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireUnpremultiply, &v28);
  if (v28)
  {
    v4 |= 8uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireCubemap, &v28);
  if (v28)
  {
    v4 |= 0x10uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireMipmap, &v28);
  if (v28)
  {
    v4 |= 0x20uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireMipmapGeneration, &v28);
  if (v28)
  {
    v4 |= 0x40uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequirePremultiplyWithLinearAlpha, &v28);
  if (v28)
  {
    v4 |= 0x80uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireIOSurface, &v28);
  if (v28 == 1)
  {
    v4 |= 0x100uLL;
    v5 = v4 & 0x106;
    if (v5 != v4)
    {
      v6 = v1;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1AFDFE218();

      v28 = 0x20666F20656D6F53;
      v29 = 0xE800000000000000;
      v7 = sub_1AF8DDC7C(v4);
      MEMORY[0x1B2718AE0](v7);

      MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF3A2C0);
      v9 = v28;
      v8 = v29;
      v10 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v27 = v10;
        swift_once();
        v10 = v27;
      }

      v28 = 0;
      sub_1AF0D4F18(v10, &v28, v9, v8);

      v4 = v5;
      v1 = v6;
    }
  }

  v11 = *(v1 + 32);

  v12 = sub_1AF64B03C(&type metadata for TextureRequireSizeLimit, &off_1F2546478);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = -2;
  }

  else
  {
    v18 = v12 + 24 * v11;
    v15 = *v18;
    v16 = *(v18 + 8);
    v17 = *(v18 + 16);
  }

  v19 = sub_1AF64B03C(&type metadata for TextureRequireAnimationRepresentation, &off_1F2544470);
  v21 = v20;

  if (v21)
  {
    v23 = 0;
    v24 = 0uLL;
    v25 = 768;
  }

  else
  {
    v26 = v19 + 32 * v11;
    v24 = *v26;
    v23 = *(v26 + 16);
    v25 = *(v26 + 24) | (*(v26 + 25) << 8);
  }

  *a1 = v4;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v24;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  return result;
}

uint64_t sub_1AF8DEBE8(uint64_t a1)
{
  v2 = sub_1AF905F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DEC24(uint64_t a1)
{
  v2 = sub_1AF905F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DECB0(void *a1)
{
  v2 = v1;
  sub_1AF9061B8(0, &qword_1EB640278, sub_1AF9046C8, &type metadata for TextureLoadingOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9046C8();
  sub_1AFDFF3F8();
  v9 = v2[1];
  v11[0] = *v2;
  v11[1] = v9;
  v12[0] = v2[2];
  *(v12 + 10) = *(v2 + 42);
  sub_1AF904770();
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AF8DEE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF8DEEE0(uint64_t a1)
{
  v2 = sub_1AF9046C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DEF1C(uint64_t a1)
{
  v2 = sub_1AF9046C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF8DEF58@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AF900920(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

void sub_1AF8DEFBC(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 98;
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 768;
}

uint64_t sub_1AF8DEFE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F706D65547369;
  }

  else
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x726F706D65547369;
  }

  else
  {
    v5 = 0x6B6361626C6C6166;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8DF090()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DF118(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8DF18C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF8DF21C(uint64_t *a1@<X8>)
{
  v2 = 0x6B6361626C6C6166;
  if (*v1)
  {
    v2 = 0x726F706D65547369;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF8DF260()
{
  if (*v0)
  {
    return 0x726F706D65547369;
  }

  else
  {
    return 0x6B6361626C6C6166;
  }
}

uint64_t sub_1AF8DF2AC(uint64_t a1)
{
  v2 = sub_1AF906110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DF2E8(uint64_t a1)
{
  v2 = sub_1AF906110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DF324(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  sub_1AF9061B8(0, &qword_1EB640410, sub_1AF906110, &type metadata for RenderGraphTextureTarget.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF906110();
  sub_1AFDFF3F8();
  v14 = v3;
  v13 = 0;
  sub_1AF8FF0F0();
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF8DF4C8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF90171C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1AF8DF4FC(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF8DF324(a1, v2 | *v1);
}

uint64_t sub_1AF8DF5E8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF8DF640(uint64_t a1)
{
  v2 = sub_1AF9060BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DF67C(uint64_t a1)
{
  v2 = sub_1AF9060BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DF6B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1AF9061B8(0, &qword_1EB6403F0, sub_1AF9060BC, &type metadata for TextureRequireMipmap.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9060BC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v15;
  v10 = sub_1AFDFE6D8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v10;
  *(v9 + 8) = v12 & 1;
  return result;
}

uint64_t sub_1AF8DF870(void *a1, char a2, float a3)
{
  sub_1AF9061B8(0, &unk_1EB640430, sub_1AF906164, &type metadata for TextureRequireMask.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF906164();
  sub_1AFDFF3F8();
  v12[15] = a2;
  v12[14] = 0;
  sub_1AF51CA58();
  sub_1AFDFE918();
  if (!v3)
  {
    v12[13] = 1;
    sub_1AFDFE8E8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF8DFA20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6F687365726874;
  }

  else
  {
    v3 = 0x6C656E6E616863;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x6C6F687365726874;
  }

  else
  {
    v5 = 0x6C656E6E616863;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8DFACC()
{
  if (*v0)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1AF8DFB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF8DFBF0(uint64_t a1)
{
  v2 = sub_1AF906164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DFC2C(uint64_t a1)
{
  v2 = sub_1AF906164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF8DFC68(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_1AF8FF544(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 4) = v5;
  }
}

double sub_1AF8DFE48@<D0>(_DWORD *a1@<X8>)
{
  *&result = 16842752;
  *a1 = 16842752;
  return result;
}

uint64_t sub_1AF8DFE64()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DFF4C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E0020(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8E0104@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FD90C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF8E0134(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080941;
  v5 = 0x65646F4D757067;
  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6B6361626C6C6166;
  if (v2 != 3)
  {
    v8 = 0x6F7268636E797361;
    v7 = 0xEC00000073756F6ELL;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x65646F4D757063;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF8E01D8()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 0x65646F4D757067;
  v4 = 0x6B6361626C6C6166;
  if (v1 != 3)
  {
    v4 = 0x6F7268636E797361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65646F4D757063;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF8E0278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8FD90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8E02A0(uint64_t a1)
{
  v2 = sub_1AF8FEFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E02DC(uint64_t a1)
{
  v2 = sub_1AF8FEFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E0318(void *a1, unsigned int a2)
{
  sub_1AF9061B8(0, &qword_1EB640130, sub_1AF8FEFA0, &type metadata for TextureLoadPolicy.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FEFA0();
  sub_1AFDFF3F8();
  v18 = a2;
  v17 = 1;
  sub_1AF8FF09C();
  sub_1AFDFE918();
  if (!v2)
  {
    v16 = BYTE1(a2);
    v15 = 2;
    sub_1AFDFE918();
    v14 = BYTE2(a2);
    v13 = 3;
    sub_1AF8FF0F0();
    sub_1AFDFE918();
    v12 = 4;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF8E053C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8FECA8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 3) = BYTE3(result) & 1;
  }

  return result;
}

uint64_t sub_1AF8E0580(void *a1)
{
  if (v1[3])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF8E0318(a1, v2 | (v1[2] << 16) | (v1[1] << 8) | *v1);
}

uint64_t sub_1AF8E05C0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a4;
  v12[1] = a3;
  sub_1AF9061B8(0, &qword_1EB6403E8, sub_1AF906068, &type metadata for TextureRequireSizeLimit.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF906068();
  sub_1AFDFF3F8();
  v16 = 0;
  sub_1AFDFE8F8();
  if (!v4)
  {
    v15 = 1;
    sub_1AFDFE8F8();
    v14 = 2;
    sub_1AFDFE8C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF8E077C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x686769654878616DLL;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x657073417065656BLL;
    v4 = 0xEF6F697461527463;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x687464695778616DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x686769654878616DLL;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x657073417065656BLL;
    v8 = 0xEF6F697461527463;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x687464695778616DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8E08A0()
{
  v1 = 0x686769654878616DLL;
  if (*v0 != 1)
  {
    v1 = 0x657073417065656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687464695778616DLL;
  }
}

uint64_t sub_1AF8E090C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF8FDDC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF8E0934(uint64_t a1)
{
  v2 = sub_1AF906068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E0970(uint64_t a1)
{
  v2 = sub_1AF906068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E09AC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF901518(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

int64x2_t sub_1AF8E0A00@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x400uLL);
  *a1 = result;
  a1[1].i8[0] = 1;
  return result;
}

uint64_t sub_1AF8E0A18(uint64_t a1)
{
  v2 = sub_1AF905FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E0A54(uint64_t a1)
{
  v2 = sub_1AF905FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E0AE0(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  sub_1AF9061B8(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1AF8E0C1C(uint64_t a1)
{
  v2 = sub_1AF906014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E0C58(uint64_t a1)
{
  v2 = sub_1AF906014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E0DA0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E0E9C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E0F84(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8E107C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FDEF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF8E10AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x756F43656D617266;
  v5 = 0xEE006E6D756C6F43;
  v6 = 0x726550656D617266;
  v7 = 0xE400000000000000;
  v8 = 1684957547;
  if (v2 != 3)
  {
    v8 = 0x7574786554657375;
    v7 = 0xEC00000044336572;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726550656D617266;
    v3 = 0xEB00000000776F52;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF8E1164()
{
  v1 = *v0;
  v2 = 0x756F43656D617266;
  v3 = 0x726550656D617266;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x7574786554657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726550656D617266;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF8E1218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8FDEF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8E1240(uint64_t a1)
{
  v2 = sub_1AF9043DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E127C(uint64_t a1)
{
  v2 = sub_1AF9043DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E12B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v15[2] = a2;
  v15[1] = a3;
  sub_1AF9061B8(0, &qword_1EB6401F8, sub_1AF9043DC, &type metadata for TextureRequireAnimationRepresentation.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9043DC();
  sub_1AFDFF3F8();
  v15[4] = a4;
  v16 = a5 & 1;
  v21 = 0;
  sub_1AF90540C(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  sub_1AF904484(&qword_1EB640200, MEMORY[0x1E69E6538], MEMORY[0x1E69E7C70]);
  v13 = v15[3];
  sub_1AFDFE918();
  if (!v13)
  {
    v20 = 1;
    sub_1AFDFE8F8();
    v19 = 2;
    sub_1AFDFE8F8();
    v18 = HIBYTE(a5);
    v17 = 3;
    sub_1AF904508();
    sub_1AFDFE918();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AF8E1520()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2A8();
  if (v4 != 1)
  {
    MEMORY[0x1B271ACB0](v3);
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E15C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1B271ACB0](*v0);
  MEMORY[0x1B271ACB0](v1);
  sub_1AFDFF2A8();
  if (v3 != 1)
  {
    MEMORY[0x1B271ACB0](v2);
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF8E1644(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  sub_1AFDFF2A8();
  if (v5 != 1)
  {
    MEMORY[0x1B271ACB0](v4);
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E16E8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF90190C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
    *(a1 + 25) = HIBYTE(v7);
  }

  return result;
}

int64x2_t sub_1AF8E1798@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(8uLL);
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i16[4] = 1;
  return result;
}

uint64_t sub_1AF8E187C(uint64_t a1)
{
  result = sub_1AFDFC128();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF8E190C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFBFC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F68], v4, v6);
  sub_1AF4486E4();
  sub_1AFDFC118();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF8E1B10(uint64_t a1)
{
  result = sub_1AFDFC128();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF8E1BA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL;
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1AF8E1C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v51 = a1;
  v52 = a2;
  v49 = 47;
  v50 = 0xE100000000000000;
  sub_1AF4486E4();
  if ((sub_1AFDFDF18() & 1) == 0)
  {
LABEL_4:

    v2[2] = a1;
    v2[3] = a2;
    v16 = v2[4];
    if (v16)
    {
      type metadata accessor for AbsolutePathStorage(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v46 = *(v17 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver);
        v18 = v46;

        *(v3 + 2) = v46;
      }
    }

    goto LABEL_12;
  }

  sub_1AFDFC0F8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1AF456B8C(v8);
    goto LABEL_4;
  }

  (*(v10 + 32))(v15, v8, v9);
  v19 = sub_1AFDFC028();
  v21 = v20;

  v3[2] = v19;
  v3[3] = v21;
  v22 = v3[4];
  v45 = v3[5];
  *&v46 = v22;
  if (v22 && (v23 = type metadata accessor for AbsolutePathStorage(0), (v24 = swift_dynamicCastClass()) != 0))
  {
    v25 = v24;
    v45 = *(v10 + 16);
    v45(v12, v15, v9);
    v26 = *(v25 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver + 8);
    v43 = *(v25 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver);
    v44 = v26;
    v27 = objc_allocWithZone(v23);
    v45(&v27[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v12, v9);
    v28 = &v27[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver];
    v29 = v43;
    v30 = v44;
    *v28 = v43;
    *(v28 + 1) = v30;
    v47.receiver = v27;
    v47.super_class = v23;
    v31 = v29;
    v32 = objc_msgSendSuper2(&v47, sel_init);
    v33 = *(v10 + 8);
    v33(v12, v9);
    v33(v15, v9);
  }

  else
  {
    v44 = *(v10 + 16);
    v44(v12, v15, v9);
    v34 = type metadata accessor for AbsolutePathStorage(0);
    v35 = objc_allocWithZone(v34);
    v44(&v35[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v12, v9);
    v36 = &v35[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver];
    v37 = v45;
    v38 = v46;
    *v36 = v46;
    *(v36 + 1) = v37;
    v48.receiver = v35;
    v48.super_class = v34;
    v39 = v38;
    v32 = objc_msgSendSuper2(&v48, sel_init);
    v40 = *(v10 + 8);
    v40(v12, v9);
    v40(v15, v9);
  }

  v3[4] = v32;
  v3[5] = &off_1F2544718;
LABEL_12:

  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t sub_1AF8E2068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v9, v9[3]);
  v5 = sub_1AFDFEE38();
  v7 = v6;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_1AF8E2144(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AFDFEEE8();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

double sub_1AF8E2224@<D0>(void *a1@<X0>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  a2();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v3)
  {
  }

  else
  {
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0xE000000000000000;
    *(a3 + 32) = 0uLL;
  }

  return result;
}

uint64_t sub_1AF8E22BC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v2[3]);
  sub_1AF5DE27C();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF8E23EC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF8E2444(uint64_t a1)
{
  v2 = sub_1AF9045B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E2480(uint64_t a1)
{
  v2 = sub_1AF9045B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E24BC(void *a1, uint64_t a2)
{
  sub_1AF9061B8(0, &unk_1EB640260, sub_1AF9045B0, &type metadata for TextureArrayFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9045B0();
  sub_1AFDFF3F8();
  v10[1] = sub_1AF8D9EB0(a2);
  sub_1AF0D0F04(0, &qword_1EB63A870, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1AF904604(&qword_1EB63EFB0, &qword_1EB640270, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();

  return (*(v6 + 8))(v8, v5);
}

void *sub_1AF8E26B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF9006C8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AF8E2728(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1AF9061B8(0, &qword_1EB640228, sub_1AF90455C, &type metadata for TextureFileData.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF90455C();
  sub_1AFDFF3F8();
  v12 = a2;
  v13 = a3;
  sub_1AF587E54(a2, a3);
  sub_1AF8711B4();
  sub_1AFDFE8A8();
  sub_1AF587E7C(v12, v13);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF8E28BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF8E2944(uint64_t a1)
{
  v2 = sub_1AF90455C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E2980(uint64_t a1)
{
  v2 = sub_1AF90455C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF8E29BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8FEAE4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

double sub_1AF8E2A04@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE816F0;
  return result;
}

uint64_t sub_1AF8E2A20()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E2B14(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E2BF4(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF8E2CE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FD958(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF8E2D14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F6974636ELL;
  v4 = 0x75466C656E72656BLL;
  v5 = 0xEA00000000007372;
  v6 = 0x6574656D61726170;
  v7 = 0xEC00000074706972;
  v8 = 0x63536C656E72656BLL;
  if (v2 != 3)
  {
    v8 = 0x7365727574786574;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1668506980;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF8E2DC4()
{
  v1 = *v0;
  v2 = 0x75466C656E72656BLL;
  v3 = 0x6574656D61726170;
  v4 = 0x63536C656E72656BLL;
  if (v1 != 3)
  {
    v4 = 0x7365727574786574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1668506980;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AF8E2E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8FD958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8E2E98(uint64_t a1)
{
  v2 = sub_1AF9047C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E2ED4(uint64_t a1)
{
  v2 = sub_1AF9047C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E2F10(void *a1)
{
  v3 = v1;
  sub_1AF9061B8(0, &qword_1EB6402A8, sub_1AF9047C4, &type metadata for TextureShaderAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9047C4();
  sub_1AFDFF3F8();
  LOBYTE(v13) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v16 = *(v3 + 80);
    v15 = 2;
    sub_1AF5A56DC();
    sub_1AF9049B0(&unk_1EB6402B0, sub_1AF5A56DC, sub_1AF8ABAB0);
    sub_1AFDFE918();
    v13 = *(v3 + 24);
    v14 = *(v3 + 40);
    v12 = 1;
    sub_1AF608A58();
    sub_1AFDFE918();
    *&v13 = *v3;
    v12 = 3;
    sub_1AF480018();
    sub_1AFDFE918();
    *&v13 = *(v3 + 88);
    v12 = 4;
    sub_1AF9048CC();
    sub_1AF9049B0(&qword_1EB6402C8, sub_1AF9048CC, sub_1AF480018);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF8E3214@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8FF740(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF8E3244()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF467494(&v2);
}

uint64_t sub_1AF8E3278()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF445CA8(&v2);
}

uint64_t sub_1AF8E32AC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF445CB0(&v2);
}

uint64_t sub_1AF8E32E0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF478AC0(&v2);
}

uint64_t sub_1AF8E3314()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF8FE1D8(&v2);
}

_OWORD *sub_1AF8E3348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*v3 != 0xFFFFFFFFLL)
  {
    v7 = v3[9];
    v32 = v3[8];
    v33 = v3[6];
    v39 = v3[7];
    v6 = v39;
    v40 = v33;
    v37 = v7;
    v38 = v32;
    sub_1AF904B14(&v40, v41, sub_1AF6594C8);
    v8 = MEMORY[0x1E69E62F8];
    sub_1AF8FF144(&v39, v41, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, MEMORY[0x1E69E62F8]);
    sub_1AF8FF144(&v38, v41, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, v8);
    sub_1AF8FF144(&v37, v41, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, v8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:

    sub_1AF9061B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    *(a3 + 24) = v27;
    result = swift_allocObject();
    *a3 = result;
    *(result + 2) = 0;
    *(result + 3) = 0;
    return result;
  }

  if (qword_1EB632E90 != -1)
  {
    swift_once();
  }

  sub_1AF6F280C(v3[1], v3[2], 0x6C7070612E6D6F63, 0xED00007866762E65);
  v6 = v26;
  v9 = *(v26 + 16);
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = v6 + 72;
  while (1)
  {
    v11 = *(v10 - 40);
    v12 = *(v10 - 16);
    v13 = *(*v10 + 16) == a1 && *(*v10 + 24) == a2;
    if (v13 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v10 += 48;
    if (!--v9)
    {
      goto LABEL_24;
    }
  }

  if (v11)
  {
    v14 = v3[11];
    if (*(v14 + 16) && (v15 = sub_1AF449CB8(v12), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      *(a3 + 24) = &type metadata for Entity;

      *a3 = v17;
    }

    else
    {
      *(a3 + 24) = &type metadata for Entity;

      *a3 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v19 = v3[10];
    if (*(v19 + 16) && (v20 = sub_1AF449CB8(v12), (v21 & 1) != 0) && (v22 = *(v19 + 56) + 80 * v20, v23 = *(v22 + 64), v23 <= 0xEF))
    {
      v28 = *v22;
      if ((v23 & 0x80) != 0)
      {
        *(&v36 + 1) = &type metadata for Entity;
        *&v35 = v28;
      }

      else
      {
        v29 = *(v22 + 16);
        v30 = *(v22 + 32);
        v31 = *(v22 + 48);
        v41[0] = *v22;
        v41[1] = v29;
        v41[2] = v30;
        v41[3] = v31;
        v42 = v23;
        sub_1AF879E50(&v35);
      }

      return sub_1AF449D40(&v35, a3);
    }

    else
    {
      sub_1AF9061B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      v35 = 0u;
      v36 = 0u;
      *(a3 + 24) = v24;
      v25 = swift_allocObject();
      *a3 = v25;

      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      if (*(&v36 + 1))
      {
        return sub_1AF8FE1E4(&v35, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF90540C);
      }
    }
  }

  return result;
}

uint64_t sub_1AF8E3788(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*v3 == -1 && *(v3 + 4) == 0)
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    if (qword_1EB632E90 != -1)
    {
      v21 = *(v3 + 8);
      v22 = *(v3 + 16);
      swift_once();
      v11 = v22;
      v10 = v21;
    }

    sub_1AF6F280C(v10, v11, 0x6C7070612E6D6F63, 0xED00007866762E65);
    v8 = v12;
    v9 = *(v12 + 16);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *(v3 + 56);

    v9 = *(v8 + 16);
    if (!v9)
    {
LABEL_17:

      v17 = a1;
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    }
  }

  v13 = v8 + 72;
  while (1)
  {
    v14 = *(v13 - 40);
    v15 = *(v13 - 16);
    v16 = *(*v13 + 16) == a2 && *(*v13 + 24) == a3;
    if (v16 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v13 += 48;
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  if (v14)
  {
    sub_1AF0D5A54(a1, v26);
    if (swift_dynamicCast())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26[0] = *(v4 + 88);
      sub_1AF852D2C(v25[0], v15, isUniquelyReferenced_nonNull_native);

      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      *(v4 + 88) = v26[0];
      return result;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v23 = v20;
      swift_once();
      v20 = v23;
    }

    v26[0] = 0;
    sub_1AF0D4F18(v20, v26, 0xD000000000000035, 0x80000001AFF39C00);

    v17 = a1;
  }

  else
  {
    sub_1AF0D5A54(a1, v25);
    sub_1AF8FDF5C(v25, v26);
    sub_1AF824D1C(v26, v15);

    v17 = a1;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
}

uint64_t sub_1AF8E3AB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v26 = a2;
  v24 = *(a2 + 8);
  v24(v2, 0);
  v5 = *(v2 + 88);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_10:
    v12 = *(*(v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v3 + 88);
    v14 = v29;
    v16 = sub_1AF449CB8(v12);
    v17 = v15;
    v18 = v14[2] + ((v15 & 1) == 0);
    if (v14[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1AF846E40();
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_1AF830A44(v18, isUniquelyReferenced_nonNull_native);
      v19 = sub_1AF449CB8(v12);
      if ((v17 & 1) != (v20 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v16 = v19;
      if ((v17 & 1) == 0)
      {
LABEL_19:
        v27 = 0;
        v28 = 1;
        (v24)(&v27, 0, ObjectType, v26);
        v21 = v29;
        if ((v28 & 1) == 0)
        {
          v22 = v27;
          v29[(v16 >> 6) + 8] |= 1 << v16;
          *(v21[6] + 8 * v16) = v12;
          *(v21[7] + 8 * v16) = v22;
          ++v21[2];
        }

        goto LABEL_5;
      }
    }

    v21 = v29;
    v27 = *(v29[7] + 8 * v16);
    v28 = 0;
    (v24)(&v27, 0, ObjectType, v26);
    if (v28)
    {
      sub_1AF6B2F08(v16, v21);
    }

    else
    {
      *(v21[7] + 8 * v16) = v27;
    }

LABEL_5:
    v8 &= v8 - 1;
    *(v3 + 88) = v21;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10++ + 72);
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }
}

__n128 sub_1AF8E3D40@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF8FFAD0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

double sub_1AF8E3DB4@<D0>(uint64_t a1@<X8>)
{
  CFXTextureDescriptorMakeDefault(&v9);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF42C520(v2);
  v5 = sub_1AF42CA3C(v2);
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  result = *&v9;
  *(a1 + 24) = v9;
  v7 = MEMORY[0x1E69E7CC8];
  *(a1 + 40) = v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = v8;
  return result;
}

uint64_t sub_1AF8E3E4C()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v1 + 104);
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB6C2760;

  v5 = sub_1AF428E18(v2, v3, sub_1AF56F254);

  v14[0] = v4;
  sub_1AF48FA18(v5);
  v6 = v4;
  if (v4 >> 62)
  {
    v7 = sub_1AFDFE108();
    if (v7)
    {
LABEL_5:
      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B2719C70](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9[20];
        if (*(v10 + 16))
        {
          v11 = v9[2];
          v12 = v9[3];
          sub_1AF0D5A54(v10 + 48, v14);

          sub_1AF8E3788(v14, v11, v12);
        }
      }
    }
  }

  else
  {
    v7 = *((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1AF8E4018()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 != 0xFFFFFFFFLL || v2 != 0)
  {
    return v1 | (v2 << 32);
  }

  v4 = *(v0 + 1);

  return v4;
}

unint64_t sub_1AF8E4078(unint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  if (a3)
  {
    v5 = HIDWORD(result);
    if (HIDWORD(result) || result != -1)
    {

      *(v3 + 8) = 0;
      *(v3 + 16) = 0xE000000000000000;
    }

    *v3 = v4;
    *(v3 + 4) = v5;
  }

  else
  {
    if ((result || a2 != 0xE000000000000000) && (sub_1AFDFEE28() & 1) == 0)
    {
      *v3 = 0xFFFFFFFFLL;
    }

    *(v3 + 8) = v4;
    *(v3 + 16) = a2;
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = v11;
    v7 = v3;
    v8 = sub_1AF8E5418();
    v10 = v9;
    sub_1AF8FE1E4(&v13, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
    sub_1AF8FE1E4(&v12, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
    *(v7 + 96) = v8;
    *(v7 + 104) = v10;
    sub_1AF8E3E4C();
    return sub_1AF5A5B10(v4, a2, 0);
  }

  return result;
}

uint64_t sub_1AF8E4210()
{
  sub_1AF90540C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for KernelReference;
  sub_1AF90540C(0, &qword_1EB632570, &type metadata for KernelReference, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF8FF1B4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A5AC8;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x6C656E72656BLL;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for KernelReference;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 64;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE729D0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 64;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  *(v4 + 64) = sub_1AF8FF1E4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7, v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6158];
  sub_1AF90540C(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF8FF1EC;
  v11[5] = v9;
  v11[2] = sub_1AF5A5A58;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  strcpy((v12 + 16), "kernelFunction");
  *(v12 + 31) = -18;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 8;
  *(v12 + 56) = 0;
  *(v12 + 58) = 4;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 4;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  *(v12 + 64) = sub_1AF8FF218;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0, 0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v15 = swift_getKeyPath();
  sub_1AF0D0F04(0, &unk_1EB632510, type metadata accessor for MTLPixelFormat, type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF8FF220;
  v16[5] = v15;
  v16[2] = sub_1AF8FF254;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 216) = 0;
  type metadata accessor for MTLPixelFormat(0);
  v19 = v18;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F466C65786970;
  *(v17 + 24) = 0xEB0000000074616DLL;
  *(v17 + 32) = v15;
  *(v17 + 40) = v18;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 96) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20 && v19)
  {
    v19 = (*(v20 + 8))(v19, v20);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v19)
  {
    *(v17 + 160) = (*(v21 + 8))(v19, v21);
  }

  v22 = *(v17 + 64);
  v23 = *(v17 + 72);
  *(v17 + 64) = sub_1AF8FF260;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(v22, v23);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;

  *(v0 + 48) = v17;
  v24 = swift_getKeyPath();
  v25 = MEMORY[0x1E69E6530];
  sub_1AF90540C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF8FF268;
  v26[5] = v24;
  v26[2] = sub_1AF8FF29C;
  v26[3] = v24;
  v26[6] = v24;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x6874646977;
  *(v27 + 24) = 0xE500000000000000;
  *(v27 + 32) = v24;
  *(v27 + 40) = v25;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE22A20;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  v28 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v28)
  {
    v29 = (*(v28 + 8))();
  }

  else
  {
    v29 = v25;
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v29)
  {
    *(v27 + 160) = (*(v30 + 8))(v29, v30);
  }

  *(v27 + 64) = sub_1AF8FF2A8;
  *(v27 + 72) = v24;
  sub_1AF0FB8EC(0, 0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF907034;
  v32[5] = v31;
  v32[2] = sub_1AF907010;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x746867696568;
  *(v33 + 24) = 0xE600000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v25;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();
  if (v28)
  {
    v34 = (*(v28 + 8))();
  }

  else
  {
    v34 = v25;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v33 + 160) = (*(v35 + 8))(v34, v35);
  }

  *(v33 + 64) = sub_1AF907000;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0, 0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 64) = v33;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AF907034;
  v37[5] = v36;
  v37[2] = sub_1AF907010;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x6874706564;
  *(v38 + 24) = 0xE500000000000000;
  *(v38 + 32) = v36;
  *(v38 + 40) = v25;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  swift_retain_n();
  if (v28)
  {
    v25 = (*(v28 + 8))();
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v25)
  {
    *(v38 + 160) = (*(v39 + 8))(v25, v39);
  }

  *(v38 + 64) = sub_1AF907000;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(0, 0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;
  *(v0 + 72) = v38;
  v40 = swift_getKeyPath();
  v41 = &type metadata for MetalFunctionReflection;
  sub_1AF90540C(0, &qword_1EB632540, &type metadata for MetalFunctionReflection, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF8FF2B0;
  v42[5] = v40;
  v42[2] = sub_1AF5A590C;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x746E656D75677261;
  *(v43 + 24) = 0xE900000000000073;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for MetalFunctionReflection;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 68;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 68;
  v44 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v44)
  {
    v41 = (*(v44 + 8))();
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    *(v43 + 160) = (*(v45 + 8))(v41, v45);
  }

  *(v43 + 64) = sub_1AF8FF2E0;
  *(v43 + 72) = v40;
  sub_1AF0FB8EC(0, 0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 80) = v43;
  v46 = swift_getKeyPath();
  sub_1AF0D0F04(0, &qword_1EB632508, type metadata accessor for MTLStorageMode, type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF8FF220;
  v47[5] = v46;
  v47[2] = sub_1AF8FF2E8;
  v47[3] = v46;
  v47[6] = v46;
  v48 = swift_allocObject();
  *(v48 + 104) = 0;
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 216) = 0;
  type metadata accessor for MTLStorageMode(0);
  v50 = v49;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 0x4D656761726F7473;
  *(v48 + 24) = 0xEB0000000065646FLL;
  *(v48 + 32) = v46;
  *(v48 + 40) = v49;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 4;
  *(v48 + 184) = 0;
  *(v48 + 188) = 1;
  *(v48 + 192) = 0;
  *(v48 + 196) = 1;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 96) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 210) = 4;
  v51 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v51 && v50)
  {
    v50 = (*(v51 + 8))(v50, v51);
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v50)
  {
    *(v48 + 160) = (*(v52 + 8))(v50, v52);
  }

  v53 = *(v48 + 64);
  v54 = *(v48 + 72);
  *(v48 + 64) = sub_1AF8FF2F4;
  *(v48 + 72) = v46;
  sub_1AF0FB8EC(v53, v54);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = 0;

  *(v0 + 88) = v48;
  v55 = swift_getKeyPath();
  sub_1AF0D0F04(0, &unk_1EB632530, sub_1AF5A56DC, type metadata accessor for EntityGetSet);
  v56 = swift_allocObject();
  v56[4] = sub_1AF8FF2FC;
  v56[5] = v55;
  v56[2] = sub_1AF5A5744;
  v56[3] = v55;
  v56[6] = v55;
  v57 = swift_allocObject();
  *(v57 + 104) = 0;
  *(v57 + 112) = 1;
  *(v57 + 128) = 0;
  *(v57 + 136) = 0;
  *(v57 + 120) = 0;
  *(v57 + 160) = MEMORY[0x1E69E7CC0];
  *(v57 + 216) = 0;
  sub_1AF5A56DC();
  v59 = v58;
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;
  *(v57 + 16) = 0x6574656D61726170;
  *(v57 + 24) = 0xEA00000000007372;
  *(v57 + 32) = v55;
  *(v57 + 40) = v58;
  *(v57 + 48) = 80;
  *(v57 + 56) = 0;
  *(v57 + 58) = 4;
  *(v57 + 184) = 0;
  *(v57 + 188) = 1;
  *(v57 + 192) = 0;
  *(v57 + 196) = 1;
  *(v57 + 200) = 0x1000100000000;
  *(v57 + 208) = 1;
  *(v57 + 64) = 0;
  *(v57 + 72) = 0;
  *(v57 + 88) = &off_1F2535378;
  *(v57 + 96) = 0;
  *(v57 + 144) = xmmword_1AFE22A20;
  *(v57 + 80) = v56;
  *(v57 + 210) = 4;
  v60 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v60 && v59)
  {
    v59 = (*(v60 + 8))(v59, v60);
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v59)
  {
    *(v57 + 160) = (*(v61 + 8))(v59, v61);
  }

  v62 = *(v57 + 64);
  v63 = *(v57 + 72);
  *(v57 + 64) = sub_1AF8FF328;
  *(v57 + 72) = v55;
  sub_1AF0FB8EC(v62, v63);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = 0;

  *(v0 + 96) = v57;
  qword_1EB6C2760 = v0;
  return result;
}

uint64_t sub_1AF8E53B4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v3 == 0xFFFFFFFFLL && v4 == 0;
  v6 = !v5;
  if (v5)
  {
    v8 = *(a1 + 1);
  }

  else
  {
    result = 0;
    v8 = v3 | (v4 << 32);
  }

  *a2 = v8;
  *(a2 + 8) = result;
  *(a2 + 16) = v6;
  return result;
}

void *sub_1AF8E5418()
{
  v1 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 56);
  if (*v0 != -1 || *(v0 + 4))
  {

    v3 = *(v2 + 16);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_31:

    return v1;
  }

  if (qword_1EB632E90 != -1)
  {
    swift_once();
  }

  sub_1AF6F280C(*(v0 + 8), *(v0 + 16), 0x6C7070612E6D6F63, 0xED00007866762E65);
  v2 = v31;

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_31;
  }

LABEL_4:
  v39 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 72;
  v33 = v2;
  do
  {
    v37 = v3;
    v38 = v4;
    v6 = *(v2 + v5);
    v7 = *(v6 + 24);
    v35 = *(v6 + 16);
    v36 = v5;
    v8 = *(v6 + 40);
    v9 = *(v6 + 152);
    v34 = *(v6 + 144);
    v10 = *(v6 + 188);
    if (v10)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(v6 + 184);
    }

    v12 = *(v6 + 196);
    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = *(v6 + 192);
    }

    v14 = *(v6 + 204);
    if (v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v6 + 200);
    }

    memset(v40, 0, 32);

    v16 = sub_1AF493834(v8, v40, v35, v7, *&v11, v10, *&v13, v12, *&v15, v14, v34, v9, 0, 0, 0, &type metadata for TextureShaderAsset, v8, &off_1F25446E8);

    sub_1AF8FE1E4(v40, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF90540C);
    v16[20] = *(v6 + 160);

    v18 = v16[2];
    v17 = v16[3];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v39;
    v20 = sub_1AF419914(v18, v17);
    v22 = v21;
    v23 = v39[2] + ((v21 & 1) == 0);
    if (v39[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v20;
        sub_1AF844B24();
        v20 = v30;
      }
    }

    else
    {
      sub_1AF82CE44(v23, isUniquelyReferenced_nonNull_native);
      v20 = sub_1AF419914(v18, v17);
      if ((v22 & 1) != (v24 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v4 = v38;
    v25 = *&v40[0];
    v39 = *&v40[0];
    if (v22)
    {
      *(*(*&v40[0] + 56) + 8 * v20) = v16;
    }

    else
    {
      *(*&v40[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v26 = (v25[6] + 16 * v20);
      *v26 = v18;
      v26[1] = v17;
      *(v25[7] + 8 * v20) = v16;
      ++v25[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AF420554(0, *(v38 + 2) + 1, 1, v38);
      }

      v28 = *(v4 + 2);
      v27 = *(v4 + 3);
      if (v28 >= v27 >> 1)
      {
        v4 = sub_1AF420554(v27 > 1, v28 + 1, 1, v4);
      }

      *(v4 + 2) = v28 + 1;
      v29 = &v4[16 * v28];
      *(v29 + 4) = v18;
      *(v29 + 5) = v17;
    }

    v5 = v36 + 48;
    v3 = v37 - 1;
    v2 = v33;
  }

  while (v37 != 1);

  return v39;
}

uint64_t sub_1AF8E5850(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 96);
  v10 = MEMORY[0x1B27189E0]();
  if (*(v9 + 16))
  {
    v12 = sub_1AF419914(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v12);

      return v15;
    }
  }

  else
  {
  }

  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB6C2760;
  if (!(qword_1EB6C2760 >> 62))
  {
    v17 = *((qword_1EB6C2760 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v17 = sub_1AFDFE108();
  if (!v17)
  {
    return 0;
  }

LABEL_9:
  v18 = 0;
  v19 = a1 >> 16;
  v20 = a2 >> 16;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B2719C70](v18, v16);
    }

    else
    {
      v15 = *(v16 + 8 * v18 + 32);
    }

    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    v23 = (v22 & 0x2000000000000000) != 0 ? HIBYTE(v22) & 0xF : v21 & 0xFFFFFFFFFFFFLL;
    v24 = v21 == a3 && v22 == a4;
    v25 = v24 && v19 == 0;
    v26 = v25 && v23 == v20;
    if (v26 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    if (v17 == ++v18)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t sub_1AF8E5A28()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6C2760;

  v4 = sub_1AF428E18(v1, v2, sub_1AF56F254);

  sub_1AF48FA18(v4);
  return v3;
}

uint64_t sub_1AF8E5AF4()
{
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF8E5B54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65727574786574;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65727574786574;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8E5BF4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E5C70(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E5CD8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF8E5D5C(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x65727574786574;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF8E5D94()
{
  if (*v0)
  {
    return 0x65727574786574;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1AF8E5DD4(uint64_t a1)
{
  v2 = sub_1AF8FF428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E5E10(uint64_t a1)
{
  v2 = sub_1AF8FF428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E5E4C(void *a1)
{
  v2 = v1;
  sub_1AF9061B8(0, &unk_1EB640160, sub_1AF8FF428, &_s10CodingKeysON_0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FF428();
  sub_1AFDFF3F8();
  v9 = *(v2 + 64);
  if (v9 < 0)
  {
    v12 = *v2;
    v18 = 1;
    sub_1AF480018();
  }

  else
  {
    v10 = v2[7];
    v12 = *v2;
    v13 = *(v2 + 1);
    v14 = *(v2 + 3);
    v15 = *(v2 + 5);
    v16 = v10;
    v17 = v9;
    v18 = 0;
    sub_1AF882440();
  }

  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1AF8E6020@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF8FE43C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 sub_1AF8E6084@<Q0>(uint64_t a1@<X8>)
{
  CFXTextureDescriptorMakeDefault(&v4);
  *&v3[7] = v4;
  *&v3[23] = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 25) = *v3;
  result = *&v3[15];
  *(a1 + 40) = *&v3[15];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_1AF8E60EC@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = result;
  v7 = HIDWORD(result);
  v8 = 0uLL;
  if (HIDWORD(result) || result != -1)
  {
    result = sub_1AF67CACC(&type metadata for Tombstone, &off_1F2532360, result);
    if (result)
    {
LABEL_39:
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v8 = 0uLL;
      goto LABEL_40;
    }

    result = sub_1AF3C94FC(v5, &v43);
    v11 = v51;
    if (!v51)
    {
      if (a2)
      {
        result = sub_1AF65A128(v5);
        if (result)
        {
          result = sub_1AF67CACC(&type metadata for ColorRampComponent, &off_1F2541A28, v5);
          if ((result & 1) == 0)
          {
            result = sub_1AF67CACC(&type metadata for CurveComponent, &off_1F2541D98, v5);
            if ((result & 1) == 0)
            {
              v16 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

              sub_1AFDFE218();
              v17 = sub_1AF65B990();
              v19 = v18;

              v41 = v17;
              v42 = v19;
              MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF3A5C0);
              v20 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v20);

              MEMORY[0x1B2718AE0](32, 0xE100000000000000);

              v21 = sub_1AF3C9078(v5);
              v23 = v22;

              if (v23)
              {
                v24 = v21;
              }

              else
              {
                v24 = 16718;
              }

              if (!v23)
              {
                v23 = 0xE200000000000000;
              }

              MEMORY[0x1B2718AE0](v24, v23);

              v25 = v41;
              v26 = sub_1AFDFDA08();
              v41 = 0;
              (*(*v16 + 88))(v26, &v41, v25, v42);

              if ((v5 & 0x80000000) == 0 && v5 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
              {
                v27 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
                if (v7 == 0xFFFFFFFF || v27[2] == v7)
                {
                  v28 = *(v27 + 2);
                  v29 = *(*(v4 + 144) + 8 * *v27 + 32);
                  if (*(v29 + 232) <= v28 && *(v29 + 240) > v28)
                  {
                    v39 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
                    v40 = *(v29 + 344);

                    os_unfair_lock_lock(v40);
                    ecs_stack_allocator_push_snapshot(*(v39 + 32));

                    sub_1AFCC71A8(v39, v29, v28, v4, v5, sub_1AF8E6700, 0);

                    ecs_stack_allocator_pop_snapshot(*(v39 + 32));
                    os_unfair_lock_unlock(*(v29 + 344));
                  }
                }
              }

              result = sub_1AF3C941C(v5);
              if (BYTE3(result) != 2 && result == 1 && (v5 & 0x8000000000000000) == 0 && v5 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
              {
                v31 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
                if (v7 == 0xFFFFFFFF || v31[2] == v7)
                {
                  v32 = *(v31 + 2);
                  v33 = *(*(v4 + 144) + 8 * *v31 + 32);
                  if (*(v33 + 232) <= v32 && *(v33 + 240) > v32)
                  {
                    v34 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
                    v35 = *(v33 + 344);

                    os_unfair_lock_lock(v35);
                    ecs_stack_allocator_push_snapshot(*(v34 + 32));

                    sub_1AF682880(v34, v33, v32, &type metadata for TextureLoadRequestCPU, &off_1F25460F8, v4);

                    ecs_stack_allocator_pop_snapshot(*(v34 + 32));
                    os_unfair_lock_unlock(*(v33 + 344));
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_39;
    }

    v8 = v43;
    v12 = v45;
    if (v43)
    {
      if (v45)
      {
        v9 = v44;
        v14 = v49;
        v10 = v50;
        v13 = (v46 | ((v47 | (v48 << 16)) << 32)) << 8;
        goto LABEL_40;
      }
    }

    else if (v45)
    {
LABEL_38:
      result = sub_1AF8FE1E4(&v43, &unk_1ED725420, &type metadata for TextureCPURuntime, MEMORY[0x1E69E6720], sub_1AF90540C);
      goto LABEL_39;
    }

    v36 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    sub_1AFDFE218();

    v42 = 0xE800000000000000;
    v37 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v37);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF3A5E0);
    v38 = sub_1AFDFDA08();
    v41 = 0;
    (*(*v36 + 88))(v38, &v41, 0x2065727574786554, 0xE800000000000000);

    goto LABEL_38;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0uLL;
LABEL_40:
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v13 | v12;
  *(a3 + 32) = v14;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  return result;
}

void *sub_1AF8E6700(void *result)
{
  if ((*result & 1) == 0)
  {
    *result |= 1uLL;
  }

  return result;
}

void *sub_1AF8E6714(void *result)
{
  if ((*result & 2) == 0)
  {
    *result |= 2uLL;
  }

  return result;
}

double sub_1AF8E6728(uint64_t a1, _BYTE *a2, _OWORD *a3, uint64_t a4, int a5, int a6, __int128 *a7)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v10 = a7[1];
  v31 = *a7;
  v32 = v10;
  v33[0] = a7[2];
  *(v33 + 10) = *(a7 + 42);
  v11 = sub_1AFDFC128();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;

  v18 = *(v12 + 16);
  v18(v17, v24, v11);
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  v28 = 0;
  v29 = 0xE000000000000000;
  v30 = 0uLL;
  v18(v14, v17, v11);
  sub_1AF8D9AD4(v14);
  (*(v12 + 8))(v17, v11);
  v19 = v28;
  v20 = v29;
  v21 = v30;
  *a1 = v27;
  *(a1 + 16) = v19;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  LOBYTE(v19) = v26;
  *a2 = v25;
  a2[1] = v19;
  v22 = v32;
  *a3 = v31;
  a3[1] = v22;
  a3[2] = v33[0];
  result = *(v33 + 10);
  *(a3 + 42) = *(v33 + 10);
  return result;
}

long double sub_1AF8E68F8(CGColorSpace *a1, long double a2)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a2;
  components[1] = a2;
  components[2] = a2;
  components[3] = 1.0;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v5 = CGColorCreate(v4, components);

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a1, kCGRenderingIntentDefault, v5, 0);
  if (CopyByMatchingToColorSpace)
  {
    v7 = CopyByMatchingToColorSpace;
    v8 = *(sub_1AFDFD9A8() + 32);
  }

  else
  {

    v8 = a2;
  }

  v9 = log(a2);
  return v9 / log(v8);
}

void sub_1AF8E69F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1AFDFC1A8();
  v12 = CGImageSourceCreateWithData(v11, 0);

  if (!v12)
  {
    goto LABEL_8;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, 0);
  if (!ImageAtIndex)
  {

LABEL_8:
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v14 = ImageAtIndex;
  v15 = sub_1AFDFC128();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_1AF8E6C04(v14, a3, a4, v10, 0, 1);
  sub_1AF456B8C(v10);
  if (!v5)
  {
    v16 = *v4;
    if (v16)
    {
      sub_1AFDFC158();
      v17 = sub_1AFDFCEC8();

      [v16 setLabel_];
    }
  }
}

void sub_1AF8E6C04(CGImage *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v131 = a2;
  v132 = a6;
  v130 = a4;
  v127 = a3;
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v121 - v13;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v129 = a5;
  if (a5 >= 2)
  {
    v133 = *(v7 + 32);
    v134 = *(v7 + 48);
    if (sub_1AF445CA8(&v133) != Width || (v133 = *(v7 + 32), v134 = *(v7 + 48), sub_1AF445CB0(&v133) != Height))
    {
      v133 = *(v7 + 32);
      v134 = *(v7 + 48);
      v17 = sub_1AF445CA8(&v133);
      v133 = *(v7 + 32);
      v134 = *(v7 + 48);
      Height = sub_1AF445CB0(&v133);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v126 = v17;
      *&v133 = 0;
      *(&v133 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v133 = 0x727574786554202DLL;
      *(&v133 + 1) = 0xEB00000000282065;
      sub_1AF456C4C(v130, v14);
      v18 = sub_1AFDFC128();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v14, 1, v18) == 1)
      {
        sub_1AF456B8C(v14);
        v20 = 0xE200000000000000;
        v21 = 16718;
      }

      else
      {
        v21 = sub_1AFDFBFA8();
        v20 = v22;
        (*(v19 + 8))(v14, v18);
      }

      MEMORY[0x1B2718AE0](v21, v20);

      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF3A2A0);
      v135 = CGImageGetWidth(a1);
      v23 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v23);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v135 = CGImageGetHeight(a1);
      v24 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v24);

      MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
      Width = v126;
      v135 = v126;
      v25 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v25);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v135 = Height;
      v26 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v27 = v133;
      v28 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v118 = v28;
        swift_once();
        v28 = v118;
      }

      *&v133 = 0;
      sub_1AF0D4F18(v28, &v133, v27, *(&v27 + 1));
    }
  }

  v29 = CGImageGetColorSpace(a1);
  if (!v29)
  {
    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x6F6C20726F727245, 0xEE0020676E696461);
    v135 = a1;
    type metadata accessor for CGImage(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF3A220);
    v33 = v133;
    sub_1AF902768();
    swift_allocError();
    *v34 = v33;
    *(v34 + 16) = 0;
    swift_willThrow();
    return;
  }

  v30 = v29;
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (CGImageGetAlphaInfo(a1))
  {
    v32 = Height;
    v124 = CGImageGetAlphaInfo(a1) != kCGImageAlphaNoneSkipLast && CGImageGetAlphaInfo(a1) != kCGImageAlphaNoneSkipFirst;
  }

  else
  {
    v124 = 0;
    v32 = Height;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(v30);
  v37 = BitsPerComponent > 71 && IsWideGamutRGB;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v30);
  CGImageGetBitmapInfo(a1);
  v39 = v131;
  v40 = *(v131 + 24);
  v128 = v30;
  v123 = BitmapInfo;
  if (v40 <= 0xFD)
  {
    v42 = *(v131 + 8);
    v41 = *(v131 + 16);
    if ((v40 & 0x80) != 0)
    {
      Width = *(v131 + 8);
      v32 = *(v131 + 16);
    }

    else if (v40)
    {
      if (v41 >= v42)
      {
        v41 = *(v131 + 8);
      }

      if (Width >= v32)
      {
        if (v41 >= Width)
        {
          v41 = Width;
        }

        v32 = v41 * v32 / Width;
        Width = v41;
      }

      else
      {
        if (v41 >= v32)
        {
          v41 = v32;
        }

        Width = v41 * Width / v32;
        v32 = v41;
      }
    }

    else
    {
      if (v42 < Width)
      {
        Width = *(v131 + 8);
      }

      if (v41 < v32)
      {
        v32 = *(v131 + 16);
      }
    }

    if (Width != CGImageGetWidth(a1) || v32 != CGImageGetHeight(a1))
    {
      v126 = v32;
      v43 = Width;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v133 = 0;
      *(&v133 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v133 = 0x727574786554202DLL;
      *(&v133 + 1) = 0xEB00000000282065;
      v44 = v125;
      sub_1AF456C4C(v130, v125);
      v45 = sub_1AFDFC128();
      v46 = *(v45 - 8);
      v47 = (*(v46 + 48))(v44, 1, v45);
      v121 = NumberOfComponents;
      if (v47 == 1)
      {
        sub_1AF456B8C(v44);
        v48 = 0xE200000000000000;
        v49 = 16718;
      }

      else
      {
        v50 = v44;
        v51 = sub_1AFDFBFA8();
        v48 = v52;
        (*(v46 + 8))(v50, v45);
        v49 = v51;
      }

      MEMORY[0x1B2718AE0](v49, v48);

      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF3A2A0);
      v135 = CGImageGetWidth(a1);
      v53 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v53);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v135 = CGImageGetHeight(a1);
      v54 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v54);

      MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
      Width = v43;
      v135 = v43;
      v55 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v55);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v32 = v126;
      v135 = v126;
      v56 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v56);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v57 = v133;
      v58 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v119 = v58;
        swift_once();
        v58 = v119;
      }

      *&v133 = 0;
      sub_1AF0D4F18(v58, &v133, v57, *(&v57 + 1));

      LOWORD(BitmapInfo) = v123;
      v39 = v131;
      NumberOfComponents = v121;
    }
  }

  v59 = *v39;
  v122 = *v39;
  if ((BitmapInfo & 0x100) != 0)
  {
    if ((v59 & 4) != 0)
    {
      v60 = MEMORY[0x1E695F110];
LABEL_55:
      v61 = CGColorSpaceCreateWithName(*v60);
      v62 = 4353;
LABEL_56:
      v63 = 8;
      v131 = 2;
      goto LABEL_57;
    }

LABEL_54:
    v60 = MEMORY[0x1E695F108];
    goto LABEL_55;
  }

  if (v37)
  {
    goto LABEL_54;
  }

  v95 = CGImageGetBitsPerComponent(a1);
  if (v95 != 16)
  {
    if (v124)
    {
      v62 = 16385;
      v131 = 1;
    }

    else
    {
      v131 = 1;
      if (NumberOfComponents == 1)
      {
        v112 = v95;
        goto LABEL_122;
      }

      v62 = 16389;
    }

    v96 = 4;
    goto LABEL_134;
  }

  if (v124)
  {
    v62 = 4097;
    if ((v122 & 4) != 0)
    {
LABEL_93:
      v131 = 2;
      v96 = 8;
LABEL_134:
      v61 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v63 = v96;
      goto LABEL_57;
    }

LABEL_131:
    v61 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    goto LABEL_56;
  }

  if (NumberOfComponents != 1)
  {
    v62 = 4101;
    if ((v122 & 4) != 0)
    {
      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v112 = 16;
  v131 = 2;
LABEL_122:
  v113 = CFXGPUDeviceGetMTLDevice(v127);
  if ((v122 & 4) != 0 || v112 == 16 || (swift_getObjectType(), (sub_1AF470C28())) && (swift_getObjectType(), (sub_1AF476284()))
  {
    v114 = *MEMORY[0x1E695F128];
    v115 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    if (v112 != 16 || (v122 & 4) != 0)
    {
      v116 = v114;
    }

    else
    {
      v116 = *MEMORY[0x1E695F1A0];
    }

    v61 = CGColorSpaceCreateWithName(v116);
    swift_unknownObjectRelease();

    v62 = 0;
    v63 = v131;
  }

  else
  {
    v117 = 4 * v131;
    v61 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    swift_unknownObjectRelease();
    v63 = v117;
    v62 = 5;
  }

LABEL_57:
  v121 = v63;
  v130 = v63 * Width;
  v64 = *v7;
  v125 = v63 * Width * v32;
  v65 = v125 * v132;
  if (v64 && *(v7 + 16) == v65)
  {
    v66 = v61;
    v67 = v32;
    v68 = Width;
    v69 = *(v7 + 8);
    goto LABEL_62;
  }

  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v127, v65, 0);
  if (BufferWithLength)
  {
    v64 = BufferWithLength;
    v66 = v61;
    v67 = v32;
    v68 = Width;
    v71 = sub_1AFDFCEC8();
    [v64 setLabel_];

    swift_unknownObjectRelease();
    v69 = 0;
    *v7 = v64;
    *(v7 + 8) = 0;
    *(v7 + 16) = v65;
LABEL_62:
    v72 = 8 * v131;
    if ([swift_unknownObjectRetain_n() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v73 = 0;
    }

    else
    {
      v74 = [v64 contents];
      v75 = v64;
      v73 = &v74[v69];
    }

    v127 = v125 * v129;
    v76 = v68;
    v77 = v68;
    v78 = v67;
    v79 = v67;
    v80 = v66;
    v81 = sub_1AF903DE8(&v73[v125 * v129], v77, v79, v72, v130, v66, v62);
    if (!v81)
    {
      sub_1AF902768();
      swift_allocError();
      *v90 = 0xD000000000000026;
      *(v90 + 8) = 0x80000001AFF3A270;
      *(v90 + 16) = 0;
      swift_willThrow();

      swift_unknownObjectRelease();
      return;
    }

    v82 = v81;
    v126 = v76;
    CGContextSetBlendMode(v81, kCGBlendModeCopy);
    sub_1AFDFD9D8();
    v83 = v128;
    v84 = sub_1AF8E68F8(v128, 0.05);
    v85 = floor((v84 + sub_1AF8E68F8(v83, 0.5)) * 0.5 * 100.0 + 0.5) / 100.0;
    v86 = v122;
    if (v122 & 8) != 0 && v131 == 2 && (v123 & 0x100) != 0 && (v122)
    {
      CACurrentMediaTime();
      CGBitmapContext_unpremultiply(v82);
    }

    v87 = v124;
    if (v85 != 2.2)
    {
      v87 = 0;
    }

    if (v131 == 1 && v87 && (v86 & 0x8C) == 0)
    {
      CACurrentMediaTime();
      CGBitmapContext_fixIncorrectPremultiply(v82);
    }

    if (v121 > 3)
    {
      if (v121 == 4)
      {
        v89 = 70;
        goto LABEL_104;
      }

      if (v121 == 8)
      {
        if ((v123 & 0x100) != 0)
        {
          v89 = 115;
        }

        else
        {
          v89 = 110;
        }

LABEL_104:
        *(v7 + 24) = 1;
        if (v132 <= 1)
        {
          v98 = 2;
        }

        else
        {
          v98 = 3;
        }

        sub_1AF466BDC(v98, v7 + 32);
        if ((v86 & 4) == 0)
        {
          v89 = sub_1AF470B6C(v89);
        }

        sub_1AF46748C(v89, v7 + 32);
        sub_1AF46749C(v126, v7 + 32);
        sub_1AF4674A4(v78, v7 + 32);
        v99 = 1;
        sub_1AF4674AC(1, v7 + 32);
        if ((v86 & 0x60) != 0)
        {
          v99 = sub_1AF8DB86C(*(v7 + 32), *(v7 + 40), *(v7 + 48) | (*(v7 + 50) << 16));
        }

        sub_1AF4674B4(v99, v7 + 32);
        sub_1AF9027BC(1, v7 + 32);
        v100 = v132;
        sub_1AF4674C8(v132, v7 + 32);
        sub_1AF903E1C(v7 + 32);
        sub_1AF5F7474(2, v7 + 32);
        sub_1AF903E2C(v7 + 32);
        sub_1AF5F7484(1, v7 + 32);
        if (v100 < 2)
        {

          swift_unknownObjectRelease();
        }

        else
        {
          sub_1AF4674F0(v126, v78, 1, &v133);
          v101 = v133;
          v102 = v134;
          v103 = *(v7 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = v102;
          v132 = v101;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v103 = sub_1AF4220C4(0, *(v103 + 2) + 1, 1, v103);
          }

          v105 = v127;
          v107 = *(v103 + 2);
          v106 = *(v103 + 3);
          if (v107 >= v106 >> 1)
          {
            v103 = sub_1AF4220C4(v106 > 1, v107 + 1, 1, v103);
          }

          swift_unknownObjectRelease();

          *(v103 + 2) = v107 + 1;
          v108 = &v103[64 * v107];
          v109 = v130;
          *(v108 + 4) = v105;
          *(v108 + 5) = v109;
          v110 = v131;
          v111 = v132;
          *(v108 + 6) = v125;
          *(v108 + 7) = v111;
          *(v108 + 8) = *(&v101 + 1);
          *(v108 + 9) = v110;
          *(v108 + 10) = v129;
          *(v108 + 11) = 0;
          *(v7 + 56) = v103;
        }

        return;
      }
    }

    else
    {
      if (v121 == 1)
      {
        v89 = 10;
        goto LABEL_104;
      }

      if (v121 == 2)
      {
        v89 = 30;
        goto LABEL_104;
      }
    }

    sub_1AF902768();
    swift_allocError();
    *v97 = xmmword_1AFE81700;
    *(v97 + 16) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v135 = v65;
  v91 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v91);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  v135 = 0;
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v92 = v133;
  v93 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v120 = v93;
    swift_once();
    v93 = v120;
  }

  *&v133 = 0;
  sub_1AF0D4F18(v93, &v133, v92, *(&v92 + 1));

  swift_unknownObjectRelease();
  sub_1AF902768();
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  swift_allocError();
  *v94 = 0xD000000000000018;
  *(v94 + 8) = 0x80000001AFF3A250;
  *(v94 + 16) = 0;
  swift_willThrow();
}

void sub_1AF8E7DE4(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v91 = a4;
  v92 = a5;
  v93 = a2;
  v94 = a3;
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - v17;
  sub_1AFDFBFD8();
  v19 = sub_1AFDFCF98();
  v21 = v20;

  if (v19 == 26230 && v21 == 0xE200000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v22 = a1;
    v23 = sub_1AFDFC148();
    if (v6)
    {

      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v25 = v23;
    v26 = v24;
    sub_1AF8FA2AC(v23, v24, v7, v94);
    sub_1AF439ED8(v25, v26);
    a1 = v22;
  }

  if (v19 == 1700951395 && v21 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    sub_1AF48EE18(a1, v7, v94);
    return;
  }

  if (v19 == 7894123 && v21 == 0xE300000000000000)
  {

    goto LABEL_15;
  }

  v27 = sub_1AFDFEE28();

  if (v27)
  {
LABEL_15:
    v28 = sub_1AFDFC148();
    if (!v6)
    {
      v30 = v28;
      v31 = v29;
      v32 = sub_1AFDFC128();
      v33 = *(v32 - 8);
      (*(v33 + 16))(v18, a1, v32);
      (*(v33 + 56))(v18, 0, 1, v32);
      sub_1AF465864(v30, v31, v18, v93, v94);
      sub_1AF456B8C(v18);
      sub_1AF439ED8(v30, v31);
      return;
    }

    v100 = v6;
    v34 = v6;
    sub_1AF4498F4(0, &qword_1ED7268D0, MEMORY[0x1E69E7280], 1);
    if (swift_dynamicCast())
    {
      if (v99 == 1)
      {
        sub_1AF467524(v97, v98, 1u);
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF3A120);
        v35 = sub_1AFDFC028();
        MEMORY[0x1B2718AE0](v35);

        MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF3A150);
        v37 = v95;
        v36 = v96;
        v38 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v87 = v38;
          swift_once();
          v38 = v87;
        }

        v95 = 0;
        sub_1AF0D4F18(v38, &v95, v37, v36);

        v39 = sub_1AFDFC048();
        v40 = CGImageSourceCreateWithURL(v39, 0);

        if (v40)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v40, 0, 0);
          if (ImageAtIndex)
          {
            v42 = ImageAtIndex;
            v43 = sub_1AFDFC128();
            v44 = *(v43 - 8);
            v45 = v90;
            (*(v44 + 16))(v90, a1, v43);
            (*(v44 + 56))(v45, 0, 1, v43);
            sub_1AF8E6C04(v42, v93, v94, v45, v91, v92);
            sub_1AF456B8C(v45);
            v74 = *v7;
            if (*v7)
            {
              sub_1AFDFC028();
              v75 = sub_1AFDFCEC8();

              [v74 setLabel_];

              goto LABEL_46;
            }

LABEL_45:
LABEL_46:

            return;
          }
        }

        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1AFDFE218();

        v95 = 0xD000000000000018;
        v96 = 0x80000001AFF3A0B0;
        sub_1AFDFC128();
        sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v70 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v70);

        v71 = v95;
        v72 = v96;
        sub_1AF902768();
        swift_allocError();
        *v73 = v71;
        *(v73 + 8) = v72;
        *(v73 + 16) = 0;
        swift_willThrow();
        goto LABEL_45;
      }

      sub_1AF467524(v97, v98, v99);
    }

    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF317B0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v49 = v97;
    v50 = v98;
    sub_1AF902768();
    swift_allocError();
    *v51 = v49;
    *(v51 + 8) = v50;
    *(v51 + 16) = 0;
    swift_willThrow();

    return;
  }

  sub_1AFDFBFD8();
  v46 = sub_1AFDFCF98();
  v48 = v47;

  if (v46 == 2053403509 && v48 == 0xE400000000000000)
  {
  }

  else
  {
    v52 = sub_1AFDFEE28();

    if ((v52 & 1) == 0)
    {
      v65 = sub_1AFDFC048();
      v56 = CGImageSourceCreateWithURL(v65, 0);

      if (v56)
      {
        v66 = CGImageSourceCreateImageAtIndex(v56, 0, 0);
        if (v66)
        {
          v67 = v66;
          v68 = sub_1AFDFC128();
          v69 = *(v68 - 8);
          (*(v69 + 16))(v13, a1, v68);
          (*(v69 + 56))(v13, 0, 1, v68);
          sub_1AF8E6C04(v67, v93, v94, v13, v91, v92);
          if (v6)
          {
            sub_1AF456B8C(v13);
          }

          else
          {
            sub_1AF456B8C(v13);
            v83 = *v7;
            if (*v7)
            {
              sub_1AFDFC028();
              v84 = sub_1AFDFCEC8();

              [v83 setLabel_];
            }
          }

          goto LABEL_58;
        }
      }

      v97 = 0;
      v98 = 0xE000000000000000;
      sub_1AFDFE218();

      v97 = 0xD000000000000018;
      v98 = 0x80000001AFF3A0B0;
      sub_1AFDFC128();
      sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v76 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v76);

LABEL_52:
      v77 = v97;
      v78 = v98;
      sub_1AF902768();
      swift_allocError();
      *v79 = v77;
      *(v79 + 8) = v78;
      *(v79 + 16) = 0;
      swift_willThrow();
      return;
    }
  }

  sub_1AF9032D0(&v97);
  if (v6)
  {
    return;
  }

  v53 = v97;
  v54 = v98;
  v55 = v99;

  if (!v53)
  {
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1AFDFE218();

    v97 = 0xD000000000000026;
    v98 = 0x80000001AFF3A0D0;
    MEMORY[0x1B2718AE0](v54, v55);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    goto LABEL_52;
  }

  v90 = v7;
  v56 = v53;
  v57 = CGImageSourceCreateWithData(v56, 0);
  if (!v57)
  {
LABEL_54:
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1AFDFE218();

    v97 = 0xD00000000000001BLL;
    v98 = 0x80000001AFF3A100;
    MEMORY[0x1B2718AE0](v54, v55);

    v80 = v97;
    v81 = v98;
    sub_1AF902768();
    swift_allocError();
    *v82 = v80;
    *(v82 + 8) = v81;
    *(v82 + 16) = 0;
    swift_willThrow();

LABEL_58:
    return;
  }

  v58 = v57;
  v59 = CGImageSourceCreateImageAtIndex(v57, 0, 0);
  if (!v59)
  {

    goto LABEL_54;
  }

  v60 = v59;

  v61 = sub_1AFDFC128();
  v62 = *(v61 - 8);
  v63 = v89;
  (*(v62 + 16))();
  (*(v62 + 56))(v63, 0, 1, v61);
  v64 = v90;
  sub_1AF8E6C04(v60, v93, v94, v63, v91, v92);
  sub_1AF456B8C(v63);
  v85 = *v64;
  if (*v64)
  {
    v86 = sub_1AFDFCEC8();

    [v85 setLabel_];
  }

  else
  {
  }
}

void *sub_1AF8E8B04(void *a1, uint64_t a2)
{
  v4 = [a1 height];
  CFXTextureDescriptorMakeDefault(&v31);
  sub_1AF466BDC(5, &v31);
  sub_1AF46748C(115, &v31);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  sub_1AF46749C(v4, &v31);
  sub_1AF4674A4(v4, &v31);
  sub_1AF4674AC(1, &v31);
  v5 = log2f(fmaxf(v4, 1.0));
  v6 = floorf(v5);
  sub_1AF4674B4((v6 + 1.0), &v31);
  sub_1AF9027BC(1, &v31);
  sub_1AF4674C8(1, &v31);
  sub_1AF5F7474(2, &v31);
  sub_1AF5F7484(3, &v31);
  v7 = *(a2 + 16);
  v33 = v31;
  v34 = v32;
  v8 = CFXGPUDeviceCreateTexture(v7, &v33);
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v33 = 0xD000000000000010;
  *(&v33 + 1) = 0x80000001AFF3A460;
  v9 = [a1 label];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AFDFCEF8();
    v13 = v12;
  }

  else
  {
    v13 = 0xE700000000000000;
    v11 = 0x64656D616E6E55;
  }

  ObjectType = swift_getObjectType();
  MEMORY[0x1B2718AE0](v11, v13);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  v15 = sub_1AFDFCEC8();

  [v8 setLabel_];

  sub_1AFDFF308();

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v16 = sub_1AFDFF2E8();
  *&v33 = 0xD000000000000015;
  *(&v33 + 1) = 0x80000001AFF3A480;
  v34 = 0;
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v16;
  v17 = sub_1AF73BD84(&v33, 0, 0, 0);
  v19 = v18;

  if (v17)
  {
    v20 = sub_1AF6F4158();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v21 = sub_1AFDFCEC8();
    [v20 pushDebugGroup_];

    sub_1AF6F3BD8(v22, v23);
    swift_unknownObjectRelease();
    [v20 setTexture:a1 atIndex:0];
    [v20 setTexture:sub_1AF47371C(ObjectType) atIndex:1];
    swift_unknownObjectRelease();
    sub_1AF6F4400(v17, v8, 0);
    [v20 popDebugGroup];
    swift_unknownObjectRelease();
    v24 = [v8 mipmapLevelCount];
    if (v24 > 1)
    {
      v26 = sub_1AF6F3F0C(v24, v25);
      v27 = sub_1AFDFCEC8();
      [v26 pushDebugGroup_];

      sub_1AF6F3BD8(v28, v29);
      swift_unknownObjectRelease();
      sub_1AF8E8F74(v8, v26);
      [v26 popDebugGroup];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v8;
}

uint64_t sub_1AF8E8F74(void *a1, void *a2)
{
  v4 = sub_1AFDFC4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  result = [a1 mipmapLevelCount];
  if (result >= 2)
  {
    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v10 = sub_1AFDFC538();
    sub_1AF477C68(v10, qword_1ED73B608);
    sub_1AFDFC528();
    sub_1AFDFC4D8();
    swift_unknownObjectRetain();
    v11 = sub_1AFDFC528();
    v12 = sub_1AFDFDB98();
    swift_unknownObjectRelease();
    if (sub_1AFDFDCE8())
    {
      HIDWORD(v30) = v12;
      v31 = a2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      v15 = [a1 label];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1AFDFCEF8();
        v19 = v18;

        v20 = v17;
      }

      else
      {
        v20 = sub_1AF473794(ObjectType);
        v19 = v21;
      }

      v22 = sub_1AF740B70(v20, v19, &v32);

      *(v13 + 4) = v22;
      v23 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v11, BYTE4(v30), v23, "generateMipmap", "CB %s", v13, 0xCu);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
      MEMORY[0x1B271DEA0](v14, -1, -1);
      MEMORY[0x1B271DEA0](v13, -1, -1);

      a2 = v31;
    }

    else
    {
    }

    v24 = [a1 pixelFormat];
    if ((v24 - 160) <= 0x3A && ((1 << (v24 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AFDFE218();

      v32 = 0xD000000000000023;
      v33 = 0x80000001AFF39FA0;
      v25 = sub_1AF4720E8([a1 pixelFormat]);
      MEMORY[0x1B2718AE0](v25);

      v27 = v32;
      v26 = v33;
      v28 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v29 = v28;
        swift_once();
        v28 = v29;
      }

      v32 = 0;
      sub_1AF0D4F18(v28, &v32, v27, v26);
    }

    else
    {
      [a2 generateMipmapsForTexture_];
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_1AF8E9348(uint64_t *a1, void *a2, char a3, void *a4, double result)
{
  v5 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = a1[7];
    v10 = *(v9 + 16);
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = v9 + 48;
      v12 = v5;
      v43 = v10;
      do
      {
        v13 = *(v11 - 16);
        v46 = *v11;
        v47 = *(v11 - 8);
        v45 = *(v11 + 8);
        v14 = a4;
        v16 = *(v11 + 24);
        v15 = *(v11 + 32);
        v17 = a2;
        v18 = *(v11 + 40);
        swift_unknownObjectRetain();
        sub_1AF4674F0(0, 0, 0, &v51);
        v19 = v52;
        v20 = v51;
        v51 = v45;
        v52 = v16;
        v49 = v20;
        v50 = v19;
        v42 = v18;
        a2 = v17;
        v41 = v15;
        a4 = v14;
        [v14 copyFromBuffer:v12 sourceOffset:v13 + v8 sourceBytesPerRow:v47 sourceBytesPerImage:v46 sourceSize:&v51 toTexture:v17 destinationSlice:v41 destinationLevel:v42 destinationOrigin:&v49];
        swift_unknownObjectRelease();
        v11 += 64;
        --v10;
      }

      while (v10);
      if (v43 != [v17 arrayLength] || (a3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v22 = a1[1];
      v23 = a1[2];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = [a2 depth];
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = v23 / v26;
      v48 = a2;
      v28 = sub_1AF473390(0);
      v30 = v29;
      v32 = v31;
      v49 = *(a1 + 2);
      v50 = a1[6];
      swift_unknownObjectRetain();
      v51 = *(a1 + 2);
      v52 = a1[6];
      v33 = sub_1AF467494(&v51);
      v34 = sub_1AF445CA8(&v49);
      if (v33 - 160 <= 0x3A && ((1 << (v33 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
      {
        if ((v33 - 186) > 0x20u)
        {
          LODWORD(v35) = 1;
        }

        else
        {
          v35 = qword_1AFE84818[(v33 - 186)];
        }

        v36 = a3;
        v37 = 16 * ((v35 + v34 - 1) / v35);
      }

      else
      {
        v37 = sub_1AF47289C(v33) * v34;
        v36 = a3;
      }

      sub_1AF4674F0(0, 0, 0, &v51);
      v38 = v52;
      v39 = v51;
      *&v51 = v28;
      *(&v51 + 1) = v30;
      v52 = v32;
      v49 = v39;
      v50 = v38;
      v40 = v37;
      a2 = v48;
      [a4 copyFromBuffer:v5 sourceOffset:v22 sourceBytesPerRow:v40 sourceBytesPerImage:v27 sourceSize:&v51 toTexture:v48 destinationSlice:0 destinationLevel:0 destinationOrigin:&v49];
      swift_unknownObjectRelease();
      if ((v36 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_1AF8E8F74(a2, a4);
LABEL_8:
    swift_unknownObjectRelease();
  }

  return v21;
}

double sub_1AF8E9638(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t *a5, void *a6, char a7, void *a8, double result)
{
  if (*a5)
  {
    v42 = a5[1];
    v43 = *a5;
    swift_unknownObjectRetain();
    v48 = *(a5 + 2);
    v49 = a5[6];
    if (sub_1AF478AC0(&v48) >= 2)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v15 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v39 = v15;
        swift_once();
        v15 = v39;
      }

      *&v48 = 0;
      sub_1AF0D4F18(v15, &v48, 0xD00000000000002ELL, 0x80000001AFF39F70);
    }

    if (a2 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2;
    }

    if (v16 >= 1024)
    {
      v17 = 1024;
    }

    else
    {
      v17 = v16;
    }

    if (a1 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v18 >= 1024)
    {
      v19 = 1024;
    }

    else
    {
      v19 = v18;
    }

    v20 = v19 * v17;
    if (a4)
    {
      v21 = v19 * v17;
    }

    else
    {
      v21 = a3;
    }

    if (v20 >= v21)
    {
      v20 = v21;
    }

    v41 = v20;
    v48 = *(a5 + 2);
    v49 = a5[6];
    v22 = (sub_1AF445CA8(&v48) / v19);
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v48 = *(a5 + 2);
    v49 = a5[6];
    v24 = (sub_1AF445CB0(&v48) / v17);
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v48 = *(a5 + 2);
    v49 = a5[6];
    v26 = sub_1AF467494(&v48);
    v48 = *(a5 + 2);
    v49 = a5[6];
    v27 = sub_1AF445CA8(&v48);
    if (v26 - 160 <= 0x3A && ((1 << (v26 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
    {
      if ((v26 - 186) > 0x20u)
      {
        LODWORD(v28) = 1;
      }

      else
      {
        v28 = qword_1AFE84818[(v26 - 186)];
      }

      v29 = 16 * ((v28 + v27 - 1) / v28);
    }

    else
    {
      v29 = sub_1AF47289C(v26) * v27;
    }

    v48 = *(a5 + 2);
    v49 = a5[6];
    v30 = sub_1AF467494(&v48);
    swift_getObjectType();
    v31 = sub_1AF472034();
    v32 = v25;
    if (v30 - 160 <= 0x3A)
    {
      v32 = v25;
      if (((1 << (v30 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
      {
        if ((v30 - 186) > 0x20u)
        {
          v33 = 1;
        }

        else
        {
          v33 = word_1AFE84920[(v30 - 186)];
        }

        v32 = (v25 + v33 - 1) / v33;
      }
    }

    sub_1AF472C1C(v23, v25, 1, 0, v30);
    sub_1AF4674F0(v23, v25, 1, &v48);
    if (v21)
    {
      v34 = 0;
      v40 = v48;
      v35 = v49;
      do
      {
        if ((a4 & 0xFF00) == 0x100)
        {
          sub_1AF4674F0(0, 0, v34, &v48);
          v38 = 0;
          v36 = v48;
          v37 = v49;
        }

        else
        {
          sub_1AF4674F0(0, 0, 0, &v48);
          v36 = v48;
          v37 = v49;
          v38 = v34;
        }

        v48 = v40;
        v49 = v35;
        v46 = v36;
        v47 = v37;
        [a8 copyFromBuffer:v43 sourceOffset:v42 + v32 * v29 * (v34 / v19) + v34 % v19 * v31 sourceBytesPerRow:v29 sourceBytesPerImage:0 sourceSize:&v48 toTexture:a6 destinationSlice:v38 destinationLevel:0 destinationOrigin:&v46];
        ++v34;
      }

      while (v41 != v34);
    }

    if (a7)
    {
      sub_1AF8E8F74(a6, a8);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1AF8E9A5C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v192 = a3;
  v9 = sub_1AFDFC4F8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v168 - v14;
  v16 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v191 = v13;
  v193 = a4;
  v17 = qword_1ED7270F0;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1AFDFC538();
  sub_1AF477C68(v18, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  sub_1AF44222C(a1, &v223);
  v19 = sub_1AFDFC528();
  LODWORD(v186) = sub_1AFDFDB88();
  sub_1AF478A6C(a1);
  v20 = sub_1AFDFDCE8();
  v189 = v15;
  v190 = a2;
  v187 = a5;
  v188 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v184 = v21;
    v185 = swift_slowAlloc();
    *&v223 = v185;
    *v21 = 136315138;
    v22 = sub_1AF8DC964(*(a1 + 32), *(a1 + 40), *(a1 + 48) | (*(a1 + 50) << 16));
    v23 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    [v23 setCountStyle_];
    v24 = [v23 stringFromByteCount_];
    v25 = sub_1AFDFCEF8();
    v26 = v9;
    v28 = v27;

    v15 = v189;
    v29 = sub_1AF740B70(v25, v28, &v223);
    v9 = v26;
    v30 = v191;

    v31 = v184;
    *(v184 + 1) = v29;
    v32 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v19, v186, v32, "uploadTextureToGPU", "%s", v31, 0xCu);
    v33 = v185;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v185);
    MEMORY[0x1B271DEA0](v33, -1, -1);
    a2 = v190;
    MEMORY[0x1B271DEA0](v31, -1, -1);
  }

  else
  {

    v30 = v191;
  }

  v35 = *(v30 + 16);
  v179 = v9;
  v35(v11, v15, v9);
  sub_1AFDFC578();
  swift_allocObject();
  v36 = sub_1AFDFC568();
  v177 = a1;
  v178 = v36;
  sub_1AF8EB2A4(*(a1 + 32), *(a1 + 40), *(a1 + 48) | (*(a1 + 50) << 16));
  v38 = v37;
  v40 = v39;
  v42 = v41;
  *&v220 = v37;
  *(&v220 + 1) = v39;
  LODWORD(v221) = v41;
  *&v223 = v37;
  *(&v223 + 1) = v39;
  LODWORD(v224) = v41;
  v43 = sub_1AF467494(&v223);
  if (v43 <= 0x37u && ((1 << v43) & 0xE0000003D07C00) != 0)
  {
    v44 = CFXGPUDeviceGetMTLDevice(*(v192 + 16));
    swift_getObjectType();
    v45 = sub_1AF476284();
    swift_unknownObjectRelease();
    if ((v45 & 1) == 0 || (*&v223 = v38, *(&v223 + 1) = v40, LODWORD(v224) = v42, (sub_1AF4676C8(&v223) & 2) != 0))
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v223 = 0;
      *(&v223 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v222[0] = 0xD000000000000024;
      *(&v222[0] + 1) = 0x80000001AFF39F20;
      *&v223 = v38;
      *(&v223 + 1) = v40;
      LODWORD(v224) = v42;
      v46 = sub_1AF467494(&v223);
      v47 = sub_1AF4720E8(v46);
      MEMORY[0x1B2718AE0](v47);

      v48 = v222[0];
      v49 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v165 = v49;
        swift_once();
        v49 = v165;
      }

      *&v223 = 0;
      sub_1AF0D4F18(v49, &v223, v48, *(&v48 + 1));
    }

    else
    {
      LODWORD(v220) = 33686018;
    }
  }

  v50 = *a2;
  if ((*a2 & 8) != 0)
  {
    v223 = v220;
    *&v224 = v221;
    v51 = (sub_1AF467494(&v223) == 125 || (v223 = v220, *&v224 = v221, sub_1AF467494(&v223) == 115)) && (v50 & 1) == 0;
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v192 + 16);
  v53 = [CFXGPUDeviceGetMTLDevice(v52) readWriteTextureSupport];
  swift_unknownObjectRelease();
  if (v53 == 2)
  {
    if ((v223 = v220, *&v224 = v221, v54 = sub_1AF467494(&v223), v55 = sub_1AF470AB0(v54), (v55 - 73) <= 0x34) && ((1 << (v55 - 73)) & 0x1C070000000003) != 0 || (v55 - 10) <= 0x3C && ((1 << (v55 - 10)) & 0x100000000000A019) != 0)
    {
      if (v51)
      {
        v223 = v220;
        *&v224 = v221;
        v56 = sub_1AF4676C8(&v223);
        sub_1AF5F7484(v56 | 2, &v220);
      }
    }
  }

  v57 = v220;
  if (v193)
  {
    v58 = v221 | (BYTE2(v221) << 16);
    v185 = BYTE2(v220);
    v186 = BYTE1(v220);
    v183 = DWORD1(v220);
    v184 = BYTE3(v220);
    v59 = v220 | (BYTE1(v220) << 8) | (BYTE2(v220) << 16) | (BYTE3(v220) << 24) | (DWORD1(v220) << 32);
    v181 = HIDWORD(v220);
    v182 = DWORD2(v220);
    v60 = DWORD2(v220) | (HIDWORD(v220) << 32);
    v61 = swift_unknownObjectRetain();
    v180 = v58;
    v62 = sub_1AF8DAAD0(v61, v59, v60, v58);
    if (v62)
    {
      goto LABEL_38;
    }

    swift_unknownObjectRelease();
    v65 = v185;
    v64 = v186;
    v67 = v183;
    v66 = v184;
    v69 = v181;
    v68 = v182;
    v70 = v180;
  }

  else
  {
    v64 = BYTE1(v220);
    v65 = BYTE2(v220);
    v66 = BYTE3(v220);
    v67 = DWORD1(v220);
    v68 = DWORD2(v220);
    v69 = HIDWORD(v220);
    v70 = v221 | (BYTE2(v221) << 16);
  }

  LOBYTE(v223) = v57;
  v185 = v65;
  v186 = v64;
  BYTE1(v223) = v64;
  BYTE2(v223) = v65;
  v183 = v67;
  v184 = v66;
  BYTE3(v223) = v66;
  *(&v223 + 4) = __PAIR64__(v68, v67);
  v181 = v69;
  v182 = v68;
  HIDWORD(v223) = v69;
  LOWORD(v224) = v70;
  v180 = v70;
  v71 = HIWORD(v70);
  BYTE2(v224) = BYTE2(v70);
  *(&v224 + 3) = *(&v221 + 3);
  BYTE7(v224) = HIBYTE(v221);
  v72 = CFXGPUDeviceCreateTexture(v52, &v223);
  if (!v72)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v223 = 0;
    *(&v223 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v222[0] = v223;
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF39E10);
    LOBYTE(v223) = v57;
    BYTE1(v223) = v186;
    BYTE2(v223) = v185;
    BYTE3(v223) = v184;
    *(&v223 + 4) = __PAIR64__(v182, v183);
    HIDWORD(v223) = v181;
    BYTE2(v224) = v71;
    LOWORD(v224) = v180;
    *(&v224 + 3) = *(&v221 + 3);
    BYTE7(v224) = HIBYTE(v221);
    type metadata accessor for TextureDescriptor(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x203A6C6562616C20, 0xE800000000000000);
    v88 = [v188 label];
    v89 = v189;
    if (v88)
    {
      v90 = v88;
      v91 = sub_1AFDFCEF8();
      v93 = v92;
    }

    else
    {
      v93 = 0xE400000000000000;
      v91 = 1819047278;
    }

    v120 = v179;
    MEMORY[0x1B2718AE0](v91, v93);

    v121 = v222[0];
    v122 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v166 = v122;
      swift_once();
      v122 = v166;
    }

    *&v223 = 0;
    sub_1AF0D4F18(v122, &v223, v121, *(&v121 + 1));

    sub_1AF8F7290(v178, "uploadTextureToGPU");
    swift_unknownObjectRelease();

    (*(v191 + 8))(v89, v120);
    return 0;
  }

  v73 = v72;
  v74 = [v188 label];
  v75 = v73;
  v76 = v74;
  v193 = v75;
  [v75 setLabel_];

LABEL_38:
  v176 = v57;
  v218 = *(&v221 + 3);
  v219 = HIBYTE(v221);
  v77 = sub_1AF6F3F0C(v62, v63);
  v78 = sub_1AFDFCEC8();
  [v77 pushDebugGroup_];

  sub_1AF6F3BD8(v79, v80);
  swift_unknownObjectRelease();
  v83 = v190[4];
  v82 = v190[5];
  v84 = v190[6];
  v85 = *(v190 + 56);
  v86 = *(v190 + 57);
  v174 = v84;
  v172 = v85;
  v173 = v86 << 8;
  v175 = v86;
  if (v86 && v86 != 3)
  {
    v34 = v193;
    v87 = sub_1AF8E9638(v83, v82, v84, (v86 << 8) | v85 & 1u, v177, v193, !v51 & (v50 >> 6), v77, v81);
  }

  else
  {
    v34 = v193;
    v87 = sub_1AF8E9348(v177, v193, !v51 & (v50 >> 6), v77, v81);
  }

  [v77 popDebugGroup];
  swift_unknownObjectRelease();
  if (!v51)
  {
    v112 = v178;
    v113 = v179;
    v114 = v189;
    v115 = v191;
LABEL_80:
    sub_1AF8F7290(v112, "uploadTextureToGPU");
    swift_unknownObjectRelease();

    (*(v115 + 8))(v114, v113);
    return v34;
  }

  v177 = v82;
  v94 = [CFXGPUDeviceGetMTLDevice(v52) readWriteTextureSupport];
  v95 = v193;
  swift_unknownObjectRelease();
  if (v94 != 2 || ((ObjectType = swift_getObjectType(), v99 = sub_1AF470AB0([v95 pixelFormat]), (v99 - 73) > 0x34) || ((1 << (v99 - 73)) & 0x1C070000000003) == 0) && ((v99 - 10) > 0x3C || ((1 << (v99 - 10)) & 0x100000000000A019) == 0))
  {
    CFXTextureDescriptorFromMTLTexture(v95, &v216, v96, v97);
    sub_1AF5F7484(5, &v216);
    v223 = v216;
    *&v224 = v217;
    v116 = CFXGPUDeviceCreateTexture(v52, &v223);
    if (!v116)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v223 = 0;
      *(&v223 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v222[0] = v223;
      MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF39E70);
      v123 = [v193 label];
      v124 = v179;
      v125 = v191;
      if (v123)
      {
        v126 = v123;
        v127 = sub_1AFDFCEF8();
        v129 = v128;
      }

      else
      {
        v129 = 0xE200000000000000;
        v127 = 16718;
      }

      MEMORY[0x1B2718AE0](v127, v129);

      MEMORY[0x1B2718AE0](0x206874697720, 0xE600000000000000);
      v223 = v216;
      *&v224 = v217;
      type metadata accessor for TextureDescriptor(0);
      sub_1AFDFE458();
      v163 = v222[0];
      v164 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v167 = v164;
        swift_once();
        v164 = v167;
      }

      *&v223 = 0;
      sub_1AF0D4F18(v164, &v223, v163, *(&v163 + 1));
      swift_unknownObjectRelease();

      sub_1AF8F7290(v178, "uploadTextureToGPU");
      swift_unknownObjectRelease();

      (*(v125 + 8))(v189, v124);
      return 0;
    }

    v117 = v116;
    v171 = v83;
    v118 = [v95 label];
    if (v118)
    {
      v119 = v118;
      sub_1AFDFCEF8();
    }

    v130 = sub_1AFDFCEC8();

    [v117 setLabel_];

    v131 = objc_allocWithZone(MEMORY[0x1E6974128]);
    swift_unknownObjectRetain();
    v169 = [v131 init];
    v132 = [v169 colorAttachments];
    v133 = [v132 objectAtIndexedSubscript_];

    [v133 setTexture_];
    [v133 setLoadAction_];
    [v133 setStoreAction_];
    [v133 setClearColor_];
    [v133 setLevel_];
    v170 = v117;
    swift_unknownObjectRelease();

    v134 = [v193 pixelFormat];

    sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0xD00000000000001ELL, 0x80000001AFF39E50, MEMORY[0x1E69E7CC0], v222);
    v213 = v222[8];
    v214 = v222[9];
    v215 = v222[10];
    v209 = v222[4];
    v210 = v222[5];
    v211 = v222[6];
    v212 = v222[7];
    v205 = v222[0];
    v206 = v222[1];
    v207 = v222[2];
    v208 = v222[3];
    sub_1AF5FF2F0(&v195);
    v197 = xmmword_1AFE68E40;
    v198 = xmmword_1AFE68E40;
    v195 = xmmword_1AFE68E40;
    v196 = xmmword_1AFE68E40;
    v201 = xmmword_1AFE68E40;
    v202 = xmmword_1AFE68E40;
    v203 = xmmword_1AFE68E40;
    v204 = xmmword_1AFE68E40;
    sub_1AFDFF308();
    sub_1AF6021F8(v222, &v223);
    sub_1AF89747C(&v194);
    sub_1AF602254(v222);
    MEMORY[0x1B271ACB0](v134);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFF2A8();
    v258 = v195;
    v259 = v196;
    v260 = v197;
    v261 = v198;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v135 = sub_1AFDFF2E8();
    v231 = v213;
    v232 = v214;
    v233 = v215;
    v227 = v209;
    v228 = v210;
    v229 = v211;
    v230 = v212;
    v223 = v205;
    v224 = v206;
    v225 = v207;
    v226 = v208;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v234 = v134;
    v239 = 0;
    v240 = 1;
    v241 = v201;
    v242 = v202;
    v243 = v203;
    v244 = v204;
    v246 = 0;
    v245 = 0;
    v247 = 3;
    v248 = 0;
    v249 = 0;
    v250 = 2;
    v253 = 0;
    v251 = 0;
    v252 = 0;
    v254 = 257;
    v255 = v199;
    v256 = v200;
    v257 = v135;
    v136 = sub_1AF730058(&v223);
    v138 = v137;
    v140 = v139;
    v141 = v139;

    sub_1AF602304(&v223);
    if (v141)
    {
      v142 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
      v140 = 0;
      v142 = v136;
    }

    sub_1AF6022A8(v136, v138, v140);
    v143 = v169;
    v144 = sub_1AF6F3D60(v169, 0, 0);
    swift_getObjectType();
    v145 = sub_1AFDFCEC8();
    [v144 pushDebugGroup_];

    sub_1AF6F3BD8(v146, v147);
    swift_unknownObjectRelease();
    [v144 setRenderPipelineState_];
    [v144 setFragmentTexture:v193 atIndex:0];
    sub_1AF6F5C0C(1);
    [v144 popDebugGroup];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v34 = v170;
    v113 = v179;
    v148 = v190;
    v115 = v191;
    goto LABEL_75;
  }

  v170 = ObjectType;
  v100 = sub_1AF6F4158();
  v171 = v83;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v101 = sub_1AFDFCEC8();
  [v100 pushDebugGroup_];

  sub_1AF6F3BD8(v102, v103);
  v104 = [v193 pixelFormat];
  if (v104 != 11 && v104 != 71 && v104 != 81)
  {
    swift_unknownObjectRelease();
    sub_1AFDFF308();

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v149 = sub_1AFDFF2E8();
    *&v223 = 0xD00000000000001DLL;
    *(&v223 + 1) = 0x80000001AFF39E30;
    v224 = 0uLL;
    *&v225 = MEMORY[0x1E69E7CC0];
    *(&v225 + 1) = v149;
    v150 = sub_1AF73BD84(&v223, 0, 0, 0);
    v152 = v151;

    v153 = v193;
    [v100 setTexture:v193 atIndex:0];
    sub_1AF6F448C(v150, v153, 0);
    goto LABEL_74;
  }

  sub_1AFDFF308();

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v105 = sub_1AFDFF2E8();
  *&v223 = 0xD00000000000001DLL;
  *(&v223 + 1) = 0x80000001AFF39E30;
  v224 = 0uLL;
  *&v225 = MEMORY[0x1E69E7CC0];
  *(&v225 + 1) = v105;
  v106 = sub_1AF73BD84(&v223, 0, 0, 0);
  v108 = v107;

  v109 = v193;
  v110 = [v193 newTextureViewWithPixelFormat_];
  if (v110)
  {
    v111 = v110;
    swift_unknownObjectRelease();
    [v100 setTexture:v111 atIndex:0];
    sub_1AF6F448C(v106, v109, 0);
    swift_unknownObjectRelease();
LABEL_74:
    swift_unknownObjectRelease();
    v148 = v190;
    [v100 popDebugGroup];
    swift_unknownObjectRelease();
    v113 = v179;
    v115 = v191;
    v34 = v193;
LABEL_75:
    LOBYTE(v205) = v176;
    BYTE1(v205) = v186;
    BYTE2(v205) = v185;
    BYTE3(v205) = v184;
    *(&v205 + 4) = __PAIR64__(v182, v183);
    HIDWORD(v205) = v181;
    LOWORD(v206) = v180;
    BYTE2(v206) = BYTE2(v180);
    *(&v206 + 3) = v218;
    BYTE7(v206) = v219;
    v154 = sub_1AF8FE1B8(&v205);
    v114 = v189;
    if (v154 >= 2)
    {
      v156 = v115;
      v157 = sub_1AF6F3F0C(v154, v155);
      v158 = sub_1AFDFCEC8();
      [v157 pushDebugGroup_];

      sub_1AF6F3BD8(v159, v160);
      swift_unknownObjectRelease();
      sub_1AF8E8F74(v34, v157);
      [v157 popDebugGroup];
      swift_unknownObjectRelease();
      v115 = v156;
    }

    if (v175 != 3)
    {
      v161 = sub_1AF8EB578(v34, v171, v177, v174, v173 | v172 & 1u, v148, v192);
      swift_unknownObjectRelease();
      v34 = v161;
    }

    v112 = v178;
    goto LABEL_80;
  }

  *&v222[0] = 0;
  *(&v222[0] + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF39EF0);
  *&v205 = v109;
  sub_1AFDFEDD8();
  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1AF8EB2A4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *v3;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v5 = *(v3 + 28);
  v6 = v5 >> 8;
  if ((v5 & 0xFF00) != 0x300 && v6 != 0)
  {
    v11 = v3[4];
    v12 = v3[5];
    if (v12 <= 1)
    {
      v12 = 1;
    }

    if (v12 >= 1024)
    {
      v13 = 1024;
    }

    else
    {
      v13 = v12;
    }

    if (v11 <= 1)
    {
      v11 = 1;
    }

    if (v11 >= 1024)
    {
      v14 = 1024;
    }

    else
    {
      v14 = v11;
    }

    if (v5)
    {
      v15 = v14 * v13;
    }

    else
    {
      v15 = v3[6];
    }

    if (v14 * v13 < v15)
    {
      v15 = v14 * v13;
    }

    if (v6 == 1)
    {
      v16 = 7;
    }

    else
    {
      v16 = 3;
    }

    if (v6 == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = 1;
    }

    if (v6 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v15;
    }

    sub_1AF466BDC(v16, &v33);
    sub_1AF4674AC(v17, &v33);
    sub_1AF4674C8(v18, &v33);
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v19 = (sub_1AF445CA8(&v30) / v14);
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    sub_1AF46749C(v20, &v33);
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v21 = (sub_1AF445CB0(&v30) / v13);
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    sub_1AF4674A4(v22, &v33);
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v23 = sub_1AF467494(&v30);
    sub_1AF46748C(v23, &v33);
    if ((v4 & 0x40) != 0)
    {
      v30 = a1;
      v31 = a2;
      v32 = a3;
      v24 = sub_1AF467494(&v30) - 160;
      if (v24 > 0x3A || ((1 << v24) & 0x7FDF1FF7CFD54FFLL) == 0)
      {
        v28 = sub_1AF8DB86C(v33, v34, v35 | (BYTE2(v35) << 16));
        goto LABEL_44;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1AFDFE218();

      v30 = a1;
      v31 = a2;
      v32 = a3;
      v25 = sub_1AF467494(&v30);
      v26 = sub_1AF4720E8(v25);
      MEMORY[0x1B2718AE0](v26);

      v27 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v29 = v27;
        swift_once();
        v27 = v29;
      }

      v30 = 0;
      sub_1AF0D4F18(v27, &v30, 0xD00000000000001BLL, 0x80000001AFF3A070);
    }

    v28 = 1;
LABEL_44:
    sub_1AF4674B4(v28, &v33);
  }

  sub_1AF5F7474(2, &v33);
  sub_1AF5F7484(1, &v33);
}

id sub_1AF8EB578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  CFXTextureDescriptorFromMTLTexture(a1, &v66, a2, a3);
  sub_1AF8EB2A4(v66, *(&v66 + 1), v67 | (BYTE2(v67) << 16));
  v16 = v15;
  v17 = v13;
  v18 = v15 >> 8;
  v19 = v15 >> 16;
  v20 = v15 >> 24;
  v21 = HIDWORD(v15);
  if (a3 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = a3;
  }

  if (v22 >= 1024)
  {
    v22 = 1024;
  }

  if (a2 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2;
  }

  if (v23 >= 1024)
  {
    v24 = 1024;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(a7 + 16);
  v26 = a5;
  LOBYTE(v66) = v16;
  v27 = v24 * v22;
  v28 = v18;
  BYTE1(v66) = v18;
  v57 = v20;
  v58 = v19;
  BYTE2(v66) = v19;
  v50 = HIBYTE(v26);
  BYTE3(v66) = v20;
  if (v26)
  {
    v29 = v27;
  }

  else
  {
    v29 = a4;
  }

  v53 = v29;
  if (v27 >= v29)
  {
    v27 = v29;
  }

  v59 = v27;
  v55 = HIDWORD(v13);
  v56 = v21;
  DWORD1(v66) = v21;
  *(&v66 + 1) = v13;
  v52 = HIWORD(v14);
  BYTE2(v67) = BYTE2(v14);
  v54 = v14;
  LOWORD(v67) = v14;
  v60 = a1;
  v61 = CFXGPUDeviceCreateTexture(v25, &v66);
  v30 = [a1 label];
  if (v30)
  {
    v31 = v30;
    sub_1AFDFCEF8();
  }

  v32 = sub_1AFDFCEC8();

  [v61 setLabel_];

  v35 = sub_1AF6F3F0C(v33, v34);
  v36 = sub_1AFDFCEC8();
  [v35 pushDebugGroup_];

  sub_1AF6F3BD8(v37, v38);
  LOBYTE(v66) = v16;
  BYTE1(v66) = v28;
  BYTE2(v66) = v58;
  BYTE3(v66) = v57;
  *(&v66 + 4) = __PAIR64__(v17, v56);
  HIDWORD(v66) = v55;
  BYTE2(v67) = v52;
  LOWORD(v67) = v54;
  v51 = sub_1AF445CA8(&v66);
  LOBYTE(v66) = v16;
  BYTE1(v66) = v28;
  BYTE2(v66) = v58;
  BYTE3(v66) = v57;
  *(&v66 + 4) = __PAIR64__(v17, v56);
  HIDWORD(v66) = v55;
  BYTE2(v67) = v52;
  LOWORD(v67) = v54;
  v39 = sub_1AF445CB0(&v66);
  sub_1AF4674F0(v51, v39, 1, &v66);
  if (!v53)
  {
LABEL_26:
    swift_unknownObjectRelease();
    sub_1AF8E8F74(v61, v35);
    [v35 popDebugGroup];
    swift_unknownObjectRelease();
    return v61;
  }

  v40 = 0;
  v41 = v66;
  v42 = v67;
  while (1)
  {
    sub_1AF4674F0(v40 % v24 * v41, v40 / v24 * *(&v41 + 1), 0, &v66);
    v45 = v66;
    v46 = v67;
    if (v50 != 1)
    {
      break;
    }

    sub_1AF4674F0(0, 0, v40, &v66);
    v43 = v67;
    v44 = v66;
    v66 = v45;
    v67 = v46;
    v64 = v41;
    v65 = v42;
    v62 = v44;
    v63 = v43;
    [v35 copyFromTexture:v60 sourceSlice:0 sourceLevel:0 sourceOrigin:&v66 sourceSize:&v64 toTexture:v61 destinationSlice:0 destinationLevel:0 destinationOrigin:&v62];
LABEL_22:
    if (v59 == ++v40)
    {
      goto LABEL_26;
    }
  }

  if (v50 == 2)
  {
    sub_1AF4674F0(0, 0, 0, &v66);
    v47 = v67;
    v48 = v66;
    v66 = v45;
    v67 = v46;
    v64 = v41;
    v65 = v42;
    v62 = v48;
    v63 = v47;
    [v35 copyFromTexture:v60 sourceSlice:0 sourceLevel:0 sourceOrigin:&v66 sourceSize:&v64 toTexture:v61 destinationSlice:v40 destinationLevel:0 destinationOrigin:&v62];
    goto LABEL_22;
  }

  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF8EB9C0()
{
  v1 = *(v0 + 64);
  if (v1 < 0)
  {
    return 0;
  }

  else
  {
    return qword_1AFE84968[v1];
  }
}

void sub_1AF8EB9E8(void *a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, double a9)
{
  v255 = a7;
  v257 = a3;
  v254 = a1;
  sub_1AF87549C(0, a9);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v240 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF904A34(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v240 - v20;
  v264 = *(a2 + 6);
  v265 = *(a2 + 5);
  sub_1AF5F7484(3, &v264);
  v258 = a4;

  if (!a6)
  {

    return;
  }

  v22 = *a2;
  v23 = a2[1];
  v256 = a2;
  v252 = a8;
  if (__PAIR64__(v23, v22) == 0xFFFFFFFF)
  {
    v253 = a5;
    v24 = qword_1EB632E90;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1AF6F280C(*(a2 + 1), *(a2 + 2), 0x6C7070612E6D6F63, 0xED00007866762E65);
    v27 = v26;
    v29 = v28;
    v30 = a2;
    v32 = v31;

    *(v30 + 6) = v25;
    *(v30 + 7) = v27;
    *(v30 + 8) = v29;
    *(v30 + 9) = v32;
    v33 = *(v30 + 6);
    v34 = *(v30 + 1);
    v307 = *v30;
    v308 = v34;
    v35 = *(v30 + 3);
    v309 = *(v30 + 2);
    v310 = v35;
    v36 = *(v30 + 4);
    v312 = *(v30 + 5);
    v313 = v33;
    v311 = v36;
    v315 = *(&v33 + 1);
    v266[0] = v33;
    v38 = *(&v307 + 1);
    v37 = v308;
    v39 = sub_1AF8E5418();
    v41 = v40;
    sub_1AF8FE1E4(v266, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
    sub_1AF8FE1E4(&v315, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
    *(v30 + 12) = v39;
    *(v30 + 13) = v41;
    v42 = *(v258 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    sub_1AFDFF308();
    v43 = v42;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v304 = v285;
    v305 = v286;
    v306 = v287;
    v302 = v283;
    v303 = v284;
    v44 = sub_1AFDFF2E8();
    *&v297 = v38;
    *(&v297 + 1) = v37;
    v299 = 0;
    v298 = 0;
    v300 = MEMORY[0x1E69E7CC0];
    v301 = v44;
    v45 = sub_1AF73BD84(&v297, 1, 0, v42);
    v47 = v46;

    if (v47)
    {
      goto LABEL_6;
    }

LABEL_51:

LABEL_58:
    swift_unknownObjectRelease();
    return;
  }

  v53 = v22 | (v23 << 32);
  v54 = sub_1AF3C96D8(v53);
  if (v54)
  {
    sub_1AF8CCBA0(v54, v266);

    if (v266[1])
    {

      v55 = v256;

      v56 = v268;
      *(v55 + 3) = v267;
      *(v55 + 4) = v56;
      v57 = *(v55 + 6);
      v58 = *(v55 + 1);
      v307 = *v55;
      v308 = v58;
      v59 = *(v55 + 3);
      v309 = *(v55 + 2);
      v310 = v59;
      v60 = *(v55 + 4);
      v312 = *(v55 + 5);
      v313 = v57;
      v311 = v60;
      v314 = *(&v57 + 1);
      v315 = v57;
      v61 = sub_1AF8E5418();
      v253 = a5;
      v63 = v62;
      sub_1AF8FE1E4(&v315, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
      sub_1AF8FE1E4(&v314, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
      *(v55 + 12) = v61;
      *(v55 + 13) = v63;
      a5 = v253;
    }
  }

  else
  {
  }

  sub_1AF3C97B0(v53, v16);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {

    sub_1AF904B7C(v16, sub_1AF87549C);
    return;
  }

  sub_1AF875B60(v16, v21, v64);
  v65 = *&v21[*(v18 + 44)];
  if (!v65 || !v65[2])
  {

    sub_1AF875BE0(v21, v70);
    return;
  }

  v253 = a5;
  v67 = v65[4];
  v66 = v65[5];
  v68 = *&v21[*(v18 + 36)];
  v246 = a6;
  if (v68)
  {
    v69 = *(v68 + 88);
    swift_unknownObjectRetain();
  }

  else
  {
    v69 = 0;
  }

  v96 = *(v258 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  sub_1AFDFF308();
  swift_unknownObjectRetain();

  v251 = v96;
  v97 = MEMORY[0x1E69E7CC0];
  sub_1AF88352C(&v283, v67, v66, v69, MEMORY[0x1E69E7CC0]);
  v304 = v285;
  v305 = v286;
  v306 = v287;
  v302 = v283;
  v303 = v284;
  v98 = sub_1AFDFF2E8();
  *&v297 = v67;
  *(&v297 + 1) = v66;
  v298 = 0;
  v299 = v69;
  v300 = v97;
  v301 = v98;
  v45 = sub_1AF73BD84(&v297, 1, 0, v96);
  v47 = v99;

  swift_unknownObjectRelease_n();

  sub_1AF875BE0(v21, v100);
  a6 = v246;
  if (!v47)
  {
    goto LABEL_51;
  }

LABEL_6:
  v244 = v47;
  v48 = [v47 bindings];
  sub_1AF7198B0();
  v49 = sub_1AFDFD418();

  v243 = v45;
  v246 = a6;
  if (v49 >> 62)
  {
    v50 = sub_1AFDFE108();
    if (v50)
    {
      goto LABEL_8;
    }

LABEL_53:

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v283 = 0;
    *(&v283 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x206C656E72654BLL, 0xE700000000000000);
    MEMORY[0x1B2718AE0](*(v256 + 1), *(v256 + 2));
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF3A430);
    v101 = v283;
    v102 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v103 = v102;
      swift_once();
      v102 = v103;
    }

    *&v283 = 0;
    sub_1AF0D4F18(v102, &v283, v101, *(&v101 + 1));

    goto LABEL_58;
  }

  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
    goto LABEL_53;
  }

LABEL_8:
  v51 = 0;
  v245 = HIDWORD(v257);
  while (1)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x1B2719C70](v51, v49);
    }

    else
    {
      v52 = *(v49 + 8 * v51 + 32);
      swift_unknownObjectRetain();
    }

    if ([v52 type] == 2 && objc_msgSend(v52, sel_access) == 2)
    {
      break;
    }

    ++v51;
    swift_unknownObjectRelease();
    if (v50 == v51)
    {
      goto LABEL_53;
    }
  }

  v241 = v52;

  v71 = *(v256 + 10);
  v251 = (v256 + 20);

  v263 = sub_1AF755B94(v72);

  v73 = [v244 bindings];
  v74 = sub_1AFDFD418();

  v248 = *&v71;
  if (v74 >> 62)
  {
    v75 = sub_1AFDFE108();
    if (v75)
    {
LABEL_32:
      for (i = 0; i != v75; ++i)
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x1B2719C70](i, v74);
        }

        else
        {
          v82 = *(v74 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if (![v82 access] && !objc_msgSend(v82, sel_type))
        {
          sub_1AF8FC634([v82 index]);
          v259 = &unk_1F262DBA0;
          v83 = swift_dynamicCastObjCProtocolConditional();
          if (v83)
          {
            v84 = v83;
            swift_unknownObjectRetain();

            v249 = [v84 bufferDataType];
            v250 = [v82 index];
            v88 = *v251;
            if (!*(*v251 + 16) || (v89 = sub_1AF449CB8(v250), (v90 & 1) == 0) || (v91 = *(v88 + 56) + 80 * v89, v92 = *(v91 + 48), v294 = *(v91 + 32), v295 = v92, v296 = *(v91 + 64), v93 = *(v91 + 16), v292 = *v91, v293 = v93, v94 = sub_1AF8EB9C0(), (v95 & 1) != 0) || v94 != v249)
            {
              sub_1AF87CD18(v249, v269, v85, v86, v87);
              if (v270 == 255)
              {
                v80 = 0uLL;
                v79 = -16;
                v81 = 0uLL;
                v78 = 0uLL;
                v77 = 0uLL;
              }

              else
              {
                v78 = v269[2];
                v77 = v269[3];
                v79 = v270 & 0xF;
                v80 = v269[0];
                v81 = v269[1];
              }

              v290[0] = v80;
              v290[1] = v81;
              v290[2] = v78;
              v290[3] = v77;
              v291 = v79;
              sub_1AF824D1C(v290, v250);
            }

            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_32;
    }
  }

  v104 = 0;
  v105 = v263;
  v106 = 1 << *(v263 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v108 = v107 & *(v263 + 56);
  v109 = (v106 + 63) >> 6;
  v110 = v245;
  v111 = v251;
  while (v108)
  {
LABEL_67:
    v113 = __clz(__rbit64(v108));
    v108 &= v108 - 1;
    v114 = sub_1AF449CB8(*(*(v105 + 48) + ((v104 << 9) | (8 * v113))));
    if (v115)
    {
      v116 = v114;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *v111;
      *&v283 = *v111;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF846FA0();
        v118 = v283;
      }

      sub_1AF6B3070(v116, v118);
      *v111 = v118;
    }
  }

  while (1)
  {
    v112 = v104 + 1;
    if (v104 + 1 >= v109)
    {
      break;
    }

    v108 = *(v105 + 8 * v104++ + 64);
    if (v108)
    {
      v104 = v112;
      goto LABEL_67;
    }
  }

  v119 = *v111;
  v120 = sub_1AF776548(*v111, *&v248);

  if ((v120 & 1) == 0)
  {
    v121 = v256;
    v122 = *(v256 + 6);
    v288 = *(v256 + 5);
    v289 = v122;
    v123 = *(v256 + 4);
    v124 = *(v256 + 1);
    v283 = *v256;
    v284 = v124;
    v125 = *(v256 + 2);
    v286 = *(v256 + 3);
    v287 = v123;
    v285 = v125;
    v119 = v288;
    v316 = *(&v122 + 1);
    v317[0] = v122;
    v126 = sub_1AF8E5418();
    v128 = v127;
    sub_1AF8FE1E4(v317, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
    sub_1AF8FE1E4(&v316, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
    *(v121 + 12) = v126;
    *(v121 + 13) = v128;
    if (*(v258 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
    {
      v129 = v286;
      v251 = v119;
      v130 = *(&v286 + 1);
      v131 = v287;
      KeyPath = swift_getKeyPath();
      *&v276 = __PAIR64__(v110, v257);
      *(&v276 + 1) = v258;
      sub_1AF5A5948();
      *(&v278 + 1) = v133;
      *&v279 = &off_1F2536190;
      v134 = swift_allocObject();
      *&v277 = v134;
      *(v134 + 16) = KeyPath;
      *(v134 + 24) = v129;
      *(v134 + 32) = v130;
      *(v134 + 40) = v131;
      BYTE8(v279) = 11;

      sub_1AF6C67D0(&v276);
      sub_1AF57955C(&v276);
      v242 = v130;
      v135 = *(v130 + 16);
      v119 = v251;
      if (v135)
      {
        v136 = *(v256 + 5);
        v280 = *(v256 + 4);
        v281 = v136;
        v282 = *(v256 + 6);
        v137 = *(v256 + 1);
        v276 = *v256;
        v277 = v137;
        v138 = *(v256 + 3);
        v278 = *(v256 + 2);
        v279 = v138;

        v139 = 72;
        do
        {
          v140 = *(v242 + v139);
          v250 = *(v140 + 16);
          v251 = v135;
          v141 = *(v140 + 24);
          v142 = *(v140 + 40);
          v143 = *(v140 + 144);
          v247 = *(v140 + 152);
          v144 = *(v140 + 188);
          v145 = *(v140 + 184);
          if (v144)
          {
            v145 = 0.0;
          }

          v248 = v145;
          v249 = v143;
          v146 = *(v140 + 196);
          if (v146)
          {
            v147 = 0.0;
          }

          else
          {
            v147 = *(v140 + 192);
          }

          v148 = *(v140 + 204);
          if (v148)
          {
            v149 = 0.0;
          }

          else
          {
            v149 = *(v140 + 200);
          }

          v271 = 0u;
          v272 = 0u;

          v239 = v142;
          v150 = v142;
          v110 = v245;
          v151 = sub_1AF493834(v150, &v271, v250, v141, *&v248, v144, *&v147, v146, *&v149, v148, v249, v247, 0, 0, 0, &type metadata for TextureShaderAsset, v239, &off_1F25446E8);

          sub_1AF8FE1E4(&v271, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF90540C);
          v152 = *(v151 + 32);

          v153 = *(v140 + 16);
          v154 = *(v140 + 24);

          sub_1AF8E3348(v153, v154, v260);

          *&v271 = __PAIR64__(v110, v257);
          *(&v271 + 1) = v258;
          sub_1AF904190();
          *(&v273 + 1) = v155;
          *&v274 = &off_1F2536190;
          v156 = swift_allocObject();
          *&v272 = v156;
          sub_1AF0D5A54(v260, v156 + 24);
          *(v156 + 16) = v152;

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v260);
          BYTE8(v274) = 11;
          sub_1AF6C67D0(&v271);
          v157 = v251;

          sub_1AF57955C(&v271);
          v139 += 48;
          v135 = v157 - 1;
        }

        while (v135);

        v119 = v281;
      }

      v158 = swift_getKeyPath();
      *&v271 = __PAIR64__(v110, v257);
      *(&v271 + 1) = v258;
      sub_1AF9041F4();
      *(&v273 + 1) = v159;
      *&v274 = &off_1F2536190;
      *&v272 = v158;
      BYTE8(v272) = 1;
      BYTE8(v274) = 11;
      sub_1AF6C67D0(&v271);
      sub_1AF57955C(&v271);
    }
  }

  v160 = *(v256 + 2);
  v161 = sub_1AFDFCF98();
  v163 = v162;
  v262 = &unk_1F262DD00;
  v164 = swift_dynamicCastObjCProtocolConditional();
  if (!v164)
  {

    v168 = 0;
    goto LABEL_91;
  }

  v251 = v160;
  v165 = v164;
  swift_unknownObjectRetain_n();
  v166 = v165;
  if ([v165 textureType] != 3)
  {

LABEL_95:
    v167 = [v166 textureType];
    goto LABEL_96;
  }

  *&v271 = v161;
  *(&v271 + 1) = v163;
  *&v260[0] = 1700951395;
  *(&v260[0] + 1) = 0xE400000000000000;
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {

    v167 = 5;
    goto LABEL_96;
  }

  *&v271 = v161;
  *(&v271 + 1) = v163;
  *&v260[0] = 0x786F62796B73;
  *(&v260[0] + 1) = 0xE600000000000000;
  v181 = sub_1AFDFDF18();

  if ((v181 & 1) == 0)
  {
    goto LABEL_95;
  }

  v167 = 5;
LABEL_96:
  sub_1AF466BDC(v167, &v264);
  v271 = v264;
  *&v272 = v265;
  v172 = sub_1AF467494(&v271) - 160;
  if (v172 <= 0x3A && ((1 << v172) & 0x7FDF1FF7CFD54FFLL) != 0)
  {
    swift_unknownObjectRelease();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v271 = 0;
    *(&v271 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v260[0] = v271;
    MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF3A3F0);
    v271 = v264;
    *&v272 = v265;
    v173 = sub_1AF467494(&v271);
    v174 = sub_1AF4720E8(v173);
    MEMORY[0x1B2718AE0](v174);

    v175 = v260[0];
    v176 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v236 = v176;
      swift_once();
      v176 = v236;
    }

    *&v271 = 0;
    sub_1AF0D4F18(v176, &v271, v175, *(&v175 + 1));

    swift_unknownObjectRelease_n();

    goto LABEL_58;
  }

  v229 = CFXGPUDeviceGetMTLDevice(*(v246 + 16));
  swift_getObjectType();
  v271 = v264;
  *&v272 = v265;
  v230 = sub_1AF467494(&v271);
  v168 = v166;
  v231 = sub_1AF4760AC(v230, [v166 textureDataType]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v231 & 1) == 0)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v271 = 0;
    *(&v271 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v260[0] = v271;
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF3A3C0);
    v271 = v264;
    *&v272 = v265;
    v232 = sub_1AF467494(&v271);
    v233 = sub_1AF4720E8(v232);
    MEMORY[0x1B2718AE0](v233);

    MEMORY[0x1B2718AE0](0x65742061206F7420, 0xEF3C5F6572757478);
    *&v271 = [v166 textureDataType];
    type metadata accessor for MTLDataType(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](62, 0xE100000000000000);
    v234 = v260[0];
    v235 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v238 = v235;
      swift_once();
      v235 = v238;
    }

    *&v271 = 0;
    sub_1AF0D4F18(v235, &v271, v234, *(&v234 + 1));

    swift_unknownObjectRelease_n();

    goto LABEL_58;
  }

LABEL_91:
  v251 = v168;
  v169 = v257;
  if (v245 || v257 != -1)
  {

    v177 = sub_1AF3CBB44(v169);
    v179 = v178;

    v171 = v246;
    if ((v179 & 0x100) != 0)
    {

      v182 = sub_1AF67CACC(&type metadata for TextureRequireMipmapGeneration, &off_1F2546058, v169);

      if (v182)
      {
        v170 = sub_1AF8DB86C(v264, *(&v264 + 1), v265 | (BYTE2(v265) << 16));
      }

      else
      {
        v170 = 1;
      }
    }

    else
    {
      v170 = sub_1AF8DB86C(v264, *(&v264 + 1), v265 | (BYTE2(v265) << 16));
      if (v179)
      {
        v180 = v170;
      }

      else
      {
        v180 = v177;
      }

      if (v180 <= 1)
      {
        v180 = 1;
      }

      if (v170 >= v180)
      {
        v170 = v180;
      }
    }
  }

  else
  {
    v170 = 1;
    v171 = v246;
  }

  sub_1AF4674B4(v170, &v264);
  v183 = *(v171 + 16);
  v271 = v264;
  *&v272 = v265;
  v184 = CFXGPUDeviceCreateTexture(v183, &v271);
  if (!v184)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v196 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v237 = v196;
      swift_once();
      v196 = v237;
    }

    *&v271 = 0;
    sub_1AF0D4F18(v196, &v271, 0xD000000000000018, 0x80000001AFF32C90);
    swift_unknownObjectRelease();

    goto LABEL_163;
  }

  v185 = v184;
  ObjectType = swift_getObjectType();
  v187 = sub_1AFDFCEC8();
  [v185 setLabel_];

  v188 = v254;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v188 = v185;
  if (!v243)
  {

LABEL_161:

    swift_unknownObjectRelease();
LABEL_163:
    swift_unknownObjectRelease();
    goto LABEL_58;
  }

  v189 = v171;
  v190 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v191 = sub_1AFDFCEC8();
  [v190 pushDebugGroup_];

  sub_1AF6F3BD8(v192, v193);
  swift_unknownObjectRelease();
  v194 = [v185 textureType];
  v257 = v185;
  v254 = 0;
  if (v251 && v194 == 5 && [v251 textureType] == 3)
  {
    v195 = sub_1AF47371C(ObjectType);
    [v190 setTexture:v195 atIndex:{objc_msgSend(v241, sel_index)}];
    swift_unknownObjectRelease();
  }

  else
  {
    [v190 setTexture:v185 atIndex:{objc_msgSend(v241, sel_index)}];
  }

  v197 = 1 << v119[32];
  v198 = -1;
  if (v197 < 64)
  {
    v198 = ~(-1 << v197);
  }

  v199 = v198 & *(v119 + 8);
  v200 = (v197 + 63) >> 6;

  v201 = 0;
  while (v199)
  {
    v202 = v201;
LABEL_136:
    v203 = __clz(__rbit64(v199)) | (v202 << 6);
    v204 = *(*(v119 + 6) + 8 * v203);
    v199 &= v199 - 1;
    v205 = *(v119 + 7) + 80 * v203;
    v272 = *(v205 + 16);
    v273 = *(v205 + 32);
    v274 = *(v205 + 48);
    v275 = *(v205 + 64);
    v271 = *v205;
    sub_1AF8A925C(&v271, v204, v253, v189, v255);
  }

  while (1)
  {
    v202 = v201 + 1;
    if (v201 + 1 >= v200)
    {
      break;
    }

    v199 = *&v119[8 * v201++ + 72];
    if (v199)
    {
      v201 = v202;
      goto LABEL_136;
    }
  }

  v206 = *(v256 + 11);
  v207 = 1 << *(v206 + 32);
  v208 = -1;
  if (v207 < 64)
  {
    v208 = ~(-1 << v207);
  }

  v209 = v208 & *(v206 + 64);
  v210 = (v207 + 63) >> 6;

  v211 = 0;
  while (v209)
  {
LABEL_145:
    v213 = __clz(__rbit64(v209));
    v209 &= v209 - 1;
    v214 = (v211 << 9) | (8 * v213);
    v215 = *(*(v206 + 48) + v214);
    v216 = sub_1AF8D93C8(*(*(v206 + 56) + v214), v260, v253, v189);
    if (v216)
    {
      [v190 setTexture:v216 atIndex:v215];
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v212 = v211 + 1;
    if (v211 + 1 >= v210)
    {
      break;
    }

    v209 = *(v206 + 8 * v211++ + 72);
    if (v209)
    {
      v211 = v212;
      goto LABEL_145;
    }
  }

  v217 = v257;
  v218 = [v257 textureType];
  if (v218 > 4)
  {
    if (v218 == 5)
    {
      sub_1AF6F4400(v243, v217, 0);
      goto LABEL_158;
    }

    if (v218 == 7)
    {
      sub_1AF6F4874(v243, v217, 0);
      goto LABEL_158;
    }

LABEL_155:
    sub_1AF90540C(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_1AFE431C0;
    *&v260[0] = 0;
    *(&v260[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32CD0);
    v261[0] = [v217 textureType];
    type metadata accessor for MTLTextureType(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
    v220 = v260[0];
    *(v219 + 56) = MEMORY[0x1E69E6158];
    *(v219 + 32) = v220;
    sub_1AFDFF258();

    goto LABEL_158;
  }

  if (!v218)
  {
    sub_1AF6F47F4(v243, v217, 0);
    goto LABEL_158;
  }

  if (v218 != 2)
  {
    goto LABEL_155;
  }

  sub_1AF6F448C(v243, v217, 0);
LABEL_158:
  [v190 popDebugGroup];
  swift_unknownObjectRelease();
  v221 = [v217 mipmapLevelCount];
  if (v221 < 2)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_163;
  }

  v223 = v254;
  v224 = sub_1AF6F3F0C(v221, v222);
  if (!v223)
  {
    v225 = v224;
    v226 = sub_1AFDFCEC8();
    [v225 pushDebugGroup_];

    sub_1AF6F3BD8(v227, v228);
    swift_unknownObjectRelease();
    sub_1AF8E8F74(v217, v225);
    swift_unknownObjectRelease();
    [v225 popDebugGroup];

    swift_unknownObjectRelease();
    goto LABEL_161;
  }

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1AF8ED7F8(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  v9 = v7;
  v3 = sub_1AF8E5418();
  v5 = v4;
  sub_1AF8FE1E4(&v9, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
  result = sub_1AF8FE1E4(&v8, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
  *(a2 + 96) = v3;
  *(a2 + 104) = v5;
  return result;
}

unint64_t sub_1AF8ED8F0(uint64_t a1)
{
  v1 = sub_1AFDFC048();
  v2 = CGImageSourceCreateWithURL(v1, 0);

  if (!v2)
  {
    goto LABEL_7;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
  if (!ImageAtIndex)
  {

LABEL_7:
    sub_1AFDFE218();

    sub_1AFDFC128();
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v7 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v7);

    v6 = 0x80000001AFF39DC0;
    sub_1AF902768();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    *(v8 + 8) = 0x80000001AFF39DC0;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v6;
  }

  v4 = ImageAtIndex;
  v5 = sub_1AF378310();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_1AFDFE218();

    sub_1AFDFC128();
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v10 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v10);

    v6 = 0x80000001AFF39DE0;
    sub_1AF902768();
    swift_allocError();
    *v11 = 0xD000000000000023;
    *(v11 + 8) = 0x80000001AFF39DE0;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  return v6;
}

NSObject *sub_1AF8EDB38(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v53 = a2;
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFC4F8();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a3 + 16);
  v56 = CFXGPUDeviceGetMTLDevice(v52);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1AFDFC538();
  sub_1AF477C68(v12, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  (*(v6 + 16))(v8, a1, v5);
  v13 = swift_slowAlloc();
  v14 = a1;
  v54 = swift_slowAlloc();
  v66 = v54;
  *v13 = 136315138;
  v15 = sub_1AFDFBFE8();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  v18 = sub_1AF740B70(v15, v17, &v66);

  *(v13 + 4) = v18;
  v19 = sub_1AFDFC528();
  LOBYTE(v17) = sub_1AFDFDB88();
  v20 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v19, v17, v20, "loadGPUTextureAsIOSurface", "URL: %s", v13, 0xCu);
  v21 = v55;
  v22 = sub_1AF8ED8F0(v14);
  if (v21)
  {
    swift_unknownObjectRelease();

LABEL_74:
    (*(v57 + 8))(v11, v58);
    return v19;
  }

  v23 = v22;
  v55 = v5;
  v24 = sub_1AFDFDB78();
  v25 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v19, v24, v25, "loadGPUTextureAsIOSurface", "URL: %s", v13, 0xCu);

  v26 = v54;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v54);
  MEMORY[0x1B271DEA0](v26, -1, -1);
  MEMORY[0x1B271DEA0](v13, -1, -1);
  Width = IOSurfaceGetWidth(v23);
  Height = IOSurfaceGetHeight(v23);
  PixelFormat = IOSurfaceGetPixelFormat(v23);
  CFXTextureDescriptorMakeDefault(&v62);
  sub_1AF466BDC(2, &v62);
  sub_1AF46748C(0, &v62);
  if (Width <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = Width;
  }

  sub_1AF46749C(v30, &v62);
  if (Height <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = Height;
  }

  sub_1AF4674A4(v31, &v62);
  sub_1AF4674AC(1, &v62);
  sub_1AF4674B4(1, &v62);
  sub_1AF9027BC(1, &v62);
  sub_1AF4674C8(1, &v62);
  sub_1AF5F7474(0, &v62);
  sub_1AF5F7484(1, &v62);
  v64 = v62;
  v65 = v63;
  sub_1AF5F7484(1, &v64);
  if (PixelFormat <= 1278226487)
  {
    if (PixelFormat > 875704437)
    {
      if (PixelFormat != 875704438)
      {
        if (PixelFormat == 875704934 || PixelFormat == 875704950)
        {
          if ((*v53 & 4) != 0)
          {
            if (qword_1EB6332A8 != -1)
            {
              swift_once();
            }

            v32 = qword_1EB6C2A08;
          }

          else
          {
            if (qword_1EB633270 != -1)
            {
              swift_once();
            }

            v32 = qword_1EB6C29E8;
          }

          goto LABEL_57;
        }

LABEL_71:
        *&v60 = 0;
        *(&v60 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF39CF0);
        LODWORD(v59[0]) = PixelFormat;
        v46 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v46);

        MEMORY[0x1B2718AE0](0x206874697720, 0xE600000000000000);
        goto LABEL_72;
      }

      goto LABEL_30;
    }

    if (PixelFormat != 843264056)
    {
      if (PixelFormat != 875704422)
      {
        goto LABEL_71;
      }

LABEL_30:
      if ((*v53 & 4) != 0)
      {
        if (qword_1EB6332B8 != -1)
        {
          swift_once();
        }

        v32 = qword_1EB6C2A10;
      }

      else
      {
        if (qword_1EB633280 != -1)
        {
          swift_once();
        }

        v32 = qword_1EB6C29F0;
      }

      goto LABEL_57;
    }

    v33 = (*v53 & 4) == 0;
    v34 = 30;
LABEL_42:
    if (v33)
    {
      v32 = v34 + 1;
    }

    else
    {
      v32 = v34;
    }

    goto LABEL_57;
  }

  if (PixelFormat <= 2016686641)
  {
    if (PixelFormat == 1278226488)
    {
      v33 = (*v53 & 4) == 0;
      v34 = 10;
      goto LABEL_42;
    }

    if (PixelFormat != 2016686640)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (PixelFormat == 2016686642)
    {
LABEL_24:
      if ((*v53 & 4) != 0)
      {
        if (qword_1EB633288 != -1)
        {
          swift_once();
        }

        v32 = qword_1EB6C29F8;
      }

      else
      {
        if (qword_1EB633250 != -1)
        {
          swift_once();
        }

        v32 = qword_1EB6C29D8;
      }

      goto LABEL_57;
    }

    if (PixelFormat != 2019963440)
    {
      if (PixelFormat != 2019963442)
      {
        goto LABEL_71;
      }

      goto LABEL_24;
    }
  }

  if ((*v53 & 4) != 0)
  {
    if (qword_1EB633298 != -1)
    {
      swift_once();
    }

    v32 = qword_1EB6C2A00;
  }

  else
  {
    if (qword_1EB633260 != -1)
    {
      swift_once();
    }

    v32 = qword_1EB6C29E0;
  }

LABEL_57:
  sub_1AF46748C(v32, &v64);
  swift_getObjectType();
  v60 = v64;
  v61 = v65;
  sub_1AF467494(&v60);
  if ((sub_1AF470C28() & 1) == 0)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(v59, "PixelFormat ");
    BYTE5(v59[1]) = 0;
    HIWORD(v59[1]) = -5120;
    v60 = v64;
    v61 = v65;
    v36 = sub_1AF467494(&v60);
    v37 = sub_1AF4720E8(v36);
    MEMORY[0x1B2718AE0](v37);

    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF39D20);
    v19 = v59[0];
    v38 = v59[1];
LABEL_73:
    sub_1AF902768();
    swift_allocError();
    *v48 = v19;
    *(v48 + 8) = v38;
    *(v48 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_74;
  }

  v60 = v64;
  v61 = v65;
  v35 = sub_1AF467494(&v60);
  if (v35 <= 0x37u && ((1 << v35) & 0xE0000003D07C00) != 0)
  {
    if (sub_1AF476284())
    {
      LODWORD(v64) = 33686018;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      v59[0] = 0xD000000000000030;
      v59[1] = 0x80000001AFF39D80;
      v60 = v64;
      v61 = v65;
      v39 = sub_1AF467494(&v60);
      v40 = sub_1AF4720E8(v39);
      MEMORY[0x1B2718AE0](v40);

      v42 = v59[0];
      v41 = v59[1];
      v43 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v50 = v43;
        swift_once();
        v43 = v50;
      }

      *&v60 = 0;
      sub_1AF0D4F18(v43, &v60, v42, v41);
    }
  }

  v60 = v64;
  v61 = v65;
  v44 = CFXGPUDeviceCreateTextureWithIOSurfaceAndDesc(v52, &v60, v23, 0);
  if (!v44)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v60 = 0xD00000000000002CLL;
    *(&v60 + 1) = 0x80000001AFF39D50;
LABEL_72:
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v47 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v47);

    v38 = *(&v60 + 1);
    v19 = v60;
    goto LABEL_73;
  }

  v19 = v44;
  sub_1AFDFC028();
  v45 = sub_1AFDFCEC8();

  [v19 setLabel:v45];
  swift_unknownObjectRelease();

  (*(v57 + 8))(v11, v58);
  return v19;
}
uint64_t specialized Heap._UnsafeHandle.heapify()(uint64_t a1, uint64_t a2)
{
  v2 = a2 / 2;
  if (a2 < 2)
  {
    BUG();
  }

  v3 = a2 / 2;
  if (v2)
  {
    _BitScanReverse64(&v2, v2);
    v4 = v2 ^ 0x3F;
  }

  else
  {
    v4 = 64;
  }

  v5 = 63 - v4;
  do
  {
    v6 = ~(-1 << v5);
    if (v3 > v6)
    {
      v8 = (1 << (v5 + 1)) - 2;
      if (v8 >= v3)
      {
        v8 = v3 - 1;
      }

      v7 = ~(-1 << v5);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v3 <= v6 || v8 < v7;
    if (v5)
    {
      if (v9)
      {
        goto LABEL_89;
      }

      if (!a1)
      {
        BUG();
      }

      while (1)
      {
        v31 = *(a1 + 16 * v7);
        v32 = *(a1 + 16 * v7 + 8);
        v33 = 4 * v7 + 3;
        v34 = 4 * v7 + 6;
        if (v34 < a2)
        {
          v35 = v7;
          while (1)
          {
            v36 = v33 + 1;
            if (*(a1 + 16 * (v33 + 1) + 8) <= *(a1 + 16 * v33 + 8))
            {
              v36 = v33;
            }

            v37 = v33 + 2;
            if (*(a1 + 16 * v34 + 8) <= *(a1 + 16 * v37 + 8))
            {
              v34 = v37;
            }

            v38 = v34;
            if (*(a1 + 16 * v34 + 8) <= *(a1 + 16 * v36 + 8))
            {
              v38 = v36;
            }

            v39 = *(a1 + 16 * v38 + 8);
            if (v39 <= v32)
            {
              break;
            }

            v40 = 16 * v35;
            *(a1 + v40) = *(a1 + 16 * v38);
            *(a1 + v40 + 8) = v39;
            v41 = 16 * ((v38 - 1) / 2);
            v42 = *(a1 + v41 + 8);
            if (v42 <= v32)
            {
              v42 = v32;
            }

            else
            {
              v43 = (a1 + v41);
              v44 = *v43;
              *v43 = v31;
              v43[1] = v32;
              v31 = v44;
              v32 = v42;
            }

            v33 = 4 * v38 + 3;
            v34 = 4 * v38 + 6;
            v35 = v38;
            if (v34 >= a2)
            {
              goto LABEL_68;
            }
          }

          v42 = v32;
          goto LABEL_88;
        }

        v38 = v7;
        v42 = *(a1 + 16 * v7 + 8);
LABEL_68:
        v35 = 2 * v38 + 1;
        if (v35 >= a2)
        {
          goto LABEL_87;
        }

        v45 = 2 * v38;
        if (v33 >= a2)
        {
          v47 = v45 + 2;
        }

        else
        {
          v35 = v33 + 2;
          if (v33 + 2 < a2)
          {
            v46 = v33 + 1;
            if (*(a1 + 16 * (v33 + 1) + 8) <= *(a1 + 16 * v33 + 8))
            {
              v46 = v33;
            }

            if (*(a1 + 16 * v35 + 8) <= *(a1 + 16 * v46 + 8))
            {
              v35 = v46;
            }

            goto LABEL_83;
          }

          v35 = v45 + 2;
          if (*(a1 + 16 * v33 + 8) > *(a1 + 16 * (v45 + 2) + 8))
          {
            v35 = v33;
          }

          v47 = v33 + 1;
        }

        if (v47 < a2 && *(a1 + 16 * v47 + 8) > *(a1 + 16 * v35 + 8))
        {
          v35 = v47;
        }

LABEL_83:
        v48 = *(a1 + 16 * v35 + 8);
        if (v48 > v42)
        {
          v49 = a1 + 16 * v35;
          v50 = 16 * v38;
          *(a1 + v50) = *v49;
          *(a1 + v50 + 8) = v48;
          if (v35 >= v33)
          {
            v51 = 16 * ((v35 - 1) / 2);
            v52 = *(a1 + v51 + 8);
            if (v52 > v42)
            {
              *v49 = *(a1 + v51);
              *(v49 + 8) = v52;
              v35 = (v35 - 1) / 2;
            }
          }

          goto LABEL_88;
        }

LABEL_87:
        v35 = v38;
LABEL_88:
        v53 = 16 * v35;
        *(a1 + v53) = v31;
        *(a1 + v53 + 8) = v42;
        if (v8 < ++v7)
        {
          goto LABEL_89;
        }
      }
    }

    if (!v9)
    {
      if (!a1)
      {
        BUG();
      }

      do
      {
        v10 = *(a1 + 16 * v7);
        v11 = *(a1 + 16 * v7 + 8);
        v12 = 4 * v7 + 3;
        v13 = 4 * v7 + 6;
        if (v13 < a2)
        {
          v14 = v7;
          while (1)
          {
            v15 = v12;
            if (*(a1 + 16 * (v12 + 1) + 8) <= *(a1 + 16 * v12 + 8))
            {
              v15 = v12 + 1;
            }

            v16 = v12 + 2;
            if (*(a1 + 16 * v13 + 8) <= *(a1 + 16 * v16 + 8))
            {
              v16 = v13;
            }

            if (*(a1 + 16 * v16 + 8) <= *(a1 + 16 * v15 + 8))
            {
              v15 = v16;
            }

            v17 = *(a1 + 16 * v15 + 8);
            if (v11 <= v17)
            {
              break;
            }

            v18 = 16 * v14;
            *(a1 + v18) = *(a1 + 16 * v15);
            *(a1 + v18 + 8) = v17;
            v19 = 16 * ((v15 - 1) / 2);
            v20 = *(a1 + v19 + 8);
            if (v11 <= v20)
            {
              v20 = v11;
            }

            else
            {
              v21 = (a1 + v19);
              v22 = *v21;
              *v21 = v10;
              v21[1] = v11;
              v10 = v22;
              v11 = v20;
            }

            v12 = 4 * v15 + 3;
            v13 = 4 * v15 + 6;
            v14 = v15;
            if (v13 >= a2)
            {
              goto LABEL_29;
            }
          }

          v20 = v11;
          goto LABEL_49;
        }

        v15 = v7;
        v20 = *(a1 + 16 * v7 + 8);
LABEL_29:
        v14 = 2 * v15 + 1;
        if (v14 >= a2)
        {
          goto LABEL_48;
        }

        v23 = 2 * v15;
        if (v12 >= a2)
        {
          v24 = v23 + 2;
        }

        else
        {
          if (v12 + 2 < a2)
          {
            v14 = v12 + 1;
            if (*(a1 + 16 * (v12 + 1) + 8) > *(a1 + 16 * v12 + 8))
            {
              v14 = v12;
            }

            if (*(a1 + 16 * (v12 + 2) + 8) <= *(a1 + 16 * v14 + 8))
            {
              v14 = v12 + 2;
            }

            goto LABEL_44;
          }

          v14 = v23 + 2;
          if (*(a1 + 16 * v12 + 8) <= *(a1 + 16 * (v23 + 2) + 8))
          {
            v14 = v12;
          }

          v24 = v12 + 1;
        }

        if (v24 < a2 && *(a1 + 16 * v24 + 8) <= *(a1 + 16 * v14 + 8))
        {
          v14 = v24;
        }

LABEL_44:
        v25 = *(a1 + 16 * v14 + 8);
        if (v20 > v25)
        {
          v26 = a1 + 16 * v14;
          v27 = 16 * v15;
          *(a1 + v27) = *v26;
          *(a1 + v27 + 8) = v25;
          if (v14 >= v12)
          {
            v28 = 16 * ((v14 - 1) / 2);
            v29 = *(a1 + v28 + 8);
            if (v20 > v29)
            {
              *v26 = *(a1 + v28);
              *(v26 + 8) = v29;
              v14 = (v14 - 1) / 2;
            }
          }

          goto LABEL_49;
        }

LABEL_48:
        v14 = v15;
LABEL_49:
        v30 = 16 * v14;
        *(a1 + v30) = v10;
        *(a1 + v30 + 8) = v20;
        ++v7;
      }

      while (v8 >= v7);
    }

LABEL_89:
    result = v5 - 1;
  }

  while (v5-- > 0);
  return result;
}

uint64_t specialized Heap._UnsafeHandle.trickleDownMin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    BUG();
  }

  v6 = a1;
  v7 = *(a3 + 16 * a1);
  v8 = *(a3 + 16 * a1 + 8);
  v9 = 4 * a1 + 3;
  result = 4 * a1 + 6;
  if (result >= a4)
  {
    v19 = a2 + 2;
LABEL_15:
    v20 = 2 * v6 + 1;
    if (v20 < a4)
    {
      result = specialized Heap._UnsafeHandle._minDescendant(c0:gc0:)(v20, a2 + 1, v9, v19, a3, a4);
      v21 = *(a3 + 16 * result + 8);
      if (v8 > v21)
      {
        v22 = result;
        v23 = a3 + 16 * result;
        result = *v23;
        v24 = 16 * v6;
        *(a3 + v24) = *v23;
        *(a3 + v24 + 8) = v21;
        if (v22 < v9 || (v6 = (v22 - 1) / 2, result = 16 * v6, v25 = *(a3 + 16 * v6 + 8), v8 <= v25))
        {
          v6 = v22;
        }

        else
        {
          result = *(a3 + 16 * v6);
          *v23 = result;
          *(v23 + 8) = v25;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v11 = v9;
      if (*(a3 + 16 * (v9 + 1) + 8) <= *(a3 + 16 * v9 + 8))
      {
        v11 = v9 + 1;
      }

      v12 = v9 + 2;
      if (*(a3 + 16 * result + 8) <= *(a3 + 16 * v12 + 8))
      {
        v12 = result;
      }

      if (*(a3 + 16 * v12 + 8) <= *(a3 + 16 * v11 + 8))
      {
        v11 = v12;
      }

      result = 16 * v11;
      v13 = *(a3 + 16 * v11 + 8);
      if (v8 <= v13)
      {
        break;
      }

      v14 = 16 * v6;
      *(a3 + v14) = *(a3 + 16 * v11);
      *(a3 + v14 + 8) = v13;
      v15 = 16 * ((v11 - 1) / 2);
      v16 = *(a3 + v15 + 8);
      if (v8 > v16)
      {
        v17 = (a3 + v15);
        v18 = *v17;
        *v17 = v7;
        v17[1] = v8;
        v7 = v18;
        v8 = v16;
      }

      v9 = 4 * v11 + 3;
      result = 4 * v11 + 6;
      a2 += 2;
      v6 = v11;
      if (result >= a4)
      {
        v19 = a2 + 2;
        v6 = v11;
        goto LABEL_15;
      }
    }
  }

  v26 = 16 * v6;
  *(a3 + v26) = v7;
  *(a3 + v26 + 8) = v8;
  return result;
}

uint64_t specialized Heap._UnsafeHandle._minDescendant(c0:gc0:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >= a6)
  {
    result = a1 + 1;
    if (a1 + 1 >= a6)
    {
      return a1;
    }

    else if (*(a5 + 16 * result + 8) > *(a5 + 16 * a1 + 8))
    {
      return a1;
    }
  }

  else
  {
    result = a3 + 2;
    if (a3 + 2 >= a6)
    {
      result = a1 + 1;
      if (*(a5 + 16 * a3 + 8) <= *(a5 + 16 * (a1 + 1) + 8))
      {
        result = a3;
      }

      v8 = a3 + 1;
      if (v8 < a6 && *(a5 + 16 * v8 + 8) <= *(a5 + 16 * result + 8))
      {
        return v8;
      }
    }

    else
    {
      v7 = a3 + 1;
      if (*(a5 + 16 * (a3 + 1) + 8) > *(a5 + 16 * a3 + 8))
      {
        v7 = a3;
      }

      if (*(a5 + 16 * result + 8) > *(a5 + 16 * v7 + 8))
      {
        return v7;
      }
    }
  }

  return result;
}

double specialized RangeReplaceableCollection<>.removeLast()()
{
  if (!*(*v0 + 16))
  {
    BUG();
  }

  specialized ContiguousArray._customRemoveLast()();
  if (v2)
  {
    return specialized ContiguousArray.remove(at:)(*(*v0 + 16) - 1);
  }

  else
  {
    return v1;
  }
}

double specialized Heap._UnsafeHandle.bubbleUp(_:)(uint64_t a1, char a2, uint64_t a3, double result)
{
  if (!a1)
  {
    return result;
  }

  v5 = a2;
  result = *(a3 + 16 * a1 + 8);
  v6 = *(a3 + 16 * ((a1 - 1) / 2) + 8);
  if (a2)
  {
    if (v6 <= result)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (result > v6)
  {
LABEL_6:
    v5 = a2 - 1;
    specialized UnsafeMutableBufferPointer.swapAt(_:_:)(a1, (a1 - 1) / 2, a3);
    a1 = (a1 - 1) / 2;
  }

LABEL_7:
  if (v5)
  {
    if (a1 > 2)
    {
      v12 = (a1 - 3) >> 2;
      result = *(a3 + 16 * v12 + 8);
      if (*(a3 + 16 * a1 + 8) > result)
      {
        do
        {
          if (a1 != v12)
          {
            if (!a3)
            {
              BUG();
            }

            v13 = 16 * a1;
            v14 = 16 * v12;
            v15 = *(a3 + v13);
            result = *(a3 + v13 + 8);
            *(a3 + v13) = *(a3 + 16 * v12);
            *(a3 + v14) = v15;
            *(a3 + v14 + 8) = result;
            if (v12 < 3)
            {
              break;
            }
          }

          a1 = v12;
          v12 = (v12 - 3) >> 2;
          v11 = result <= *(a3 + 16 * v12 + 8);
          result = *(a3 + 16 * v12 + 8);
        }

        while (!v11);
      }
    }
  }

  else if (a1 > 2)
  {
    v7 = (a1 - 3) >> 2;
    result = *(a3 + 16 * v7 + 8);
    if (result > *(a3 + 16 * a1 + 8))
    {
      do
      {
        if (a1 != v7)
        {
          if (!a3)
          {
            BUG();
          }

          v8 = 16 * a1;
          v9 = 16 * v7;
          v10 = *(a3 + v8);
          result = *(a3 + v8 + 8);
          *(a3 + v8) = *(a3 + 16 * v7);
          *(a3 + v9) = v10;
          *(a3 + v9 + 8) = result;
          if (v7 < 3)
          {
            break;
          }
        }

        a1 = v7;
        v7 = (v7 - 3) >> 2;
        v11 = *(a3 + 16 * v7 + 8) <= result;
        result = *(a3 + 16 * v7 + 8);
      }

      while (!v11);
    }
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v79 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v86 = v1;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for Interaction);
      *(v4 + 16) = v2 / 2;
      v83 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v83 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v82 = v5;
      v6 = *a1;
      v73 = *a1 + 32;
      v76 = *a1 - 16;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v84 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 16 * v10);
          v12 = 16 * v8;
          v13 = *(v6 + 16 * v8);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v14 = (v12 + v73);
            v15 = v11;
            while (1)
            {
              v16 = v15;
              v15 = *v14;
              if (v11 < v13 == *v14 >= v16)
              {
                break;
              }

              ++v10;
              v14 += 2;
              if (v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v11 < v13)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v17 = v76 + 16 * v10;
              v18 = (v6 + v12);
              v19 = v10;
              v20 = v8;
              do
              {
                if (v20 != --v19)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v21 = *v18;
                  v22 = v18[1];
                  *v18 = *v17;
                  *v17 = v21;
                  *(v17 + 8) = v22;
                }

                ++v20;
                v17 -= 16;
                v18 += 2;
              }

              while (v20 < v19);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v72)
          {
            v23 = v72 + v8;
            if (__OFADD__(v72, v8))
            {
              BUG();
            }

            if (v23 >= v9)
            {
              v23 = v9;
            }

            if (v23 < v8)
            {
              BUG();
            }

            if (v10 != v23)
            {
              v24 = v76 + 16 * v10;
              do
              {
                v25 = *(v6 + 16 * v10);
                v26 = v8;
                v27 = v24;
                do
                {
                  if (v25 >= *v27)
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  v28 = *(v27 + 24);
                  *(v27 + 16) = *v27;
                  *v27 = v25;
                  *(v27 + 8) = v28;
                  v27 -= 16;
                  ++v26;
                }

                while (v10 != v26);
                ++v10;
                v24 += 16;
              }

              while (v10 != v23);
              v10 = v23;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v29 = v7;
        v75 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v29;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v7 + 2);
        v31 = v30 + 1;
        v6 = v84;
        if (*(v7 + 3) >> 1 <= v30)
        {
          v6 = v84;
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v30 + 1, 1, v7);
        }

        *(v7 + 2) = v31;
        v32 = 16 * v30;
        *&v7[v32 + 32] = v8;
        *&v7[v32 + 40] = v75;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v9 = v79;
        v8 = v75;
        if (v75 >= v79)
        {
          goto LABEL_84;
        }
      }

      v33 = v7 + 32;
      v87 = v7;
      v71 = v7 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v7[v39 + 8];
          v36 = __OFSUB__(v43, *&v7[16 * v31]);
          v44 = v43 - *&v7[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v7[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v7[16 * v31]);
            v47 = v51 - *&v7[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v7 + 5);
          v36 = __OFSUB__(v35, *(v7 + 4));
          v37 = v35 - *(v7 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v7[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v7[16 * v31]);
        v47 = v46 - *&v7[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v80 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 16 * v57), (v6 + 16 * *__dst), (v6 + 16 * v58), v82);
        if (v86)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v80 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v80 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v80));
        v7 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v6 = v84;
        v33 = v71;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v82 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v83 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v7;
      v83[2] = 0;
      v83;
    }

    else
    {
      v62 = *a1;
      v85 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v31 - 1);
        v64 = *&v7[16 * v31];
        v87 = v7;
        v81 = *&v7[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v7[v63 + 32]), (v62 + 16 * v81), v82);
        if (v86)
        {
          break;
        }

        if (v81 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v65 = v87;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v66 = *(v65 + 2);
        if (v31 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v31] = __dsta;
        *&v65[16 * v31 + 8] = v81;
        v67 = v66 - v31;
        if (v66 < v31)
        {
          BUG();
        }

        v31 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v7 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v85;
        if (v66 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v83[2] = 0;
      v83;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v89 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v82 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for MLObjectDetector.ObjectAnnotation);
      *(v4 + 16) = v2 / 2;
      v93 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v93 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v92 = v5;
      v6 = *a1;
      v83 = *a1 + 160;
      v85 = *a1 - 56;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v94 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 56 * v10 + 48);
          v12 = 56 * v8;
          v13 = *(v6 + 56 * v8 + 48);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v14 = (v12 + v83);
            v15 = v11;
            while (1)
            {
              v16 = v15;
              v15 = *v14;
              if (v11 > v13 == *v14 <= v16)
              {
                break;
              }

              ++v10;
              v14 += 7;
              if (v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v11 > v13)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v17 = v85 + 56 * v10;
              v18 = v6 + v12;
              v19 = v10;
              v20 = v8;
              do
              {
                if (v20 != --v19)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v21 = *v18;
                  v22 = *(v18 + 48);
                  v23 = *(v18 + 16);
                  v24 = *(v18 + 32);
                  v25 = *(v17 + 48);
                  v26 = *(v17 + 16);
                  v27 = *(v17 + 32);
                  *v18 = *v17;
                  *(v18 + 48) = v25;
                  *(v18 + 32) = v27;
                  *(v18 + 16) = v26;
                  *v17 = v21;
                  *(v17 + 16) = v23;
                  *(v17 + 32) = v24;
                  *(v17 + 48) = v22;
                }

                ++v20;
                v17 -= 56;
                v18 += 56;
              }

              while (v20 < v19);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v82)
          {
            v28 = v82 + v8;
            if (__OFADD__(v82, v8))
            {
              BUG();
            }

            if (v28 >= v9)
            {
              v28 = v9;
            }

            if (v28 < v8)
            {
              BUG();
            }

            if (v10 != v28)
            {
              v29 = v6 + 56 * v10;
              do
              {
                v30 = *(v6 + 56 * v10 + 48);
                v31 = v8;
                v32 = v29;
                do
                {
                  if (v30 <= *(v32 - 8))
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  v33 = *v32;
                  v34 = *(v32 + 16);
                  v35 = *(v32 + 32);
                  v36 = *(v32 - 56 + 16);
                  v37 = *(v32 - 56 + 32);
                  *v32 = *(v32 - 56);
                  *(v32 + 16) = v36;
                  *(v32 + 32) = v37;
                  *(v32 + 48) = *(v32 - 56 + 48);
                  *(v32 - 56) = v33;
                  *(v32 - 40) = v34;
                  *(v32 - 24) = v35;
                  *(v32 - 8) = v30;
                  ++v31;
                  v32 -= 56;
                }

                while (v10 != v31);
                ++v10;
                v29 += 56;
              }

              while (v10 != v28);
              v10 = v28;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v38 = v7;
        v86 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v38;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
        }

        v39 = *(v7 + 2);
        v40 = v39 + 1;
        v6 = v94;
        if (*(v7 + 3) >> 1 <= v39)
        {
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v39 + 1, 1, v7);
          v6 = v94;
          v7 = v71;
        }

        *(v7 + 2) = v40;
        v41 = 16 * v39;
        *&v7[v41 + 32] = v8;
        *&v7[v41 + 40] = v86;
        if (v39)
        {
          break;
        }

        v40 = 1;
LABEL_80:
        v9 = v89;
        v8 = v86;
        if (v86 >= v89)
        {
          goto LABEL_84;
        }
      }

      v42 = v7 + 32;
      v96 = v7;
      v81 = v7 + 32;
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          v48 = 16 * v40;
          v49 = *&v42[16 * v40 - 56];
          v45 = __OFSUB__(v49, *&v42[16 * v40 - 64]);
          v50 = v49 - *&v42[16 * v40 - 64];
          if (v45)
          {
            BUG();
          }

          v51 = *&v42[v48 - 40];
          v45 = __OFSUB__(v51, *&v42[v48 - 48]);
          v46 = v51 - *&v42[v48 - 48];
          v47 = v45;
          if (v45)
          {
            BUG();
          }

          v52 = *&v7[v48 + 8];
          v45 = __OFSUB__(v52, *&v7[16 * v40]);
          v53 = v52 - *&v7[16 * v40];
          if (v45)
          {
            BUG();
          }

          v45 = __OFADD__(v46, v53);
          v54 = v46 + v53;
          if (v45)
          {
            BUG();
          }

          if (v54 >= v50)
          {
            v63 = *&v42[16 * v43 + 8];
            v45 = __OFSUB__(v63, *&v42[16 * v43]);
            v64 = v63 - *&v42[16 * v43];
            if (v45)
            {
              BUG();
            }

            if (v46 < v64)
            {
LABEL_70:
              v43 = v40 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v40 != 3)
          {
            if (v40 < 2)
            {
              BUG();
            }

            v60 = *&v7[16 * v40 + 8];
            v45 = __OFSUB__(v60, *&v7[16 * v40]);
            v56 = v60 - *&v7[16 * v40];
            v57 = v45;
LABEL_64:
            if (v57)
            {
              BUG();
            }

            v61 = *&v42[16 * v43 + 8];
            v45 = __OFSUB__(v61, *&v42[16 * v43]);
            v62 = v61 - *&v42[16 * v43];
            if (v45)
            {
              BUG();
            }

            if (v62 < v56)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v44 = *(v7 + 5);
          v45 = __OFSUB__(v44, *(v7 + 4));
          v46 = v44 - *(v7 + 4);
          v47 = v45;
        }

        if (v47)
        {
          BUG();
        }

        v55 = *&v7[16 * v40 + 8];
        v45 = __OFSUB__(v55, *&v7[16 * v40]);
        v56 = v55 - *&v7[16 * v40];
        v57 = v45;
        if (v45)
        {
          BUG();
        }

        v58 = *&v42[16 * v43 + 8];
        v45 = __OFSUB__(v58, *&v42[16 * v43]);
        v59 = v58 - *&v42[16 * v43];
        if (v45)
        {
          BUG();
        }

        if (__OFADD__(v59, v56))
        {
          BUG();
        }

        if (v59 + v56 < v46)
        {
          goto LABEL_64;
        }

        if (v46 < v59)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v43 - 1 >= v40)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v65 = 16 * (v43 - 1);
        v90 = v43;
        v66 = *&v42[v65];
        v67 = *&v42[16 * v43 + 8];
        __dst = &v42[16 * v43];
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 56 * v66), (v6 + 56 * *__dst), (v6 + 56 * v67), v92);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v67 < v66)
        {
          BUG();
        }

        v68 = &v42[v65];
        v69 = *(v96 + 16);
        if (v90 > v69)
        {
          BUG();
        }

        *v68 = v66;
        *(v68 + 1) = v67;
        if (v90 >= v69)
        {
          BUG();
        }

        v40 = v69 - 1;
        memmove(__dst, __dst + 16, 16 * (v69 - 1 - v90));
        v7 = v96;
        *(v96 + 16) = v69 - 1;
        v70 = v69 <= 2;
        v6 = v94;
        v42 = v81;
        if (v70)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v92 = &_swiftEmptyArrayStorage[4];
    v40 = _swiftEmptyArrayStorage[2];
    v93 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v40 < 2)
    {
LABEL_98:
      v7;
      v93[2] = 0;
      v93;
    }

    else
    {
      v72 = *a1;
      v95 = *a1;
      while (1)
      {
        if (!v72)
        {
          BUG();
        }

        v73 = 16 * (v40 - 1);
        v74 = *&v7[16 * v40];
        v96 = v7;
        v91 = *&v7[v73 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v72 + 56 * v74), (v72 + 56 * *&v7[v73 + 32]), (v72 + 56 * v91), v92);
        if (v1)
        {
          break;
        }

        if (v91 < v74)
        {
          BUG();
        }

        __dsta = v74;
        if (swift_isUniquelyReferenced_nonNull_native(v96))
        {
          v75 = v96;
        }

        else
        {
          v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
        }

        v76 = *(v75 + 2);
        if (v40 - 2 >= v76)
        {
          BUG();
        }

        *&v75[16 * v40] = __dsta;
        *&v75[16 * v40 + 8] = v91;
        v77 = v76 - v40;
        if (v76 < v40)
        {
          BUG();
        }

        v40 = v76 - 1;
        v78 = &v75[v73 + 32];
        v79 = &v75[v73 + 48];
        v80 = v75;
        memmove(v78, v79, 16 * v77);
        v7 = v80;
        *(v80 + 2) = v76 - 1;
        v72 = v95;
        if (v76 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v96;
      v93[2] = 0;
      v93;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v80 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v73 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for Interaction);
      *(v4 + 16) = v2 / 2;
      v84 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v84 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v83 = v5;
      v6 = *a1;
      v74 = *a1 + 40;
      v76 = *a1 - 16;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v85 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 16 * v10 + 8);
          v12 = 16 * v8;
          v13 = *(v6 + 16 * v8 + 8);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v14 = (v12 + v74);
            v15 = v11;
            while (1)
            {
              v16 = v15;
              v15 = *v14;
              if (v13 > v11 == v16 <= *v14)
              {
                break;
              }

              ++v10;
              v14 += 2;
              if (v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v13 > v11)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v17 = v76 + 16 * v10;
              v18 = (v6 + v12);
              v19 = v10;
              v20 = v8;
              do
              {
                if (v20 != --v19)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v21 = *v18;
                  v22 = v18[1];
                  *v18 = *v17;
                  *v17 = v21;
                  *(v17 + 8) = v22;
                }

                ++v20;
                v17 -= 16;
                v18 += 2;
              }

              while (v20 < v19);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v73)
          {
            v23 = v73 + v8;
            if (__OFADD__(v73, v8))
            {
              BUG();
            }

            if (v23 >= v9)
            {
              v23 = v9;
            }

            if (v23 < v8)
            {
              BUG();
            }

            if (v10 != v23)
            {
              v24 = (v6 + 16 * v10);
              do
              {
                v25 = *(v6 + 16 * v10 + 8);
                v26 = v8;
                v27 = v24;
                do
                {
                  if (*(v27 - 1) <= v25)
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  v28 = *v27;
                  *v27 = *(v27 - 1);
                  *(v27 - 2) = v28;
                  *(v27 - 1) = v25;
                  ++v26;
                  v27 -= 2;
                }

                while (v10 != v26);
                ++v10;
                v24 += 2;
              }

              while (v10 != v23);
              v10 = v23;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v29 = v7;
        v77 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v29;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v7 + 2);
        v31 = v30 + 1;
        v6 = v85;
        if (*(v7 + 3) >> 1 <= v30)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v30 + 1, 1, v7);
          v6 = v85;
          v7 = v62;
        }

        *(v7 + 2) = v31;
        v32 = 16 * v30;
        *&v7[v32 + 32] = v8;
        *&v7[v32 + 40] = v77;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v9 = v80;
        v8 = v77;
        if (v77 >= v80)
        {
          goto LABEL_84;
        }
      }

      v33 = v7 + 32;
      v87 = v7;
      v72 = v7 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v7[v39 + 8];
          v36 = __OFSUB__(v43, *&v7[16 * v31]);
          v44 = v43 - *&v7[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v7[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v7[16 * v31]);
            v47 = v51 - *&v7[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v7 + 5);
          v36 = __OFSUB__(v35, *(v7 + 4));
          v37 = v35 - *(v7 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v7[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v7[16 * v31]);
        v47 = v46 - *&v7[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v81 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 16 * v57), (v6 + 16 * *__dst), (v6 + 16 * v58), v83);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v81 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v81 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v81));
        v7 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v6 = v85;
        v33 = v72;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v83 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v84 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v7;
      v84[2] = 0;
      v84;
    }

    else
    {
      v63 = *a1;
      v86 = *a1;
      while (1)
      {
        if (!v63)
        {
          BUG();
        }

        v64 = 16 * (v31 - 1);
        v65 = *&v7[16 * v31];
        v87 = v7;
        v82 = *&v7[v64 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v63 + 16 * v65), (v63 + 16 * *&v7[v64 + 32]), (v63 + 16 * v82), v83);
        if (v1)
        {
          break;
        }

        if (v82 < v65)
        {
          BUG();
        }

        __dsta = v65;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v66 = v87;
        }

        else
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v67 = *(v66 + 2);
        if (v31 - 2 >= v67)
        {
          BUG();
        }

        *&v66[16 * v31] = __dsta;
        *&v66[16 * v31 + 8] = v82;
        v68 = v67 - v31;
        if (v67 < v31)
        {
          BUG();
        }

        v31 = v67 - 1;
        v69 = &v66[v64 + 32];
        v70 = &v66[v64 + 48];
        v71 = v66;
        memmove(v69, v70, 16 * v68);
        v7 = v71;
        *(v71 + 2) = v67 - 1;
        v63 = v86;
        if (v67 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v84[2] = 0;
      v84;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v80 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v73 = v3;
    v87 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Double));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v84 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v84 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v83 = v6;
      v7 = *a1;
      v74 = *a1 + 32;
      v77 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v85 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v74);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 < v14 == *v15 >= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 < v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = v77 + 16 * v11;
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  v23 = v19[1];
                  *v19 = *v18;
                  *v18 = v22;
                  *(v18 + 8) = v23;
                }

                ++v21;
                v18 -= 16;
                v19 += 2;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v73)
          {
            v24 = v73 + v9;
            if (__OFADD__(v73, v9))
            {
              BUG();
            }

            if (v24 >= v10)
            {
              v24 = v10;
            }

            if (v24 < v9)
            {
              BUG();
            }

            if (v11 != v24)
            {
              v25 = v77 + 16 * v11;
              do
              {
                v26 = *(v7 + 16 * v11);
                v27 = v9;
                v28 = v25;
                do
                {
                  if (v26 >= *v28)
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v29 = *(v28 + 24);
                  *(v28 + 16) = *v28;
                  *v28 = v26;
                  *(v28 + 8) = v29;
                  v28 -= 16;
                  ++v27;
                }

                while (v11 != v27);
                ++v11;
                v25 += 16;
              }

              while (v11 != v24);
              v11 = v24;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v30 = v8;
        v76 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v30;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v31 = *(v8 + 2);
        v32 = v31 + 1;
        v7 = v85;
        if (*(v8 + 3) >> 1 <= v31)
        {
          v7 = v85;
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v31 + 1, 1, v8);
        }

        *(v8 + 2) = v32;
        v33 = 16 * v31;
        *&v8[v33 + 32] = v9;
        *&v8[v33 + 40] = v76;
        if (v31)
        {
          break;
        }

        v32 = 1;
LABEL_80:
        v10 = v80;
        v9 = v76;
        if (v76 >= v80)
        {
          goto LABEL_84;
        }
      }

      v34 = v8 + 32;
      v88 = v8;
      v72 = v8 + 32;
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = 16 * v32;
          v41 = *&v34[16 * v32 - 56];
          v37 = __OFSUB__(v41, *&v34[16 * v32 - 64]);
          v42 = v41 - *&v34[16 * v32 - 64];
          if (v37)
          {
            BUG();
          }

          v43 = *&v34[v40 - 40];
          v37 = __OFSUB__(v43, *&v34[v40 - 48]);
          v38 = v43 - *&v34[v40 - 48];
          v39 = v37;
          if (v37)
          {
            BUG();
          }

          v44 = *&v8[v40 + 8];
          v37 = __OFSUB__(v44, *&v8[16 * v32]);
          v45 = v44 - *&v8[16 * v32];
          if (v37)
          {
            BUG();
          }

          v37 = __OFADD__(v38, v45);
          v46 = v38 + v45;
          if (v37)
          {
            BUG();
          }

          if (v46 >= v42)
          {
            v55 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v55, *&v34[16 * v35]);
            v56 = v55 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v38 < v56)
            {
LABEL_70:
              v35 = v32 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v32 != 3)
          {
            if (v32 < 2)
            {
              BUG();
            }

            v52 = *&v8[16 * v32 + 8];
            v37 = __OFSUB__(v52, *&v8[16 * v32]);
            v48 = v52 - *&v8[16 * v32];
            v49 = v37;
LABEL_64:
            if (v49)
            {
              BUG();
            }

            v53 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v53, *&v34[16 * v35]);
            v54 = v53 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v54 < v48)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v36 = *(v8 + 5);
          v37 = __OFSUB__(v36, *(v8 + 4));
          v38 = v36 - *(v8 + 4);
          v39 = v37;
        }

        if (v39)
        {
          BUG();
        }

        v47 = *&v8[16 * v32 + 8];
        v37 = __OFSUB__(v47, *&v8[16 * v32]);
        v48 = v47 - *&v8[16 * v32];
        v49 = v37;
        if (v37)
        {
          BUG();
        }

        v50 = *&v34[16 * v35 + 8];
        v37 = __OFSUB__(v50, *&v34[16 * v35]);
        v51 = v50 - *&v34[16 * v35];
        if (v37)
        {
          BUG();
        }

        if (__OFADD__(v51, v48))
        {
          BUG();
        }

        if (v51 + v48 < v38)
        {
          goto LABEL_64;
        }

        if (v38 < v51)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v35 - 1 >= v32)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v57 = 16 * (v35 - 1);
        v81 = v35;
        v58 = *&v34[v57];
        v59 = *&v34[16 * v35 + 8];
        __dst = &v34[16 * v35];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v58), (v7 + 16 * *__dst), (v7 + 16 * v59), v83);
        if (v87)
        {
          goto LABEL_96;
        }

        if (v59 < v58)
        {
          BUG();
        }

        v60 = &v34[v57];
        v61 = *(v88 + 16);
        if (v81 > v61)
        {
          BUG();
        }

        *v60 = v58;
        *(v60 + 1) = v59;
        if (v81 >= v61)
        {
          BUG();
        }

        v32 = v61 - 1;
        memmove(__dst, __dst + 16, 16 * (v61 - 1 - v81));
        v8 = v88;
        *(v88 + 16) = v61 - 1;
        v62 = v61 <= 2;
        v7 = v85;
        v34 = v72;
        if (v62)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v83 = &_swiftEmptyArrayStorage[4];
    v32 = _swiftEmptyArrayStorage[2];
    v84 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v32 < 2)
    {
LABEL_98:
      v8;
      v84[2] = 0;
      v84;
    }

    else
    {
      v63 = *a1;
      v86 = *a1;
      while (1)
      {
        if (!v63)
        {
          BUG();
        }

        v64 = 16 * (v32 - 1);
        v65 = *&v8[16 * v32];
        v88 = v8;
        v82 = *&v8[v64 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v63 + 16 * v65), (v63 + 16 * *&v8[v64 + 32]), (v63 + 16 * v82), v83);
        if (v87)
        {
          break;
        }

        if (v82 < v65)
        {
          BUG();
        }

        __dsta = v65;
        if (swift_isUniquelyReferenced_nonNull_native(v88))
        {
          v66 = v88;
        }

        else
        {
          v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v88);
        }

        v67 = *(v66 + 2);
        if (v32 - 2 >= v67)
        {
          BUG();
        }

        *&v66[16 * v32] = __dsta;
        *&v66[16 * v32 + 8] = v82;
        v68 = v67 - v32;
        if (v67 < v32)
        {
          BUG();
        }

        v32 = v67 - 1;
        v69 = &v66[v64 + 32];
        v70 = &v66[v64 + 48];
        v71 = v66;
        memmove(v69, v70, 16 * v68);
        v8 = v71;
        *(v71 + 2) = v67 - 1;
        v63 = v86;
        if (v67 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v88;
      v84[2] = 0;
      v84;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v81 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v74 = v3;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Double));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v85 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v85 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v84 = v6;
      v7 = *a1;
      v75 = *a1 + 40;
      v77 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v86 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11 + 8);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9 + 8);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v75);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 > v14 == *v15 <= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 > v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = v77 + 16 * v11;
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  v23 = v19[1];
                  *v19 = *v18;
                  *v18 = v22;
                  *(v18 + 8) = v23;
                }

                ++v21;
                v18 -= 16;
                v19 += 2;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v74)
          {
            v24 = v74 + v9;
            if (__OFADD__(v74, v9))
            {
              BUG();
            }

            if (v24 >= v10)
            {
              v24 = v10;
            }

            if (v24 < v9)
            {
              BUG();
            }

            if (v11 != v24)
            {
              v25 = (v7 + 16 * v11);
              do
              {
                v26 = *(v7 + 16 * v11 + 8);
                v27 = v9;
                v28 = v25;
                do
                {
                  if (v26 <= *(v28 - 1))
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v29 = *v28;
                  *v28 = *(v28 - 1);
                  *(v28 - 2) = v29;
                  *(v28 - 1) = v26;
                  ++v27;
                  v28 -= 2;
                }

                while (v11 != v27);
                ++v11;
                v25 += 2;
              }

              while (v11 != v24);
              v11 = v24;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v30 = v8;
        v78 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v30;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v31 = *(v8 + 2);
        v32 = v31 + 1;
        v7 = v86;
        if (*(v8 + 3) >> 1 <= v31)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v31 + 1, 1, v8);
          v7 = v86;
          v8 = v63;
        }

        *(v8 + 2) = v32;
        v33 = 16 * v31;
        *&v8[v33 + 32] = v9;
        *&v8[v33 + 40] = v78;
        if (v31)
        {
          break;
        }

        v32 = 1;
LABEL_80:
        v10 = v81;
        v9 = v78;
        if (v78 >= v81)
        {
          goto LABEL_84;
        }
      }

      v34 = v8 + 32;
      v88 = v8;
      v73 = v8 + 32;
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = 16 * v32;
          v41 = *&v34[16 * v32 - 56];
          v37 = __OFSUB__(v41, *&v34[16 * v32 - 64]);
          v42 = v41 - *&v34[16 * v32 - 64];
          if (v37)
          {
            BUG();
          }

          v43 = *&v34[v40 - 40];
          v37 = __OFSUB__(v43, *&v34[v40 - 48]);
          v38 = v43 - *&v34[v40 - 48];
          v39 = v37;
          if (v37)
          {
            BUG();
          }

          v44 = *&v8[v40 + 8];
          v37 = __OFSUB__(v44, *&v8[16 * v32]);
          v45 = v44 - *&v8[16 * v32];
          if (v37)
          {
            BUG();
          }

          v37 = __OFADD__(v38, v45);
          v46 = v38 + v45;
          if (v37)
          {
            BUG();
          }

          if (v46 >= v42)
          {
            v55 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v55, *&v34[16 * v35]);
            v56 = v55 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v38 < v56)
            {
LABEL_70:
              v35 = v32 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v32 != 3)
          {
            if (v32 < 2)
            {
              BUG();
            }

            v52 = *&v8[16 * v32 + 8];
            v37 = __OFSUB__(v52, *&v8[16 * v32]);
            v48 = v52 - *&v8[16 * v32];
            v49 = v37;
LABEL_64:
            if (v49)
            {
              BUG();
            }

            v53 = *&v34[16 * v35 + 8];
            v37 = __OFSUB__(v53, *&v34[16 * v35]);
            v54 = v53 - *&v34[16 * v35];
            if (v37)
            {
              BUG();
            }

            if (v54 < v48)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v36 = *(v8 + 5);
          v37 = __OFSUB__(v36, *(v8 + 4));
          v38 = v36 - *(v8 + 4);
          v39 = v37;
        }

        if (v39)
        {
          BUG();
        }

        v47 = *&v8[16 * v32 + 8];
        v37 = __OFSUB__(v47, *&v8[16 * v32]);
        v48 = v47 - *&v8[16 * v32];
        v49 = v37;
        if (v37)
        {
          BUG();
        }

        v50 = *&v34[16 * v35 + 8];
        v37 = __OFSUB__(v50, *&v34[16 * v35]);
        v51 = v50 - *&v34[16 * v35];
        if (v37)
        {
          BUG();
        }

        if (__OFADD__(v51, v48))
        {
          BUG();
        }

        if (v51 + v48 < v38)
        {
          goto LABEL_64;
        }

        if (v38 < v51)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v35 - 1 >= v32)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v57 = 16 * (v35 - 1);
        v82 = v35;
        v58 = *&v34[v57];
        v59 = *&v34[16 * v35 + 8];
        __dst = &v34[16 * v35];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v58), (v7 + 16 * *__dst), (v7 + 16 * v59), v84);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v59 < v58)
        {
          BUG();
        }

        v60 = &v34[v57];
        v61 = *(v88 + 16);
        if (v82 > v61)
        {
          BUG();
        }

        *v60 = v58;
        *(v60 + 1) = v59;
        if (v82 >= v61)
        {
          BUG();
        }

        v32 = v61 - 1;
        memmove(__dst, __dst + 16, 16 * (v61 - 1 - v82));
        v8 = v88;
        *(v88 + 16) = v61 - 1;
        v62 = v61 <= 2;
        v7 = v86;
        v34 = v73;
        if (v62)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v84 = &_swiftEmptyArrayStorage[4];
    v32 = _swiftEmptyArrayStorage[2];
    v85 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v32 < 2)
    {
LABEL_98:
      v8;
      v85[2] = 0;
      v85;
    }

    else
    {
      v64 = *a1;
      v87 = *a1;
      while (1)
      {
        if (!v64)
        {
          BUG();
        }

        v65 = 16 * (v32 - 1);
        v66 = *&v8[16 * v32];
        v88 = v8;
        v83 = *&v8[v65 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v64 + 16 * v66), (v64 + 16 * *&v8[v65 + 32]), (v64 + 16 * v83), v84);
        if (v1)
        {
          break;
        }

        if (v83 < v66)
        {
          BUG();
        }

        __dsta = v66;
        if (swift_isUniquelyReferenced_nonNull_native(v88))
        {
          v67 = v88;
        }

        else
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew()(v88);
        }

        v68 = *(v67 + 2);
        if (v32 - 2 >= v68)
        {
          BUG();
        }

        *&v67[16 * v32] = __dsta;
        *&v67[16 * v32 + 8] = v83;
        v69 = v68 - v32;
        if (v68 < v32)
        {
          BUG();
        }

        v32 = v68 - 1;
        v70 = &v67[v65 + 32];
        v71 = &v67[v65 + 48];
        v72 = v67;
        memmove(v70, v71, 16 * v69);
        v8 = v72;
        *(v72 + 2) = v68 - 1;
        v64 = v87;
        if (v68 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v88;
      v85[2] = 0;
      v85;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v79 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v86 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Int));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v83 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v83 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v82 = v6;
      v7 = *a1;
      v73 = *a1 + 40;
      v75 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v84 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11 + 8);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9 + 8);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v73);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 < v14 == *v15 >= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 < v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = (v75 + 16 * v11);
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  *v19 = *v18;
                  *v18 = v22;
                }

                ++v21;
                --v18;
                ++v19;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v72)
          {
            v23 = v72 + v9;
            if (__OFADD__(v72, v9))
            {
              BUG();
            }

            if (v23 >= v10)
            {
              v23 = v10;
            }

            if (v23 < v9)
            {
              BUG();
            }

            if (v11 != v23)
            {
              v24 = (v7 + 16 * v11);
              do
              {
                v25 = *(v7 + 16 * v11 + 8);
                v26 = v9;
                v27 = v24;
                do
                {
                  if (v25 >= *(v27 - 1))
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v28 = *v27;
                  *v27 = *(v27 - 1);
                  *(v27 - 2) = v28;
                  *(v27 - 1) = v25;
                  ++v26;
                  v27 -= 2;
                }

                while (v11 != v26);
                ++v11;
                v24 += 2;
              }

              while (v11 != v23);
              v11 = v23;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v29 = v8;
        v76 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v29;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v8 + 2);
        v31 = v30 + 1;
        v7 = v84;
        if (*(v8 + 3) >> 1 <= v30)
        {
          v7 = v84;
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v30 + 1, 1, v8);
        }

        *(v8 + 2) = v31;
        v32 = 16 * v30;
        *&v8[v32 + 32] = v9;
        *&v8[v32 + 40] = v76;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v10 = v79;
        v9 = v76;
        if (v76 >= v79)
        {
          goto LABEL_84;
        }
      }

      v33 = v8 + 32;
      v87 = v8;
      v71 = v8 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v8[v39 + 8];
          v36 = __OFSUB__(v43, *&v8[16 * v31]);
          v44 = v43 - *&v8[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v8[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v8[16 * v31]);
            v47 = v51 - *&v8[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v8 + 5);
          v36 = __OFSUB__(v35, *(v8 + 4));
          v37 = v35 - *(v8 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v8[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v8[16 * v31]);
        v47 = v46 - *&v8[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v80 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v57), (v7 + 16 * *__dst), (v7 + 16 * v58), v82);
        if (v86)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v80 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v80 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v80));
        v8 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v7 = v84;
        v33 = v71;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v82 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v83 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v8;
      v83[2] = 0;
      v83;
    }

    else
    {
      v62 = *a1;
      v85 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v31 - 1);
        v64 = *&v8[16 * v31];
        v87 = v8;
        v81 = *&v8[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v8[v63 + 32]), (v62 + 16 * v81), v82);
        if (v86)
        {
          break;
        }

        if (v81 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v65 = v87;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v66 = *(v65 + 2);
        if (v31 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v31] = __dsta;
        *&v65[16 * v31 + 8] = v81;
        v67 = v66 - v31;
        if (v66 < v31)
        {
          BUG();
        }

        v31 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v8 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v85;
        if (v66 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v83[2] = 0;
      v83;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v79 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v86 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Int, Int));
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v83 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v83 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v82 = v6;
      v7 = *a1;
      v73 = *a1 + 32;
      v76 = *a1 - 16;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v84 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = *(v7 + 16 * v11);
          v13 = 16 * v9;
          v14 = *(v7 + 16 * v9);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v15 = (v13 + v73);
            v16 = v12;
            while (1)
            {
              v17 = v16;
              v16 = *v15;
              if (v12 < v14 == *v15 >= v17)
              {
                break;
              }

              ++v11;
              v15 += 2;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v12 < v14)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v18 = (v76 + 16 * v11);
              v19 = (v7 + v13);
              v20 = v11;
              v21 = v9;
              do
              {
                if (v21 != --v20)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v22 = *v19;
                  *v19 = *v18;
                  *v18 = v22;
                }

                ++v21;
                --v18;
                ++v19;
              }

              while (v21 < v20);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v72)
          {
            v23 = v72 + v9;
            if (__OFADD__(v72, v9))
            {
              BUG();
            }

            if (v23 >= v10)
            {
              v23 = v10;
            }

            if (v23 < v9)
            {
              BUG();
            }

            if (v11 != v23)
            {
              v24 = v76 + 16 * v11;
              do
              {
                v25 = *(v7 + 16 * v11);
                v26 = v9;
                v27 = v24;
                do
                {
                  if (v25 >= *v27)
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  v28 = *(v27 + 24);
                  *(v27 + 16) = *v27;
                  *v27 = v25;
                  *(v27 + 8) = v28;
                  v27 -= 16;
                  ++v26;
                }

                while (v11 != v26);
                ++v11;
                v24 += 16;
              }

              while (v11 != v23);
              v11 = v23;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v29 = v8;
        v75 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v29;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v30 = *(v8 + 2);
        v31 = v30 + 1;
        v7 = v84;
        if (*(v8 + 3) >> 1 <= v30)
        {
          v7 = v84;
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v30 + 1, 1, v8);
        }

        *(v8 + 2) = v31;
        v32 = 16 * v30;
        *&v8[v32 + 32] = v9;
        *&v8[v32 + 40] = v75;
        if (v30)
        {
          break;
        }

        v31 = 1;
LABEL_80:
        v10 = v79;
        v9 = v75;
        if (v75 >= v79)
        {
          goto LABEL_84;
        }
      }

      v33 = v8 + 32;
      v87 = v8;
      v71 = v8 + 32;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          v39 = 16 * v31;
          v40 = *&v33[16 * v31 - 56];
          v36 = __OFSUB__(v40, *&v33[16 * v31 - 64]);
          v41 = v40 - *&v33[16 * v31 - 64];
          if (v36)
          {
            BUG();
          }

          v42 = *&v33[v39 - 40];
          v36 = __OFSUB__(v42, *&v33[v39 - 48]);
          v37 = v42 - *&v33[v39 - 48];
          v38 = v36;
          if (v36)
          {
            BUG();
          }

          v43 = *&v8[v39 + 8];
          v36 = __OFSUB__(v43, *&v8[16 * v31]);
          v44 = v43 - *&v8[16 * v31];
          if (v36)
          {
            BUG();
          }

          v36 = __OFADD__(v37, v44);
          v45 = v37 + v44;
          if (v36)
          {
            BUG();
          }

          if (v45 >= v41)
          {
            v54 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v54, *&v33[16 * v34]);
            v55 = v54 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v37 < v55)
            {
LABEL_70:
              v34 = v31 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v31 != 3)
          {
            if (v31 < 2)
            {
              BUG();
            }

            v51 = *&v8[16 * v31 + 8];
            v36 = __OFSUB__(v51, *&v8[16 * v31]);
            v47 = v51 - *&v8[16 * v31];
            v48 = v36;
LABEL_64:
            if (v48)
            {
              BUG();
            }

            v52 = *&v33[16 * v34 + 8];
            v36 = __OFSUB__(v52, *&v33[16 * v34]);
            v53 = v52 - *&v33[16 * v34];
            if (v36)
            {
              BUG();
            }

            if (v53 < v47)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v35 = *(v8 + 5);
          v36 = __OFSUB__(v35, *(v8 + 4));
          v37 = v35 - *(v8 + 4);
          v38 = v36;
        }

        if (v38)
        {
          BUG();
        }

        v46 = *&v8[16 * v31 + 8];
        v36 = __OFSUB__(v46, *&v8[16 * v31]);
        v47 = v46 - *&v8[16 * v31];
        v48 = v36;
        if (v36)
        {
          BUG();
        }

        v49 = *&v33[16 * v34 + 8];
        v36 = __OFSUB__(v49, *&v33[16 * v34]);
        v50 = v49 - *&v33[16 * v34];
        if (v36)
        {
          BUG();
        }

        if (__OFADD__(v50, v47))
        {
          BUG();
        }

        if (v50 + v47 < v37)
        {
          goto LABEL_64;
        }

        if (v37 < v50)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v34 - 1 >= v31)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v56 = 16 * (v34 - 1);
        v80 = v34;
        v57 = *&v33[v56];
        v58 = *&v33[16 * v34 + 8];
        __dst = &v33[16 * v34];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v57), (v7 + 16 * *__dst), (v7 + 16 * v58), v82);
        if (v86)
        {
          goto LABEL_96;
        }

        if (v58 < v57)
        {
          BUG();
        }

        v59 = &v33[v56];
        v60 = *(v87 + 16);
        if (v80 > v60)
        {
          BUG();
        }

        *v59 = v57;
        *(v59 + 1) = v58;
        if (v80 >= v60)
        {
          BUG();
        }

        v31 = v60 - 1;
        memmove(__dst, __dst + 16, 16 * (v60 - 1 - v80));
        v8 = v87;
        *(v87 + 16) = v60 - 1;
        v61 = v60 <= 2;
        v7 = v84;
        v33 = v71;
        if (v61)
        {
          goto LABEL_80;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v82 = &_swiftEmptyArrayStorage[4];
    v31 = _swiftEmptyArrayStorage[2];
    v83 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v31 < 2)
    {
LABEL_98:
      v8;
      v83[2] = 0;
      v83;
    }

    else
    {
      v62 = *a1;
      v85 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v31 - 1);
        v64 = *&v8[16 * v31];
        v87 = v8;
        v81 = *&v8[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v8[v63 + 32]), (v62 + 16 * v81), v82);
        if (v86)
        {
          break;
        }

        if (v81 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v87))
        {
          v65 = v87;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v87);
        }

        v66 = *(v65 + 2);
        if (v31 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v31] = __dsta;
        *&v65[16 * v31 + 8] = v81;
        v67 = v66 - v31;
        if (v66 < v31)
        {
          BUG();
        }

        v31 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v8 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v85;
        if (v66 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v87;
      v83[2] = 0;
      v83;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    v84 = v3;
    if (v2 < -1)
    {
      BUG();
    }

    v97 = v2;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for MLRecommender.Identifier);
      *(v4 + 16) = v2 / 2;
      v89 = v4;
      v5 = (v4 + 32);
LABEL_10:
      v88 = v5;
      v6 = *a1;
      v85 = *a1 + 16;
      v87 = *a1 - 24;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v97;
      v98 = *a1;
      while (1)
      {
        v109 = v7;
        v10 = v8;
        v11 = v8 + 1;
        v99 = v8;
        if (v8 + 1 >= v9)
        {
          goto LABEL_51;
        }

        v12 = *(v6 + 24 * v11);
        v13 = *(v6 + 24 * v11 + 16);
        v14 = 24 * v8;
        v15 = *(v6 + 24 * v8);
        v16 = *(v6 + 24 * v8 + 16);
        if (v13)
        {
          break;
        }

        if (v16)
        {
LABEL_17:
          v17 = (v13 ^ 1) & v16;
          goto LABEL_18;
        }

        v19 = *(v6 + 24 * v11 + 8);
        v20 = *(v6 + v14 + 8);
        if (!(v15 ^ v12 | v20 ^ v19))
        {
          goto LABEL_21;
        }

        v107 = v8 + 1;
        v103 = *(v6 + v14 + 8);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v12, v19, v15, v20, 0) & 1) == 0)
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)(v12, v19, v15, v103, 1);
          v6 = v98;
          v11 = v107;
          v10 = v99;
LABEL_18:
          v18 = v10 + 2;
          if (v10 + 2 >= v97)
          {
LABEL_42:
            v11 = v18;
            if (v17)
            {
              goto LABEL_43;
            }

            goto LABEL_51;
          }

          goto LABEL_23;
        }

        v18 = v99 + 2;
        v11 = v107;
        if (v99 + 2 >= v97)
        {
          v11 = v99 + 2;
          v6 = v98;
          v10 = v99;
          goto LABEL_51;
        }

        v17 = 0;
        v6 = v98;
LABEL_23:
        v21 = (v85 + 24 * v18);
        v22 = v18;
        v90 = v17;
        while (1)
        {
          v18 = v22;
          v23 = *(v21 - 2);
          v24 = *(v6 + 24 * v11);
          v25 = *(v6 + 24 * v11 + 16);
          if (*v21)
          {
            if ((v25 & 1) == 0)
            {
              goto LABEL_29;
            }

            if (v23 != v24)
            {
              v26 = v23 < v24;
              goto LABEL_30;
            }

            goto LABEL_34;
          }

          if (v25)
          {
LABEL_29:
            v26 = (*v21 ^ 1) & v25;
            goto LABEL_30;
          }

          v27 = *(v21 - 1);
          v28 = *(v6 + 24 * v11 + 8);
          if (v23 != v24 || v27 != v28)
          {
            break;
          }

LABEL_34:
          if (v17)
          {
            goto LABEL_120;
          }

LABEL_35:
          v22 = v18 + 1;
          v21 += 24;
          v11 = v18;
          if (v18 + 1 >= v97)
          {
            ++v18;
LABEL_41:
            v10 = v99;
            goto LABEL_42;
          }
        }

        v100 = v18;
        __dst = *(v6 + 24 * v11 + 8);
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v23, v27, v24, v28, 0) & 1) == 0)
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)(v23, v27, v24, __dst, 1);
          v6 = v98;
          v18 = v100;
          v17 = v90;
LABEL_30:
          if ((v17 ^ v26))
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        }

        v17 = v90;
        v6 = v98;
        v18 = v100;
        if ((v90 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_120:
        v10 = v99;
LABEL_43:
        if (v18 < v10)
        {
          BUG();
        }

        if (v18 > v10)
        {
          v29 = v87 + 24 * v18;
          v30 = v6 + v14;
          v31 = v18;
          v32 = v10;
          do
          {
            if (v32 != --v31)
            {
              if (!v6)
              {
                BUG();
              }

              v33 = *(v30 + 16);
              v34 = *v30;
              v35 = *(v29 + 16);
              *v30 = *v29;
              *(v30 + 16) = v35;
              *v29 = v34;
              *(v29 + 16) = v33;
            }

            ++v32;
            v29 -= 24;
            v30 += 24;
          }

          while (v32 < v31);
        }

LABEL_50:
        v11 = v18;
LABEL_51:
        if (v11 >= v97)
        {
          goto LABEL_74;
        }

        v7 = v109;
        if (__OFSUB__(v11, v10))
        {
          BUG();
        }

        if (v11 - v10 < v84)
        {
          v36 = v84 + v10;
          if (__OFADD__(v84, v10))
          {
            BUG();
          }

          if (v36 >= v97)
          {
            v36 = v97;
          }

          if (v36 < v10)
          {
            BUG();
          }

          if (v11 != v36)
          {
            v37 = v6 + 24 * v11;
            v83 = v36;
            while (1)
            {
              v91 = v37;
              v105 = v11;
              while (1)
              {
                v38 = *v37;
                v39 = *(v37 - 24);
                v40 = *(v37 - 8);
                if (*(v37 + 16))
                {
                  if (((v38 < v39) & v40) == 0)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_68;
                }

                if ((v40 & 1) == 0)
                {
                  break;
                }

LABEL_68:
                if (!v6)
                {
                  BUG();
                }

                v43 = *(v37 + 16);
                v44 = *v37;
                *v37 = *(v37 - 24);
                *(v37 + 16) = *(v37 - 24 + 16);
                *(v37 - 24) = v44;
                *(v37 - 8) = v43;
                ++v10;
                v37 -= 24;
                if (v11 == v10)
                {
                  goto LABEL_72;
                }
              }

              v41 = *(v37 - 16);
              if (!(v39 ^ v38 | v41 ^ *(v37 + 8)))
              {
                goto LABEL_72;
              }

              __dsta = *(v37 + 8);
              v101 = *(v37 - 16);
              if ((_stringCompareWithSmolCheck(_:_:expecting:)(*v37, __dsta, v39, v41, 0) & 1) == 0)
              {
                v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v38, __dsta, v39, v101, 1);
                v6 = v98;
                v11 = v105;
                if ((v42 & 1) == 0)
                {
                  goto LABEL_72;
                }

                goto LABEL_68;
              }

              v6 = v98;
              v11 = v105;
LABEL_72:
              ++v11;
              v37 = v91 + 24;
              v10 = v99;
              if (v11 == v83)
              {
                v11 = v83;
LABEL_74:
                v7 = v109;
                break;
              }
            }
          }
        }

        if (v11 < v10)
        {
          BUG();
        }

        v106 = v11;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v45 = *(v7 + 2);
        v46 = v45 + 1;
        v6 = v98;
        v8 = v106;
        if (*(v7 + 3) >> 1 <= v45)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v45 + 1, 1, v7);
          v8 = v106;
          v6 = v98;
          v7 = v77;
        }

        *(v7 + 2) = v46;
        v47 = 16 * v45;
        *&v7[v47 + 32] = v99;
        *&v7[v47 + 40] = v8;
        if (v45)
        {
          v48 = v7 + 32;
          v110 = v7;
          v92 = v7 + 32;
          while (1)
          {
            v49 = v46 - 1;
            if (v46 >= 4)
            {
              v54 = 16 * v46;
              v55 = *&v48[16 * v46 - 56];
              v51 = __OFSUB__(v55, *&v48[16 * v46 - 64]);
              v56 = v55 - *&v48[16 * v46 - 64];
              if (v51)
              {
                BUG();
              }

              v57 = *&v48[v54 - 40];
              v51 = __OFSUB__(v57, *&v48[v54 - 48]);
              v52 = v57 - *&v48[v54 - 48];
              v53 = v51;
              if (v51)
              {
                BUG();
              }

              v58 = *&v7[v54 + 8];
              v51 = __OFSUB__(v58, *&v7[16 * v46]);
              v59 = v58 - *&v7[16 * v46];
              if (v51)
              {
                BUG();
              }

              v51 = __OFADD__(v52, v59);
              v60 = v52 + v59;
              if (v51)
              {
                BUG();
              }

              if (v60 >= v56)
              {
                v69 = *&v48[16 * v49 + 8];
                v51 = __OFSUB__(v69, *&v48[16 * v49]);
                v70 = v69 - *&v48[16 * v49];
                if (v51)
                {
                  BUG();
                }

                if (v52 < v70)
                {
LABEL_105:
                  v49 = v46 - 2;
                  goto LABEL_106;
                }

                goto LABEL_106;
              }
            }

            else
            {
              if (v46 != 3)
              {
                if (v46 < 2)
                {
                  BUG();
                }

                v66 = *&v7[16 * v46 + 8];
                v51 = __OFSUB__(v66, *&v7[16 * v46]);
                v62 = v66 - *&v7[16 * v46];
                v63 = v51;
LABEL_99:
                if (v63)
                {
                  BUG();
                }

                v67 = *&v48[16 * v49 + 8];
                v51 = __OFSUB__(v67, *&v48[16 * v49]);
                v68 = v67 - *&v48[16 * v49];
                if (v51)
                {
                  BUG();
                }

                if (v68 < v62)
                {
                  v7 = v110;
                  goto LABEL_115;
                }

                goto LABEL_106;
              }

              v50 = *(v7 + 5);
              v51 = __OFSUB__(v50, *(v7 + 4));
              v52 = v50 - *(v7 + 4);
              v53 = v51;
            }

            if (v53)
            {
              BUG();
            }

            v61 = *&v7[16 * v46 + 8];
            v51 = __OFSUB__(v61, *&v7[16 * v46]);
            v62 = v61 - *&v7[16 * v46];
            v63 = v51;
            if (v51)
            {
              BUG();
            }

            v64 = *&v48[16 * v49 + 8];
            v51 = __OFSUB__(v64, *&v48[16 * v49]);
            v65 = v64 - *&v48[16 * v49];
            if (v51)
            {
              BUG();
            }

            if (__OFADD__(v65, v62))
            {
              BUG();
            }

            if (v65 + v62 < v52)
            {
              goto LABEL_99;
            }

            if (v52 < v65)
            {
              goto LABEL_105;
            }

LABEL_106:
            if (v49 - 1 >= v46)
            {
              BUG();
            }

            if (!v6)
            {
              BUG();
            }

            v71 = 16 * (v49 - 1);
            v102 = v49;
            v72 = *&v48[v71];
            v73 = *&v48[16 * v49 + 8];
            __dstb = &v48[16 * v49];
            specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 24 * v72), (v6 + 24 * *__dstb), (v6 + 24 * v73), v88);
            if (v1)
            {
              goto LABEL_135;
            }

            if (v73 < v72)
            {
              BUG();
            }

            v74 = &v48[v71];
            v75 = *(v110 + 2);
            if (v102 > v75)
            {
              BUG();
            }

            *v74 = v72;
            *(v74 + 1) = v73;
            if (v102 >= v75)
            {
              BUG();
            }

            v46 = v75 - 1;
            memmove(__dstb, __dstb + 16, 16 * (v75 - 1 - v102));
            v7 = v110;
            *(v110 + 2) = v75 - 1;
            v76 = v75 <= 2;
            v6 = v98;
            v8 = v106;
            v48 = v92;
            if (v76)
            {
              goto LABEL_115;
            }
          }
        }

        v46 = 1;
LABEL_115:
        v9 = v97;
        if (v8 >= v97)
        {
          goto LABEL_124;
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v12 != v15)
      {
        v17 = v12 < v15;
        goto LABEL_18;
      }

LABEL_21:
      v18 = v8 + 2;
      if (v10 + 2 >= v97)
      {
        goto LABEL_50;
      }

      v17 = 0;
      goto LABEL_23;
    }

    if (v2 == 1)
    {
      v89 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
      goto LABEL_10;
    }

    v7 = _swiftEmptyArrayStorage;
    v88 = &_swiftEmptyArrayStorage[4];
    v46 = _swiftEmptyArrayStorage[2];
    v89 = _swiftEmptyArrayStorage;
LABEL_124:
    if (v46 < 2)
    {
LABEL_137:
      v7;
      v89[2] = 0;
      v89;
    }

    else
    {
      v78 = *a1;
      v108 = *a1;
      while (1)
      {
        v110 = v7;
        if (!v78)
        {
          BUG();
        }

        v79 = 16 * (v46 - 1);
        v80 = *&v7[v79 + 40];
        v104 = *&v7[16 * v46];
        specialized _merge<A>(low:mid:high:buffer:by:)((v78 + 24 * v104), (v78 + 24 * *&v7[v79 + 32]), (v78 + 24 * v80), v88);
        if (v1)
        {
          break;
        }

        if (v80 < v104)
        {
          BUG();
        }

        __dstc = v80;
        if (!swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        v81 = *(v110 + 2);
        if (v46 - 2 >= v81)
        {
          BUG();
        }

        *&v110[16 * v46] = v104;
        *&v110[16 * v46 + 8] = __dstc;
        v82 = v81 - v46;
        if (v81 < v46)
        {
          BUG();
        }

        v7 = v110;
        v46 = v81 - 1;
        memmove(&v110[v79 + 32], &v110[v79 + 48], 16 * v82);
        *(v110 + 2) = v81 - 1;
        v78 = v108;
        if (v81 <= 2)
        {
          goto LABEL_137;
        }
      }

LABEL_135:
      v110;
      v89[2] = 0;
      v89;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v77 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v67 = v3;
    if (v2 > 1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, &type metadata for Int);
      *(v4 + 16) = v2 / 2;
      v79 = v4;
      v5 = (v4 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v79 = _swiftEmptyArrayStorage;
      v5 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v78 = v5;
      v6 = *a1;
      v69 = *a1 - 8;
      v7 = _swiftEmptyArrayStorage;
      v8 = 0;
      v9 = v2;
      v80 = *a1;
      while (1)
      {
        v10 = v8 + 1;
        if (v8 + 1 < v9)
        {
          v11 = *(v6 + 8 * v8);
          v12 = *(v6 + 8 * v8 + 8);
          v10 = v8 + 2;
          if (v8 + 2 < v9)
          {
            v13 = *(v6 + 8 * v8 + 8);
            while (1)
            {
              v14 = v13;
              v13 = *(v6 + 8 * v10);
              if (v12 < v11 == v13 >= v14)
              {
                break;
              }

              if (++v10 >= v9)
              {
                v10 = v9;
                break;
              }
            }
          }

          if (v12 < v11)
          {
            if (v10 < v8)
            {
              BUG();
            }

            if (v10 > v8)
            {
              v15 = v10 - 1;
              v16 = v8;
              do
              {
                if (v16 != v15)
                {
                  if (!v6)
                  {
                    BUG();
                  }

                  v17 = *(v6 + 8 * v16);
                  *(v6 + 8 * v16) = *(v6 + 8 * v15);
                  *(v6 + 8 * v15) = v17;
                }

                v18 = ++v16 < v15--;
              }

              while (v18);
            }
          }
        }

        if (v10 < v9)
        {
          if (__OFSUB__(v10, v8))
          {
            BUG();
          }

          if (v10 - v8 < v67)
          {
            v19 = v67 + v8;
            if (__OFADD__(v67, v8))
            {
              BUG();
            }

            if (v19 >= v9)
            {
              v19 = v9;
            }

            if (v19 < v8)
            {
              BUG();
            }

            if (v10 != v19)
            {
              v20 = v8;
              v21 = v69;
              v22 = v10;
              do
              {
                v23 = *(v6 + 8 * v22);
                v24 = v10;
                do
                {
                  v25 = *(v21 + 8 * v24);
                  if (v23 >= v25)
                  {
                    break;
                  }

                  if (!v6)
                  {
                    BUG();
                  }

                  *(v21 + 8 * v24 + 8) = v25;
                  *(v21 + 8 * v24--) = v23;
                }

                while (v20 != v24);
                ++v22;
                v21 += 8;
                --v20;
              }

              while (v22 != v19);
              v10 = v19;
            }
          }
        }

        if (v10 < v8)
        {
          BUG();
        }

        v26 = v7;
        v70 = v10;
        if (swift_isUniquelyReferenced_nonNull_native(v7))
        {
          v7 = v26;
        }

        else
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v27 = *(v7 + 2);
        v28 = v27 + 1;
        v6 = v80;
        if (*(v7 + 3) >> 1 <= v27)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v7 + 3) >= 2uLL, v27 + 1, 1, v7);
          v6 = v80;
          v7 = v59;
        }

        *(v7 + 2) = v28;
        v29 = 16 * v27;
        *&v7[v29 + 32] = v8;
        *&v7[v29 + 40] = v70;
        if (v27)
        {
          break;
        }

        v28 = 1;
LABEL_80:
        v9 = v77;
        v8 = v70;
        if (v70 >= v77)
        {
          goto LABEL_84;
        }
      }

      v30 = v7 + 32;
      v81 = v7;
      v75 = v7 + 32;
      while (1)
      {
        v31 = v28 - 1;
        if (v28 >= 4)
        {
          v36 = 16 * v28;
          v37 = *&v30[16 * v28 - 56];
          v33 = __OFSUB__(v37, *&v30[16 * v28 - 64]);
          v38 = v37 - *&v30[16 * v28 - 64];
          if (v33)
          {
            BUG();
          }

          v39 = *&v30[v36 - 40];
          v33 = __OFSUB__(v39, *&v30[v36 - 48]);
          v34 = v39 - *&v30[v36 - 48];
          v35 = v33;
          if (v33)
          {
            BUG();
          }

          v40 = *&v7[v36 + 8];
          v33 = __OFSUB__(v40, *&v7[16 * v28]);
          v41 = v40 - *&v7[16 * v28];
          if (v33)
          {
            BUG();
          }

          v33 = __OFADD__(v34, v41);
          v42 = v34 + v41;
          if (v33)
          {
            BUG();
          }

          if (v42 >= v38)
          {
            v51 = *&v30[16 * v31 + 8];
            v33 = __OFSUB__(v51, *&v30[16 * v31]);
            v52 = v51 - *&v30[16 * v31];
            if (v33)
            {
              BUG();
            }

            if (v34 < v52)
            {
LABEL_70:
              v31 = v28 - 2;
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v28 != 3)
          {
            if (v28 < 2)
            {
              BUG();
            }

            v48 = *&v7[16 * v28 + 8];
            v33 = __OFSUB__(v48, *&v7[16 * v28]);
            v44 = v48 - *&v7[16 * v28];
            v45 = v33;
LABEL_64:
            if (v45)
            {
              BUG();
            }

            v49 = *&v30[16 * v31 + 8];
            v33 = __OFSUB__(v49, *&v30[16 * v31]);
            v50 = v49 - *&v30[16 * v31];
            if (v33)
            {
              BUG();
            }

            if (v50 < v44)
            {
              goto LABEL_80;
            }

            goto LABEL_71;
          }

          v32 = *(v7 + 5);
          v33 = __OFSUB__(v32, *(v7 + 4));
          v34 = v32 - *(v7 + 4);
          v35 = v33;
        }

        if (v35)
        {
          BUG();
        }

        v43 = *&v7[16 * v28 + 8];
        v33 = __OFSUB__(v43, *&v7[16 * v28]);
        v44 = v43 - *&v7[16 * v28];
        v45 = v33;
        if (v33)
        {
          BUG();
        }

        v46 = *&v30[16 * v31 + 8];
        v33 = __OFSUB__(v46, *&v30[16 * v31]);
        v47 = v46 - *&v30[16 * v31];
        if (v33)
        {
          BUG();
        }

        if (__OFADD__(v47, v44))
        {
          BUG();
        }

        if (v47 + v44 < v34)
        {
          goto LABEL_64;
        }

        if (v34 < v47)
        {
          goto LABEL_70;
        }

LABEL_71:
        if (v31 - 1 >= v28)
        {
          BUG();
        }

        if (!v6)
        {
          BUG();
        }

        v53 = 16 * (v31 - 1);
        v71 = v31;
        v54 = &v30[16 * v31];
        v55 = *&v30[v53];
        v56 = *(v54 + 1);
        __dst = v54;
        specialized _merge<A>(low:mid:high:buffer:by:)((v6 + 8 * v55), (v6 + 8 * *v54), (v6 + 8 * v56), v78);
        if (v1)
        {
          goto LABEL_96;
        }

        if (v56 < v55)
        {
          BUG();
        }

        v57 = &v30[v53];
        v58 = *(v81 + 16);
        if (v71 > v58)
        {
          BUG();
        }

        *v57 = v55;
        *(v57 + 1) = v56;
        if (v71 >= v58)
        {
          BUG();
        }

        v28 = v58 - 1;
        memmove(__dst, __dst + 16, 16 * (v58 - 1 - v71));
        v7 = v81;
        *(v81 + 16) = v58 - 1;
        v18 = v58 <= 2;
        v6 = v80;
        v30 = v75;
        if (v18)
        {
          goto LABEL_80;
        }
      }
    }

    v7 = _swiftEmptyArrayStorage;
    v78 = &_swiftEmptyArrayStorage[4];
    v28 = _swiftEmptyArrayStorage[2];
    v79 = _swiftEmptyArrayStorage;
LABEL_84:
    if (v28 < 2)
    {
LABEL_98:
      v7;
      v79[2] = 0;
      v79;
    }

    else
    {
      v60 = *a1;
      v76 = *a1;
      while (1)
      {
        if (!v60)
        {
          BUG();
        }

        v61 = *&v7[16 * v28];
        v81 = v7;
        v72 = 16 * (v28 - 1);
        v62 = *&v7[v72 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v60 + 8 * v61), (v60 + 8 * *&v7[v72 + 32]), (v60 + 8 * v62), v78);
        if (v1)
        {
          break;
        }

        if (v62 < v61)
        {
          BUG();
        }

        __dsta = v61;
        if (swift_isUniquelyReferenced_nonNull_native(v81))
        {
          v63 = v81;
        }

        else
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
        }

        v64 = *(v63 + 2);
        if (v28 - 2 >= v64)
        {
          BUG();
        }

        *&v63[16 * v28] = __dsta;
        *&v63[16 * v28 + 8] = v62;
        v65 = v64 - v28;
        if (v64 < v28)
        {
          BUG();
        }

        v28 = v64 - 1;
        v66 = v63;
        memmove(&v63[v72 + 32], &v63[v72 + 48], 16 * v65);
        v7 = v66;
        *(v66 + 2) = v64 - 1;
        v60 = v76;
        if (v64 <= 2)
        {
          goto LABEL_98;
        }
      }

LABEL_96:
      v81;
      v79[2] = 0;
      v79;
    }
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  v78 = v2;
  if (v3 >= v2)
  {
    if (v2 < 0)
    {
      BUG();
    }

    if (v2)
    {
      specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
    }
  }

  else
  {
    if (v2 < -1)
    {
      BUG();
    }

    v72 = v3;
    v83 = v1;
    if (v2 > 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)(v2 / 2, v4);
      *(v5 + 16) = v2 / 2;
      v82 = v5;
      v6 = (v5 + 32);
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v82 = _swiftEmptyArrayStorage;
      v6 = &_swiftEmptyArrayStorage[4];
LABEL_10:
      v81 = v6;
      v7 = *a1;
      v73 = *a1 + 40;
      v8 = _swiftEmptyArrayStorage;
      v9 = 0;
      v10 = v2;
      v85 = *a1;
      while (1)
      {
        v11 = v9 + 1;
        if (v9 + 1 < v10)
        {
          v12 = 16 * v11;
          if (*(v7 + v12 + 8))
          {
            BUG();
          }

          v13 = 16 * v9;
          if (*(v7 + 16 * v9 + 8))
          {
            BUG();
          }

          v14 = *(v7 + v12);
          v15 = *(v7 + 16 * v9);
          v11 = v9 + 2;
          if (v9 + 2 < v10)
          {
            v16 = (v73 + 16 * v9);
            while (1)
            {
              if (*v16)
              {
                BUG();
              }

              if (*(v16 - 16))
              {
                BUG();
              }

              if (v14 < v15 == *(v16 - 1) >= *(v16 - 3))
              {
                break;
              }

              ++v11;
              v16 += 16;
              if (v11 >= v10)
              {
                v11 = v10;
                break;
              }
            }
          }

          if (v14 < v15)
          {
            if (v11 < v9)
            {
              BUG();
            }

            if (v11 > v9)
            {
              v17 = 16 * v11 - 16;
              v18 = v11;
              v19 = v9;
              do
              {
                if (v19 != --v18)
                {
                  if (!v7)
                  {
                    BUG();
                  }

                  v20 = (v7 + v13);
                  v21 = *(v7 + v13);
                  v22 = *(v7 + v13 + 8);
                  if (v13 != v17 || (v7 = v85, v20 >= v17 + v85 + 16))
                  {
                    v7 = v85;
                    *v20 = *(v17 + v85);
                  }

                  *(v7 + v17) = v21;
                  *(v7 + v17 + 8) = v22 & 1;
                }

                ++v19;
                v17 -= 16;
                v13 += 16;
              }

              while (v19 < v18);
            }
          }
        }

        if (v11 < v10)
        {
          if (__OFSUB__(v11, v9))
          {
            BUG();
          }

          if (v11 - v9 < v72)
          {
            v23 = v72 + v9;
            if (__OFADD__(v72, v9))
            {
              BUG();
            }

            if (v23 >= v10)
            {
              v23 = v10;
            }

            if (v23 < v9)
            {
              BUG();
            }

            if (v11 != v23)
            {
              v24 = v7 + 16 * v11;
              do
              {
                v25 = v9;
                v26 = v24;
                do
                {
                  if (*(v26 + 8))
                  {
                    BUG();
                  }

                  if (*(v26 - 8))
                  {
                    BUG();
                  }

                  v27 = *v26;
                  if (*v26 >= *(v26 - 16))
                  {
                    break;
                  }

                  if (!v7)
                  {
                    BUG();
                  }

                  *v26 = *(v26 - 16);
                  *(v26 - 16) = v27;
                  *(v26 - 8) = 0;
                  ++v25;
                  v26 -= 16;
                }

                while (v11 != v25);
                ++v11;
                v24 += 16;
              }

              while (v11 != v23);
              v11 = v23;
            }
          }
        }

        if (v11 < v9)
        {
          BUG();
        }

        v28 = v8;
        v75 = v11;
        if (swift_isUniquelyReferenced_nonNull_native(v8))
        {
          v8 = v28;
        }

        else
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v29 = *(v8 + 2);
        v30 = v29 + 1;
        v7 = v85;
        if (*(v8 + 3) >> 1 <= v29)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v8 + 3) >= 2uLL, v29 + 1, 1, v8);
          v7 = v85;
          v8 = v61;
        }

        *(v8 + 2) = v30;
        v31 = 16 * v29;
        *&v8[v31 + 32] = v9;
        *&v8[v31 + 40] = v75;
        if (v29)
        {
          break;
        }

        v30 = 1;
LABEL_89:
        v10 = v78;
        v9 = v75;
        if (v75 >= v78)
        {
          goto LABEL_93;
        }
      }

      v32 = v8 + 32;
      v84 = v8;
      v71 = v8 + 32;
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          v38 = 16 * v30;
          v39 = *&v32[16 * v30 - 56];
          v35 = __OFSUB__(v39, *&v32[16 * v30 - 64]);
          v40 = v39 - *&v32[16 * v30 - 64];
          if (v35)
          {
            BUG();
          }

          v41 = *&v32[v38 - 40];
          v35 = __OFSUB__(v41, *&v32[v38 - 48]);
          v36 = v41 - *&v32[v38 - 48];
          v37 = v35;
          if (v35)
          {
            BUG();
          }

          v42 = *&v8[v38 + 8];
          v35 = __OFSUB__(v42, *&v8[16 * v30]);
          v43 = v42 - *&v8[16 * v30];
          if (v35)
          {
            BUG();
          }

          v35 = __OFADD__(v36, v43);
          v44 = v36 + v43;
          if (v35)
          {
            BUG();
          }

          if (v44 >= v40)
          {
            v53 = *&v32[16 * v33 + 8];
            v35 = __OFSUB__(v53, *&v32[16 * v33]);
            v54 = v53 - *&v32[16 * v33];
            if (v35)
            {
              BUG();
            }

            if (v36 < v54)
            {
LABEL_79:
              v33 = v30 - 2;
              goto LABEL_80;
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (v30 != 3)
          {
            if (v30 < 2)
            {
              BUG();
            }

            v50 = *&v8[16 * v30 + 8];
            v35 = __OFSUB__(v50, *&v8[16 * v30]);
            v46 = v50 - *&v8[16 * v30];
            v47 = v35;
LABEL_73:
            if (v47)
            {
              BUG();
            }

            v51 = *&v32[16 * v33 + 8];
            v35 = __OFSUB__(v51, *&v32[16 * v33]);
            v52 = v51 - *&v32[16 * v33];
            if (v35)
            {
              BUG();
            }

            if (v52 < v46)
            {
              goto LABEL_89;
            }

            goto LABEL_80;
          }

          v34 = *(v8 + 5);
          v35 = __OFSUB__(v34, *(v8 + 4));
          v36 = v34 - *(v8 + 4);
          v37 = v35;
        }

        if (v37)
        {
          BUG();
        }

        v45 = *&v8[16 * v30 + 8];
        v35 = __OFSUB__(v45, *&v8[16 * v30]);
        v46 = v45 - *&v8[16 * v30];
        v47 = v35;
        if (v35)
        {
          BUG();
        }

        v48 = *&v32[16 * v33 + 8];
        v35 = __OFSUB__(v48, *&v32[16 * v33]);
        v49 = v48 - *&v32[16 * v33];
        if (v35)
        {
          BUG();
        }

        if (__OFADD__(v49, v46))
        {
          BUG();
        }

        if (v49 + v46 < v36)
        {
          goto LABEL_73;
        }

        if (v36 < v49)
        {
          goto LABEL_79;
        }

LABEL_80:
        if (v33 - 1 >= v30)
        {
          BUG();
        }

        if (!v7)
        {
          BUG();
        }

        v55 = 16 * (v33 - 1);
        v79 = v33;
        v56 = *&v32[v55];
        v57 = *&v32[16 * v33 + 8];
        __dst = &v32[16 * v33];
        specialized _merge<A>(low:mid:high:buffer:by:)((v7 + 16 * v56), (v7 + 16 * *__dst), (v7 + 16 * v57), v81);
        if (v83)
        {
          goto LABEL_105;
        }

        if (v57 < v56)
        {
          BUG();
        }

        v58 = &v32[v55];
        v59 = *(v84 + 16);
        if (v79 > v59)
        {
          BUG();
        }

        *v58 = v56;
        *(v58 + 1) = v57;
        if (v79 >= v59)
        {
          BUG();
        }

        v30 = v59 - 1;
        memmove(__dst, __dst + 16, 16 * (v59 - 1 - v79));
        v8 = v84;
        *(v84 + 16) = v59 - 1;
        v60 = v59 <= 2;
        v7 = v85;
        v32 = v71;
        if (v60)
        {
          goto LABEL_89;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    v81 = &_swiftEmptyArrayStorage[4];
    v30 = _swiftEmptyArrayStorage[2];
    v82 = _swiftEmptyArrayStorage;
LABEL_93:
    if (v30 < 2)
    {
LABEL_107:
      v8;
      v82[2] = 0;
      v82;
    }

    else
    {
      v62 = *a1;
      v86 = *a1;
      while (1)
      {
        if (!v62)
        {
          BUG();
        }

        v63 = 16 * (v30 - 1);
        v64 = *&v8[16 * v30];
        v84 = v8;
        v80 = *&v8[v63 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((v62 + 16 * v64), (v62 + 16 * *&v8[v63 + 32]), (v62 + 16 * v80), v81);
        if (v83)
        {
          break;
        }

        if (v80 < v64)
        {
          BUG();
        }

        __dsta = v64;
        if (swift_isUniquelyReferenced_nonNull_native(v84))
        {
          v65 = v84;
        }

        else
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v84);
        }

        v66 = *(v65 + 2);
        if (v30 - 2 >= v66)
        {
          BUG();
        }

        *&v65[16 * v30] = __dsta;
        *&v65[16 * v30 + 8] = v80;
        v67 = v66 - v30;
        if (v66 < v30)
        {
          BUG();
        }

        v30 = v66 - 1;
        v68 = &v65[v63 + 32];
        v69 = &v65[v63 + 48];
        v70 = v65;
        memmove(v68, v69, 16 * v67);
        v8 = v70;
        *(v70 + 2) = v66 - 1;
        v62 = v86;
        if (v66 <= 2)
        {
          goto LABEL_107;
        }
      }

LABEL_105:
      v84;
      v82[2] = 0;
      v82;
    }
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    do
    {
      v6 = *(v4 + 16 * a3);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v6;
        *(v8 + 8) = v9;
        v8 -= 16;
        ++v7;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3;
    do
    {
      v6 = *(v4 + 56 * a3 + 48);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 <= *(v8 - 8))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        v10 = *(v8 + 16);
        v11 = *(v8 + 32);
        v12 = *(v8 - 56 + 16);
        v13 = *(v8 - 56 + 32);
        *v8 = *(v8 - 56);
        *(v8 + 16) = v12;
        *(v8 + 32) = v13;
        *(v8 + 48) = *(v8 - 56 + 48);
        *(v8 - 56) = v9;
        *(v8 - 40) = v10;
        *(v8 - 24) = v11;
        *(v8 - 8) = v6;
        ++v7;
        v8 -= 56;
      }

      while (a3 != v7);
      ++a3;
      v5 += 56;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = *(v4 + 16 * a3 + 8);
      v7 = a1;
      v8 = v5;
      do
      {
        if (*(v8 - 1) <= v6)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        *v8 = *(v8 - 1);
        *(v8 - 2) = v9;
        *(v8 - 1) = v6;
        ++v7;
        v8 -= 2;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = *(v4 + 16 * a3 + 8);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 <= *(v8 - 1))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        *v8 = *(v8 - 1);
        *(v8 - 2) = v9;
        *(v8 - 1) = v6;
        ++v7;
        v8 -= 2;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = *(v4 + 16 * a3 + 8);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 >= *(v8 - 1))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *v8;
        *v8 = *(v8 - 1);
        *(v8 - 2) = v9;
        *(v8 - 1) = v6;
        ++v7;
        v8 -= 2;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    do
    {
      v6 = *(v4 + 16 * a3);
      v7 = a1;
      v8 = v5;
      do
      {
        if (v6 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        v9 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v6;
        *(v8 + 8) = v9;
        v8 -= 16;
        ++v7;
      }

      while (a3 != v7);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 24 * a3;
    v21 = *a4;
    do
    {
      v7 = a1;
      v18 = v6;
      v20 = v4;
      do
      {
        v8 = *v6;
        v9 = *(v6 - 24);
        v10 = *(v6 - 8);
        if (*(v6 + 16))
        {
          if (((v8 < v9) & v10) == 0)
          {
            break;
          }
        }

        else if ((v10 & 1) == 0)
        {
          v11 = *(v6 + 8);
          v12 = *(v6 - 16);
          if (!(v9 ^ v8 | v12 ^ v11))
          {
            break;
          }

          v17 = *(v6 - 16);
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(*v6, v11, *(v6 - 24), v12, 0);
          v5 = v21;
          v4 = v20;
          if (v13)
          {
            break;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)(v8, v11, v9, v17, 1);
          v5 = v21;
          v4 = v20;
          if ((v14 & 1) == 0)
          {
            break;
          }
        }

        if (!v5)
        {
          BUG();
        }

        v15 = *(v6 + 16);
        v16 = *v6;
        *v6 = *(v6 - 24);
        *(v6 + 16) = *(v6 - 24 + 16);
        *(v6 - 24) = v16;
        *(v6 - 8) = v15;
        ++v7;
        v6 -= 24;
      }

      while (v4 != v7);
      ++v4;
      v6 = v18 + 24;
    }

    while (v4 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 - 8;
    v6 = a3;
    do
    {
      v7 = *(v4 + 8 * v6);
      v8 = a3;
      do
      {
        v9 = *(v5 + 8 * v8);
        if (v7 >= v9)
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        *(v5 + 8 * v8 + 8) = v9;
        *(v5 + 8 * v8--) = v7;
      }

      while (a1 != v8);
      ++v6;
      v5 += 8;
      --a1;
    }

    while (v6 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    do
    {
      v7 = *(v5 + 16 * v4);
      v8 = *(v5 + 16 * v4 + 8);
      v9 = a1;
      v12 = v6;
      do
      {
        v10 = *(v6 - 2);
        v11 = *(v6 - 1);
        if (v7 == v10 && v8 == v11)
        {
          break;
        }

        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v10, v11, 1) & 1) == 0)
        {
          break;
        }

        if (!v5)
        {
          BUG();
        }

        v7 = *v6;
        v8 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 2) = v7;
        *(v6 - 1) = v8;
        ++v9;
        v6 -= 2;
      }

      while (v4 != v9);
      ++v4;
      v6 = v12 + 2;
    }

    while (v4 != a2);
  }
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    do
    {
      v6 = a1;
      v7 = v5;
      do
      {
        if (*(v7 + 8))
        {
          BUG();
        }

        if (*(v7 - 8))
        {
          BUG();
        }

        v8 = *v7;
        if (*v7 >= *(v7 - 16))
        {
          break;
        }

        if (!v4)
        {
          BUG();
        }

        *v7 = *(v7 - 16);
        *(v7 - 16) = v8;
        *(v7 - 8) = 0;
        ++v6;
        v7 -= 16;
      }

      while (a3 != v6);
      ++a3;
      v5 += 16;
    }

    while (a3 != a2);
  }
}

char specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_19;
    }

    while (*(v11 - 2) < *(v5 - 2))
    {
      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v4 - 1) = *v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (*v5 < *v10)
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_10;
      }
    }

    v12 = v10;
    v13 = v6 == v10;
    v10 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_10:
  v5 = v6;
LABEL_19:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_19;
    }

    while (*(v11 - 1) < *(v5 - 1))
    {
      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v4 - 1) = *v15;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (*(v5 + 1) < *(v10 + 1))
    {
      v12 = v5;
      v13 = v6 == v5;
      v5 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_10;
      }
    }

    v12 = v10;
    v13 = v6 == v10;
    v10 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_10:
  v5 = v6;
LABEL_19:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a3 - v6);
  v10 = (a3 - v6) / 8;
  if (v8 / 8 >= v10)
  {
    v17 = (a3 - v6) / 8;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v10, a4);
    v11 = &v4[8 * v17];
    if (v9 < 8 || v7 >= v6)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v14 = *(v6 - 1);
      if (*(v11 - 1) >= v14)
      {
        break;
      }

      v13 = v5 == v6;
      v6 -= 8;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v6 > v7)
      {
        v5 -= 8;
        if (v11 > v4)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v14 = *(v11 - 1);
    v13 = v5 == v11;
    v11 -= 8;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    *(v5 - 1) = v14;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7, (v8 / 8), a4);
  v11 = &v4[8 * (v8 / 8)];
  if (v8 >= 8 && v6 < v5)
  {
    while (1)
    {
      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v7 += 8;
      if (v4 >= v11 || v6 >= v5)
      {
        goto LABEL_10;
      }
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v7 = v12;
    goto LABEL_8;
  }

LABEL_10:
  v6 = v7;
LABEL_19:
  v15 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v15])
  {
    memmove(v6, v4, 8 * v15);
  }

  return 1;
}

{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = v7 / 16;
  v9 = (a3 - a2) / 16;
  if (v7 / 16 >= v9)
  {
    v19 = a3 - a2;
    v14 = (a3 - a2) / 16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v9, a4);
    v10 = a4;
    v11 = &a4[16 * v14];
    if (v19 < 16 || v6 >= v5)
    {
      goto LABEL_25;
    }

    while (1)
    {
      if (*(v11 - 8))
      {
        BUG();
      }

      if (*(v5 - 8))
      {
        BUG();
      }

      if (*(v11 - 2) >= *(v5 - 2))
      {
        break;
      }

      v15 = v5 - 16;
      v13 = v4 == v5;
      v5 -= 16;
      if (!v13)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v5 > v6)
      {
        v4 -= 16;
        if (v11 > a4)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v15 = v11 - 16;
    v13 = v4 == v11;
    v11 -= 16;
    if (v13)
    {
      goto LABEL_21;
    }

LABEL_20:
    *(v4 - 1) = *v15;
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v6, v8, a4);
  v10 = a4;
  v11 = &a4[16 * v8];
  if (v7 >= 16 && v5 < v4)
  {
    while (1)
    {
      if (v5[8])
      {
        BUG();
      }

      if (v10[8])
      {
        BUG();
      }

      if (*v5 < *v10)
      {
        break;
      }

      v12 = v10;
      v13 = v6 == v10;
      v10 += 16;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_8:
      v6 += 16;
      if (v10 >= v11 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }

    v12 = v5;
    v13 = v6 == v5;
    v5 += 16;
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v12;
    goto LABEL_8;
  }

LABEL_24:
  v5 = v6;
LABEL_25:
  v16 = v11 - v10;
  if (v5 != v10 || v5 >= &v10[16 * (v16 / 16)])
  {
    memmove(v5, v10, 16 * (v16 / 16));
  }

  return 1;
}

double specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v2 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native(*v1))
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  if (v3 <= a1)
  {
    BUG();
  }

  v4 = v3 - 1;
  v6 = *&v2[16 * a1 + 40];
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v2[16 * a1 + 48], v4 - a1, &v2[16 * a1 + 32]);
  *(v2 + 2) = v4;
  *v1 = v2;
  return v6;
}

uint64_t specialized ContiguousArray._customRemoveLast()()
{
  v1 = *v0;
  if (!swift_isUniquelyReferenced_nonNull_native(*v0))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  if (!v2)
  {
    BUG();
  }

  v3 = v2 - 1;
  result = *&v1[16 * v3 + 32];
  *(v1 + 2) = v3;
  *v0 = v1;
  return result;
}

uint64_t static MLWordTagger.evaluate(on:using:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v28 = v2;
  if (v3)
  {
    v5 = a1 + 40;
    v6 = 0;
    v7 = v3;
    do
    {
      v8 = __OFADD__(*(*v5 + 16), v6);
      v6 += *(*v5 + 16);
      if (v8)
      {
        BUG();
      }

      v5 += 16;
      --v7;
    }

    while (v7);
    v9 = _swiftEmptyArrayStorage[2];
    if (v9 <= v6)
    {
      v9 = v6;
    }

    v27 = a2;
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
    if (v6 <= 0)
    {
      v6 = 0;
    }

    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);

    v29 = a1;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      specialized Array.append<A>(contentsOf:)(v12);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v11;
      v14 = [v27 predictedLabelsForTokens:isa];
      v15 = v14;

      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v15, &type metadata for String);
      specialized Array.append<A>(contentsOf:)(v16);
      v10 += 2;
      --v3;
    }

    while (v3);
    v29;
    v17 = v31;
    v18 = v30;
  }

  else
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2], 0, _swiftEmptyArrayStorage);
    v30 = v18;
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, _swiftEmptyArrayStorage);
    v31 = v17;
  }

  v25 = v17;
  v26 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v20 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = v28;
  ClassificationMetrics.init<A, B>(_:_:)(&v25, &v26, &type metadata for String, v19, v19, &protocol witness table for String, v20, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v21, v22, 0);
  v23 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v21, v23, 0);
}

uint64_t MLWordTagger.evaluation(on:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v31 = v6;
  v34 = a5;
  v33 = a4;
  v35 = v5;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v30 = *(v39 - 8);
  v8 = *(v30 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v29 = v28;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v43 = v28;
  v13 = type metadata accessor for DataFrame(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v40 = v28;
  v36 = a1;
  v38 = a2;
  v37 = a3;
  static MLWordTagger.validateDataFrame(_:tokenColumnName:labelColumnName:)(a1, a2, a3, v33, v34);
  v42 = v13;
  v41 = v14;
  DataFrame.init()(a1);
  static MLWordTagger.createTextColumn(_:name:context:)(v36, v38, v37, 0x6E656B6F54, 0xE500000000000000);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v19 = v43;
  v32 = v18;
  DataFrame.append<A>(column:)(v43, v18);
  v43 = *(v30 + 8);
  v43(v19, v39);
  v20 = v29;
  v21 = v33;
  v22 = v34;
  static MLWordTagger.createTextColumn(_:name:context:)(v36, v33, v34, 0x6C6562614CLL, 0xE500000000000000);
  v23 = v40;
  DataFrame.append<A>(column:)(v20, v32);
  v43(v20, v39);
  v24 = static MLWordTagger.createLabeledTokenPairs(_:tokenColumnName:labelColumnName:)(v23, v38, v37, v21, v22);
  v25 = v41;
  v26 = v42;
  LOBYTE(v21) = v24;
  static MLWordTagger.evaluate(on:using:)(v24, *v31);
  (*(v25 + 8))(v23, v26);
  return v21;
}

uint64_t MLWordTagger.evaluation(on:tokenColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v63 = a4;
  v59 = v6;
  v62 = v7;
  v64 = a5;
  v54 = type metadata accessor for DataFrame(0);
  v55 = *(v54 - 8);
  v9 = *(v55 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v56 = &v48;
  v12 = *a1;
  v13 = *(a1 + 8);
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v69, v50);
  inited[2] = 1;
  inited[3] = 2;
  v60 = a2;
  inited[4] = a2;
  inited[5] = a3;
  v70 = v12;
  v71._countAndFlagsBits = v12;
  v72 = v13;
  LOBYTE(v71._object) = v13;

  v15 = 0;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v71, 0x6E656B6F54, 0xE500000000000000, inited);
  v65 = a3;
  v71._countAndFlagsBits = v70;
  LOBYTE(v71._object) = v72;
  v16 = swift_initStackObject(v69, v51);
  v16[2] = 1;
  v16[3] = 2;
  v16[4] = v63;
  v17 = v64;
  v16[5] = v64;

  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v71, 0x6C6562614CLL, 0xE500000000000000, v16);
  swift_setDeallocating(v16);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v18 = swift_initStackObject(v69, v49);
  v18[2] = 2;
  v18[3] = 4;
  v18[4] = v60;
  v18[5] = v65;
  v18[6] = v63;
  v18[7] = v17;

  v68 = v72;
  outlined copy of Result<_DataTable, Error>(v70, v72);
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v20 = empty;
  v52 = v18 + 4;
  v69 = 0;
  v21 = type metadata accessor for CMLTable();
  v22 = swift_allocObject(v21, 24, 7);
  v61 = v18;
  v23 = v22;
  *(v22 + 16) = v20;
  v24 = type metadata accessor for _DataTable();
  swift_allocObject(v24, 40, 7);
  v66 = _DataTable.init(impl:)(v23);
  v67 = 0;
  v53 = "ml.activityclassifier" + 0x8000000000000000;

  v25 = 0;
  v26 = v72;
  do
  {
    v27 = 2 * v25;
    v28 = v52[v27];
    v29 = v52[v27 + 1];
    v57._countAndFlagsBits = v28;
    if (v26)
    {
      v30 = v70;
      swift_willThrow();
      outlined copy of Result<_DataTable, Error>(v30, 1);

      v58 = 0;
LABEL_7:
      v33 = v29;
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v71._object;
      v71._countAndFlagsBits = 0xD00000000000001FLL;
      v71._object = v53;
      v34._countAndFlagsBits = v57._countAndFlagsBits;
      v34._object = v29;
      String.append(_:)(v34);
      v34._countAndFlagsBits = 34;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v57 = v71;
      v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v36 = swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
      *v37 = v57;
      *(v37 + 16) = 0;
      *(v37 + 32) = 0;
      *(v37 + 48) = 1;
      outlined consume of Result<_DataTable, Error>(v30, v68);
      outlined consume of Result<_DataTable, Error>(v36, 1);
      v33;
      v39 = v65;
      v40 = v64;
      v15 = v58;
      goto LABEL_8;
    }

    v30 = v70;
    v31 = *(v70 + 16);
    outlined copy of Result<_DataTable, Error>(v70, 0);

    v32 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v31, v28, v29);
    if (v15)
    {
      v15;

      v58 = 0;
      goto LABEL_7;
    }

    v42 = v32;

    outlined consume of Result<_DataTable, Error>(v30, 0);
    v43 = type metadata accessor for _UntypedColumn();
    v44 = swift_allocObject(v43, 24, 7);
    *(v44 + 16) = v42;
    outlined copy of Result<_DataTable, Error>(v44, 0);
    MLDataTable.willMutate()();
    v71._countAndFlagsBits = v44;
    LOBYTE(v71._object) = 0;
    MLDataTable.setColumnImpl(newColumn:named:)(&v71, v57._countAndFlagsBits, v29);
    v29;
    outlined consume of Result<_DataTable, Error>(v44, 0);
    if (!v67)
    {
      v45 = v66;
      outlined copy of Result<_DataTable, Error>(v66, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v45, 0);
    }

    outlined consume of Result<_DataTable, Error>(v44, 0);
    v39 = v65;
    v40 = v64;
LABEL_8:
    v25 = 1;
    v41 = (v69 & 1) == 0;
    LOBYTE(v38) = 1;
    v69 = v38;
    v26 = v72;
  }

  while (v41);
  swift_bridgeObjectRelease_n(v61, 2);
  outlined consume of Result<_DataTable, Error>(v70, v68);
  v71._countAndFlagsBits = v66;
  LOBYTE(v71._object) = v67;
  v46 = v56;
  DataFrame.init(_:)(&v71);
  MLWordTagger.evaluation(on:tokenColumn:labelColumn:)(v46, v60, v39, v63, v40);
  return (*(v55 + 8))(v46, v54);
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy(v0 + 32, *(v0 + 16), &type metadata for String);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NSURLResourceKey(0);
  swift_arrayDestroy(v0 + 32, v1, v2);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  swift_arrayDestroy(v0 + 32, v1, v2);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  swift_arrayDestroy(v0 + 32, *(v0 + 16), &type metadata for MLLinearRegressor.ModelParameters);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  swift_arrayDestroy(v0 + 32, *(v0 + 16), &type metadata for MLLogisticRegressionClassifier.ModelParameters);
  return swift_deallocClassInstance(v0, 32, 7);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&demangling cache variable for type metadata for (name: String, parameter: Parameter));
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&demangling cache variable for type metadata for (name: String, state: LayerState));
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(type metadata accessor for MLCheckpoint);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&type metadata accessor for URL);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v3 = *(*(v2 - 8) + 80);
  swift_arrayDestroy(v1 + ((v3 + 32) & ~v3), *(v1 + 16), v2);
  return swift_deallocClassInstance(v1, 32, 7);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  swift_arrayDestroy(v1 + ((v3 + 32) & ~v3), *(v1 + 16), v2);
  return swift_deallocClassInstance(v1, 32, 7);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance [A] = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance [A] = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance [A] = result;
  }

  return result;
}

char static Rectangle.== infix(_:_:)(float a1, __m128 a2, __m128 a3, float a4, float a5, __m128 a6, __m128 a7, float a8)
{
  if (a1 == a5)
  {
    return _mm_cvtsi128_si32(_mm_and_ps(_mm_cmpeq_ps(a2, a6), _mm_cmpeq_ps(a3, a7))) & (a4 == a8);
  }

  else
  {
    return 0;
  }
}

char Rectangle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x7265746E6563 | a2 ^ 0xE600000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x7265746E6563, 0xE600000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x657A6973 | a2 ^ 0xE400000000000000)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(1702521203, 0xE400000000000000, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

uint64_t Rectangle.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7265746E6563;
  if (a1)
  {
    return 1702521203;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle.CodingKeys(uint64_t a1)
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle.CodingKeys(a1);
}

{
  v2 = *v1;
  Hasher.init(_seed:)(a1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance Rectangle.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = Rectangle.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance Rectangle.CodingKeys()
{
  v1 = v0;
  result = Rectangle.CodingKeys.init(intValue:)();
  *v1 = result;
  return result;
}

uint64_t Rectangle.encode(to:)(void *a1, __m128 a2, __m128 a3, float a4, float a5)
{
  v20 = v5;
  v23 = a5;
  v24 = a4;
  inserted = _mm_insert_ps(a2, a3, 16);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<Rectangle.CodingKeys>);
  v22 = *(v21 - 8);
  v6 = *(v22 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v9);
  v11 = lazy protocol witness table accessor for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38F420, &unk_38F420, v11, v9, v10);
  _mm_storel_ps(&v19, inserted);
  v25[0] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SIMD2<Float>);
  v13 = lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &protocol conformance descriptor for SIMD2<A>);
  v14 = v21;
  v15 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v19, v25, v21, v12, v13);
  if (!v15)
  {
    v19 = __PAIR64__(LODWORD(v23), LODWORD(v24));
    v25[0] = 1;
    v17 = lazy protocol witness table accessor for type Rectangle.Size and conformance Rectangle.Size();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v19, v25, v14, &type metadata for Rectangle.Size, v17);
  }

  return (*(v22 + 8))(&inserted, v14);
}

void Rectangle.hash(into:)(__m128 a1, __m128 a2, __m128 a3, __m128 a4)
{
  Rectangle.Size.hash(into:)(a1, a2);
  Hasher._combine(_:)(_mm_cvtsi128_si32(_mm_andnot_ps(_mm_cmpeq_ss(a3, 0), a3)));
  Hasher._combine(_:)(_mm_cvtsi128_si32(_mm_andnot_ps(_mm_cmpeq_ss(0, a4), a4)));
}

Swift::Int Rectangle.hashValue.getter(float a1, float a2, float a3, float a4)
{
  Hasher.init(_seed:)(0);
  Rectangle.hash(into:)(LODWORD(a1), LODWORD(a2), LODWORD(a3), LODWORD(a4));
  return Hasher._finalize()();
}

uint64_t Rectangle.init(from:)(void *a1)
{
  v18 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<Rectangle.CodingKeys>);
  v17 = *(v14 - 8);
  v2 = *(v17 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = a1[3];
  *&v15 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v6 = lazy protocol witness table accessor for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys();
  v19 = &v13;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38F420, &unk_38F420, v6, v5, v15);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SIMD2<Float>);
  v20[0] = 0;
  v8 = lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &protocol conformance descriptor for SIMD2<A>);
  v9 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)(v7, v20, v14, v7, v8);
  v15 = v16;
  v20[0] = 1;
  v10 = lazy protocol witness table accessor for type Rectangle.Size and conformance Rectangle.Size();
  v11 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for Rectangle.Size, v20, v9, &type metadata for Rectangle.Size, v10);
  (*(v17 + 8))(v11, v9);
  LODWORD(v17) = HIDWORD(v16);
  LODWORD(v19) = v16;
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

char Rectangle.Size.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x6874646977 | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6874646977, 0xE500000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x746867696568 | a2 ^ 0xE600000000000000)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x746867696568, 0xE600000000000000, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

Swift::Int Rectangle.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t Rectangle.Size.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6874646977;
  if (a1)
  {
    return 0x746867696568;
  }

  return result;
}

uint64_t Rectangle.Size.encode(to:)(void *a1, float a2, float a3)
{
  v11[1] = v3;
  v15 = a3;
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<Rectangle.Size.CodingKeys>);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v9 = lazy protocol witness table accessor for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38F530, &unk_38F530, v9, v8, v12);
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)(&v16, v4, a2);
  if (!v3)
  {
    v17[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)(v17, v4, v15);
  }

  return (*(v13 + 8))(v11, v4);
}

Swift::Int Rectangle.Size.hashValue.getter(float a1, float a2)
{
  Hasher.init(_seed:)(0);
  Rectangle.Size.hash(into:)(LODWORD(a1), LODWORD(a2));
  return Hasher._finalize()();
}

uint64_t Rectangle.Size.init(from:)(void *a1, float a2)
{
  v17 = v2;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<Rectangle.Size.CodingKeys>);
  v15 = *(v18 - 8);
  v3 = *(v15 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v7 = a1[4];
  v14 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v8 = lazy protocol witness table accessor for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys();
  v13 = &v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38F530, &unk_38F530, v8, v6, v7);
  v19 = 0;
  v9 = v13;
  KeyedDecodingContainer.decode(_:forKey:)(&v19, v18);
  *&v17 = a2;
  v20[0] = 1;
  v10 = v18;
  KeyedDecodingContainer.decode(_:forKey:)(v20, v18);
  v16 = a2;
  (*(v15 + 8))(v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Rectangle(void *a1, __m128 a2, __m128 a3, float a4, float a5)
{
  v7 = v5;
  result = Rectangle.init(from:)(a1);
  if (!v6)
  {
    _mm_storel_ps(v7, _mm_insert_ps(a2, a3, 16));
    *(v7 + 8) = a4;
    *(v7 + 12) = a5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  Hasher.init(_seed:)(a1);
  Rectangle.hash(into:)(v3, _mm_movehdup_ps(v3), v4, v5);
  return Hasher._finalize()();
}

char protocol witness for CodingKey.init(stringValue:) in conformance Rectangle.Size.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = Rectangle.Size.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Rectangle.Size(void *a1, float a2, float a3)
{
  v5 = v3;
  result = Rectangle.Size.init(from:)(a1, a2);
  if (!v4)
  {
    *v5 = a2;
    v5[1] = a3;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rectangle.Size(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  Hasher.init(_seed:)(a1);
  Rectangle.Size.hash(into:)(v3, v4);
  return Hasher._finalize()();
}

_OWORD *__swift_memcpy16_8(_OWORD *a1, _OWORD *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  result = lazy protocol witness table cache variable for type Rectangle and conformance Rectangle;
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle, &type metadata for Rectangle);
    lazy protocol witness table cache variable for type Rectangle and conformance Rectangle = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.CodingKeys, &unk_38F420);
    lazy protocol witness table cache variable for type Rectangle.CodingKeys and conformance Rectangle.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Rectangle.Size and conformance Rectangle.Size()
{
  result = lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size;
  if (!lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size, &type metadata for Rectangle.Size);
    lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size;
  if (!lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size, &type metadata for Rectangle.Size);
    lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size;
  if (!lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size, &type metadata for Rectangle.Size);
    lazy protocol witness table cache variable for type Rectangle.Size and conformance Rectangle.Size = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SIMD2<Float> and conformance SIMD2<A>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for SIMD2<Float>);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Rectangle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  return getEnumTagSinglePayload for Rectangle.CodingKeys(a1, a2);
}

{
  if (a2)
  {
    if (a2 < 0xFF)
    {
      goto LABEL_13;
    }

    v2 = a2 + 1;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 2;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 2;
      v8 = v6 < 2;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Rectangle.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  return storeEnumTagSinglePayload for Rectangle.CodingKeys(a1, a2, a3);
}

{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 1;
        }

        break;
      case 5:
        JUMPOUT(0x35E24);
    }
  }

  return result;
}

void *__swift_memcpy8_4(void *a1, void *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Rectangle.Size(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 8))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for Rectangle.Size(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v3 = 0;
    goto LABEL_6;
  }

  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 8) = v3;
  }
}

uint64_t lazy protocol witness table accessor for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Rectangle.Size.CodingKeys, &unk_38F530);
    lazy protocol witness table cache variable for type Rectangle.Size.CodingKeys and conformance Rectangle.Size.CodingKeys = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLRecommender.Identifier(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLRecommender.Identifier(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of MLRecommender.Identifier(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t *assignWithCopy for MLRecommender.Identifier(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MLRecommender.Identifier(*a2, v4, v5);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  v8 = *(a1 + 4);
  *(a1 + 16) = v5;
  outlined consume of MLRecommender.Identifier(v6, v7, v8);
  return a1;
}

uint64_t __swift_memcpy17_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  return result;
}

uint64_t *assignWithTake for MLRecommender.Identifier(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = a1[1];
  *a1 = *a2;
  v6 = *(a1 + 4);
  *(a1 + 16) = v3;
  outlined consume of MLRecommender.Identifier(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLRecommender.Identifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 16) >= 2u)
      {
        v2 = *(a1 + 16) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLRecommender.Identifier(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 255;
    *(a1 + 16) = 0;
    if (a3 >= 0xFF)
    {
      *(a1 + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 17) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = -a2;
    }
  }
}

uint64_t storeEnumTagSinglePayload for MLRecommender.IdentifierType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t MLRecommender.Identifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = lazy protocol witness table accessor for type Int and conformance Int();
    return BinaryInteger.description.getter(&type metadata for Int, v4);
  }

  else
  {
  }

  return a1;
}

uint64_t static MLRecommender.Identifier.< infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      LOBYTE(v6) = a1 < a4;
      return v6;
    }

LABEL_5:
    LOBYTE(v6) = (a3 & 1) < (a6 & 1);
    return v6;
  }

  if (a6)
  {
    goto LABEL_5;
  }

  v6 = 0;
  if (!(a4 ^ a1 | a5 ^ a2) || (_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 0) & 1) != 0)
  {
    return v6;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 1);
}

uint64_t static MLRecommender.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a3)
  {
    LOBYTE(a6) = (a1 == a4) & a6;
    return a6;
  }

  if (a6)
  {
    return 0;
  }

  LOBYTE(a6) = 1;
  if (!(a4 ^ a1 | a5 ^ a2))
  {
    return a6;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 0);
}

void MLRecommender.Identifier.hash(into:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  if (a4)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a2);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(a1, a2);
  }
}

Swift::Int MLRecommender.Identifier.hashValue.getter(Swift::UInt a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)(0);
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v5, a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLRecommender.Identifier(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  Hasher.init(_seed:)(a1);
  if (v3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v5, v2);
  }

  return Hasher._finalize()();
}

uint64_t MLRecommender.IdentifierType.description.getter(char a1)
{
  v5 = v1;
  if (a1)
  {
    v5 = &type metadata for Int;
    v2 = &demangling cache variable for type metadata for Int.Type;
  }

  else
  {
    v5 = &type metadata for String;
    v2 = &demangling cache variable for type metadata for String.Type;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(v2);
  return String.init<A>(describing:)(&v5, v3);
}

uint64_t lazy protocol witness table accessor for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType()
{
  result = lazy protocol witness table cache variable for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType;
  if (!lazy protocol witness table cache variable for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.IdentifierType, &type metadata for MLRecommender.IdentifierType);
    lazy protocol witness table cache variable for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier()
{
  result = lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier;
  if (!lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.Identifier, &type metadata for MLRecommender.Identifier);
    lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier;
  if (!lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.Identifier, &type metadata for MLRecommender.Identifier);
    lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier;
  if (!lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.Identifier, &type metadata for MLRecommender.Identifier);
    lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier = result;
  }

  return result;
}

uint64_t base witness table accessor for Equatable in MLRecommender.Identifier()
{
  return lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
}

{
  return base witness table accessor for Equatable in MLRecommender.Identifier();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.modelPath.getter()
{
  v2 = v0;
  v3 = type metadata accessor for URL(0);
  return (*(*(v3 - 8) + 16))(v2, v1, v3);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20));

  return v1;
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLImageClassifier.CustomFeatureExtractor.init(modelPath:outputName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v7 = type metadata accessor for URL(0);
  result = (*(*(v7 - 8) + 32))(v5, a1, v7);
  *(v5 + v6) = a2;
  *(v5 + v6 + 8) = a3;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.CustomFeatureExtractor.validate()()
{
  v1 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v2 = *(v0 + v1 + 8);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + v1) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v15 = " is not readable." + 0x8000000000000000;
    v14 = 0xD000000000000034;
  }

  else
  {
LABEL_5:
    v4 = objc_opt_self(NSFileManager);
    v5 = [v4 defaultManager];
    v6 = v5;
    v18[3] = v0;
    URL.path.getter(v5);
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v8;
    v10 = [v6 isReadableFileAtPath:v9];

    if (v10)
    {
      return;
    }

    _StringGuts.grow(_:)(32);
    0;
    strcpy(v18, "The model at ");
    HIWORD(v18[1]) = -4864;
    v11._countAndFlagsBits = URL.path.getter(0xE000000000000000);
    object = v11._object;
    String.append(_:)(v11);
    object;
    v13._object = " is not supported." + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v13);
    v14 = v18[0];
    v15 = v18[1];
  }

  v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
  *v17 = v14;
  *(v17 + 8) = v15;
  *(v17 + 16) = 0;
  *(v17 + 32) = 0;
  *(v17 + 48) = 0;
  swift_willThrow();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.buildTransformer()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v3 = type metadata accessor for MLModelImageFeatureExtractor(0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageScaler(0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v2[11] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeatureType(0);
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v9);
  v2[15] = swift_task_alloc(v9);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[16] = swift_task_alloc(v10);
  v2[17] = swift_task_alloc(v10);
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = type metadata accessor for FeatureType.ImageParameters(0);
  v2[20] = v11;
  v12 = *(v11 - 8);
  v2[21] = v12;
  v2[22] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Model(0);
  v2[23] = v13;
  v14 = *(v13 - 8);
  v2[24] = v14;
  v2[25] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.CustomFeatureExtractor.buildTransformer(), 0, 0);
}

{
  v3 = *(*v2 + 208);
  v6 = *v2;
  *(v6 + 216) = a1;
  *(v6 + 224) = v1;
  v3;
  if (v1)
  {
    v4 = MLImageClassifier.CustomFeatureExtractor.buildTransformer();
  }

  else
  {
    v4 = MLImageClassifier.CustomFeatureExtractor.buildTransformer();
  }

  return swift_task_switch(v4, 0, 0);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.buildTransformer()()
{
  MLImageClassifier.CustomFeatureExtractor.buildModel()();
  type metadata accessor for MLModel();
  v1 = swift_task_alloc(208);
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = MLImageClassifier.CustomFeatureExtractor.buildTransformer();
  return static MLModel.compile(_:)(*(v0 + 200));
}

{
  v1 = *(v0 + 152);
  v2 = Model.inputs.getter();
  v3 = v2;
  specialized Collection.first.getter(v2);
  v3;
  v64 = type metadata accessor for FeatureDescription(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v64) == 1)
  {
    BUG();
  }

  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  FeatureDescription.type.getter();
  if ((*(v6 + 88))(v4, v5) == enum case for FeatureType.image(_:))
  {
    v7 = *(v0 + 176);
    v8 = *(v0 + 168);
    v9 = *(v0 + 160);
    v87 = *(v0 + 152);
    v69 = *(v0 + 144);
    v10 = *(v0 + 120);
    (*(*(v0 + 104) + 96))(v10, *(v0 + 96));
    (*(v8 + 32))(v7, v10, v9);
    v11 = v87;
    v88 = *(*(v64 - 8) + 8);
    v88(v11, v64);
    v78 = FeatureType.ImageParameters.width.getter();
    v12 = FeatureType.ImageParameters.height.getter();
    ImageScaler.init(targetSize:)(v78, v12);
    v13 = Model.inputs.getter();
    LOBYTE(v7) = v13;
    specialized Collection.first.getter(v13);
    v7;
    if (__swift_getEnumTagSinglePayload(v69, 1, v64) == 1)
    {
      BUG();
    }

    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v83 = FeatureDescription.name.getter();
    v70 = v16;
    v88(v15, v64);
    v17 = Model.outputs.getter();
    LOBYTE(v15) = v17;
    specialized Collection.first.getter(v17);
    v15;
    if (__swift_getEnumTagSinglePayload(v14, 1, v64) == 1)
    {
      BUG();
    }

    v74 = *(v0 + 224);
    v18 = *(v0 + 216);
    v19 = *(v0 + 136);
    v79 = FeatureDescription.name.getter();
    v21 = v20;
    v88(v19, v64);
    v22 = objc_allocWithZone(CIContext);
    v23 = [v22 init];
    v24 = v18;
    v25 = v21;
    v26 = v74;
    MLModelImageFeatureExtractor.init(model:inputName:outputName:context:)(v24, v83, v70, v79, v25, v23);
    v27 = *(v0 + 216);
    v28 = *(v0 + 200);
    v71 = *(v0 + 192);
    v89 = *(v0 + 184);
    v84 = *(v0 + 176);
    v80 = *(v0 + 160);
    v75 = *(v0 + 168);
    if (!v26)
    {
      v58 = *(v0 + 152);
      v57 = *(v0 + 144);
      v56 = *(v0 + 136);
      v63 = *(v0 + 128);
      v68 = *(v0 + 120);
      v66 = *(v0 + 112);
      v52 = *(v0 + 88);
      v59 = *(v0 + 80);
      v61 = *(v0 + 72);
      v53 = *(v0 + 64);
      v60 = *(v0 + 56);
      v54 = *(v0 + 48);
      Transformer.appending<A>(_:)(v53, v61, v54, &protocol witness table for ImageScaler, &protocol witness table for MLModelImageFeatureExtractor);

      (*(v60 + 8))(v53, v54);
      (*(v59 + 8))(v52, v61);
      (*(v75 + 8))(v84, v80);
      (*(v71 + 8))(v28, v89);
      v28;
      v84;
      v58;
      v57;
      v56;
      v63;
      v68;
      v66;
      v52;
      v53;
      v50 = *(v0 + 8);
      return v50();
    }

    v29 = *(v0 + 88);
    v30 = *(v0 + 72);
    v31 = *(v0 + 200);
    v32 = *(v0 + 80);

    (*(v32 + 8))(v29, v30);
    (*(v75 + 8))(v84, v80);
    v33 = v31;
    v34 = v89;
    v35 = v71;
  }

  else
  {
    v36 = *(v0 + 152);
    v37 = *(v0 + 128);
    v72 = *(*(v0 + 104) + 8);
    v72(*(v0 + 120), *(v0 + 96));
    v76 = *(*(v64 - 8) + 8);
    v76(v36, v64);
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    *(v0 + 16) = v55;
    v38._object = "(no outputName found)" + 0x8000000000000000;
    v38._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v38);
    v39 = Model.inputs.getter();
    LOBYTE(v36) = v39;
    specialized Collection.first.getter(v39);
    v36;
    if (__swift_getEnumTagSinglePayload(v37, 1, v64) == 1)
    {
      BUG();
    }

    v62 = *(v0 + 216);
    v81 = *(v0 + 200);
    v85 = *(v0 + 192);
    v67 = *(v0 + 184);
    v40 = *(v0 + 128);
    v41 = *(v0 + 96);
    v42 = *(v0 + 112);
    FeatureDescription.type.getter();
    v76(v40, v64);
    _print_unlocked<A, B>(_:_:)(v42, v0 + 16, v41, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v72(v42, v41);
    v43._countAndFlagsBits = 0x64616574736E6920;
    v43._object = 0xE90000000000002ELL;
    String.append(_:)(v43);
    v65 = *(v0 + 16);
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = v65;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 2;
    swift_willThrow();

    v33 = v81;
    v34 = v67;
    v35 = v85;
  }

  (*(v35 + 8))(v33, v34);
  v46 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 144);
  v49 = *(v0 + 136);
  v82 = *(v0 + 128);
  v77 = *(v0 + 120);
  v73 = *(v0 + 112);
  v86 = *(v0 + 64);
  v90 = *(v0 + 88);
  *(v0 + 200);
  v46;
  v47;
  v48;
  v49;
  v82;
  v77;
  v73;
  v90;
  v86;
  v50 = *(v0 + 8);
  return v50();
}

{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v4 = *(v0 + 136);
  v10 = *(v0 + 128);
  v9 = *(v0 + 120);
  v8 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = *(v0 + 88);
  *(v0 + 200);
  v1;
  v2;
  v3;
  v4;
  v10;
  v9;
  v8;
  v7;
  v6;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.buildModel()()
{
  v195 = v1;
  *&v189 = v2;
  v178 = v0;
  v164 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v163 = *(v164 - 8);
  v3 = *(v163 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v165 = &v152;
  v179 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v162 = *(v179 - 8);
  v6 = *(v162 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v186 = &v152;
  v168 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters.ChannelLayout(0);
  v180 = *(v168 - 8);
  v9 = *(v180 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v169 = &v152;
  v177 = type metadata accessor for NeuralNetwork.Layer(0);
  v184 = *(v177 - 8);
  v12 = *(v184 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v185 = &v152;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v171 = &v152;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v170 = &v152;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v172 = &v152;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v161 = &v152;
  v176 = type metadata accessor for FeatureType(0);
  v175 = *(v176 - 8);
  v24 = *(v175 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v166 = &v152;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v154 = &v152;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v188 = &v152;
  v159 = type metadata accessor for NeuralNetworkRegressor(0);
  v158 = *(v159 - 8);
  v32 = *(v158 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v160 = &v152;
  v156 = type metadata accessor for NeuralNetworkClassifier(0);
  v155 = *(v156 - 8);
  v35 = *(v155 + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v157 = &v152;
  v153 = type metadata accessor for NeuralNetwork(0);
  v183 = *(v153 - 8);
  v38 = *(v183 + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v182 = &v152;
  v174 = type metadata accessor for ModelKind(0);
  v173 = *(v174 - 8);
  v41 = *(v173 + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v167 = &v152;
  v44 = alloca(v41);
  v45 = alloca(v41);
  v194 = &v152;
  v46 = type metadata accessor for URL(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v191 = type metadata accessor for Model(0);
  v192 = *(v191 - 8);
  v51 = *(v192 + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  (*(v47 + 16))(&v152, v189, v46);
  v54 = v195;
  result = Model.init(contentsOf:)(&v152);
  if (v54)
  {
    return result;
  }

  v56 = v182;
  v187 = 0;
  v57 = v194;
  v193 = &v152;
  Model.kind.getter();
  v58 = v174;
  v59 = v173;
  v60 = (*(v173 + 88))(v57, v174);
  if (v60 == enum case for ModelKind.neuralNetwork(_:))
  {
    v190 = enum case for ModelKind.neuralNetwork(_:);
    v61 = v194;
    (*(v59 + 96))(v194, v58);
    v62 = v56;
    v63 = v56;
    v64 = v153;
    v65 = v183;
    (*(v183 + 32))(v63, v61, v153);
    v195 = NeuralNetwork.layers.getter();
    v66 = NeuralNetwork.preprocessors.getter();
  }

  else if (v60 == enum case for ModelKind.neuralNetworkClassifier(_:))
  {
    v190 = enum case for ModelKind.neuralNetwork(_:);
    v67 = v194;
    (*(v59 + 96))(v194, v58);
    v62 = v157;
    v68 = v67;
    v64 = v156;
    v65 = v155;
    (*(v155 + 32))(v157, v68, v156);
    v195 = NeuralNetworkClassifier.layers.getter();
    v66 = NeuralNetworkClassifier.preprocessors.getter();
  }

  else
  {
    if (v60 != enum case for ModelKind.neuralNetworkRegressor(_:))
    {
      v101 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v101, 0, 0);
      *v102 = 0xD00000000000006ALL;
      *(v102 + 8) = " must be an image, got " + 0x8000000000000000;
      *(v102 + 16) = 0;
      *(v102 + 32) = 0;
      *(v102 + 48) = 2;
      swift_willThrow();
      (*(v192 + 8))(v193, v191);
      v103 = v194;
      return (*(v59 + 8))(v103, v58);
    }

    v190 = enum case for ModelKind.neuralNetwork(_:);
    v69 = v194;
    (*(v59 + 96))(v194, v58);
    v62 = v160;
    v70 = v69;
    v64 = v159;
    v65 = v158;
    (*(v158 + 32))(v160, v70, v159);
    v195 = NeuralNetworkRegressor.layers.getter();
    v66 = NeuralNetworkRegressor.preprocessors.getter();
  }

  v194 = v66;
  (*(v65 + 8))(v62, v64);
  v71 = v193;
  v72 = Model.inputs.getter();
  v73 = *(v72 + 16);
  v72;
  if (v73 != 1)
  {
    v195;
    v194;
    *&v181 = 0;
    *(&v181 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v92._object = " neural network regressor." + 0x8000000000000000;
    v92._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v92);
    v93 = Model.inputs.getter();
    v94 = *(v93 + 16);
    v93;
    v152 = v94;
    v95 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v94) = v96;
    v92._countAndFlagsBits = v95;
    v92._object = v96;
    String.append(_:)(v92);
    v94;
    v92._countAndFlagsBits = 0x64616574736E6920;
    v92._object = 0xE90000000000002ELL;
    String.append(_:)(v92);
    v189 = v181;
    v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
    *v98 = v189;
    *(v98 + 16) = 0;
    *(v98 + 32) = 0;
    *(v98 + 48) = 2;
    swift_willThrow();
    v99 = v71;
    return (*(v192 + 8))(v99, v191);
  }

  v74 = Model.inputs.getter();
  v75 = v74;
  v76 = v188;
  specialized Collection.first.getter(v74);
  v75;
  v77 = type metadata accessor for FeatureDescription(0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v77) == 1)
  {
    BUG();
  }

  v78 = v154;
  FeatureDescription.type.getter();
  v79 = v176;
  v80 = v175;
  if ((*(v175 + 88))(v78, v176) != enum case for FeatureType.image(_:))
  {
    v195;
    v194;
    (*(v80 + 8))(v78, v79);
    (*(*(v77 - 8) + 8))(v188, v77);
    v88 = "ith only one input, but got " + 0x8000000000000000;
    v100 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
    v91 = 0xD000000000000022;
    goto LABEL_16;
  }

  (*(v80 + 8))(v78, v79);
  v182 = *(v77 - 8);
  (v182[1])(v188, v77);
  v81 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v82 = *(v189 + v81 + 8);
  v59 = v192;
  v58 = v191;
  if (v82)
  {
    v83 = *(v189 + v81);

    v84 = v195;

    v85 = v187;
    v86 = specialized Collection.firstIndex(where:)(v84, v83, v82);
    LOBYTE(v83) = v87;
    v84;
    if (v83)
    {
      v84;
      v194;
      v88 = "least one layer." + 0x8000000000000000;
      v89 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v89, 0, 0);
      v91 = 0xD000000000000031;
LABEL_16:
      *v90 = v91;
      *(v90 + 8) = v88;
      *(v90 + 16) = 0;
      *(v90 + 32) = 0;
      *(v90 + 48) = 2;
LABEL_17:
      swift_willThrow();
      v99 = v193;
      return (*(v192 + 8))(v99, v191);
    }

    v105 = __OFADD__(1, v86);
    v106 = v86 + 1;
    if (v105)
    {
      BUG();
    }

    v187 = v85;
    v58 = v191;
    if (v106 < 0)
    {
      BUG();
    }

    v59 = v192;
    if (v195[2] < v106)
    {
      BUG();
    }

    v104 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC20MLModelSpecification13NeuralNetworkV5LayerV_s10ArraySliceVyAHGTt0g5(v195, v195 + ((*(v184 + 80) + 32) & ~*(v184 + 80)), 0, 2 * v106 + 1);
  }

  else
  {
    v104 = v195;
  }

  if (!v104[2])
  {
    v104;
    v194;
    v140 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v140, 0, 0);
    *v141 = 0xD000000000000030;
    *(v141 + 8) = "ve 1 output, got " + 0x8000000000000000;
    *(v141 + 16) = 0;
    *(v141 + 32) = 0;
    *(v141 + 48) = 2;
    swift_willThrow();
    v103 = v193;
    return (*(v59 + 8))(v103, v58);
  }

  v107 = v161;
  v195 = v104;
  specialized BidirectionalCollection.last.getter(v104);
  v108 = v177;
  if (__swift_getEnumTagSinglePayload(v107, 1, v177) == 1)
  {
    BUG();
  }

  v109 = NeuralNetwork.Layer.outputNames.getter();
  v110 = v107;
  v111 = *(v184 + 8);
  v111(v110, v108);
  v112 = *(v109 + 16);
  v109;
  if (v112 != 1)
  {
    v142 = v111;
    v194;
    *&v181 = 0;
    *(&v181 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v143._object = " must be an image." + 0x8000000000000000;
    v143._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v143);
    v144 = v171;
    v145 = v195;
    specialized BidirectionalCollection.last.getter(v195);
    if (__swift_getEnumTagSinglePayload(v144, 1, v108) == 1)
    {
      BUG();
    }

    v145;
    v146 = NeuralNetwork.Layer.outputNames.getter();
    v142(v144, v108);
    v147 = *(v146 + 16);
    v146;
    v152 = v147;
    v148._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    LOBYTE(v146) = v148._object;
    String.append(_:)(v148);
    v146;
    v149._countAndFlagsBits = 0x64616574736E6920;
    v149._object = 0xE90000000000002ELL;
    String.append(_:)(v149);
    v189 = v181;
    v150 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v150, 0, 0);
    *v151 = v189;
    *(v151 + 16) = 0;
    *(v151 + 32) = 0;
    *(v151 + 48) = 2;
    goto LABEL_17;
  }

  *&v189 = v111;
  *&v181 = 0;
  *(&v181 + 1) = 0xE000000000000000;
  v113 = v172;
  specialized BidirectionalCollection.last.getter(v195);
  if (__swift_getEnumTagSinglePayload(v113, 1, v108) == 1)
  {
    BUG();
  }

  v114 = v113;
  v115 = NeuralNetwork.Layer.name.getter();
  v117 = v116;
  (v189)(v114, v108);
  v118._countAndFlagsBits = v115;
  v118._object = v117;
  String.append(_:)(v118);
  v117;
  v118._countAndFlagsBits = 0x6E657474616C46;
  v118._object = 0xE700000000000000;
  String.append(_:)(v118);
  v188 = *(&v181 + 1);
  v183 = v181;
  v119 = v170;
  specialized BidirectionalCollection.last.getter(v195);
  if (__swift_getEnumTagSinglePayload(v119, 1, v108) == 1)
  {
    BUG();
  }

  v120 = NeuralNetwork.Layer.outputNames.getter();
  (v189)(v119, v108);
  v121 = v169;
  if (!v120[2])
  {
    v120;
    BUG();
  }

  *&v189 = v120[4];
  v122 = v120[5];

  v120;
  v123 = v168;
  (*(v180 + 104))(v121, enum case for NeuralNetwork.Layer.FlattenParameters.ChannelLayout.channelFirst(_:), v168);
  v124 = v188;
  static NeuralNetwork.Layer.flatten(name:inputName:outputName:targetChannelLayout:)(v183, v188, v189, v122, 0x7365727574616566, 0xE800000000000000, v121);
  v124;
  v122;
  (*(v180 + 8))(v121, v123);
  v125 = v195;
  if (!swift_isUniquelyReferenced_nonNull_native(v195))
  {
    v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
  }

  v126 = v186;
  v127 = v125[2];
  v128 = v125;
  v129 = v185;
  if (v125[3] >> 1 <= v127)
  {
    v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v125[3] >= 2uLL, v127 + 1, 1, v125);
    v129 = v185;
  }

  v128[2] = v127 + 1;
  v195 = v128;
  (*(v184 + 32))(v128 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v127, v129, v177);
  FeatureType.ShapedArrayParameters.init()();
  v130 = v165;
  (*(v163 + 104))(v165, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v164);
  v131 = v126;
  FeatureType.ShapedArrayParameters.dataType.setter(v130);
  Model.init()();
  v132 = Model.specificationVersion.getter();
  Model.specificationVersion.setter(v132);
  v133 = Model.inputs.getter();
  Model.inputs.setter(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v135 = swift_allocObject(v134, ((*(v182 + 80) + 32) & ~*(v182 + 80)) + v182[9], *(v182 + 80) | 7);
  *(v135 + 16) = 1;
  *(v135 + 24) = 2;
  v136 = v166;
  v137 = v131;
  v138 = v162;
  (*(v162 + 16))(v166, v137, v179);
  (*(v175 + 104))(v136, enum case for FeatureType.shapedArray(_:), v176);
  FeatureDescription.init(name:type:description:)(0x7365727574616566, 0xE800000000000000, v136, 0, 0xE000000000000000);
  Model.outputs.setter(v135);
  v139 = v167;
  NeuralNetwork.init(layers:preprocessors:)(v195, v194);
  (*(v173 + 104))(v139, v190, v174);
  Model.kind.setter(v139);
  (*(v138 + 8))(v186, v179);
  return (*(v192 + 8))(v193, v191);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(a1 + 16);
  if (v11)
  {
    v4 = *(type metadata accessor for NeuralNetwork.Layer(0) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v12 = *(v4 + 72);
    v6 = 0;
    while (1)
    {
      v7 = NeuralNetwork.Layer.name.getter();
      v9 = v8;
      if (!(a2 ^ v7 | a3 ^ v8))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, a2, a3, 0);
      v9;
      if (v13)
      {
        goto LABEL_9;
      }

      ++v6;
      v5 += v12;
      if (v11 == v6)
      {
        v6 = 0;
        goto LABEL_9;
      }
    }

    a3;
    LOBYTE(a3) = v9;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  a3;
  return v6;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.FeatureExtractorType.validate()()
{
  *&v18 = v0;
  v2 = *(*(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(v1, &v15);
  if (swift_getEnumCaseMultiPayload(&v15, v5) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(&v15, &v15);
    MLImageClassifier.CustomFeatureExtractor.validate()();
    outlined destroy of MLActivityClassifier.ModelParameters(&v15, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else if (!v16)
  {
    v9 = v15;
    if (!specialized Sequence<>.contains(_:)(v15, &outlined read-only object #0 of MLImageClassifier.FeatureExtractorType.validate()))
    {
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      SBYTE8(v16);
      *&v16 = 0x6E6F697369766552;
      *(&v16 + 1) = 0xE900000000000020;
      v17 = v9;
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v10._object;
      String.append(_:)(v10);
      object;
      v12._object = "und in the model." + 0x8000000000000000;
      v12._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v12);
      v18 = v16;
      v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
      *v14 = v18;
      *(v14 + 16) = 0;
      *(v14 + 32) = 0;
      *(v14 + 48) = 0;
      swift_willThrow();
    }
  }
}

uint64_t MLImageClassifier.FeatureExtractorType.description.getter()
{
  v1 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(v0, v15);
  if (swift_getEnumCaseMultiPayload(v15, v5) != 1)
  {
    return 0x697250656E656353;
  }

  outlined init with take of MLImageClassifier.CustomFeatureExtractor(v15, v15);
  v9 = *(v1 + 20);
  v10 = *(&v15[1] + v9);
  v16 = v15;
  if (v10)
  {
    v11._countAndFlagsBits = *(v15 + v9);
    v12 = v10;
  }

  else
  {
    v12 = "interactionHeaps" + 0x8000000000000000;
    v11._countAndFlagsBits = 0xD000000000000015;
  }

  strcpy(v15, "Custom model: ");
  HIBYTE(v15[1]) = -18;
  v11._object = v12;
  String.append(_:)(v11);
  v13 = v15[0];

  v12;
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  return v13;
}

uint64_t type metadata accessor for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata(a1, a3);
  }

  return result;
}

uint64_t outlined init with copy of MLImageClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void *MLImageClassifier.FeatureExtractorType.playgroundDescription.getter()
{
  v20 = v0;
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(v1, v18);
  if (swift_getEnumCaseMultiPayload(v18, v6) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(v18, v18);
    v10 = *(v2 + 20);
    v11 = *&v18[v10 + 8];
    v21 = v18;
    if (v11)
    {
      v12._countAndFlagsBits = *&v18[v10];
      v13 = v11;
    }

    else
    {
      v13 = "interactionHeaps" + 0x8000000000000000;
      v12._countAndFlagsBits = 0xD000000000000015;
    }

    strcpy(v19, "Custom model: ");
    HIBYTE(v19[1]) = -18;
    v12._object = v13;
    String.append(_:)(v12);
    v15 = v19[0];
    v14 = v19[1];

    v13;
    outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else
  {
    v14 = 0xEA0000000000746ELL;
    v15 = 0x697250656E656353;
  }

  result = &type metadata for String;
  v17 = v20;
  v20[3] = &type metadata for String;
  *v17 = v15;
  v17[1] = v14;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *__src;
    *v3 = *__src;
    v3 = (v9 + ((v5 + 16) & ~v5));

    return v3;
  }

  if (swift_getEnumCaseMultiPayload(__src, a3) == 1)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    v8 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&__dst[v8] = *&__src[v8];
    *&__dst[v8 + 8] = *&__src[v8 + 8];

    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return v3;
  }

  return memcpy(__dst, __src, *(v4 + 64));
}

uint64_t destroy for MLImageClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for URL(0);
    (*(*(v3 - 8) + 8))(a1, v3);
    v4 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    return *(a1 + *(v4 + 20) + 8);
  }

  return result;
}

char *initializeWithCopy for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 16))(__dst, __src, v4);
  v5 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  *&__dst[v5] = *&__src[v5];
  *&__dst[v5 + 8] = *&__src[v5 + 8];

  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 1)
  {
    v4 = type metadata accessor for URL(0);
    (*(*(v4 - 8) + 16))(__dst, __src, v4);
    v5 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&__dst[v5] = *&__src[v5];
    *&__dst[v5 + 8] = *&__src[v5 + 8];

    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *initializeWithTake for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  v5 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  *&__dst[*(v5 + 20)] = *&__src[*(v5 + 20)];
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 1)
  {
    v4 = type metadata accessor for URL(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    v5 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&__dst[*(v5 + 20)] = *&__src[*(v5 + 20)];
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLImageClassifier.FeatureExtractorType(uint64_t a1)
{
  v5[0] = "\t";
  result = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.CustomFeatureExtractor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = *(a3 + 20);
    *(a1 + v7) = *(a2 + v7);
    *(a1 + v7 + 8) = *(a2 + v7 + 8);
  }

  return v3;
}

uint64_t destroy for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return *(a1 + *(a2 + 20) + 8);
}

uint64_t initializeWithCopy for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = *(a3 + 20);
  *(a1 + v5) = *(a2 + v5);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);

  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = *(a3 + 20);
  *(a1 + v5) = *(a2 + v5);
  v6 = *(a1 + v5 + 8);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);

  v6;
  return a1;
}

uint64_t initializeWithTake for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = *(a3 + 20);
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a1 + v6 + 8);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  v7;
  return a1;
}

uint64_t sub_38D80(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for URL(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  v7 = -1;
  if (((*(a1 + *(a3 + 20) + 8) >> 1) - 1) >= 0)
  {
    v7 = (*(a1 + *(a3 + 20) + 8) >> 1) - 1;
  }

  v8 = v7 + 1;
  if ((*(a1 + *(a3 + 20) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return v8;
  }

  return v4;
}

uint64_t sub_38E03(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for URL(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result + 8) = 2 * a2;
  return result;
}

uint64_t type metadata completion function for MLImageClassifier.CustomFeatureExtractor(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &unk_33DF18;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(*v2 + 16) = a1 + 1;
  v4 = type metadata accessor for NeuralNetwork.Layer(0);
  return (*(*(v4 - 8) + 32))(v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * a1, a2, v4);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(type metadata accessor for AnyColumn(0) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v11 = *(v2 + 72);
    do
    {
      v10 = v1;
      v4 = AnyColumn.name.getter();
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v12 = v4;
        v13 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7, 1);
        v5 = v13;
        v4 = v12;
      }

      _swiftEmptyArrayStorage[2] = v7;
      v8 = 2 * v6;
      _swiftEmptyArrayStorage[v8 + 4] = v4;
      _swiftEmptyArrayStorage[v8 + 5] = v5;
      v3 += v11;
      v1 = v10 - 1;
    }

    while (v10 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t static _ValidationUtilities.validateTableFormat(table:context:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = v4;
  v36 = a4;
  v6 = *a1;
  v7 = *(a1 + 8) == 0;
  v33[1] = a2;
  if (v7)
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v37 = v30;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v8 = tc_v1_flex_list_create(0);
    if (!v8)
    {
      BUG();
    }

    v9 = v8;
    v10 = type metadata accessor for CMLSequence();
    v11 = swift_allocObject(v10, 25, 7);
    *(v11 + 16) = v9;
    v37 = v11;
    *(v11 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v6, 1);
  }

  v30 = 0;
  v12 = 0xE000000000000000;
  v31 = 0xE000000000000000;
  v13 = *(v36 + 16);
  if (v13)
  {
    v33[2] = a3;

    v14 = (v36 + 40);
    while (1)
    {
      v32 = &v29;
      v15 = *v14;
      v33[0] = *(v14 - 1);
      v34._countAndFlagsBits = v33[0];
      v34._object = v15;
      v16 = alloca(24);
      v17 = alloca(32);
      v31 = &v34;

      v18 = v35;
      v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v29, v37);
      v35 = v18;
      if ((v19 & 1) == 0)
      {
        break;
      }

      v15;
      v14 += 2;
      if (!--v13)
      {
        v36;
        v20 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_12;
      }
    }

    v36;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    String.append(_:)(*&v33[1]);
    v21._countAndFlagsBits = 0x206E6D756C6F6320;
    v21._object = 0xEE002720656D616ELL;
    String.append(_:)(v21);
    v21._countAndFlagsBits = v33[0];
    v21._object = v15;
    String.append(_:)(v21);
    v15;
    v21._object = "in elements with a type among: " + 0x8000000000000000;
    v21._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v21);
    object = v34._object;
    String.append(_:)(v34);
    object;
    v20 = v30;
    v12 = v31;
  }

  else
  {
    v20 = 0;
  }

LABEL_12:
  v23 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = static os_log_type_t.error.getter();
    v25._countAndFlagsBits = v20;
    v25._object = v12;
    log(_:type:)(v25, v24);
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = v20;
    *(v27 + 8) = v12;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 1;
    swift_willThrow();
  }

  else
  {
    v12;
  }
}
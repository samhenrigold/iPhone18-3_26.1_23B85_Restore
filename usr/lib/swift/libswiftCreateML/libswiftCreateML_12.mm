uint64_t specialized Sequence._minImplementation(count:sortedBy:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = 0;
  if (a1 > 0)
  {
    v7 = a1;
  }

  swift_unknownObjectRetain(a2);
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0, _swiftEmptyArrayStorage);
  v48[0] = v8;
  v9 = v8[2];
  v42 = a4;
  if (v9 < a1)
  {
    v10 = a5 >> 1;
    if (a5 >> 1 != a4)
    {
      if ((a5 >> 1) <= a4)
      {
        BUG();
      }

      v11 = a3;
      v12 = *(a3 + 16 * a4);
      v13 = *(a3 + 16 * a4 + 8);
      v14 = v9 + 1;
      if (v8[3] >> 1 <= v9)
      {
        v39 = *(a3 + 16 * a4);
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8[3] >= 2uLL, v14, 1, v8);
        v12 = v39;
        v10 = a5 >> 1;
        v11 = a3;
      }

      a4 = v42 + 1;
      v8[2] = v14;
      v15 = 2 * v9;
      v8[v15 + 4] = v12;
      v8[v15 + 5] = v13;
      v48[0] = v8;
      if (v14 < a1)
      {
        v16 = v9 + 2;
        v17 = (v11 + 16 * v42 + 24);
        while (v10 != a4)
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          if (v8[3] >> 1 <= v16 - 1)
          {
            v47 = v10;
            v41 = *(v17 - 1);
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8[3] >= 2uLL, v16, 1, v8);
            v18 = v41;
            v10 = v47;
          }

          v8[2] = v16;
          v8[v15 + 6] = v18;
          v8[v15 + 7] = v19;
          v48[0] = v8;
          v15 += 2;
          v17 += 2;
          ++a4;
          if (v16++ >= a1)
          {
            goto LABEL_16;
          }
        }

        a4 = v10;
      }
    }
  }

LABEL_16:
  specialized MutableCollection<>.sort(by:)(v48, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v5)
  {
    swift_unknownObjectRelease(a2);
    return v48[0];
  }

  else
  {
    v22 = a5 >> 1;
    v23 = a4;
    v24 = a3;
    v44 = a5 >> 1;
    while (v23 != v22)
    {
      if (a4 < v42 || v23 >= v22)
      {
        BUG();
      }

      v25 = v48[0];
      v26 = *(v48[0] + 16);
      if (!v26)
      {
        BUG();
      }

      v27 = 16 * v23;
      v28 = *(v24 + 16 * v23++ + 8);
      if (*(v48[0] + 16 + 16 * v26 + 8) > v28)
      {
        v46 = *(v24 + v27);
        if (!swift_isUniquelyReferenced_nonNull_native(v48[0]))
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
        }

        v29 = v25[2];
        v30 = v29 - 1;
        if (!v29)
        {
          BUG();
        }

        v25[2] = v30;
        if (v29 == 1)
        {
          v31 = 0;
        }

        else
        {
          v32 = v29 - 1;
          v31 = 0;
          v33 = v29 - 1;
          do
          {
            v33 = v33 >> 1;
            v34 = v33 + v31;
            if (__OFADD__(v33, v31))
            {
              BUG();
            }

            if (v33 + v31 < 0 || v34 >= v30)
            {
              BUG();
            }

            if (*&v25[2 * v34 + 5] <= v28)
            {
              v33 = v32 + ~v33;
              v31 = v34 + 1;
            }

            v32 = v33;
          }

          while (v33 > 0);
          if (v29 <= v31)
          {
            BUG();
          }

          if (v31 < 0)
          {
            BUG();
          }
        }

        if (v25[3] >> 1 < v29)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v29, 1, v25);
          v30 = v25[2];
        }

        v35 = v30 - v31;
        v36 = 2 * v31;
        v37 = &v25[v36 + 4];
        v38 = &v25[v36 + 6];
        memmove(v38, v37, 16 * v35);
        ++v25[2];
        *(v38 - 2) = v46;
        *(v38 - 1) = v28;
        v48[0] = v25;
        v22 = v44;
        v24 = a3;
      }
    }

    swift_unknownObjectRelease(a2);
    return v48[0];
  }
}

uint64_t specialized Sequence._minImplementation(count:sortedBy:)(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v5 = 0;
  if (a1 > 0)
  {
    v5 = a1;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, _swiftEmptyArrayStorage);
  v48[0] = v6;
  v7 = v6[2];
  if (v7 < a1)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(a2 + 32);
      v10 = v7 + 1;
      if (v6[3] >> 1 <= v7)
      {
        v37 = v6[2];
        v38 = *(a2 + 16);
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
        v8 = v38;
        v7 = v37;
      }

      v6[2] = v10;
      v6[v7 + 4] = v9;
      v48[0] = v6;
      if (v10 >= a1)
      {
        v4 = 1;
      }

      else
      {
        v11 = 8 * v7 + 40;
        v12 = 1 - v8;
        v13 = 0;
        while (v13 + v12)
        {
          v4 = v13 + 2;
          if (__OFADD__(1, v13 + 1))
          {
            BUG();
          }

          v44 = *(a2 + 8 * v13 + 40);
          v14 = v7 + v13 + 2;
          if (v6[3] >> 1 <= v7 + v13 + 1)
          {
            v43 = v7;
            v39 = v8;
            v40 = v11;
            v41 = v12;
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + v13 + 2, 1, v6);
            v12 = v41;
            v11 = v40;
            v8 = v39;
            v7 = v43;
          }

          v6[2] = v14;
          *(&v6[v13] + v11) = v44;
          v48[0] = v6;
          ++v13;
          if (v14 >= a1)
          {
            goto LABEL_18;
          }
        }

        v4 = v8;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_18:

  specialized MutableCollection<>.sort(by:)(v48, a3, specialized _ArrayBuffer._consumeAndCreateNew());
  if (v3)
  {
    a2;
    v15 = v48[0];
    swift_bridgeObjectRelease_n(a3, 2);
    return v15;
  }

  else
  {
    v17 = a2;
    v18 = *(a2 + 16);
    v19 = a3 + 4;
    v20 = a3;
    v47 = *(a2 + 16);
    while (v4 != v18)
    {
      if (v4 >= v18)
      {
        BUG();
      }

      v21 = v4 + 1;
      if (__OFADD__(1, v4))
      {
        BUG();
      }

      v22 = v48[0];
      v23 = *(v48[0] + 16);
      if (!v23)
      {
        BUG();
      }

      v24 = *(v17 + 8 * v4 + 32);
      if (v24 < 0)
      {
        BUG();
      }

      v25 = v20[2];
      if (v24 >= v25)
      {
        BUG();
      }

      v26 = *(v48[0] + 8 * v23 + 24);
      if (v26 >= v25)
      {
        BUG();
      }

      v27 = &v19[2 * v24];
      ++v4;
      if (*v27 < v19[2 * v26])
      {
        v45 = v24;
        if (!swift_isUniquelyReferenced_nonNull_native(v48[0]))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        v28 = v22[2];
        v29 = v28 - 1;
        if (!v28)
        {
          BUG();
        }

        v22[2] = v29;
        if (v28 == 1)
        {
          v30 = 0;
        }

        else
        {
          v31 = a3[2];
          if (v45 >= v31)
          {
            BUG();
          }

          v32 = v28 - 1;
          v30 = 0;
          v33 = v28 - 1;
          do
          {
            v33 = v33 >> 1;
            v34 = v33 + v30;
            if (__OFADD__(v33, v30))
            {
              BUG();
            }

            if (v33 + v30 < 0 || v34 >= v29)
            {
              BUG();
            }

            v35 = v22[v34 + 4];
            if (v35 >= v31)
            {
              BUG();
            }

            if (*v27 >= a3[2 * v35 + 4])
            {
              v33 = v32 + ~v33;
              v30 = v34 + 1;
            }

            v32 = v33;
          }

          while (v33 > 0);
          if (v28 <= v30)
          {
            BUG();
          }

          if (v30 < 0)
          {
            BUG();
          }
        }

        if (v22[3] >> 1 < v28)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v28, 1, v22);
          v29 = v22[2];
        }

        memmove(&v22[v30 + 5], &v22[v30 + 4], 8 * (v29 - v30));
        ++v22[2];
        v22[v30 + 4] = v45;
        v48[0] = v22;
        v4 = v21;
        v20 = a3;
        v17 = a2;
        v18 = v47;
        v19 = a3 + 4;
      }
    }

    v36 = v17;
    swift_bridgeObjectRelease_n(v20, 2);
    v36;
    return v48[0];
  }
}

{
  v4 = 0;
  v5 = 0;
  if (a1 > 0)
  {
    v5 = a1;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0, _swiftEmptyArrayStorage);
  v48[0] = v6;
  v7 = v6[2];
  if (v7 < a1)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *(a2 + 32);
      v10 = v7 + 1;
      if (v6[3] >> 1 <= v7)
      {
        v37 = v6[2];
        v38 = *(a2 + 16);
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1, v6);
        v8 = v38;
        v7 = v37;
      }

      v6[2] = v10;
      v6[v7 + 4] = v9;
      v48[0] = v6;
      if (v10 >= a1)
      {
        v4 = 1;
      }

      else
      {
        v11 = 8 * v7 + 40;
        v12 = 1 - v8;
        v13 = 0;
        while (v13 + v12)
        {
          v4 = v13 + 2;
          if (__OFADD__(1, v13 + 1))
          {
            BUG();
          }

          v44 = *(a2 + 8 * v13 + 40);
          v14 = v7 + v13 + 2;
          if (v6[3] >> 1 <= v7 + v13 + 1)
          {
            v43 = v7;
            v39 = v8;
            v40 = v11;
            v41 = v12;
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + v13 + 2, 1, v6);
            v12 = v41;
            v11 = v40;
            v8 = v39;
            v7 = v43;
          }

          v6[2] = v14;
          *(&v6[v13] + v11) = v44;
          v48[0] = v6;
          ++v13;
          if (v14 >= a1)
          {
            goto LABEL_18;
          }
        }

        v4 = v8;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_18:

  specialized MutableCollection<>.sort(by:)(v48, a3, specialized _ArrayBuffer._consumeAndCreateNew());
  if (v3)
  {
    a2;
    v15 = v48[0];
    swift_bridgeObjectRelease_n(a3, 2);
    return v15;
  }

  else
  {
    v17 = a2;
    v18 = *(a2 + 16);
    v19 = a3 + 4;
    v20 = a3;
    v47 = *(a2 + 16);
    while (v4 != v18)
    {
      if (v4 >= v18)
      {
        BUG();
      }

      v21 = v4 + 1;
      if (__OFADD__(1, v4))
      {
        BUG();
      }

      v22 = v48[0];
      v23 = *(v48[0] + 16);
      if (!v23)
      {
        BUG();
      }

      v24 = *(v17 + 8 * v4 + 32);
      if (v24 < 0)
      {
        BUG();
      }

      v25 = v20[2];
      if (v24 >= v25)
      {
        BUG();
      }

      v26 = *(v48[0] + 8 * v23 + 24);
      if (v26 >= v25)
      {
        BUG();
      }

      v27 = &v19[4 * v24];
      ++v4;
      if (*v27 < v19[4 * v26])
      {
        v45 = v24;
        if (!swift_isUniquelyReferenced_nonNull_native(v48[0]))
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        v28 = v22[2];
        v29 = v28 - 1;
        if (!v28)
        {
          BUG();
        }

        v22[2] = v29;
        if (v28 == 1)
        {
          v30 = 0;
        }

        else
        {
          v31 = a3[2];
          if (v45 >= v31)
          {
            BUG();
          }

          v32 = v28 - 1;
          v30 = 0;
          v33 = v28 - 1;
          do
          {
            v33 = v33 >> 1;
            v34 = v33 + v30;
            if (__OFADD__(v33, v30))
            {
              BUG();
            }

            if (v33 + v30 < 0 || v34 >= v29)
            {
              BUG();
            }

            v35 = v22[v34 + 4];
            if (v35 >= v31)
            {
              BUG();
            }

            if (*v27 >= a3[4 * v35 + 4])
            {
              v33 = v32 + ~v33;
              v30 = v34 + 1;
            }

            v32 = v33;
          }

          while (v33 > 0);
          if (v28 <= v30)
          {
            BUG();
          }

          if (v30 < 0)
          {
            BUG();
          }
        }

        if (v22[3] >> 1 < v28)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v28, 1, v22);
          v29 = v22[2];
        }

        memmove(&v22[v30 + 5], &v22[v30 + 4], 8 * (v29 - v30));
        ++v22[2];
        v22[v30 + 4] = v45;
        v48[0] = v22;
        v4 = v21;
        v20 = a3;
        v17 = a2;
        v18 = v47;
        v19 = a3 + 4;
      }
    }

    v36 = v17;
    swift_bridgeObjectRelease_n(v20, 2);
    v36;
    return v48[0];
  }
}

void *specialized Sequence._minImplementation(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = 0.0;
  v6 = 0;
  if (a1 > 0)
  {
    v6 = a1;
  }

  v54 = a2;

  v55 = a3;

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
  v56 = v7;
  v8 = v7[2];
  v9 = 0;
  v10 = 0;
  if (v8 < a1)
  {
    v48 = *(a2 + 16);
    if (v48)
    {
      v11 = v55;
      v9 = *(v55 + 16);
      if (v9)
      {
        v12 = a1;
        v13 = *(a2 + 32);
        v14 = *(v55 + 32);
        v15 = v7[3];
        v16 = v8 + 1;
        if (v15 >> 1 <= v8)
        {
          v44 = *(v55 + 16);
          v45 = v7[2];
          v57 = *(v55 + 32);
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v8 + 1, 1, v7);
          v8 = v45;
          v12 = a1;
          v9 = v44;
          v11 = v55;
        }

        v7[2] = v16;
        v17 = 2 * v8;
        v7[v17 + 4] = v13;
        v7[v17 + 5] = v14;
        v56 = v7;
        if (v16 >= v12)
        {
          v9 = 1;
          v57 = 0.0;
          v10 = 1;
        }

        else
        {
          v10 = 1;
          v52 = 1 - v9;
          v18 = 0;
          while (1)
          {
            if (!(v18 + 1 - v48))
            {
              v10 = v48;
              v9 = v48;
              goto LABEL_22;
            }

            if (!(v18 + v52))
            {
              break;
            }

            v19 = v18 + 1;
            if (v18 + 1 >= v9)
            {
              BUG();
            }

            v20 = a2;
            v57 = *(a2 + 8 * v18 + 40);
            v21 = *(v11 + 8 * v18 + 40);
            v22 = v8 + v18 + 2;
            if (v7[3] >> 1 <= (v18 + v8 + 1))
            {
              v47 = v8 + v18 + 2;
              v49 = v9;
              v53 = v12;
              v46 = v8;
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v7[3] >= 2uLL, v22, 1, v7);
              v22 = v47;
              v8 = v46;
              v12 = v53;
              v9 = v49;
              v11 = v55;
            }

            v7[2] = v22;
            *&v7[v17 + 6] = v57;
            v7[v17 + 7] = v21;
            v56 = v7;
            v17 += 2;
            ++v10;
            v18 = v19;
            v23 = v22 < v12;
            a2 = v20;
            if (!v23)
            {
              v57 = 0.0;
              v9 = v10;
              goto LABEL_23;
            }
          }

          v10 = v18 + 2;
LABEL_22:
          LOBYTE(v7) = 1;
          v57 = *&v7;
        }
      }

      else
      {
        LOBYTE(v7) = 1;
        v57 = *&v7;
        v10 = 1;
        v9 = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 1;
      v57 = *&v7;
      v9 = 0;
      v10 = 0;
    }

LABEL_23:
    v4 = v3;
  }

  v24 = v9;
  specialized MutableCollection<>.sort(by:)(&v56, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v4)
  {
    v55;
    v54;
    return v56;
  }

  else
  {
    v26 = v55;
    if (!LOBYTE(v57))
    {
      v27 = v24;
      while (v10 != *(v54 + 16))
      {
        if (v10 >= *(v54 + 16))
        {
          BUG();
        }

        v28 = v10++;
        if (v27 == *(v26 + 16))
        {
          break;
        }

        if (v27 >= *(v26 + 16))
        {
          BUG();
        }

        v29 = v56;
        v30 = v56[2];
        if (!v30)
        {
          BUG();
        }

        v31 = *(v26 + 8 * v27++ + 32);
        if (v31 > *&v56[2 * v30 + 3])
        {
          v57 = v31;
          v50 = v27;
          v32 = *(v54 + 8 * v28 + 32);
          if (!swift_isUniquelyReferenced_nonNull_native(v56))
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          }

          v33 = v29[2];
          v34 = v33 - 1;
          v35 = v57;
          if (!v33)
          {
            BUG();
          }

          v51 = v32;
          v29[2] = v34;
          if (v33 == 1)
          {
            v36 = 0;
          }

          else
          {
            v37 = v33 - 1;
            v36 = 0;
            v38 = v33 - 1;
            do
            {
              v38 = v38 >> 1;
              v39 = v38 + v36;
              if (__OFADD__(v38, v36))
              {
                BUG();
              }

              if (v38 + v36 < 0 || v39 >= v34)
              {
                BUG();
              }

              if (v35 <= *&v29[2 * v39 + 5])
              {
                v38 = v37 + ~v38;
                v36 = v39 + 1;
              }

              v37 = v38;
            }

            while (v38 > 0);
            if (v33 <= v36)
            {
              BUG();
            }

            if (v36 < 0)
            {
              BUG();
            }
          }

          if (v29[3] >> 1 <= v34)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v33, 1, v29);
            v34 = v29[2];
          }

          v40 = v34 - v36;
          v41 = 2 * v36;
          v42 = &v29[v41 + 4];
          v43 = &v29[v41 + 6];
          memmove(v43, v42, 16 * v40);
          ++v29[2];
          *(v43 - 2) = v51;
          *(v43 - 1) = v57;
          v56 = v29;
          v26 = v55;
          v27 = v50;
        }
      }
    }

    v26;
    v54;
    return v56;
  }
}

void *_s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a1;
  if (v5)
  {
    v9 = *(a1 + 8);
  }

  v24 = *(a1 + 24);
  v27 = v3;
  v28 = v4;
  v29 = v6;
  v30 = v5;
  if (v9 <= 0)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  if (v10 < 2)
  {
    BUG();
  }

  if (v6[5] <= 0)
  {
    v11 = 1;
    if (v9 != 1)
    {
      if (v10 == 2)
      {
        BUG();
      }

      if (v6[6] <= 0)
      {
        v11 = 2;
        if (v9 >= 3)
        {
          if (v10 < 4)
          {
            BUG();
          }

          if (v29[7] <= 0)
          {
            v17 = v10 - 4;
            v18 = 0;
            while (v9 - 3 != v18)
            {
              if (v17 == v18)
              {
                BUG();
              }

              v19 = v18 + 1;
              if (v29[v18++ + 8] > 0)
              {
                v11 = v19 + 2;
                goto LABEL_7;
              }
            }

            v11 = v9;
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_7:
  v25 = v7;
  v26 = v8;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v21[0] = *a1;
  v21[1] = v12;
  v21[2] = v13;
  v22 = v11;
  v23 = 0;
  v14 = v7;
  outlined retain of [Int](&v24);
  outlined retain of [Int](&v25);
  outlined retain of ContiguousArray<Double>(&v26);
  outlined release of SparseMatrix<Double>.MajorCollection(v21);
  v15 = v30 & 1;
  *v2 = v27;
  *(v2 + 8) = v28;
  *(v2 + 16) = v15;
  result = v29;
  *(v2 + 24) = v29;
  *(v2 + 32) = v14;
  *(v2 + 40) = v8;
  *(v2 + 48) = v11;
  *(v2 + 56) = 0;
  return result;
}

unint64_t _s13LinearAlgebra29UpperStrictlyTriangularMatrixV8dataSizeyS2i_SitFZSd_Tt1g5(unint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, 1);
  v3 = a2 - 1;
  if (v2)
  {
    BUG();
  }

  v5 = v3;
  v4 = a1 * v3;
  if (!is_mul_ok(a1, v5))
  {
    BUG();
  }

  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v7 = v6 * a1;
  if (!is_mul_ok(v6, a1))
  {
    BUG();
  }

  v2 = __OFSUB__(v4, v7 / 2);
  v9 = v4 - v7 / 2;
  if (v2)
  {
    BUG();
  }

  return v9;
}

void *_ss15ContiguousArrayV9repeating5countAByxGx_SitcfCSd_Tt1g5(uint64_t a1, double a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = static ContiguousArray._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v7 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v8 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v4, 68), v5), si128);
    v9 = _mm_cmpgt_epi32(v8, v7);
    v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v7), 245), v9));
    if (~_mm_cvtsi128_si32(v10))
    {
      *&result[v4 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
    {
      *&result[v4 + 5] = a2;
    }

    v4 += 2;
  }

  while (((a1 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 3);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = *(a4 + 2);
  if (v5 <= v8)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v10 = swift_allocObject(v9, 8 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v10 + 32, a4 + 32, 8 * v8);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 16 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for String);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int32>);
    v11 = swift_allocObject(v10, 4 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[4 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v11 = swift_allocObject(v10, 8 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[8 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Bool>);
    v11 = swift_allocObject(v10, v5 + 32, 7);
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v11 = swift_allocObject(v10, 4 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[4 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }

  return v11;
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>);
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<ColumnDescriptor>);
    v11 = swift_allocObject(v10, 32 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 32);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 32 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for ColumnDescriptor);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.NormalizedAnnotation>);
    v11 = swift_allocObject(v10, 32 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 32);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 32 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for MLObjectDetector.NormalizedAnnotation);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CGRect>);
    v11 = swift_allocObject(v10, 32 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 32);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 32 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.ObjectAnnotation>);
    v11 = swift_allocObject(v10, 56 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 56);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[56 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for MLObjectDetector.ObjectAnnotation);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Metadata>);
    v11 = swift_allocObject(v10, 24 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[24 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for Metadata);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Int, score: Double)>);
    v11 = swift_allocObject(v10, 24 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 24 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(precision: Double, recall: Double)>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 16 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
    v11 = swift_allocObject(v10, v5 + 32, 7);
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLUntypedColumn>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 16 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for MLUntypedColumn);
  }

  return v11;
}

__int128 specialized static BinaryFloatingPoint<>.random<A>(in:using:)@<xmm0>(uint64_t a1@<rdi>, double a2@<xmm0>, double a3@<xmm1>, uint64_t a4@<rsi>, uint64_t a5@<rdx>)
{
  if (a2 == a3)
  {
    BUG();
  }

  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  v8 = 0;
  v9 = a3;
  v10 = a2;
  *&v11 = a3 - a2;
  swift_stdlib_random(&v8, 8, a5);
  v6 = v11;
  *&v6 = *&v11 * (v8 * 1.110223024625157e-16) + v10;
  if (*&v6 == v9)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, v10, v9, 8, v5);
  }

  return v6;
}

uint64_t specialized Collection<>.firstIndex(of:)(int a1, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  v5 = a5 >> 1;
  if (v5 == a4)
  {
    return 0;
  }

  if (v5 <= a4)
  {
    BUG();
  }

  if (*(a3 + 4 * a4) != a1)
  {
    v6 = a4 + 1;
    if (a4 + 1 == v5)
    {
      return 0;
    }

    if (a4 + 1 >= v5)
    {
      BUG();
    }

    if (*(a3 + 4 * a4 + 4) == a1)
    {
      return v6;
    }

    else
    {
      a4 = 0;
      while (1)
      {
        if (__OFADD__(1, v6++))
        {
          BUG();
        }

        if (v6 == v5)
        {
          break;
        }

        if (v6 >= v5)
        {
          BUG();
        }

        if (*(a3 + 4 * v6) == a1)
        {
          return v6;
        }
      }
    }
  }

  return a4;
}

void *specialized Sequence._maxImplementation(count:sortedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v53 = 0;
  v6 = 0;
  if (a1 > 0)
  {
    v6 = a1;
  }

  v51 = a3;

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0, _swiftEmptyArrayStorage);
  v50 = v7;
  v8 = v7[2];
  if (v8 >= a1)
  {
    v52 = 0;
    v10 = v51;
  }

  else
  {
    v9 = a2 + 1;
    if (__OFADD__(1, a2))
    {
      BUG();
    }

    v10 = v51;
    v53 = *(v51 + 16);
    if (v53)
    {
      v11 = a1;
      v46 = v3;
      v12 = *(v51 + 32);
      v13 = v8 + 1;
      if (v7[3] >> 1 <= v8)
      {
        v49 = v8;
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v7[3] >= 2uLL, v13, 1, v7);
        v8 = v49;
        v11 = a1;
        v9 = v5 + 1;
      }

      v7[2] = v13;
      v14 = 2 * v8;
      v7[v14 + 4] = v5;
      v7[v14 + 5] = v12;
      v50 = v7;
      if (v13 >= v11)
      {
        v5 = v9;
        v53 = 1;
        v52 = 0;
      }

      else
      {
        v45 = 1 - v53;
        v15 = 0;
        while (1)
        {
          v16 = v9 + v15;
          v17 = v9 + v15 + 1;
          if (__OFADD__(1, v9 + v15))
          {
            BUG();
          }

          LOBYTE(v3) = v15 + v45 == 0;
          if (!(v15 + v45))
          {
            break;
          }

          v18 = v15 + 1;
          if (v15 + 1 >= v53)
          {
            BUG();
          }

          v41 = *(v51 + 8 * v15 + 40);
          v19 = v7[3];
          v20 = v8 + v15 + 2;
          if (v19 >> 1 <= v15 + v8 + 1)
          {
            v40 = v8 + v15 + 2;
            v43 = v9;
            v47 = v11;
            v48 = v8;
            v52 = v3;
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 >= 2, v20, 1, v7);
            v20 = v40;
            v8 = v48;
            v11 = v47;
            v9 = v43;
          }

          v7[2] = v20;
          v7[v14 + 6] = v16;
          v7[v14 + 7] = v41;
          v50 = v7;
          v14 += 2;
          v15 = v18;
          if (v20 >= v11)
          {
            v52 = v3;
            v53 = v18 + 1;
            goto LABEL_21;
          }
        }

        v52 = v3;
LABEL_21:
        v5 = v17;
      }

      v10 = v51;
      v4 = v46;
    }

    else
    {
      v5 = a2 + 1;
      LOBYTE(v7) = 1;
      v52 = v7;
      v53 = 0;
    }
  }

  specialized MutableCollection<>.sort(by:)(&v50, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (v4)
  {
    v10;
    return v50;
  }

  else
  {
    if (!v52)
    {
      v22 = v53;
      v23 = v5;
      while (1)
      {
        v24 = v23;
        v25 = __OFADD__(1, v23++);
        if (v25)
        {
          BUG();
        }

        if (v22 == *(v10 + 16))
        {
          break;
        }

        if (v22 >= *(v10 + 16))
        {
          BUG();
        }

        v26 = v50;
        v27 = v50[2];
        if (!v27)
        {
          BUG();
        }

        v28 = *(v10 + 8 * v22++ + 32);
        if (v28 >= v50[5])
        {
          v42 = v24;
          v29 = v50[2];
          v30 = 0;
          v31 = v29;
          do
          {
            v31 = v31 >> 1;
            v32 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              BUG();
            }

            if (v32 >= v27)
            {
              BUG();
            }

            if (v28 >= v50[2 * v32 + 5])
            {
              v25 = __OFADD__(1, v32);
              v33 = v32 + 1;
              if (v25)
              {
                BUG();
              }

              v31 = v29 + ~v31;
              v30 = v33;
            }

            v29 = v31;
          }

          while (v31 > 0);
          if (v30 >= 2)
          {
            v34 = v23;
            v53 = v22;
            if (!swift_isUniquelyReferenced_nonNull_native(v50))
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
            }

            v35 = v26 + 6;
            v36 = 1;
            v22 = v53;
            v23 = v34;
            do
            {
              if (v36 >= v26[2])
              {
                BUG();
              }

              *(v35 - 1) = *v35;
              ++v36;
              ++v35;
            }

            while (v36 < v30);
          }

          v25 = __OFSUB__(v30, 1);
          v37 = v30 - 1;
          if (v25)
          {
            BUG();
          }

          v44 = v23;
          v38 = v22;
          if (!swift_isUniquelyReferenced_nonNull_native(v26))
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          v23 = v44;
          if (v37 < 0)
          {
            BUG();
          }

          if (v37 >= v26[2])
          {
            BUG();
          }

          v22 = v38;
          v39 = 2 * v37;
          v26[v39 + 4] = v42;
          v26[v39 + 5] = v28;
          v50 = v26;
          v10 = v51;
        }
      }
    }

    v10;
    return v50;
  }
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Array.index(_:offsetBy:limitedBy:)(a1, a2, a3);
}

{
  return specialized Array.index(_:offsetBy:limitedBy:)(a1, a2, a3, a4);
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFSUB__(a3, a1);
  v4 = a3 - a1;
  if (v3)
  {
    BUG();
  }

  if (a2 <= 0)
  {
    v5 = v4 <= 0;
    v6 = v4 > a2;
  }

  else
  {
    v5 = v4 >= 0;
    v6 = v4 < a2;
  }

  if (v6 && v5)
  {
    return 0;
  }

  v3 = __OFADD__(a2, a1);
  v7 = a2 + a1;
  if (v3)
  {
    BUG();
  }

  return v7;
}

void *specialized ArraySlice._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = type metadata accessor for __ContiguousArrayStorageBase(0);
  swift_unknownObjectRetain_n(a1, 2);
  v8 = swift_dynamicCastClass(a1, v7);
  if (!v8)
  {
    swift_unknownObjectRelease(a1);
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (v9 != (a4 >> 1) - a3)
  {
    swift_unknownObjectRelease(a1);
LABEL_2:
    v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
LABEL_9:
    swift_unknownObjectRelease(a1);
    return v6;
  }

  v6 = swift_dynamicCastClass(a1, v7);
  swift_unknownObjectRelease(a1);
  if (!v6)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  return v6;
}

id sub_BDA82()
{
  v1 = v0;
  result = MLRecommender.model.getter();
  *v1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLRecommender(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = a2[7];
    *(a1 + 64) = a2[8];
    v6 = a2[11];
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 88) = v6;
    v24 = a2[13];

    if (v24)
    {
      *(a1 + 96) = a2[12];
      *(a1 + 104) = v24;
      *(a1 + 112) = a2[14];
    }

    else
    {
      *(a1 + 112) = a2[14];
      *(a1 + 96) = *(a2 + 6);
    }

    *(a1 + 120) = a2[15];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = *(a2 + 17);
    v21 = a2[19];
    *(a1 + 152) = v21;
    *(a1 + 160) = a2[20];
    *(a1 + 168) = a2[21];
    *(a1 + 176) = a2[22];
    *(a1 + 184) = a2[23];
    *(a1 + 192) = a2[24];
    *(a1 + 200) = a2[25];
    v7 = a3[9];
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    *(a1 + v7 + 8) = *(a2 + v7 + 8);
    v26 = type metadata accessor for MLRecommender.ModelParameters(0);
    v10 = v26[7];
    v23 = v8;
    v11 = (v10 + v8);
    v25 = v9;
    v12 = &v9[v10];
    v13 = type metadata accessor for DataFrame(0);

    v21;

    if (__swift_getEnumTagSinglePayload(v12, 1, v13))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v11, v12, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v13 - 8) + 16))(v11, v12, v13);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
    }

    v15 = v26[8];
    v16 = v23 + v15;
    v17 = &v25[v15];
    v18 = v25[v15 + 8];
    if (v18 == -1)
    {
      *(v16 + 8) = v17[8];
      *v16 = *v17;
    }

    else
    {
      v19 = *v17;
      outlined copy of Result<_DataTable, Error>(*v17, v18);
      *v16 = v19;
      *(v16 + 8) = v18 & 1;
    }

    *(v23 + v26[9]) = *&v25[v26[9]];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    *(a1 + a3[11]) = *(a2 + a3[11]);
  }

  return a1;
}

uint64_t destroy for MLRecommender(uint64_t a1, uint64_t a2)
{
  *a1;
  *(a1 + 8);
  *(a1 + 16);
  *(a1 + 24);
  *(a1 + 56);
  *(a1 + 64);

  v3 = *(a1 + 104);
  if (v3)
  {
    v3;
    *(a1 + 112);
  }

  *(a1 + 120);
  *(a1 + 128);

  *(a1 + 168);
  *(a1 + 184);
  *(a1 + 200);
  v4 = a1 + *(a2 + 36);
  v5 = type metadata accessor for MLRecommender.ModelParameters(0);
  v6 = v4 + *(v5 + 28);
  v7 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  result = *(v5 + 32);
  v9 = *(v4 + result + 8);
  if (v9 != -1)
  {
    return outlined consume of Result<_DataTable, Error>(*(v4 + result), v9);
  }

  return result;
}

uint64_t initializeWithCopy for MLRecommender(uint64_t a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  v3 = a2[11];
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = v3;
  v20 = a2[13];

  if (v20)
  {
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v20;
    *(a1 + 112) = a2[14];
  }

  else
  {
    *(a1 + 112) = a2[14];
    *(a1 + 96) = *(a2 + 6);
  }

  *(a1 + 120) = a2[15];
  *(a1 + 128) = a2[16];
  *(a1 + 136) = *(a2 + 17);
  v17 = a2[19];
  *(a1 + 152) = v17;
  *(a1 + 160) = a2[20];
  *(a1 + 168) = a2[21];
  *(a1 + 176) = a2[22];
  *(a1 + 184) = a2[23];
  *(a1 + 192) = a2[24];
  *(a1 + 200) = a2[25];
  v4 = a3[9];
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  *(a1 + v4 + 8) = *(a2 + v4 + 8);
  v22 = type metadata accessor for MLRecommender.ModelParameters(0);
  v7 = v22[7];
  v19 = v5;
  __dst = (v7 + v5);
  v21 = v6;
  v8 = &v6[v7];
  v9 = type metadata accessor for DataFrame(0);

  v17;

  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  v11 = v22[8];
  v12 = v19 + v11;
  v13 = &v21[v11];
  v14 = v21[v11 + 8];
  if (v14 == -1)
  {
    *(v12 + 8) = v13[8];
    *v12 = *v13;
  }

  else
  {
    v15 = *v13;
    outlined copy of Result<_DataTable, Error>(*v13, v14);
    *v12 = v15;
    *(v12 + 8) = v14 & 1;
  }

  *(v19 + v22[9]) = *&v21[v22[9]];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

uint64_t *assignWithCopy for MLRecommender(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *a1;
  *a1 = *a2;

  v5;
  v6 = a1[1];
  a1[1] = a2[1];

  v6;
  v7 = a1[2];
  a1[2] = a2[2];

  v7;
  v8 = a1[3];
  a1[3] = a2[3];

  v8;
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  v9 = a1[7];
  a1[7] = a2[7];

  v9;
  v10 = a1[8];
  a1[8] = a2[8];

  v10;
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v11 = a1 + 12;
  v12 = a2 + 12;
  v13 = a1[13];
  v14 = a2[13];
  if (v13)
  {
    if (v14)
    {
      a1[12] = a2[12];
      a1[13] = a2[13];

      v13;
      v15 = a1[14];
      a1[14] = a2[14];

      v15;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v11 = *v12;
      a1[14] = a2[14];
    }
  }

  else if (v14)
  {
    a1[12] = a2[12];
    a1[13] = a2[13];
    a1[14] = a2[14];
  }

  else
  {
    a1[14] = a2[14];
    *v11 = *v12;
  }

  v16 = a1[15];
  a1[15] = a2[15];

  v16;
  v17 = a1[16];
  a1[16] = a2[16];

  v17;
  a1[17] = a2[17];
  a1[18] = a2[18];
  v18 = a2[19];
  v19 = a1[19];
  a1[19] = v18;
  v18;

  a1[20] = a2[20];
  v20 = a1[21];
  a1[21] = a2[21];

  v20;
  a1[22] = a2[22];
  v21 = a1[23];
  a1[23] = a2[23];

  v21;
  a1[24] = a2[24];
  v22 = a1[25];
  a1[25] = a2[25];

  v22;
  v23 = a3[9];
  v24 = a1 + v23;
  v25 = a2 + v23;
  *(a1 + v23) = *(a2 + v23);
  *(a1 + v23 + 8) = *(a2 + v23 + 8);
  *(a1 + v23 + 16) = *(a2 + v23 + 16);
  v46 = type metadata accessor for MLRecommender.ModelParameters(0);
  v26 = v46[7];
  v44 = v24;
  v27 = &v24[v26];
  v45 = v25;
  v28 = &v25[v26];
  v29 = type metadata accessor for DataFrame(0);
  __dst = v27;
  LODWORD(v27) = __swift_getEnumTagSinglePayload(v27, 1, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  if (v27)
  {
    if (EnumTagSinglePayload)
    {
      v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v32 = __dst;
LABEL_13:
      memcpy(v32, v28, v31);
      goto LABEL_16;
    }

    (*(*(v29 - 8) + 16))(__dst, v28, v29);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v29);
  }

  else
  {
    v33 = *(v29 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v33 + 8))(__dst, v29);
      v31 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v32 = __dst;
      goto LABEL_13;
    }

    (*(v33 + 24))(__dst, v28, v29);
  }

LABEL_16:
  v34 = v46[8];
  v35 = &v44[v34];
  v36 = &v45[v34];
  v37 = v45[v34 + 8];
  if (v44[v34 + 8] == -1)
  {
    if (v37 == -1)
    {
      v35[8] = v36[8];
      *v35 = *v36;
    }

    else
    {
      v41 = *v36;
      outlined copy of Result<_DataTable, Error>(v41, v37);
      *v35 = v41;
      v35[8] = v37 & 1;
    }
  }

  else if (v37 == -1)
  {
    outlined destroy of MLDataTable(&v44[v34]);
    *v35 = *v36;
    v35[8] = v36[8];
  }

  else
  {
    v38 = *v36;
    outlined copy of Result<_DataTable, Error>(v38, v37);
    v39 = *v35;
    *v35 = v38;
    v40 = *(v35 + 2);
    v35[8] = v37 & 1;
    outlined consume of Result<_DataTable, Error>(v39, v40);
  }

  *&v44[v46[9]] = *&v45[v46[9]];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

char *initializeWithTake for MLRecommender(char *a1, char *a2, uint64_t a3)
{
  memcpy(a1, a2, 0xD0uLL);
  v13 = a3;
  v4 = *(a3 + 36);
  v5 = &a1[v4];
  v6 = &a2[v4];
  a1[v4] = a2[v4];
  *&a1[v4 + 8] = *&a2[v4 + 8];
  v15 = type metadata accessor for MLRecommender.ModelParameters(0);
  v7 = v15[7];
  v14 = v5;
  __dst = &v5[v7];
  v8 = &v6[v7];
  v9 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 32))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  v11 = v15[8];
  v14[v11 + 8] = v6[v11 + 8];
  *&v14[v11] = *&v6[v11];
  *&v14[v15[9]] = *&v6[v15[9]];
  a1[*(v13 + 40)] = a2[*(v13 + 40)];
  a1[*(v13 + 44)] = a2[*(v13 + 44)];
  return a1;
}

uint64_t *assignWithTake for MLRecommender(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  v5;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1[2];
  a1[2] = a2[2];
  v7;
  v8 = a1[3];
  a1[3] = a2[3];
  v8;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v9 = a1[7];
  a1[7] = a2[7];
  v9;
  v10 = a1[8];
  a1[8] = a2[8];
  v10;
  a1[9] = a2[9];

  *(a1 + 5) = *(a2 + 5);
  v11 = a1 + 12;
  v12 = a2 + 12;
  v13 = a1[13];
  if (v13)
  {
    v14 = a2[13];
    if (v14)
    {
      a1[12] = a2[12];
      a1[13] = v14;
      v13;
      v15 = a1[14];
      a1[14] = a2[14];
      v15;
    }

    else
    {
      outlined destroy of InteractionLookupTable((a1 + 12));
      *v11 = *v12;
      a1[14] = a2[14];
    }
  }

  else
  {
    a1[14] = a2[14];
    *v11 = *v12;
  }

  v16 = a1[15];
  a1[15] = a2[15];
  v16;
  v17 = a1[16];
  a1[16] = a2[16];
  v17;
  *(a1 + 17) = *(a2 + 17);
  v18 = a1[19];
  a1[19] = a2[19];

  a1[20] = a2[20];
  v19 = a1[21];
  a1[21] = a2[21];
  v19;
  a1[22] = a2[22];
  v20 = a1[23];
  a1[23] = a2[23];
  v20;
  a1[24] = a2[24];
  v21 = a1[25];
  a1[25] = a2[25];
  v21;
  v44 = a3;
  v22 = *(a3 + 36);
  v23 = a1 + v22;
  v24 = a2 + v22;
  *(a1 + v22) = *(a2 + v22);
  *(a1 + v22 + 8) = *(a2 + v22 + 8);
  *(a1 + v22 + 16) = *(a2 + v22 + 16);
  v42 = type metadata accessor for MLRecommender.ModelParameters(0);
  v25 = v42[7];
  v41 = v23;
  v26 = &v23[v25];
  v43 = v24;
  v27 = &v24[v25];
  v28 = type metadata accessor for DataFrame(0);
  __dst = v26;
  LODWORD(v26) = __swift_getEnumTagSinglePayload(v26, 1, v28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
  if (v26)
  {
    if (EnumTagSinglePayload)
    {
      v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v31 = __dst;
LABEL_11:
      memcpy(v31, v27, v30);
      goto LABEL_14;
    }

    (*(*(v28 - 8) + 32))(__dst, v27, v28);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v28);
  }

  else
  {
    v32 = *(v28 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v32 + 8))(__dst, v28);
      v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v31 = __dst;
      goto LABEL_11;
    }

    (*(v32 + 40))(__dst, v27, v28);
  }

LABEL_14:
  v33 = v42[8];
  v34 = &v41[v33];
  v35 = v43;
  v36 = &v43[v33];
  v37 = v41[v33 + 8];
  if (v37 == -1)
  {
    *(v34 + 8) = v36[8];
    *v34 = *v36;
  }

  else
  {
    v38 = v43[v33 + 8];
    if (v38 == -1)
    {
      outlined destroy of MLDataTable(v34);
      *v34 = *v36;
      *(v34 + 8) = v36[8];
    }

    else
    {
      v39 = *v34;
      *v34 = *v36;
      *(v34 + 8) = v38 & 1;
      outlined consume of Result<_DataTable, Error>(v39, v37);
    }

    v35 = v43;
  }

  *&v41[v42[9]] = *&v35[v42[9]];
  *(a1 + *(v44 + 40)) = *(a2 + *(v44 + 40));
  *(a1 + *(v44 + 44)) = *(a2 + *(v44 + 44));
  return a1;
}

uint64_t sub_BEBBC(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLRecommender.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 36), a2, v5);
  }

  return result;
}

uint64_t sub_BEC34(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLRecommender.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 36), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLRecommender(uint64_t a1)
{
  v3[0] = &unk_33FC40;
  v3[1] = &value witness table for Builtin.UnknownObject + 64;
  v3[2] = &unk_33FC58;
  v3[3] = &unk_33FC58;
  v3[4] = &unk_33FC70;
  result = type metadata accessor for MLRecommender.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[5] = *(result - 8) + 64;
    v3[6] = &unk_33FC88;
    v3[7] = &unk_33FC88;
    swift_initStructMetadata(a1, 256, 8, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *outlined retain of RecommenderModel<MLRecommender.Identifier, MLRecommender.Identifier>(void *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  v4 = a1[14];

  outlined copy of InteractionLookupTable?(v2, v3, v4);

  return a1;
}

uint64_t outlined copy of InteractionLookupTable?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

char specialized implicit closure #1 in RecommenderTrainingData.init(_:)(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = v2;
  v3 = *a1;
  v23 = *(a1 + 8);
  v4 = *(a1 + 24);
  v24 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  v12[0] = v3;
  v12[1] = v23;
  v13 = v6;
  v14 = v4;
  v22 = v4;
  v15 = v24;
  v16 = v7;
  v17 = v5;
  outlined copy of MLRecommender.Identifier(v3, v23, v6);
  v8 = v4;
  v9 = v24;
  outlined copy of MLRecommender.Identifier(v8, v24, v7);
  swift_getAtKeyPath(v12, a2);
  outlined consume of MLRecommender.Identifier(v3, v23, v6);
  outlined consume of MLRecommender.Identifier(v22, v9, v7);
  result = v19;
  v11 = v20;
  *v20 = v18;
  *(v11 + 16) = result;
  return result;
}

char specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = specialized closure #2 in RecommenderModel.recommend(for:limit:allowedItems:disallowedItems:omittingObservedInteractions:)(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4);
  if (!v5)
  {
    v6[3] = v11;
    v6[2] = v10;
    v6[1] = v9;
    *v6 = v8;
  }

  return result;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B])()
{
  v2 = v0;
  result = (*(v1 + 16))();
  *v2 = result;
  return result;
}

void *outlined retain of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(void *a1)
{

  return a1;
}

uint64_t outlined retain of SparseMatrix<Double>.MajorCollection(uint64_t a1)
{

  return a1;
}

uint64_t *outlined release of RecommenderTrainingData<MLRecommender.Identifier, MLRecommender.Identifier>(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[7];
  v4 = a1[8];

  v4;
  v3;
  v2;
  v1;
  v7;
  v6;
  return a1;
}

uint64_t outlined release of SparseMatrix<Double>.MajorCollection(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);

  v2;
  v1;
  return a1;
}

void *outlined release of ItemSimilarityTrainer<CosineSimilarity>(void *a1)
{
  v4 = a1[6];
  v5 = a1[7];
  v1 = a1[9];
  v2 = a1[13];
  a1[14];
  v2;

  v1;

  v5;
  v4;
  return a1;
}

uint64_t MLShapedArray<>.init(shape:nestedArray:)(uint64_t a1, uint64_t a2)
{
  return MLShapedArray<>.init(shape:nestedArray:)(a1, a2, &demangling cache variable for type metadata for [Any]);
}

{
  return MLShapedArray<>.init(shape:nestedArray:)(a1, a2, &demangling cache variable for type metadata for [Any?]);
}

uint64_t MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v55 = v7;
  *&v64 = a1;
  if (a5 >> 1 == a4)
  {
    outlined init with copy of Any?(a6, v52);
    if (v53)
    {
      if (swift_dynamicCast(v54, v52, &type metadata for Any + 8, &type metadata for Double, 6))
      {
        *v52 = *&v54[0];
        *&v54[0] = v64;

        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
        v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
        return MLShapedArray.subscript.setter(v52, v54, v9, v10, v11);
      }
    }

    else
    {
      outlined destroy of Any?(v52);
    }

    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v29 = 0xD000000000000035;
    *(v29 + 8) = "Expected a nested array with " + 0x8000000000000000;
    goto LABEL_46;
  }

  if ((a5 >> 1) <= a4)
  {
    BUG();
  }

  v56 = a2;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v63 = *(a3 + 8 * a4);
  outlined init with copy of Any?(a6, v52);
  if (!v53)
  {
    outlined destroy of Any?(v52);
    goto LABEL_26;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  if (!swift_dynamicCast(v54, v52, &type metadata for Any + 8, v13, 6))
  {
    goto LABEL_26;
  }

  if (*(*&v54[0] + 16) != v63)
  {
    v54[0];
LABEL_26:
    outlined init with copy of Any?(a6, v52);
    if (v53)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
      if (swift_dynamicCast(v54, v52, &type metadata for Any + 8, v30, 6))
      {
        v31 = *&v54[0];
        if (*(*&v54[0] + 16) == v63)
        {
          v32 = v56;
          swift_unknownObjectRetain(v56);
          v63 = specialized Collection.dropFirst(_:)(1, v32, v61, v60, v59);
          v59 = v33;
          v60 = v34;
          v61 = v35;
          v36 = v64;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v36);
          v62 = v6;
          if (!isUniquelyReferenced_nonNull_native)
          {
            *&v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1, v64);
          }

          v38 = *(v64 + 16);
          if (*(v64 + 24) >> 1 <= v38)
          {
            *&v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v64 + 24) >= 2uLL, v38 + 1, 1, v64);
          }

          v39 = v64;
          *(v64 + 16) = v38 + 1;
          *(v39 + 8 * v38 + 32) = 0;
          v57 = *(v31 + 16);
          v40 = v31 + 32;
          v41 = 0;
          for (i = v31; ; v31 = i)
          {
            if (v57 == v41)
            {
              v64;
              swift_unknownObjectRelease(v63);
              v50 = v31;
              return v50;
            }

            if (v41 >= *(v31 + 16))
            {
              BUG();
            }

            outlined init with copy of Any?(v40, &v52[8]);
            v54[1] = v53;
            v54[0] = *&v52[8];
            v42 = *(v64 + 16);
            if (swift_isUniquelyReferenced_nonNull_native(v64))
            {
              v43 = v64;
            }

            else
            {
              v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
            }

            if (!v42)
            {
              BUG();
            }

            if (v42 > v43[2])
            {
              BUG();
            }

            v43[v42 + 3] = v41;
            *&v64 = v43;
            v44 = v62;
            MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(v43, v63, v59, v60, v61, v54);
            v62 = v44;
            if (v44)
            {
              break;
            }

            outlined destroy of Any?(v54);
            v40 += 32;
            ++v41;
          }

          swift_unknownObjectRelease(v63);
          outlined destroy of Any?(v54);
          v64;
          v50 = i;
          return v50;
        }

        v54[0];
      }
    }

    else
    {
      outlined destroy of Any?(v52);
    }

    *v52 = 0;
    *&v52[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v52[8];
    *v52 = 0xD00000000000001DLL;
    *&v52[8] = "ts of type Int or String." + 0x8000000000000000;
    *&v54[0] = v63;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v45._object;
    String.append(_:)(v45);
    object;
    v47._countAndFlagsBits = 0x746E656D656C6520;
    v47._object = 0xEA00000000002E73;
    String.append(_:)(v47);
    v64 = *v52;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v29 = v64;
LABEL_46:
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    return swift_willThrow();
  }

  v57 = *&v54[0];
  v14 = v56;
  swift_unknownObjectRetain(v56);
  i = specialized Collection.dropFirst(_:)(1, v14, v61, v60, v59);
  v60 = v15;
  v61 = v16;
  v56 = v17;
  v18 = v64;

  v19 = swift_isUniquelyReferenced_nonNull_native(v18);
  v62 = v6;
  if (!v19)
  {
    *&v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 16) + 1, 1, v64);
  }

  v20 = *(v64 + 16);
  if (*(v64 + 24) >> 1 <= v20)
  {
    *&v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v64 + 24) >= 2uLL, v20 + 1, 1, v64);
  }

  v21 = v64;
  *(v64 + 16) = v20 + 1;
  *(v21 + 8 * v20 + 32) = 0;
  v22 = v57;
  v59 = *(v57 + 16);
  v23 = v57 + 32;
  for (j = 0; ; ++j)
  {
    if (v59 == j)
    {
      v49 = v22;
      v64;
      swift_unknownObjectRelease(i);
      v50 = v49;
      return v50;
    }

    if (j >= *(v22 + 16))
    {
      BUG();
    }

    v63 = v23;
    outlined init with copy of Any(v23, &v52[8]);
    outlined init with take of Any(&v52[8], v54);
    v25 = v64;
    v26 = *(v64 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native(v64))
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
    }

    if (!v26)
    {
      BUG();
    }

    if (v26 > v25[2])
    {
      BUG();
    }

    v25[v26 + 3] = j;
    outlined init with copy of Any(v54, v51);
    *&v64 = v25;
    v27 = v62;
    MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(v25, i, v60, v61, v56, v51);
    v62 = v27;
    if (v27)
    {
      break;
    }

    outlined destroy of Any?(v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    v23 = v63 + 32;
    v22 = v57;
  }

  swift_unknownObjectRelease(i);
  outlined destroy of Any?(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  v64;
  v50 = v57;
  return v50;
}

uint64_t MLShapedArray<>.init(shape:nestedArray:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v21 = a2;
  v18 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v16[0] = 0;
  v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);

  v20 = v5;
  MLShapedArrayProtocol.init(repeating:shape:)(v16, a1, v5, v6);
  v7 = specialized MutableCollection.subscript.getter(0, a1);
  v9 = v8;
  v11 = v10;
  v19 = v12;
  a1;
  v16[3] = __swift_instantiateConcreteTypeFromMangledName(v17);
  v16[0] = v21;
  v21 = v7;
  v13 = v9;
  v14 = v18;
  MLShapedArray<>.fillNested(partialIndex:partialShape:element:)(_swiftEmptyArrayStorage, v7, v13, v11, v19, v16);
  if (v4)
  {
    (*(*(v20 - 8) + 8))(v14);
  }

  swift_unknownObjectRelease(v21);
  return outlined destroy of Any?(v16);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 < 0)
  {
    BUG();
  }

  v8 = a5 >> 1;
  v9 = specialized Array.index(_:offsetBy:limitedBy:)(a4, a1, a5 >> 1);
  if (v10)
  {
    v9 = v8;
  }

  if (v8 < v9)
  {
    BUG();
  }

  v11 = specialized ArraySlice.subscript.getter(v9, v8, a2, a3, a4, a5);
  swift_unknownObjectRelease(a2);
  return v11;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    BUG();
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    BUG();
  }

  if (a2 < a5)
  {
    BUG();
  }

  if (a2 < 0)
  {
    BUG();
  }

  swift_unknownObjectRetain(a3);
  return a3;
}

uint64_t NeuralNetwork.Layer.InnerProductParameters.init(from:)(uint64_t a1, uint64_t a2)
{
  v58 = v2;
  v54 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v4 = *(*(v54 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v45;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v55 = &v45;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v48 = &v45;
  v59 = type metadata accessor for TensorShape(0);
  v57 = *(v59 - 8);
  v13 = *(v57 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v49 = &v45;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v53 = &v45;
  v52 = type metadata accessor for Tensor(0);
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v50 = &v45;
  v22 = alloca(v19);
  v23 = alloca(v19);
  Dense.weight.getter(0, a2);
  Tensor.shape.getter(0, a2, v24);
  v56 = *(v18 + 8);
  v47 = &v45;
  v25 = v52;
  v56(&v45, v52);
  v26 = v53;
  v51 = TensorShape.subscript.getter(1);
  v57 = *(v57 + 8);
  v27 = v59;
  (v57)(v26, v59);
  v28 = v50;
  Dense.weight.getter(v26, v27);
  v29 = v49;
  Tensor.shape.getter(v26, v27, v30);
  v31 = v28;
  v32 = a1;
  v56(v31, v25);
  v33 = TensorShape.subscript.getter(0);
  (v57)(v29, v59);
  v34 = v33;
  v35 = v48;
  v36 = v25;
  NeuralNetwork.Layer.InnerProductParameters.init(inputChannelCount:outputChannelCount:)(v51, v34);
  Dense.bias.getter();
  v37 = 1;
  if (__swift_getEnumTagSinglePayload(v35, 1, v25) == 1)
  {
    outlined destroy of Tensor?(v35);
    v38 = 0;
    NeuralNetwork.Layer.InnerProductParameters.hasBias.setter(0);
  }

  else
  {
    v59 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v56(v35, v25);
    NeuralNetwork.Layer.InnerProductParameters.hasBias.setter(1);
    v39 = v55;
    NeuralNetwork.WeightParameters.init(_:updatable:)(v59, 0);
    v37 = 0;
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v54);
    v38 = v39;
    NeuralNetwork.Layer.InnerProductParameters.bias.setter(v39);
  }

  v40 = v47;
  Dense.weight.getter(v38, v37);
  v41 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v56(v40, v36);
  v42 = v46;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v41, 0);
  NeuralNetwork.Layer.InnerProductParameters.weights.setter(v42);
  v43 = type metadata accessor for Dense(0);
  return (*(*(v43 - 8) + 8))(v32, v43);
}

uint64_t outlined destroy of Tensor?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    v18 = *(*(v6 - 8) + 16);
    v18(a1, a2, v6);
    v7 = a3[5];
    __dst = a1 + v7;
    v8 = a2 + v7;
    if (__swift_getEnumTagSinglePayload(v8, 1, v6))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v18(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v11 = a3[6];
    *(a1 + v11) = *(a2 + v11);
    *(a1 + v11 + 8) = *(a2 + v11 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v12 = a3[8];
    __dsta = a1 + v12;
    v13 = (a2 + v12 + 8);
    v14 = a2 + v12;
    v19 = (a1 + v12 + 8);
    *(a1 + v12) = *(a2 + v12);
    v15 = *(a2 + v12 + 32);

    if (v15)
    {
      *(__dsta + 4) = v15;
      (**(v15 - 8))(v19, v13, v15);
    }

    else
    {
      v16 = *v13;
      v19[1] = v13[1];
      *v19 = v16;
    }

    *(__dsta + 40) = *(v14 + 40);
    *(__dsta + 56) = *(v14 + 56);
    __dsta[72] = v14[72];
  }

  return v3;
}

uint64_t destroy for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + a2[5];
  if (!__swift_getEnumTagSinglePayload(v4, 1, v2))
  {
    v3(v4, v2);
  }

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  result = a2[8];
  if (*(a1 + result + 32))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + a1 + 8));
  }

  return result;
}

char *initializeWithCopy for MLLogisticRegressionClassifier.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v17 = *(*(v4 - 8) + 16);
  v17(a1, a2, v4);
  v5 = a3[5];
  v6 = &a1[v5];
  v7 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v7, 1, v4))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

  else
  {
    v17(v6, v7, v4);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v4);
  }

  v9 = a3[6];
  *&a1[v9] = *&a2[v9];
  *&a1[v9 + 8] = *&a2[v9 + 8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v10 = a3[8];
  v18 = &a1[v10];
  v11 = &a2[v10 + 8];
  v12 = &a2[v10];
  v13 = &a1[v10 + 8];
  *&a1[v10] = *&a2[v10];
  v14 = *&a2[v10 + 32];

  if (v14)
  {
    *(v18 + 4) = v14;
    (**(v14 - 8))(v13, v11, v14);
  }

  else
  {
    v15 = *v11;
    *(v13 + 1) = *(v11 + 1);
    *v13 = v15;
  }

  *(v18 + 40) = *(v12 + 40);
  *(v18 + 56) = *(v12 + 56);
  v18[72] = v12[72];
  return a1;
}

uint64_t assignWithCopy for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v26 = *(v5 - 8);
  v25 = *(v26 + 24);
  v25(a1, a2, v5);
  v24 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v26 + 16))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v26 + 8))(v7, v5, v10, v25);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v25(v7, v8, v5);
  }

LABEL_9:
  v12 = v24[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);

  v13;
  v14 = v24[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v15;
  v16 = v24[8];
  v17 = a1 + v16;
  v18 = a2 + v16 + 8;
  v19 = v16 + a2;
  v20 = (a1 + v16 + 8);
  *(a1 + v16) = *(a2 + v16);
  v21 = *(a2 + v16 + 32);
  if (!*(a1 + v16 + 32))
  {
    if (v21)
    {
      *(v17 + 32) = v21;
      (**(v21 - 8))(v20, v18);
      goto LABEL_16;
    }

LABEL_15:
    v22 = *v18;
    v20[1] = *(v18 + 16);
    *v20 = v22;
    goto LABEL_16;
  }

  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v16 + 8));
    goto LABEL_15;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + v16 + 8), v18);
LABEL_16:
  *(v17 + 40) = *(v19 + 40);
  *(v17 + 48) = *(v19 + 48);
  *(v17 + 56) = *(v19 + 56);
  *(v17 + 64) = *(v19 + 64);
  *(v17 + 72) = *(v19 + 72);
  return a1;
}

char *initializeWithTake for MLLogisticRegressionClassifier.PersistentParameters(char *a1, char *a2, int *a3)
{
  v4 = type metadata accessor for DataFrame(0);
  v9 = *(*(v4 - 8) + 32);
  v9(a1, a2, v4);
  v5 = a3[5];
  __dst = &a1[v5];
  v6 = &a2[v5];
  if (__swift_getEnumTagSinglePayload(v6, 1, v4))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    v9(__dst, v6, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  qmemcpy(&a1[a3[8]], &a2[a3[8]], 0x49uLL);
  return a1;
}

uint64_t assignWithTake for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v24 = *(v5 - 8);
  v23 = *(v24 + 40);
  v23(a1, a2, v5);
  v22 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v24 + 32))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v24 + 8))(v7, v5, v10, v23);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v23(v7, v8, v5);
  }

LABEL_9:
  v12 = v22[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  v13;
  v14 = v22[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  v15;
  v16 = v22[8];
  v17 = a1 + v16;
  v18 = v16 + a2;
  v19 = (a1 + v16 + 8);
  *(a1 + v16) = *(a2 + v16);
  if (*(a1 + v16 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v16 + 8));
  }

  v20 = *(v18 + 8);
  v19[1] = *(v18 + 24);
  *v19 = v20;
  *(v17 + 40) = *(v18 + 40);
  *(v17 + 56) = *(v18 + 56);
  *(v17 + 72) = *(v18 + 72);
  return a1;
}

uint64_t sub_C07EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 20) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 24) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 24) + 8) >> 1) + 1;
  }

  return result;
}

uint64_t sub_C0880(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for DataFrame(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 20) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 24);
  *(a1 + result + 8) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for DataFrame?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &unk_33FD48;
      v4[3] = &value witness table for Builtin.BridgeObject + 64;
      v4[4] = &unk_33FD60;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML30MLLogisticRegressionClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML30ijk13V20Persistentm48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05l5G0V14nd3O07c5N00N5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v19 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of DataFrame?(a1, &v16);
  if (__swift_getEnumTagSinglePayload(&v16, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
    v10 = v19;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v17;
    (*(v17 + 32))(&v16, &v16, v2);
    v14 = v19;
    (*(v13 + 16))(v19, &v16, v2);
    v18 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v14, v18, 2);
    (*(v13 + 8))(&v16, v2);
    v10 = v14;
    v11 = 0;
    v12 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

NSURL *MLLogisticRegressionClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v153 = v2;
  v4 = v1;
  v130 = type metadata accessor for CSVType(0);
  v118 = *(v130 - 8);
  v5 = *(v118 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v129 = &v116;
  v8 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v117 = &v116;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v120 = &v116;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v142 = &v116;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v133 = &v116;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v150 = &v116;
  v21 = type metadata accessor for DataFrame(0);
  v132 = *(v21 - 8);
  v22 = *(v132 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v131 = &v116;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v141 = &v116;
  v140 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v27 = *(*(v140 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v135 = &v116;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v137 = &v116;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v145 = &v116;
  v157 = type metadata accessor for URL(0);
  v152 = *(v157 - 8);
  v34 = *(v152 + 8);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v128 = &v116;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v134 = &v116;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v119 = &v116;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v136 = &v116;
  v43 = alloca(v34);
  v44 = alloca(v34);
  v144 = &v116;
  v45 = alloca(v34);
  v46 = alloca(v34);
  v139 = &v116;
  v47 = alloca(v34);
  v48 = alloca(v34);
  v138 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v49 = *(v138 + 20);
  v149 = v4;
  v127 = v4 + v49;
  v143 = v21;
  __swift_storeEnumTagSinglePayload(v4 + v49, 1, 1, v21);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v50 = v153;
  v51 = Data.init(contentsOf:options:)(&v116, 0);
  v153 = v50;
  if (v50)
  {
    v53 = *(v152 + 1);
    v54 = v157;
    v53(a1, v157);
    v53(&v116, v54);
LABEL_37:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v127, &demangling cache variable for type metadata for DataFrame?);
    return __stack_chk_guard;
  }

  v55 = v51;
  v56 = v52;
  v151 = a1;
  v57 = v157;
  v146 = *(v152 + 1);
  v146(&v116, v157);
  v58 = objc_opt_self(NSPropertyListSerialization);
  v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v148 = v55;
  isa = v59.super.isa;
  v147 = v56;
  v159[0] = 0;
  v61 = [v58 propertyListWithData:v59.super.isa options:0 format:0 error:v159];
  v62 = v61;

  v63 = v159[0];
  if (!v62)
  {
    v90 = v63;
    _convertNSErrorToError(_:)(v63);

    swift_willThrow();
    outlined consume of Data._Representation(v148, v147);
    v146(v151, v57);
    goto LABEL_37;
  }

  _bridgeAnyObjectToAny(_:)(v62);
  swift_unknownObjectRelease(v62);
  outlined init with copy of Any(v161, v159);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, v64, 6))
  {
    v91 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v91, 0, 0);
    *v92 = 0xD000000000000037;
    *(v92 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v92 + 16) = 0;
    *(v92 + 32) = 0;
    *(v92 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v148, v147);
    v93 = v151;
    v94 = v157;
LABEL_36:
    v146(v93, v94);
    __swift_destroy_boxed_opaque_existential_1Tm(v161);
    goto LABEL_37;
  }

  v65 = v158[0];
  specialized Dictionary.subscript.getter(0x746567726174, 0xE600000000000000, v158[0]);
  if (!v160)
  {
    v65;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
LABEL_26:
    v67 = v157;
LABEL_35:
    v97 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v97, 0, 0);
    *v98 = 0xD000000000000034;
    *(v98 + 8) = "ad training parameters." + 0x8000000000000000;
    *(v98 + 16) = 0;
    *(v98 + 32) = 0;
    *(v98 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v148, v147);
    v93 = v151;
    v94 = v67;
    goto LABEL_36;
  }

  v156 = v65;
  v66 = swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for String, 6);
  v67 = v157;
  if (!v66)
  {
    v95 = v156;
LABEL_28:
    v95;
    goto LABEL_35;
  }

  v121 = v158[0];
  v68 = v158[1];
  v69 = v156;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("training parameters." + 0x8000000000000000), v156);
  if (!v160)
  {
    v96 = v68;
LABEL_31:
    v96;
    v69;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
LABEL_34:
    v67 = v157;
    goto LABEL_35;
  }

  v155 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, v70, 6))
  {
LABEL_33:
    v155;
    v156;
    goto LABEL_34;
  }

  v71 = v158[0];
  v69 = v156;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v156);
  if (!v160)
  {
    v71;
    v96 = v155;
    goto LABEL_31;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v71;
    goto LABEL_33;
  }

  v154 = v71;
  v122 = v158[0];
  v72 = v156;
  specialized Dictionary.subscript.getter(0x746C616E6550316CLL, 0xE900000000000079, v156);
  v67 = v157;
  if (!v160)
  {
    goto LABEL_39;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v154;
    v155;
    v72;
    goto LABEL_35;
  }

  v123 = v158[0];
  specialized Dictionary.subscript.getter(0x746C616E6550326CLL, 0xE900000000000079, v72);
  if (!v160)
  {
LABEL_39:
    v154;
    v155;
    v72;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    goto LABEL_41;
  }

  v124 = v158[0];
  specialized Dictionary.subscript.getter(0x657A695370657473, 0xE800000000000000, v156);
  if (!v160)
  {
LABEL_42:
    v154;
    v155;
    v156;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_41:
    v154;
    v155;
    v95 = v156;
    goto LABEL_28;
  }

  v125 = v158[0];
  specialized Dictionary.subscript.getter(0xD000000000000014, ("oating-point numbers." + 0x8000000000000000), v156);
  if (!v160)
  {
    goto LABEL_42;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v154;
    v155;
    v100 = v156;
LABEL_46:
    v100;
    goto LABEL_26;
  }

  v126 = v158[0];
  v73 = v156;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("convergenceThreshold" + 0x8000000000000000), v156);
  v73;
  if (!v160)
  {
    v154;
    v155;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for Any?);
    goto LABEL_26;
  }

  if (!swift_dynamicCast(v158, v159, &type metadata for Any + 8, &type metadata for Bool, 6))
  {
    v154;
    v100 = v155;
    goto LABEL_46;
  }

  LOBYTE(v156) = v158[0];
  v74 = v138;
  v75 = *(v138 + 24);
  v76 = v149;
  *(v149 + v75) = v121;
  *(v76 + v75 + 8) = v155;
  *(v76 + *(v74 + 28)) = v154;
  v77 = v145;
  *v145 = 0;
  *(v77 + 16) = 256;
  v78 = v140;
  swift_storeEnumTagMultiPayload(v77, v140, 0);
  v79 = v76 + *(v74 + 32) + 8;
  *(v79 + 16) = 0;
  *v79 = 0;
  *(v79 - 8) = 10;
  *(v79 + 32) = _mm_loadh_ps(&qword_33FD10);
  *(v79 + 48) = xmmword_33FD20;
  *(v79 + 64) = 1;
  v80 = v137;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v77, v137);
  v160 = v78;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v159);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v80, boxed_opaque_existential_0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v159, v79, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v77);
  *(v79 - 8) = v122;
  *(v79 + 32) = v123;
  *(v79 + 40) = v124;
  *(v79 + 48) = v125;
  *(v79 + 56) = v126;
  v137 = v79;
  *(v79 + 64) = v156;
  v82 = v139;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  v83 = v136;
  v152 = *(v152 + 2);
  v152(v136, v82, v157);
  v84 = v153;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v83, 0, 0, 0, 1);
  v145 = v84;
  if (v84)
  {
    v152(v128, v139, v157);
    v153 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v150 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v85 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v86 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v87 = *(v118 + 104);
    v88 = v129;
    LODWORD(v136) = enum case for CSVType.double(_:);
    v141 = v87;
    (v87)(v129, enum case for CSVType.double(_:), v130);
    v89 = v117;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v150, v85, v86, v88, 1, 1, 0, 44, 0xE100000000000000, 92);
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v128, 0, 0, 0, 1, v153, v89);
    v153 = 0;
    (*(v132 + 32))(v149, v131, v143);
    v152(v134, v144, v157);
    v152 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v149 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v138 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v104 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v105 = v129;
    (v141)(v129, v136, v130);
    v106 = 1;
    v107 = v120;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v149, v138, v104, v105, 1, 1, 0, 44, 0xE100000000000000, 92);
    v108 = v153;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v134, 0, 0, 0, 1, v152, v107);
    if (v108)
    {
      v108;
    }

    else
    {
      v106 = 0;
    }

    v145;
    v109 = v133;
    __swift_storeEnumTagSinglePayload(v133, v106, 1, v143);
    v150 = v109;
  }

  else
  {
    (*(v132 + 32))(v149, v141, v143);
    v101 = v119;
    v152(v119, v144, v157);
    v102 = 1;
    v103 = v145;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v101, 0, 0, 0, 1);
    if (v103)
    {
      v103;
    }

    else
    {
      v102 = 0;
    }

    __swift_storeEnumTagSinglePayload(v150, v102, 1, v143);
  }

  v110 = v127;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v150, v127, &demangling cache variable for type metadata for DataFrame?);
  v111 = v142;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML30MLLogisticRegressionClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML30ijk13V20Persistentm48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05l5G0V14nd3O07c5N00N5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(v110);
  if (__swift_getEnumTagSinglePayload(v111, 1, v140) == 1)
  {
    v112 = v140;
    swift_storeEnumTagMultiPayload(v135, v140, 3);
    if (__swift_getEnumTagSinglePayload(v142, 1, v112) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v142, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v142, v135);
  }

  v160 = v140;
  v113 = __swift_allocate_boxed_opaque_existential_0(v159);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v135, v113);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v159, v137, &demangling cache variable for type metadata for Any?);
  outlined consume of Data._Representation(v148, v147);
  v114 = v157;
  v115 = v146;
  v146(v151, v157);
  v115(v144, v114);
  v115(v139, v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  return __stack_chk_guard;
}

NSURL *MLLogisticRegressionClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v64 = v1;
  v55 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v61 = &v50;
  v59 = type metadata accessor for CSVWritingOptions(0);
  v56 = *(v59 - 8);
  v6 = *(v56 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = &v50;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v51 = &v50;
  v63 = type metadata accessor for URL(0);
  v65 = *(v63 - 8);
  v11 = *(v65 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v57 = &v50;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v52 = &v50;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v58 = &v50;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v18, v67);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v20 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v21 = v20[6];
  v22 = *(v2 + v21);
  v62 = *(v2 + v21 + 8);
  v23 = v62;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "training parameters." + 0x8000000000000000;
  v24 = *(v2 + v20[7]);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 96) = v24;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v53 = v20;
  v25 = v20[8];
  v26 = *(v2 + v25);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v26;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v27 = *(v2 + v25 + 40);
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v27;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  v28 = *(v2 + v25 + 48);
  *(inited + 264) = &type metadata for Double;
  *(inited + 240) = v28;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  v29 = *(v2 + v25 + 56);
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v29;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = "oating-point numbers." + 0x8000000000000000;
  v30 = *(v2 + v25 + 64);
  *(inited + 360) = &type metadata for Double;
  *(inited + 336) = v30;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = "convergenceThreshold" + 0x8000000000000000;
  v50 = v2;
  LOBYTE(v25) = *(v2 + v25 + 72);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v25;

  LOBYTE(inited) = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v31 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  inited;
  v66 = 0;
  v33 = [v31 dataWithPropertyList:isa format:200 options:0 error:&v66];
  v34 = v33;

  v35 = v66;
  if (v34)
  {
    v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v34);
    v37 = v36;

    v38 = v58;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v39 = v62;
    v60 = v37;
    v40 = v64;
    Data.write(to:options:)(v38, 0, v62, v37);
    if (v40)
    {
      (*(v65 + 8))(v38, v63);
      outlined consume of Data._Representation(v39, v60);
    }

    else
    {
      v64 = *(v65 + 8);
      v64(v38, v63);
      v42 = v52;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v43 = v51;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v65 = type metadata accessor for DataFrame(0);
      v44 = v50;
      DataFrameProtocol.writeCSV(to:options:)(v42, v43, v65, &protocol witness table for DataFrame);
      v58 = *(v56 + 8);
      v58(v43, v59);
      v64(v42, v63);
      v45 = v53[5] + v44;
      v46 = v61;
      outlined init with copy of DataFrame?(v45, v61);
      if (__swift_getEnumTagSinglePayload(v46, 1, v65) == 1)
      {
        outlined consume of Data._Representation(v62, v60);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, &demangling cache variable for type metadata for DataFrame?);
      }

      else
      {
        v48 = v57;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        v49 = v54;
        CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
        DataFrameProtocol.writeCSV(to:options:)(v48, v49, v65, &protocol witness table for DataFrame);
        outlined consume of Data._Representation(v62, v60);
        v58(v49, v59);
        v64(v57, v63);
        (*(*(v65 - 8) + 8))(v61);
      }
    }
  }

  else
  {
    v41 = v35;
    _convertNSErrorToError(_:)(v35);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

unint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  result = a2 >> 62;
  if (a2 >> 62 != 1)
  {
    if (result != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

id static NLLanguageRecognizer.dominantLanguage(for:)(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v23 = objc_opt_self(NLLanguageRecognizer);
    v4 = (a1 + 40);
    do
    {
      v24 = v3;
      v22 = v2;
      v5 = *v4;

      v6 = String._bridgeToObjectiveC()();
      v7 = [v23 dominantLanguageForString:v6];
      v8 = v7;

      if (!v8)
      {
        v8 = NLLanguageUndetermined;
      }

      v5;
      v3 = v24;
      v9 = v24[2];
      v10 = v9 + 1;
      if (v24[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
        v3 = v24;
      }

      v3[2] = v10;
      v3[v9 + 4] = v8;
      v4 += 2;
      v2 = v22 - 1;
    }

    while (v22 != 1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = specialized Collection<>.mostFrequent()(v3);
  v3;
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(v11);
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)(NLLanguageUndetermined);
  v17 = v16;
  if (!(v15 ^ v12 | v16 ^ v14))
  {
    v14;
    v17;
LABEL_14:
    v19 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v19, 0, 0);
    *v20 = 0xD00000000000001ELL;
    *(v20 + 8) = "t and try again." + 0x8000000000000000;
    *(v20 + 16) = 0;
    *(v20 + 32) = 0;
    *(v20 + 48) = 0;
    swift_willThrow();

    return v11;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v12, v14, v15, v16, 0);
  v14;
  v17;
  if (v18)
  {
    goto LABEL_14;
  }

  return v11;
}

id static NLEmbedding.requestIfNotPresent(embeddingType:language:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self(NLEmbedding);
  result = [v2 assetsAvailableForEmbeddingType:a1 language:a2];
  if (!result)
  {
    aBlock[4] = MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_1;
    v4 = _Block_copy(aBlock);
    [v2 requestAssetsForEmbeddingType:a1 language:a2 withCompletionHandler:v4];
    _Block_release(v4);
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0xD000000000000080;
    *(v6 + 8) = "v24@?0q8@NSError16" + 0x8000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);

  v5 = a3;
  v4(a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
}

{
  return block_copy_helper_8(a1, a2);
}

uint64_t specialized binaryDo<A, B, C>(_:_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6)
{
  v7 = a1;
  if (a2)
  {
    swift_errorRetain(a1);
    a5;
  }

  else if (a4)
  {
    swift_errorRetain(a3);
    a5;
    return a3;
  }

  else
  {
    v12[0] = a1;
    v11[0] = a3;
    outlined copy of Result<_DataTable, Error>(a3, 0);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    closure #1 in MLDataTable.join(with:on:type:)(v12, v11, a5, a6);
    outlined consume of Result<_DataTable, Error>(a3, 0);
    outlined consume of Result<_DataTable, Error>(a1, 0);
    a5;
    return v11[1];
  }

  return v7;
}

uint64_t MLDataTable.init(contentsOf:options:)(void *a1, void *a2)
{
  v127 = v3;
  __src = a2;
  v123 = v2;
  v132 = type metadata accessor for URL(0);
  v4 = *(v132 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v124 = __dst;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v130 = __dst;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UTType?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v133 = __dst;
  v13 = type metadata accessor for UTType(0);
  v126 = *(v13 - 8);
  v14 = *(v126 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = alloca(v14);
  v18 = alloca(v14);
  v129 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v134 = a1;
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    outlined release of MLDataTable.ParsingOptions(__dst);
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000002ALL;
    *(v40 + 8) = "Cannot determine the language." + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 2;
    swift_willThrow();
    return (*(v4 + 8))(v134, v132);
  }

  __src = v4;
  v19 = URL.pathExtension.getter();
  v21 = v20;
  static UTType.data.getter();
  v22 = v133;
  v125 = __dst;
  UTType.init(filenameExtension:conformingTo:)(v19, v21);
  if (__swift_getEnumTagSinglePayload(v22, 1, v13) == 1)
  {
    outlined release of MLDataTable.ParsingOptions(__dst);
    outlined destroy of UTType?(v133);
    v23 = v130;
    URL.appendingPathComponent(_:)(0x6C62615461746144, 0xE900000000000065);
    v24 = URL.hasDirectoryPath.getter();
    v25 = *(__src + 1);
    v26 = v23;
    v27 = v132;
    v25(v26, v132);
    v133 = v25;
    if (v24)
    {
      v28 = v124;
      URL.appendingPathComponent(_:)(0x6C62615461746144, 0xE900000000000065);
      v29 = URL.path.getter(0x6C62615461746144);
      v30 = v27;
      v32 = v31;
      v25(v28, v30);
      if ((v32 & 0x1000000000000000) != 0 || !(v32 & 0x2000000000000000 | v29 & 0x1000000000000000))
      {
        v116 = v127;
        _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLTable.init(from:), 0, v29, v32, &type metadata for OpaquePointer);
        if (!v116)
        {
LABEL_41:
          v109 = v32;
LABEL_50:
          v109;
          v112 = v122[0];
          v113 = type metadata accessor for CMLTable();
          v93 = swift_allocObject(v113, 24, 7);
          *(v93 + 16) = v112;
          v97 = v134;
          v98 = v132;
          goto LABEL_51;
        }
      }

      else
      {
        v33 = alloca(32);
        v34 = alloca(32);
        __dst[3] = 0;
        __dst[2] = closure #1 in CMLTable.init(from:);
        if ((v32 & 0x2000000000000000) == 0)
        {
          if ((v29 & 0x1000000000000000) != 0)
          {
            v35 = (v32 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v36 = v29 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v29, v32);
            v36 = v117;
          }

          v37 = v127;
          v38 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v35, v36, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
          if (v37)
          {
            goto LABEL_33;
          }

          v122[0] = v38;
          goto LABEL_41;
        }

        v121[0] = v29;
        v121[1] = v32 & 0xFFFFFFFFFFFFFFLL;
        v95 = v127;
        v96 = specialized handling<A, B>(_:_:)(v121);
        if (!v95)
        {
          if (!v96)
          {
            BUG();
          }

          v122[0] = v96;
          v109 = v32;
          goto LABEL_50;
        }
      }

LABEL_33:
      v32;
      return (v133)(v134, v132);
    }

    if ((URL.hasDirectoryPath.getter() & 1) == 0 || (v51 = objc_opt_self(NSFileManager), v52 = [v51 defaultManager], __src = v52, v53 = v130, URL.appendingPathComponent(_:)(0x686372615F726964, 0xEF696E692E657669), URL.path.getter(0x686372615F726964), v55 = v54, v133(v53, v132), v56 = String._bridgeToObjectiveC()(), v55, v57 = __src, v58 = objc_msgSend(__src, "fileExistsAtPath:", v56), v57, v56, !v58))
    {
      v121[0] = 0;
      v121[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(119);
      v75._countAndFlagsBits = 0x7420666F204C5255;
      v75._object = 0xED00002720657079;
      String.append(_:)(v75);
      v76 = URL.pathExtension.getter();
      v78 = v77;
      v75._countAndFlagsBits = v76;
      v75._object = v77;
      String.append(_:)(v75);
      v78;
      v75._object = "only load from a file URL." + 0x8000000000000000;
      v75._countAndFlagsBits = 0xD000000000000068;
      String.append(_:)(v75);
      v79 = v121[0];
      v80 = v121[1];
      v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v82 = swift_allocObject(v81, 64, 7);
      v82[2] = 1;
      v82[3] = 2;
      v82[7] = &type metadata for String;
      v82[4] = v79;
      v82[5] = v80;

      print(_:separator:terminator:)(v82, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v82;
      v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
      *v84 = v79;
      *(v84 + 8) = v80;
      *(v84 + 16) = 0;
      *(v84 + 32) = 0;
      *(v84 + 48) = 2;
      swift_willThrow();
LABEL_27:
      v85 = v134;
      v86 = v132;
      return (v133)(v85, v86);
    }

    v60 = URL.path.getter(v56);
    v61 = v59;
    if ((v59 & 0x1000000000000000) != 0 || !(v59 & 0x2000000000000000 | v60 & 0x1000000000000000))
    {
      v118 = v127;
      _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLTable.init(from:), 0, v60, v59, &type metadata for OpaquePointer);
      if (v118)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v62 = alloca(32);
      v63 = alloca(32);
      __dst[3] = 0;
      __dst[2] = closure #1 in CMLTable.init(from:);
      if ((v59 & 0x2000000000000000) != 0)
      {
        v121[0] = v60;
        v121[1] = v59 & 0xFFFFFFFFFFFFFFLL;
        v110 = v127;
        v111 = specialized handling<A, B>(_:_:)(v121);
        if (!v110)
        {
          if (!v111)
          {
            BUG();
          }

          v122[0] = v111;
          v109 = v61;
          goto LABEL_50;
        }

        goto LABEL_45;
      }

      if ((v60 & 0x1000000000000000) != 0)
      {
        v64 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v65 = v60 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = _StringObject.sharedUTF8.getter(v60, v59);
        v65 = v119;
      }

      v66 = v127;
      v67 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v64, v65, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_s13OpaquePointerV_TG5TA_0);
      if (v66)
      {
LABEL_45:
        v61;
        goto LABEL_27;
      }

      v122[0] = v67;
    }

    v109 = v61;
    goto LABEL_50;
  }

  v42 = v126;
  (*(v126 + 32))(v129, v133, v13);
  v43 = v125;
  static UTType.commaSeparatedText.getter();
  LOBYTE(v130) = UTType.conforms(to:)(v43);
  v44 = *(v42 + 8);
  v44(v43, v13);
  v128 = v13;
  v133 = v44;
  if ((v130 & 1) == 0)
  {
    static UTType.plainText.getter();
    v68 = UTType.conforms(to:)(v43);
    v44(v43, v128);
    if (v68)
    {
      v130 = type metadata accessor for CMLTable();
      v69 = URL.path.getter(0);
      v71 = v70;
      memcpy(v121, __dst, sizeof(v121));
      MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
      memcpy(v122, v121, sizeof(v122));
      v72 = 1;
      v73 = v69;
      v74 = v71;
    }

    else
    {
      outlined release of MLDataTable.ParsingOptions(__dst);
      static UTType.json.getter();
      v87 = UTType.conforms(to:)(v43);
      v133(v43, v128);
      if ((v87 & 1) == 0)
      {
        v121[0] = 0;
        v121[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(119);
        v99._countAndFlagsBits = 0x7420666F204C5255;
        v99._object = 0xED00002720657079;
        String.append(_:)(v99);
        v100 = URL.pathExtension.getter();
        v102 = v101;
        v99._countAndFlagsBits = v100;
        v99._object = v101;
        String.append(_:)(v99);
        v102;
        v99._object = "only load from a file URL." + 0x8000000000000000;
        v99._countAndFlagsBits = 0xD000000000000068;
        String.append(_:)(v99);
        v103 = v121[0];
        v104 = v121[1];
        v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
        v106 = swift_allocObject(v105, 64, 7);
        v106[2] = 1;
        v106[3] = 2;
        v106[7] = &type metadata for String;
        v106[4] = v103;
        v106[5] = v104;

        print(_:separator:terminator:)(v106, 32, 0xE100000000000000, 10, 0xE100000000000000);
        v106;
        v107 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
        *v108 = v103;
        *(v108 + 8) = v104;
        *(v108 + 16) = 0;
        *(v108 + 32) = 0;
        *(v108 + 48) = 2;
        swift_willThrow();
        goto LABEL_37;
      }

      v130 = type metadata accessor for CMLTable();
      v88 = URL.path.getter(0);
      v90 = v89;
      _s8CreateML11MLDataTableV14ParsingOptionsVSgWOi0_(v121);
      memcpy(v122, v121, sizeof(v122));
      v73 = v88;
      v74 = v90;
      v72 = 0;
    }

    v91 = v127;
    v92 = CMLTable.__allocating_init(from:isCSV:options:)(v73, v74, v72, v122);
    if (!v91)
    {
      v93 = v92;
      v94 = v134;
      goto LABEL_35;
    }

LABEL_37:
    v50 = v134;
    goto LABEL_38;
  }

  v130 = type metadata accessor for CMLTable();
  v45 = v134;
  v126 = URL.path.getter(0);
  v47 = v46;
  memcpy(v121, __dst, sizeof(v121));
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  memcpy(v122, v121, sizeof(v122));
  v48 = v127;
  v49 = CMLTable.__allocating_init(from:isCSV:options:)(v126, v47, 1u, v122);
  if (v48)
  {
    v50 = v45;
LABEL_38:
    (*(__src + 1))(v50, v132);
    v85 = v129;
    v86 = v128;
    return (v133)(v85, v86);
  }

  v93 = v49;
  v94 = v45;
LABEL_35:
  (*(__src + 1))(v94, v132);
  v97 = v129;
  v98 = v128;
LABEL_51:
  v133(v97, v98);
  v114 = type metadata accessor for _DataTable();
  swift_allocObject(v114, 40, 7);
  result = _DataTable.init(impl:)(v93);
  v115 = v123;
  *v123 = result;
  *(v115 + 8) = 0;
  return result;
}

void *MLDataTable.ParsingOptions.init(containsHeader:delimiter:comment:escape:doubleQuote:quote:skipInitialSpaces:missingValues:lineTerminator:selectColumns:maxRows:skipRows:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  v40 = a4;
  v41 = a3;
  v44 = a2;
  v42 = a6;
  v43 = a5;
  LOBYTE(a1) = a1 & 1;
  v45 = a1;
  v46 = a17 & 1;
  v19 = 0;
  if (a18 > 0)
  {
    v19 = a18;
  }

  LOBYTE(__src[0]) = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  LOBYTE(__src[7]) = a8 & 1;
  __src[8] = a9;
  __src[9] = a10;
  LOBYTE(__src[10]) = a11 & 1;
  __src[11] = a12;
  __src[12] = a13;
  __src[13] = a14;
  __src[14] = a15;
  __src[15] = a16;
  LOBYTE(__src[16]) = a17 & 1;
  __src[17] = v19;
  memcpy(v18, __src, 0x90uLL);
  v21[0] = v45;
  v22 = v44;
  v23 = v41;
  v24 = v40;
  v25 = v43;
  v26 = v42;
  v27 = a7;
  v28 = a8 & 1;
  v29 = a9;
  v30 = a10;
  v31 = a11 & 1;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v37 = v46;
  v38 = v19;
  outlined retain of MLDataTable.ParsingOptions(__src);
  return outlined release of MLDataTable.ParsingOptions(v21);
}

uint64_t MLDataTable.ParsingOptions.delimiter.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MLDataTable.ParsingOptions.delimiter.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.comment.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MLDataTable.ParsingOptions.comment.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.escape.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MLDataTable.ParsingOptions.escape.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.quote.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MLDataTable.ParsingOptions.quote.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.missingValues.setter(uint64_t a1)
{
  result = *(v1 + 88);
  *(v1 + 88) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MLDataTable.ParsingOptions.selectColumns.setter(uint64_t a1)
{
  result = *(v1 + 112);
  *(v1 + 112) = a1;
  return result;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3;
  if (!a1)
  {
    a1 = 0;
    a2 = 0;
  }

  result = a3(a1, a2);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UTType?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)()
{
  v3 = v0;
  result = (*(v2 + 16))();
  if (!v1)
  {
    result = v5;
    *v3 = v5;
  }

  return result;
}

{
  return _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_s13OpaquePointerV_TG5TA_0();
}

uint64_t destroy for MLDataTable.ParsingOptions(void *a1)
{
  a1[2];
  a1[4];
  a1[6];
  a1[9];
  a1[11];
  a1[13];
  return a1[14];
}

uint64_t initializeWithCopy for MLDataTable.ParsingOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for MLDataTable.ParsingOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v2;
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v3;
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v5;
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v6;
  *(a1 + 96) = *(a2 + 96);
  v7 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  v7;
  v8 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  v8;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t assignWithTake for MLDataTable.ParsingOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  v4;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v6;
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104);
  v8 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  v8;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataTable.ParsingOptions(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 16) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataTable.ParsingOptions(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 144) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * (a2 - 1);
    }
  }
}

char _Model.Output.init(variant:)(uint64_t a1, double a2)
{
  v5 = v2;
  is_sframe = tc_v1_variant_is_sframe(*(a1 + 16));
  v7 = *(a1 + 16);
  if (is_sframe)
  {
    v8 = specialized handling<A, B>(_:_:)(v7);
    if (!v3)
    {
      v9 = v8;
      v35 = v5;
      if (!v8)
      {
        BUG();
      }

      v10 = type metadata accessor for CMLTable();
      v11 = swift_allocObject(v10, 24, 7);
      *(v11 + 16) = v9;

      v12 = type metadata accessor for _DataTable();
      swift_allocObject(v12, 40, 7);
      v13 = _DataTable.init(impl:)(v11);
      v14 = 0;
      v15 = v13;
      result = 0;
LABEL_9:
      v5 = v35;
LABEL_10:
      *v5 = v15;
      *(v5 + 8) = v14;
      *(v5 + 16) = result;
      return result;
    }
  }

  else
  {
    is_sarray = tc_v1_variant_is_sarray(v7);
    v18 = *(a1 + 16);
    if (is_sarray)
    {
      v19 = specialized handling<A, B>(_:_:)(v18);
      if (!v3)
      {
        v20 = v19;
        v35 = v5;
        if (!v19)
        {
          BUG();
        }

        v21 = type metadata accessor for CMLColumn();
        v22 = swift_allocObject(v21, 24, 7);
        *(v22 + 16) = v20;

        v23 = type metadata accessor for _UntypedColumn();
        v24 = swift_allocObject(v23, 24, 7);
        v14 = 0;
        v15 = v24;
        *(v24 + 16) = v22;
        result = 32;
        goto LABEL_9;
      }
    }

    else if (tc_v1_variant_is_flexible_type(v18))
    {
      v25 = CMLVariant.featureValue()();
      if (!v3)
      {
        MLDataValue.init(_:)(v25, a2);

        v15 = v32;
        v14 = v33;
        result = v34 | 0x40;
        goto LABEL_10;
      }
    }

    else
    {
      is_model = tc_v1_variant_is_model(*(a1 + 16));
      v27 = *(a1 + 16);
      if (is_model)
      {
        v28 = specialized handling<A, B>(_:_:)(v27);
        if (!v3)
        {
          v36 = v28;
          if (!v28)
          {
            BUG();
          }

          v29 = type metadata accessor for CMLModel();
          v15 = swift_allocObject(v29, 24, 7);
          *(v15 + 16) = v36;

          v14 = 0;
          result = -96;
          goto LABEL_10;
        }
      }

      else
      {
        if (!tc_v1_variant_is_parameters(v27))
        {

          result = -32;
          v15 = 0;
          v14 = 0;
          goto LABEL_10;
        }

        v30 = specialized handling<A, B>(_:_:)(*(a1 + 16));
        if (!v3)
        {
          v37 = v30;
          if (!v30)
          {
            BUG();
          }

          v31 = type metadata accessor for CMLParameters();
          v15 = swift_allocObject(v31, 24, 7);
          *(v15 + 16) = v37;

          v14 = 0;
          result = -64;
          goto LABEL_10;
        }
      }
    }
  }
}

uint64_t CMLDictionary.keyAndValue(at:)(uint64_t a1)
{
  type metadata accessor for CMLFeatureValue();
  v3 = CMLFeatureValue.__allocating_init()();
  v4 = CMLFeatureValue.__allocating_init()();
  if (a1 < 0)
  {
    BUG();
  }

  specialized handling<A, B, C, D, E>(_:_:_:_:_:)(*(v2 + 16), a1, *(v3 + 16), *(v4 + 16));
  if (v1)
  {
  }

  return v3;
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLFeatureValue.stringValue()()
{
  result._countAndFlagsBits = specialized handling<A, B>(_:_:)(*(v1 + 16));
  if (!v0)
  {
    if (!result._countAndFlagsBits)
    {
      BUG();
    }

    result._countAndFlagsBits = String.init(cString:)(result._countAndFlagsBits);
  }

  return result;
}

uint64_t CMLFeatureValue.__allocating_init(_:)(uint64_t a1)
{
  return CMLFeatureValue.__allocating_init(_:)(a1, specialized handling<A, B>(_:_:));
}

{
  return CMLFeatureValue.__allocating_init(_:)(a1, specialized handling<A, B>(_:_:));
}

{
  return CMLFeatureValue.__allocating_init(_:)(a1, specialized handling<A, B>(_:_:));
}

uint64_t CMLParameters.add(key:featureValue:)(uint64_t a1, uint64_t a2)
{
  v3 = CMLParameters.Key.rawValue.getter(a1);
  v5 = v4;

  specialized String.withCString<A>(_:)(v3, v5, v2, a2);
  return v5;
}

uint64_t CMLFeatureValue.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = String.utf8CString.getter(a1);
  a2;
  v5 = specialized handling<A, B>(_:_:)(v4 + 32);

  if (!v2)
  {
    if (!v5)
    {
      BUG();
    }

    result = swift_allocObject(v3, 25, 7);
    *(result + 16) = v5;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t CMLModel.callFunction(name:arguments:)(uint64_t a1, uint64_t a2)
{
  v3 = MethodName.rawValue.getter(a1);
  v5 = v4;
  v9 = v2;
  v10 = a2;
  v6 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLModel.callFunction(name:arguments:), v8, v3, v4);
  v5;
  return v6;
}

uint64_t CMLSequence.append(_:)(uint64_t a1)
{
  result = specialized handling<A, B, C>(_:_:_:)(*(v2 + 16), *(a1 + 16));
  if (result < 0 && v1 == 0)
  {
    BUG();
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLTable.save(to:type:)(Swift::String to, Swift::Int type)
{
  v5._reserved = type;
  v6 = v2;
  if ((to._object & 0x1000000000000000) != 0 || !(to._object & 0x2000000000000000 | to._countAndFlagsBits & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.save(to:type:), &v5._baseURL, to._countAndFlagsBits, to._object, &type metadata for () + 8);
  }

  else
  {
    if ((to._object & 0x2000000000000000) == 0)
    {
      if ((to._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v3 = (to._object & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v3 = _StringObject.sharedUTF8.getter(to._countAndFlagsBits, to._object);
        if (!v3)
        {
          v4 = 0;
          goto LABEL_7;
        }
      }

      v4 = v3;
LABEL_7:
      partial apply for closure #1 in CMLTable.save(to:type:)(v4);
      return;
    }

    v5.super.isa = to._countAndFlagsBits;
    v5._urlString = (to._object & 0xFFFFFFFFFFFFFFLL);
    closure #1 in CMLTable.save(to:type:)(&v5, type, v2);
  }
}

uint64_t CMLTable.__allocating_init(from:isCSV:options:)(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v76 = a3;
  v61 = a1;
  memcpy(__dst, a4, sizeof(__dst));
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v7 = empty;
  v8 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v8, v59);
  *(inited + 16) = v7;
  v9 = specialized handling<A, B>(_:_:)(0);
  if (v4)
  {
    swift_unexpectedError(v4, "CreateML/MLDataValueConvertible.swift", 37, 1, 118);
    BUG();
  }

  v10 = v9;
  v78 = a2;
  v62 = v5;
  if (!v9)
  {
    BUG();
  }

  v81 = type metadata accessor for CMLFeatureValue();
  v11 = swift_initStackObject(v81, v53);
  *(v11 + 16) = v10;
  *(v11 + 24) = 1;
  CMLParameters.add(key:featureValue:)(9, v11);

  memcpy(v52, __dst, sizeof(v52));
  if (_s8CreateML11MLDataTableV14ParsingOptionsVSgWOg(v52) != 1)
  {
    v12 = specialized handling<A, B>(_:_:)(LOBYTE(v52[0]));
    if (!v12)
    {
      BUG();
    }

    v13 = swift_initStackObject(v81, v54);
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    CMLParameters.add(key:featureValue:)(10, v13);

    v14 = __dst[1];
    v15 = __dst[2];
    v66 = __dst[3];
    v65 = __dst[4];
    v64 = __dst[5];
    v63 = __dst[6];
    LOBYTE(v75[0]) = __dst[7];
    v68 = __dst[8];
    v67 = __dst[9];
    LOBYTE(v77) = __dst[10];
    v72 = __dst[11];
    v71 = __dst[12];
    v70 = __dst[13];
    v69 = __dst[14];
    v79 = __dst[16];
    v74 = __dst[15];
    v73 = __dst[17];
    swift_bridgeObjectRetain_n(__dst[2], 2);
    v16 = CMLFeatureValue.__allocating_init(_:)(v14, v15);
    v15;
    CMLParameters.add(key:featureValue:)(11, v16);

    v17 = v65;
    swift_bridgeObjectRetain_n(v65, 2);
    v18 = CMLFeatureValue.__allocating_init(_:)(v66, v17);
    v17;
    CMLParameters.add(key:featureValue:)(12, v18);

    v19 = v63;
    swift_bridgeObjectRetain_n(v63, 2);
    v20 = CMLFeatureValue.__allocating_init(_:)(v64, v19);
    v19;
    CMLParameters.add(key:featureValue:)(13, v20);

    v21 = specialized handling<A, B>(_:_:)(LOBYTE(v75[0]));
    if (!v21)
    {
      BUG();
    }

    v22 = swift_initStackObject(v81, v55);
    *(v22 + 16) = v21;
    *(v22 + 24) = 1;
    CMLParameters.add(key:featureValue:)(14, v22);

    v23 = v67;
    swift_bridgeObjectRetain_n(v67, 2);
    v24 = CMLFeatureValue.__allocating_init(_:)(v68, v23);
    v23;
    CMLParameters.add(key:featureValue:)(15, v24);

    v25 = specialized handling<A, B>(_:_:)(v77);
    if (!v25)
    {
      BUG();
    }

    v26 = swift_initStackObject(v81, v56);
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    CMLParameters.add(key:featureValue:)(16, v26);

    v27 = v72;

    v28 = specialized Array<A>.featureSequence.getter(v27);
    v29 = CMLFeatureValue.__allocating_init(_:)(v28, specialized handling<A, B>(_:_:));
    v27;
    CMLParameters.add(key:featureValue:)(17, v29);

    v30 = v70;
    swift_bridgeObjectRetain_n(v70, 2);
    v31 = CMLFeatureValue.__allocating_init(_:)(v71, v30);
    v30;
    CMLParameters.add(key:featureValue:)(18, v31);

    v32 = v69;
    if (v69)
    {

      v34 = v32;
      v33 = specialized Array<A>.featureSequence.getter(v32);
      v35 = CMLFeatureValue.__allocating_init(_:)(v33, specialized handling<A, B>(_:_:));
      v34;
      CMLParameters.add(key:featureValue:)(19, v35);
    }

    if (!v79)
    {
      v36 = specialized handling<A, B>(_:_:)(v74);
      if (!v36)
      {
        BUG();
      }

      v37 = swift_initStackObject(v81, v58);
      *(v37 + 16) = v36;
      *(v37 + 24) = 1;
      CMLParameters.add(key:featureValue:)(20, v37);
    }

    outlined release of MLDataTable.ParsingOptions?(__dst);
    v38 = specialized handling<A, B>(_:_:)(v73);
    if (!v38)
    {
      BUG();
    }

    v39 = swift_initStackObject(v81, v57);
    *(v39 + 16) = v38;
    *(v39 + 24) = 1;
    CMLParameters.add(key:featureValue:)(21, v39);
  }

  v40 = v78;
  v41 = alloca(32);
  v42 = alloca(32);
  LOBYTE(v52[1]) = v76 & 1;
  v52[2] = inited;
  if ((v78 & 0x1000000000000000) != 0 || !(v78 & 0x2000000000000000 | v61 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.init(from:isCSV:options:), &v51, v61, v78, &type metadata for OpaquePointer);
    v40;
    v47 = v77;
  }

  else
  {
    v81 = &v51;
    v43 = alloca(32);
    v44 = alloca(32);
    v52[1] = partial apply for closure #1 in CMLTable.init(from:isCSV:options:);
    v52[2] = &v51;
    if ((v78 & 0x2000000000000000) != 0)
    {
      v75[0] = v61;
      v75[1] = v78 & 0xFFFFFFFFFFFFFFLL;
      if (v76)
      {
        v47 = specialized handling<A, B, C>(_:_:_:)(v75, *(inited + 16));
        if (!v47)
        {
          BUG();
        }
      }

      else
      {
        v47 = specialized handling<A, B>(_:_:)(v75);
        if (!v47)
        {
          BUG();
        }
      }

      v78;
    }

    else
    {
      if ((v61 & 0x1000000000000000) != 0)
      {
        v45 = (v78 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v46 = v61 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = _StringObject.sharedUTF8.getter(v61, v78);
        v46 = v50;
      }

      v47 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v45, v46, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
      v78;
    }
  }

  v48 = inited;
  swift_setDeallocating(inited);
  tc_v1_release(*(v48 + 16));
  result = swift_allocObject(v62, 24, 7);
  *(result + 16) = v47;
  return result;
}

char __CMLFeatureValueType.init(rawValue:)(unint64_t a1)
{
  result = 8;
  if (a1 <= 9)
  {
    return byte_33FFAE[a1];
  }

  return result;
}

uint64_t CMLFeatureValue.deinit()
{
  if (*(v0 + 24) == 1)
  {
    tc_v1_release(*(v0 + 16));
  }

  return v0;
}

uint64_t CMLFeatureValue.init(rawValue:ownsValue:)(uint64_t a1, char a2)
{
  result = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t CMLFeatureValue.releaseRawValue()()
{
  result = *(v0 + 16);
  if (!result)
  {
    BUG();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t CMLFeatureValue.__allocating_init()()
{
  empty = tc_v1_ft_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  result = swift_allocObject(v0, 25, 7);
  *(result + 16) = v2;
  *(result + 24) = 1;
  return result;
}

uint64_t CMLFeatureValue.__allocating_init(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(*(a1 + 16));
  if (v2)
  {
  }

  v6 = v4;
  if (!v4)
  {
    BUG();
  }

  result = swift_allocObject(v3, 25, 7);
  *(result + 16) = v6;
  *(result + 24) = 1;
  return result;
}

unint64_t CMLFeatureValue.type.getter()
{
  v1 = tc_v1_ft_type(*(v0 + 16));
  v2 = __CMLFeatureValueType.init(rawValue:)(v1);
  if (v2 == 8)
  {
    BUG();
  }

  return CMLFeatureValueType.init(_:)(v2);
}

Swift::Int __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLFVTypeSequence.append(_:)(CreateML::CMLFeatureValueType a1)
{
  v3 = *(v2 + 16);
  v4 = CMLFeatureValueType.rawValue.getter(a1);
  result = specialized handling<A, B, C>(_:_:_:)(v3, qword_33FFB8[v4]);
  if (!v1 && result < 0)
  {
    BUG();
  }

  return result;
}

uint64_t CMLDictionary.add(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  type metadata accessor for CMLFeatureValue();

  v6 = CMLFeatureValue.__allocating_init(_:)(a1, a2);
  if (!v3)
  {
    v5 = specialized handling<A, B, C, D>(_:_:_:_:)(*(v4 + 16), *(v6 + 16), *(a3 + 16));

    if (v5 < 0)
    {
      BUG();
    }
  }

  return v5;
}

uint64_t CMLMultiArray.shape()(uint64_t (*a1)(void))
{
  result = a1(*(v2 + 16));
  if (!v1 && !result)
  {
    BUG();
  }

  return result;
}

uint64_t CMLColumn.__allocating_init(_:type:)(uint64_t a1, char a2)
{
  v4 = v2;
  v42 = v3;
  if (CMLDictionary.size.getter(&tc_v1_flex_list_size))
  {
    v5 = specialized handling<A, B>(_:_:)(*(a1 + 16));
    if (v2)
    {
    }

    else
    {
      v6 = v5;
      if (!v5)
      {
        BUG();
      }

      result = swift_allocObject(v42, 24, 7);
      *(result + 16) = v6;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        v8 = specialized handling<A, B>(_:_:)(0);
        if (v2)
        {
        }

        v9 = v8;
        if (!v8)
        {
          BUG();
        }

        goto LABEL_17;
      case 1:
        v20 = specialized handling<A, B>(_:_:)();
        if (v2)
        {
        }

        v9 = v20;
        if (!v20)
        {
          BUG();
        }

LABEL_17:
        v21 = type metadata accessor for CMLFeatureValue();
        v22 = swift_allocObject(v21, 25, 7);
        *(v22 + 16) = v9;
        v44 = v22;
        *(v22 + 24) = 1;
        goto LABEL_25;
      case 2:
        type metadata accessor for CMLFeatureValue();
        v15 = CMLFeatureValue.__allocating_init(_:)(0, 0xE000000000000000);
        goto LABEL_23;
      case 3:
        v16 = tc_v1_flex_list_create(0);
        if (!v16)
        {
          BUG();
        }

        v17 = v16;
        type metadata accessor for CMLFeatureValue();
        v18 = type metadata accessor for CMLSequence();
        inited = swift_initStackObject(v18, v38);
        *(inited + 16) = v17;
        *(inited + 24) = 1;
        v14 = specialized handling<A, B>(_:_:);
        goto LABEL_14;
      case 4:
        v10 = tc_v1_flex_dict_create(0);
        if (!v10)
        {
          BUG();
        }

        v11 = v10;
        type metadata accessor for CMLFeatureValue();
        v12 = type metadata accessor for CMLDictionary();
        inited = swift_initStackObject(v12, v41);
        *(inited + 16) = v11;
        v14 = specialized handling<A, B>(_:_:);
LABEL_14:
        v19 = inited;
        goto LABEL_22;
      case 5:
        type metadata accessor for CMLFeatureValue();
        v15 = CMLFeatureValue.__allocating_init()();
        goto LABEL_24;
      case 6:
        v23 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(1, &unk_38C1C0, &unk_38C1E8, &unk_38C210);
        if (v2)
        {
          swift_unexpectedError(v2, "CreateML/_ForwardingWrapper.swift", 33, 1, 378);
          BUG();
        }

        v24 = v23;
        if (!v23)
        {
          BUG();
        }

        v25 = type metadata accessor for CMLMultiArray();
        v26 = swift_initStackObject(v25, v39);
        *(v26 + 16) = v24;
        type metadata accessor for CMLFeatureValue();
        v14 = specialized handling<A, B>(_:_:);
        v19 = v26;
LABEL_22:
        v15 = CMLFeatureValue.__allocating_init(_:)(v19, v14);
LABEL_23:
        v4 = v2;
        if (v2)
        {
        }

LABEL_24:
        v44 = v15;
LABEL_25:
        v27 = tc_v1_flex_list_create(0);
        if (!v27)
        {
          BUG();
        }

        v28 = v27;
        v29 = type metadata accessor for CMLSequence();
        v30 = swift_initStackObject(v29, v37);
        *(v30 + 16) = v28;
        *(v30 + 24) = 1;
        CMLSequence.append(_:)(v44);
        if (v4)
        {
          swift_setDeallocating(v30);
          CMLFeatureValue.deinit();
          swift_deallocClassInstance(v30, 25, 7);
        }

        v31 = *(v30 + 16);

        v32 = specialized handling<A, B>(_:_:)(v31);
        v43 = v32;
        if (!v32)
        {
          BUG();
        }

        v33 = swift_initStackObject(v42, v40);
        v34 = v43;
        *(v33 + 16) = v43;
        v35 = specialized handling<A, B, C>(_:_:_:)(v34, 0);
        v36 = v42;
        v43 = v35;
        if (!v35)
        {
          BUG();
        }

        swift_setDeallocating(v30);
        CMLFeatureValue.deinit();
        swift_deallocClassInstance(v30, 25, 7);

        result = swift_allocObject(v36, 24, 7);
        *(result + 16) = v43;
        break;
    }
  }

  return result;
}

uint64_t CMLDictionary.size.getter(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result < 0)
  {
    BUG();
  }

  return result;
}

unint64_t CMLColumn.type.getter()
{
  v1 = tc_v1_sarray_type(*(v0 + 16));
  v2 = __CMLFeatureValueType.init(rawValue:)(v1);
  if (v2 == 8)
  {
    BUG();
  }

  return CMLFeatureValueType.init(_:)(v2);
}

uint64_t CMLSequence.value(at:)(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (a1 < 0)
  {
    BUG();
  }

  result = a2(*(v3 + 16), a1);
  v5 = result;
  if (!v2)
  {
    if (!result)
    {
      BUG();
    }

    v6 = type metadata accessor for CMLFeatureValue();
    result = swift_allocObject(v6, 25, 7);
    *(result + 16) = v5;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t CMLVariant.featureValue()(uint64_t (*a1)(void))
{
  result = a1(*(v2 + 16));
  v4 = result;
  if (!v1)
  {
    if (!result)
    {
      BUG();
    }

    v5 = type metadata accessor for CMLFeatureValue();
    result = swift_allocObject(v5, 25, 7);
    *(result + 16) = v4;
    *(result + 24) = 1;
  }

  return result;
}

uint64_t CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v14 = *v5;
  v6 = swift_allocObject(&unk_390770, 32, 7);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = _sSp8allocate8capacitySpyxGSi_tFZs13OpaquePointerVAEc_Tt0g5(1);
  v8 = swift_allocObject(&unk_390798, 32, 7);
  *(v8 + 16) = partial apply for closure #1 in CMLColumn.apply(transform:type:skipUndefined:);
  *(v8 + 24) = v6;
  *v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned OpaquePointer);
  v7[1] = v8;
  v9 = v5[2];
  v10 = qword_33FFB8[CMLFeatureValueType.rawValue.getter(a3)];

  v11 = specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(v9, @objc invokeContext #1 (rawInput:context:error:) in CMLColumn.apply(transform:type:skipUndefined:), @objc releaseContext #1 (context:) in CMLColumn.apply(transform:type:skipUndefined:), v7, v10, a4);
  if (v4)
  {
    swift_unexpectedError(v4, "CreateML/_ForwardingWrapper.swift", 33, 1, 475);
    BUG();
  }

  v12 = v11;
  if (!v11)
  {
    BUG();
  }

  result = swift_allocObject(v14, 24, 7);
  *(result + 16) = v12;
  return result;
}

uint64_t closure #1 in CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = type metadata accessor for CMLFeatureValue();
  v3 = swift_allocObject(v2, 25, 7);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  a2(v3);

  v4 = CMLFeatureValue.releaseRawValue()();

  return v4;
}

uint64_t _sSp8allocate8capacitySpyxGSi_tFZs13OpaquePointerVAEc_Tt0g5(uint64_t a1)
{
  if (((a1 - 0x800000000000000) >> 60) < 0xF)
  {
    BUG();
  }

  return swift_slowAlloc(16 * a1, -1);
}

uint64_t closure #1 in CMLTable.init(from:isCSV:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  if (a2)
  {
    result = specialized handling<A, B, C>(_:_:_:)(a1, *(a3 + 16));
    if (v7)
    {
      return result;
    }

    if (!result)
    {
      BUG();
    }
  }

  else
  {
    result = specialized handling<A, B>(_:_:)(a1);
    if (v7)
    {
      return result;
    }

    if (!result)
    {
      BUG();
    }
  }

  *v8 = result;
  return result;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLParameters.add(key:featureValue:), v9, a1, a2, &type metadata for () + 8);
  }

  else
  {
    v12 = v8;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v8[0] = a1;
      v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      specialized handling<A, B, C, D>(_:_:_:_:)(*(a3 + 16), v8, *(a4 + 16));
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(a1, a2);
        v5 = v7;
      }

      _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v4, v5, partial apply for closure #1 in CMLParameters.add(key:featureValue:));
    }
  }
}

{
  v10 = a3;
  v11 = a4;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in CMLTable.renameColumn(named:to:), v9, a1, a2, &type metadata for () + 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(a1, a2);
      v5 = v7;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v4, v5, partial apply for closure #1 in closure #1 in CMLTable.renameColumn(named:to:));
  }

  v8[0] = a1;
  v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  specialized handling<A, B, C, D>(_:_:_:_:)(*(a3 + 16), a4, v8);
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = v5;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    v14 = v21;
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.renameColumn(named:to:), v17, a1, a2, &type metadata for () + 8);
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_9:

    return a4;
  }

  v22 = v16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16[0] = a1;
    v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;

    v12 = v21;
    specialized String.withCString<A>(_:)(a3, a4, a5, v16);
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(a1, a2);
    v10 = v15;
  }

  v11 = v21;
  _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v9, v10, partial apply for closure #1 in CMLTable.renameColumn(named:to:));
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_12:
  a4;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void *, void))
{
  v6 = a5;
  v13 = a3;
  v14 = a4;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(a5, v12, a1, a2, &type metadata for () + 8);
  }

  else
  {
    v16 = v11;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      a6(*(a3 + 16), v11, *(a4 + 16));
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v8 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = a5;
        v10 = _StringObject.sharedUTF8.getter(a1, a2);
        v6 = v15;
        v7 = v10;
      }

      _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v7, v8, v6);
    }
  }
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = a6;
  v25 = a3;
  v34 = a4;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7 & 1;
  v30 = a8;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:), v24, a1, a2, &type metadata for () + 8);
    if (v8)
    {
      v9;
      v14 = v34;
      goto LABEL_8;
    }

    v20 = v34;
    goto LABEL_13;
  }

  v33 = &v22;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = _StringObject.sharedUTF8.getter(a1, a2);
      v12 = v21;
    }

    v13 = v34;
    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v11, v12, partial apply for closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:));
    if (v8)
    {
      v9;
      v14 = v13;
LABEL_8:
      v14;
    }

    v20 = v13;
LABEL_13:
    v20;
    goto LABEL_15;
  }

  v23[0] = a1;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v31 = a6;
  v32 = v8;

  v16 = a3;
  v17 = v34;
  v18 = v32;
  v9 = v31;
  specialized String.withCString<A>(_:)(v16, v34, a5, v31, a7, a8, v23);
  if (v18)
  {
    v9;
    v17;
  }

  v17;
LABEL_15:

  return v9;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v15 = a3;
  v16 = a4;
  v17 = a5 & 1;
  v18 = a6;
  v19 = a7;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:), v14, a1, a2, &type metadata for () + 8);
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_9:

    return v8;
  }

  v20 = v13;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v13, a3, a4, a5, a6, a7);
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(a1, a2);
    v10 = v12;
  }

  _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v9, v10, partial apply for closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:));
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_12:
  v8;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t), uint64_t (*a10)(uint64_t, uint64_t), void (*a11)(void, uint64_t, uint64_t, void *))
{
  v13 = a8;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    v22 = a4;
    _StringGuts._slowWithCString<A>(_:)(a8, v26, a1, a2, &type metadata for () + 8);
    if (v11)
    {
      a6;
      v16 = v22;
      goto LABEL_8;
    }

    v21 = v22;
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a4;
    if ((a1 & 0x1000000000000000) != 0)
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v11;
      v23 = _StringObject.sharedUTF8.getter(a1, a2);
      v13 = a8;
      v14 = v23;
      v15 = v24;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v14, v15, v13);
    if (v11)
    {
      a6;
      v16 = v34;
LABEL_8:
      v16;
    }

    v21 = v34;
LABEL_13:
    v21;
    goto LABEL_15;
  }

  v34 = v25;
  v25[0] = a1;
  v25[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v32 = a3;
  v33 = v11;

  v19 = v33;
  specialized String.withCString<A>(_:)(v32, a4, a5, a6, a7, v25, a9, a10, a11);
  if (v19)
  {
    a6;
    a4;
  }

  a4;
LABEL_15:

  return a6;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t), void (*a9)(void, uint64_t, uint64_t, void *))
{
  v10 = a4;
  v14 = a7;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(a7, v23, a1, a2, &type metadata for () + 8);
    if (v9)
    {
LABEL_7:

      return v10;
    }

    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v9;
      v20 = _StringObject.sharedUTF8.getter(a1, a2);
      v14 = a7;
      v15 = v20;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v15, v16, v14);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_12:
    v10;
  }

  v29 = &v21;
  v28 = a4;
  v22[0] = a1;
  v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v30 = v9;

  v18 = v28;
  v19 = v30;
  specialized String.withCString<A>(_:)(a3, v28, a5, a6, v22, a8, a9);
  if (v19)
  {

    return v18;
  }

  v18;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void, uint64_t, uint64_t, void *))
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(a6, v12, a1, a2, &type metadata for () + 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = a6;
      v10 = _StringObject.sharedUTF8.getter(a1, a2);
      a6 = v16;
      v7 = v10;
    }

    _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(v7, v8, a6);
  }

  v11[0] = a1;
  v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  a7(*(a3 + 16), a4, a5, v11);
}

uint64_t closure #1 in CMLTable.init(joiningMultiple:and:columnNames:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(*(a2 + 16), *(a3 + 16), *(a4 + 16), a1);
  if (!v5)
  {
    if (!result)
    {
      BUG();
    }

    *v6 = result;
  }

  return result;
}

uint64_t CMLColumn.__allocating_init(concatenating:and:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = a3(*(a1 + 16), *(a2 + 16));
  if (v3)
  {
  }

  else
  {
    v8 = v4;
    if (!v5)
    {
      BUG();
    }

    v7 = v5;

    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
  }

  return result;
}

uint64_t CMLMultiArray.dimensions()(uint64_t (*a1)(void))
{
  result = a1(*(v2 + 16));
  if (result < 0 && v1 == 0)
  {
    BUG();
  }

  return result;
}

uint64_t CMLTable.addColumn(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized String.withCString<A>(_:)(a1, a2, v3, a3, partial apply for closure #1 in CMLTable.addColumn(name:_:), specialized handling<A, B, C, D>(_:_:_:_:));
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLTable.renameColumn(named:to:)(Swift::String named, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;

  specialized String.withCString<A>(_:)(named._countAndFlagsBits, named._object, countAndFlagsBits, object, v2);
}

uint64_t closure #1 in CMLTable.columnType(name:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = specialized handling<A, B, C>(_:_:_:)(*(a2 + 16), a1);
  if (!v3)
  {
    v6 = __CMLFeatureValueType.init(rawValue:)(result);
    if (v6 == 8)
    {
      BUG();
    }

    result = CMLFeatureValueType.init(_:)(v6);
    *v4 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.sorted(by:increasingOrder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a1, a3);
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t CMLTable.split(fraction:seed:)(uint64_t a1)
{
  v4 = *v2;
  v10 = 0;
  v9 = 0;
  specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v2[2], a1, &v10, &v9);
  if (!v1)
  {
    v5 = v10;
    if (!v10)
    {
      BUG();
    }

    v6 = swift_allocObject(v4, 24, 7);
    *(v6 + 16) = v5;
    v7 = v9;
    if (!v9)
    {
      BUG();
    }

    v3 = v6;
    *(swift_allocObject(v4, 24, 7) + 16) = v7;
  }

  return v3;
}

NSURL *closure #1 in CMLTable.save(to:type:)(NSURL *a1, uint64_t a2, uint64_t a3)
{
  result = a1;
  if (a2 == 2)
  {
    v4 = *(a3 + 16);
    v5 = "json";
  }

  else if (a2 == 1)
  {
    v4 = *(a3 + 16);
    v5 = "binary";
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v4 = *(a3 + 16);
    v5 = "csv";
  }

  return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v4, result, v5, 0);
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLTable.description()()
{
  result._countAndFlagsBits = specialized handling<A, B>(_:_:)(*(v1 + 16));
  if (!v0)
  {
    v3 = specialized handling<A, B>(_:_:)(result._countAndFlagsBits);
    if (!v3)
    {
      BUG();
    }

    result._countAndFlagsBits = String.init(cString:)(v3);
  }

  return result;
}

uint64_t CMLTable.apply(transform:type:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = swift_allocObject(&unk_3907C0, 32, 7);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = _sSp8allocate8capacitySpyxGSi_tFZs13OpaquePointerVAEc_Tt0g5(1);
  v7 = swift_allocObject(&unk_3907E8, 32, 7);
  *(v7 + 16) = partial apply for closure #1 in CMLTable.apply(transform:type:);
  *(v7 + 24) = v5;
  *v6 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned OpaquePointer)partial apply;
  v6[1] = v7;
  v8 = *(v4 + 16);
  v9 = qword_33FFB8[CMLFeatureValueType.rawValue.getter(a3)];

  v10 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v8, @objc invokeContext #1 (rawInput:context:error:) in CMLTable.apply(transform:type:), @objc releaseContext #1 (context:) in CMLTable.apply(transform:type:), v6, v9);
  if (v3)
  {
    swift_unexpectedError(v3, "CreateML/_ForwardingWrapper.swift", 33, 1, 937);
    BUG();
  }

  v11 = v10;
  if (!v10)
  {
    BUG();
  }

  v12 = type metadata accessor for CMLColumn();
  result = swift_allocObject(v12, 24, 7);
  *(result + 16) = v11;
  return result;
}

uint64_t closure #1 in CMLTable.apply(transform:type:)(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = type metadata accessor for CMLSequence();
  v3 = swift_allocObject(v2, 25, 7);
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  a2(v3);

  v4 = CMLFeatureValue.releaseRawValue()();

  return v4;
}

uint64_t releaseContext #1 (context:) in CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1)
{
  if (a1)
  {

    return a1, -1, -1;
  }

  return result;
}

uint64_t invokeContext #1 (rawInput:context:error:) in CMLColumn.apply(transform:type:skipUndefined:)(uint64_t a1, void (**a2)(void *))
{
  if (!a2)
  {
    BUG();
  }

  if (!a1)
  {
    BUG();
  }

  v2 = *a2;
  v4[0] = a1;

  v2(v4);

  return v4[1];
}

uint64_t closure #1 in CMLTable.fillMissing(columnNamed:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a1, *(a3 + 16));
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t CMLTable.filtered(_:columnName:isExcluding:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = *v5;
  v7 = v5[2];
  v8 = *(a1 + 16);
  v9 = String.utf8CString.getter(a2);
  v10 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v7, v8, v9 + 32, a4);

  if (!v4)
  {
    if (!v10)
    {
      BUG();
    }

    result = swift_allocObject(v12, 24, 7);
    *(result + 16) = v10;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CMLTable.stack(columnName:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(*(a2 + 16), a3, a1, 0);
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.stack(columnName:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = v5;
  v10 = a4;
  v11 = a1;
  result = specialized String.withCString<A>(_:)(a5, v9, a2, a3);
  if (!v6)
  {
    *v7 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CMLTable.unstack(columnName:newColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a3, a1);
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLTable();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.pack(columnNames:newColumnName:type:value:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v14 = v5;
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  v10 = CMLFeatureValueType.rawValue.getter(a4);
  result = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v8, v9, a1, qword_33FFB8[v10], *(a5 + 16));
  if (!v6)
  {
    v12 = result;
    if (!result)
    {
      BUG();
    }

    v13 = type metadata accessor for CMLTable();
    result = swift_allocObject(v13, 24, 7);
    *(result + 16) = v12;
    *v14 = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.unpack(columnName:types:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = a2;
  v10 = a1;
  v11 = a3;
  v12 = a4;
  result = specialized String.withCString<A>(_:)(partial apply for closure #1 in closure #1 in CMLTable.unpack(columnName:types:limit:), v8, 0, 0xE000000000000000);
  if (!v5)
  {
    *v6 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CMLTable.unpack(columnName:types:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = v5;
  type metadata accessor for CMLFeatureValue();
  v8 = CMLFeatureValue.__allocating_init()();
  v9 = specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(*(a2 + 16), a3, a1, *(a4 + 16), *(v8 + 16), *(a5 + 16));
  if (v6)
  {
  }

  v11 = v9;
  if (!v9)
  {
    BUG();
  }

  v12 = type metadata accessor for CMLTable();
  result = swift_allocObject(v12, 24, 7);
  *(result + 16) = v11;
  *v15 = result;
  return result;
}

uint64_t closure #1 in CMLParameters.featureValue(for:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = specialized handling<A, B, C>(_:_:_:)(*(a2 + 16), a1);
  if (!v3)
  {
    v6 = result;
    if (!result)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLFeatureValue();
    result = swift_allocObject(v7, 25, 7);
    *(result + 16) = v6;
    *(result + 24) = 1;
    *v4 = result;
  }

  return result;
}

uint64_t CMLParameters.featureValue(for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = CMLParameters.Key.rawValue.getter(a1);
  v6 = v5;
  v7 = a3(a2, v3, v4, v5);
  v6;
  return v7;
}

uint64_t closure #1 in CMLTable.column(name:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t (*a4)(void))
{
  v7 = v4;
  result = a3(*(a2 + 16), a1);
  if (!v5)
  {
    v9 = result;
    if (!result)
    {
      BUG();
    }

    v10 = a4();
    result = swift_allocObject(v10, 24, 7);
    *(result + 16) = v9;
    *v7 = result;
  }

  return result;
}

uint64_t CMLParameters.add(key:column:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void, void *, void))
{
  v5 = CMLParameters.Key.rawValue.getter(a1);
  v7 = v6;

  specialized String.withCString<A>(_:)(v5, v7, v4, a2, a3, a4);
  return v7;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLAggregator.add(operation:toColumnName:fromColumnName:)(Swift::String operation, Swift::String toColumnName, Swift::String fromColumnName)
{
  *(&v4 + 1) = specialized handling<A, B, C, D, E>(_:_:_:_:_:);
  *&v4 = partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:);
  *(&v3 + 1) = partial apply for closure #1 in closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:);
  *&v3 = partial apply for closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:);
  CMLAggregator.add(operation:toColumnName:fromColumnName:)(operation._countAndFlagsBits, operation._object, toColumnName._countAndFlagsBits, toColumnName._object, fromColumnName._countAndFlagsBits, fromColumnName._object, v3, v4);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(Swift::Bool isMax, Swift::String toColumnName, Swift::String aggColumnName, Swift::String outputColumnName)
{
  countAndFlagsBits = outputColumnName._countAndFlagsBits;
  object = aggColumnName._object;
  v7 = aggColumnName._countAndFlagsBits;
  v8 = toColumnName._object;

  specialized String.withCString<A>(_:)(toColumnName._countAndFlagsBits, v8, v7, object, countAndFlagsBits, outputColumnName._object, isMax, v4);
}

uint64_t closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{

  return specialized String.withCString<A>(_:)(a2, a3, a4, a5, a6, a7, a1);
}

NSURL *closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10[16] = a4 & 1;
  v11 = a5;
  v12 = a6;
  v13 = a1;
  if ((a3 & 0x1000000000000000) != 0 || !(a3 & 0x2000000000000000 | a2 & 0x1000000000000000))
  {
    return _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:), v10, a2, a3, &type metadata for () + 8);
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v6 = _StringObject.sharedUTF8.getter(a2, a3);
      if (!v6)
      {
        v7 = 0;
        return partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v7);
      }
    }

    v7 = v6;
    return partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v7);
  }

  v9[0] = a2;
  v9[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  return closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(v9, a4, a5, a6, a1);
}

NSURL *closure #1 in closure #1 in closure #1 in CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  if (a2)
  {
    return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v7, a4, a5, a1);
  }

  else
  {
    return specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v7, a4, a5, a1);
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:)(Swift::String concatToColumnName, Swift::String keyColumnName, Swift::String valueColumnName)
{
  *(&v4 + 1) = specialized handling<A, B, C, D, E>(_:_:_:_:_:);
  *&v4 = partial apply for closure #1 in closure #1 in closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:);
  *(&v3 + 1) = partial apply for closure #1 in closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:);
  *&v3 = partial apply for closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:);
  CMLAggregator.add(operation:toColumnName:fromColumnName:)(concatToColumnName._countAndFlagsBits, concatToColumnName._object, keyColumnName._countAndFlagsBits, keyColumnName._object, valueColumnName._countAndFlagsBits, valueColumnName._object, v3, v4);
}

uint64_t CMLAggregator.add(operation:toColumnName:fromColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, __int128 a7, __int128 a8)
{

  return specialized String.withCString<A>(_:)(a1, a2, a3, a4, a5, a6, v8, a7, *(&a7 + 1), a8, *(&a8 + 1));
}

uint64_t closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, void (*a8)(void, uint64_t, uint64_t, void *))
{

  return specialized String.withCString<A>(_:)(a2, a3, a4, a5, a6, a1, a7, *(&a7 + 1), a8);
}

CGImageRef_optional __swiftcall CMLPlot.toImage()()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v2 = CGBitmapContextCreate(0, 0x2D0uLL, 0x226uLL, 8uLL, 0, DeviceRGB, 1u);
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 16);
    v5 = v2;
    specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v4, 0, v3, 0);

    Image = CGBitmapContextCreateImage(v5);
  }

  else
  {

    return 0;
  }

  return Image;
}

uint64_t closure #1 in CMLTable.init(from:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  result = a2(a1);
  if (!v3)
  {
    if (!result)
    {
      BUG();
    }

    *v4 = result;
  }

  return result;
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLModel.name()()
{
  result._countAndFlagsBits = specialized handling<A, B>(_:_:)(*(v1 + 16));
  if (!v0)
  {
    if (!result._countAndFlagsBits)
    {
      BUG();
    }

    result._countAndFlagsBits = String.init(cString:)(result._countAndFlagsBits);
  }

  return result;
}

uint64_t closure #1 in CMLModel.callFunction(name:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = specialized handling<A, B, C, D>(_:_:_:_:)(*(a2 + 16), a1, *(a3 + 16));
  if (!v4)
  {
    v7 = result;
    if (!result)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLVariant();
    result = swift_allocObject(v8, 24, 7);
    *(result + 16) = v7;
    *v5 = result;
  }

  return result;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n038_ss11_StringGutsV11withCStringyxxSPys4F27VGKXEKlFxSRyAEGKXEfU_yt_Tg5SPyAGGxsAD_pRi_zRi0_zlyytIsgyrzo_Tf1nnc_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!a1)
  {
    a1 = 0;
  }

  return a3(a1, a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned OpaquePointer)(void *a1)
{
  v3 = v1;
  result = (*(v2 + 16))(*a1);
  *v3 = result;
  return result;
}

uint64_t partial apply for closure #1 in CMLAggregator.add(concatToColumnName:keyColumnName:valueColumnName:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, void *))
{
  *(&v6 + 1) = a3;
  *&v6 = a2;
  return closure #1 in CMLAggregator.add(operation:toColumnName:fromColumnName:)(a1, v4[2], v4[3], v4[4], v4[5], v4[6], v6, a4);
}

uint64_t _s8CreateML11MLDataTableV14ParsingOptionsVSgWOg(uint64_t a1)
{
  result = 0;
  if ((*(a1 + 16) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + 16) >> 1) + 1;
  }

  return result;
}

uint64_t outlined consume of MLDataTable.ParsingOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a3)
  {
    v15 = a5;
    a3;
    v15;
    a7;
    a10;
    a12;
    a14;
    return a15;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CMLFeatureValueType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFA)
    {
      goto LABEL_13;
    }

    v2 = a2 + 6;
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
      v5 = *a1 + (v4 << 8) - 7;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 7;
      v8 = v6 < 7;
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

uint64_t storeEnumTagSinglePayload for CMLFeatureValueType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFA)
  {
    v4 = a3 + 6;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF9)
  {
    v5 = a2 - 250;
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
          *a1 = a2 + 6;
        }

        break;
      case 5:
        JUMPOUT(0xC806CLL);
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMLFeatureValueType and conformance CMLFeatureValueType()
{
  result = lazy protocol witness table cache variable for type CMLFeatureValueType and conformance CMLFeatureValueType;
  if (!lazy protocol witness table cache variable for type CMLFeatureValueType and conformance CMLFeatureValueType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for CMLFeatureValueType, &type metadata for CMLFeatureValueType);
    lazy protocol witness table cache variable for type CMLFeatureValueType and conformance CMLFeatureValueType = result;
  }

  return result;
}

uint64_t static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(uint64_t a1, __m128 a2)
{
  v8[0] = *a2.i64;
  v8[1] = v2;
  v4 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  outlined init with copy of MLTrainingSessionParameters(a1, v8, type metadata accessor for MLActionClassifier.DataSource);
  result = MLActionClassifier.FeatureExtractor.__allocating_init(source:)(v8, a2);
  if (!v3)
  {
    MLActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:)(v8[0]);
  }

  return result;
}

uint64_t MLActionClassifier.FeatureExtractor.__allocating_init(source:)(uint64_t a1, __m128 a2)
{
  MLActionClassifier.DataSource.videosWithAnnotations()(a2);
  result = outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActionClassifier.DataSource);
  if (!v2)
  {
    result = swift_allocObject(v3, 64, 7);
    *(result + 32) = _swiftEmptyArrayStorage;
    *(result + 40) = _swiftEmptyArrayStorage;
    *(result + 48) = _swiftEmptyArrayStorage;
    *(result + 56) = _swiftEmptyArrayStorage;
    *(result + 16) = v5;
    *(result + 24) = v6;
  }

  return result;
}

uint64_t MLActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:)(double a1)
{
  seconds[0] = v2;
  v284 = a1;
  v287 = v1;
  v308 = type metadata accessor for URL(0);
  v307 = *(v308 - 8);
  v4 = *(v307 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v312 = &v281;
  v332 = type metadata accessor for Date(0);
  v336 = *(v332 - 1);
  v7 = *(v336 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  *v335 = &v281;
  currentFileIndex = type metadata accessor for _TablePrinter(0);
  v10 = *(*(currentFileIndex - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v298 = &v281;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v319 = &v281;
  v339 = type metadata accessor for Logger(0);
  v337 = *(v339 - 8);
  v15 = *(v337 + 8);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v288 = &v281;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v309 = &v281;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v299 = &v281;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v293 = &v281;
  v24 = alloca(v15);
  v25 = alloca(v15);
  v320 = &v281;
  v26 = alloca(v15);
  v27 = alloca(v15);
  v295 = &v281;
  v28 = alloca(v15);
  v29 = alloca(v15);
  v294 = &v281;
  v30 = alloca(v15);
  v31 = alloca(v15);
  v321 = &v281;
  v32 = *(v3 + 16);
  v296 = v3;
  v33 = *(v3 + 24);
  v302 = v32;
  LOBYTE(v303) = v33;
  outlined copy of Result<_DataTable, Error>(v32, v33);
  outlined copy of Result<_DataTable, Error>(v32, v33);
  v34 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v302, v303);
  v331 = specialized RandomAccessCollection<>.distance(from:to:)(0, v34, v32, v33);
  outlined consume of Result<_DataTable, Error>(v32, v33);
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v35 = v339;
  v36 = __swift_project_value_buffer(v339, static MLActionClassifier.logger);
  v37 = v337;
  v38 = *(v337 + 2);
  v39 = v321;
  v40 = v321;
  v313 = v36;
  v41 = v36;
  v314 = v38;
  v38(v321, v36, v35);
  v42 = Logger.logObject.getter(v40, v41);
  v43 = static os_log_type_t.info.getter(v40);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v39;
    v45 = swift_slowAlloc(12, -1);
    *v45 = 134217984;
    *(v45 + 4) = v331;
    _os_log_impl(&dword_0, v42, v43, "Processing %ld annotated video clips", v45, 0xCu);
    v46 = v45;
    v39 = v44;
    v37 = v337;
    v46, -1, -1;
  }

  v47 = v39;
  v322 = *(v37 + 1);
  v322(v39, v339);
  v337 = "ml.handActionClassifier" + 0x8000000000000000;
  v48 = v319;
  v49 = v319 + *(currentFileIndex + 20);
  Date.init()(v47);
  *v48 = v331;
  type metadata accessor for OS_os_log();
  v50 = OS_os_log.init(subsystem:category:)(0xD000000000000023, ("ctor" + 0x8000000000000000), 0x72705F656C626174, 0xED00007265746E69);
  v51 = currentFileIndex;
  v52 = *(currentFileIndex + 24);
  v286 = v50;
  *(v48 + v52) = v50;
  v53 = *(v51 + 28);
  *(v48 + v53) = 0xD000000000000015;
  *(v48 + v53 + 8) = v337;
  v54 = *v335;
  Date.init()(0xD000000000000023);
  v285 = v49;
  (*(v336 + 40))(v49, v54, v332);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  v55 = *(v296 + 24);
  v302 = *(v296 + 16);
  LOBYTE(v303) = v55;
  v290 = (v296 + 32);
  v291 = (v296 + 48);
  v292 = (v296 + 40);
  v289 = (v296 + 56);
  value_low = 0.0;
  v304 = 0;
  outlined copy of Result<_DataTable, Error>(v302, v55);
  value = kCMTimeZero.value;
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  epoch = kCMTimeZero.epoch;
  v317 = kCMTimeIndefinite.value;
  v325 = kCMTimeIndefinite.timescale;
  v326 = kCMTimeIndefinite.flags;
  v318 = kCMTimeIndefinite.epoch;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    if (!*&v329.timescale)
    {
      v243 = v302;
      outlined consume of Result<_DataTable, Error>(v302, v303);
      static os_log_type_t.info.getter(v243);
      v244 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v245 = swift_allocObject(v244, 72, 7);
      v246 = v245;
      v245[2] = 1;
      v245[3] = 2;
      v245[7] = &type metadata for Int;
      v245[8] = &protocol witness table for Int;
      v245[4] = 3;
      os_log(_:dso:log:type:_:)("event: %lu");
      v246;
      v247 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
      inited = swift_initStackObject(v247, v282);
      *(inited + 16) = 4;
      *(inited + 24) = 8;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v302 = *v292;
      v249 = alloca(24);
      v250 = alloca(32);
      v283 = &v302;

      *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 56) = v251 & 1;
      v302;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v302 = *v291;
      v252 = alloca(24);
      v253 = alloca(32);
      v283 = &v302;

      *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 88) = v254 & 1;
      v302;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v302 = *v290;
      v255 = alloca(24);
      v256 = alloca(32);
      v283 = &v302;

      *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 120) = v257 & 1;
      v302;
      *(inited + 128) = 0x7461506F65646976;
      *(inited + 136) = 0xE900000000000068;
      v302 = *v289;
      v258 = alloca(24);
      v259 = alloca(24);
      v283 = &v302;

      *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      *(inited + 152) = v260 & 1;
      v302;
      v261 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
      v262 = seconds[0];
      _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v261);
      if (v262 == 0.0)
      {
        v263 = v303;
        v264 = v287;
        *v287 = v302;
        *(v264 + 8) = v263;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v319, type metadata accessor for _TablePrinter);
    }

    currentFileIndex = v329.value;
    v57 = v329.epoch;
    v58 = v330;
    v59 = *(v329.epoch + 16) == 0;
    v331 = v329.epoch;
    v337 = *&v329.timescale;
    if (v59)
    {
      goto LABEL_113;
    }

    v60 = specialized __RawDictionaryStorage.find<A>(_:)(0x7461506F65646976, 0xE900000000000068);
    if ((v61 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v57);
      goto LABEL_113;
    }

    v62 = *(*(v57 + 56) + 8 * v60);

    v63 = seconds[0];
    v64 = CMLSequence.value(at:)(v62);
    if (v63 != 0.0)
    {
      v280 = *&v63;
      goto LABEL_126;
    }

    MLDataValue.init(_:)(v64, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v57);
    v65 = v329.value;
    v66 = *&v329.timescale;
    if (LOBYTE(v329.epoch) != 2)
    {
      v265 = v329.epoch;
      goto LABEL_111;
    }

    if (!*(v57 + 16))
    {
      v265 = 2;
      goto LABEL_111;
    }

    *v335 = v329.value;
    v332 = *&v329.timescale;

    v67 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000);
    if ((v68 & 1) == 0)
    {
      break;
    }

    v69 = *(*(v57 + 56) + 8 * v67);

    v70 = CMLSequence.value(at:)(v69);
    MLDataValue.init(_:)(v70, value_low);

    v336 = v58;
    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v57);
    if (LOBYTE(v329.epoch) != 2)
    {
      outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
      outlined consume of MLDataValue(*v335, v332, 2);
      goto LABEL_113;
    }

    seconds[0] = 0.0;
    v306 = v329.value;
    v305 = *&v329.timescale;
    v71 = objc_opt_self(NSFileManager);
    v72 = [v71 defaultManager];
    v73 = v72;
    v74 = *v335;
    v75 = String._bridgeToObjectiveC()();
    v76 = [v73 fileExistsAtPath:v75];

    if (!v76)
    {
      outlined consume of MLDataValue(v306, v305, 2);
      v329.value = 0;
      *&v329.timescale = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      v329.timescale;
      v329.value = 0xD000000000000018;
      *&v329.timescale = "h or label string at row " + 0x8000000000000000;
      v276._countAndFlagsBits = v74;
      v277 = v332;
      v276._object = v332;
      String.append(_:)(v276);
      outlined consume of MLDataValue(v74, v277, 2);
      *seconds = *&v329.value;
      v278 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v278, 0, 0);
      *v279 = *seconds;
      *(v279 + 16) = 0;
      *(v279 + 32) = 0;
      *(v279 + 48) = 0;
      swift_willThrow();
      v272 = currentFileIndex;
      v273 = v337;
      v274 = v331;
      goto LABEL_114;
    }

    URL.init(fileURLWithPath:)(v74, v332);
    v297 = URL.lastPathComponent.getter();
    v321 = v77;
    v78 = *(v296 + 16);
    if (*(v296 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v296 + 16), 1);
      v79 = tc_v1_flex_list_create(0);
      v80 = seconds[0];
      if (!v79)
      {
        BUG();
      }

      v81 = v79;
      v82 = type metadata accessor for CMLSequence();
      v83 = swift_allocObject(v82, 25, 7);
      *(v83 + 16) = v81;
      *(v83 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v78, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*(v296 + 16), 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v78, 0);
      v83 = v301;
      v80 = seconds[0];
    }

    v329.value = 0x7472617473;
    *&v329.timescale = 0xE500000000000000;
    v84 = alloca(24);
    v85 = alloca(32);
    v283 = &v329;
    v86 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v281, v83);
    seconds[0] = v80;

    if ((v86 & 1) == 0)
    {
      goto LABEL_51;
    }

    v87 = v331;
    v88 = v337;
    if (!*(v331 + 16))
    {
      goto LABEL_45;
    }

    v89 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if (v90)
    {
      v91 = *(*(v87 + 56) + 8 * v89);

      v92 = seconds[0];
      v93 = CMLSequence.value(at:)(v91);
      v94 = v87;
      v95 = *&v92;
      if (v92 != 0.0)
      {
        goto LABEL_123;
      }

      MLDataValue.init(_:)(v93, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v94);
      v96 = v329.value;
      v97 = v339;
      seconds[0] = 0.0;
      if (LOBYTE(v329.epoch) == 1)
      {
        value_low = *&v329.value;
        if (*&v329.value >= 0.0)
        {
          goto LABEL_43;
        }

        v98 = v294;
        v314(v294, v313, v339);
        v99 = v332;
        v100 = v332;
        outlined copy of MLDataValue(*v335, v332, 2u);

        v101 = Logger.logObject.getter(v99, v100);
        v102 = static os_log_type_t.info.getter(v99);
        log = v101;
        *type = v102;
        if (!os_log_type_enabled(v101, v102))
        {
          goto LABEL_99;
        }

        v103 = swift_slowAlloc(22, -1);
        v334 = swift_slowAlloc(32, -1);
        v329.value = v334;
        *v103 = 134218242;
        *(v103 + 4) = v96;
        *(v103 + 12) = 2080;

        v104 = *v335;
        *(v103 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v335, v99, &v329.value);
        outlined consume of MLDataValue(v104, v99, 2);
        outlined consume of MLDataValue(v104, v99, 2);
        v99;
        v105 = log;
        _os_log_impl(&dword_0, log, type[0], "Start time %f specified in video file %s is negative, using 0.0 automatically.", v103, 0x16u);
        v106 = v334;
        __swift_destroy_boxed_opaque_existential_1Tm(v334);
        v106, -1, -1;
        v103, -1, -1;

        v107 = v294;
        goto LABEL_50;
      }

      outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
      v108 = v320;
      v87 = v331;
    }

    else
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v88, v87);
      v97 = v339;
      v108 = v320;
    }

    if (!*(v87 + 16))
    {
      goto LABEL_46;
    }

    v109 = v337;

    v110 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if ((v111 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v109, v87);
      v97 = v339;
      v108 = v320;
LABEL_35:
      if (*(v87 + 16))
      {
        v117 = v337;

        v118 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
        if (v119)
        {
          v120 = *(*(v87 + 56) + 8 * v118);

          v121 = seconds[0];
          v122 = CMLSequence.value(at:)(v120);
          v123 = *&v121;
          if (v121 != 0.0)
          {
            goto LABEL_125;
          }

          MLDataValue.init(_:)(v122, value_low);

          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v87);
          v128 = v329.value;
          v129 = *&v329.timescale;
          if (LOBYTE(v329.epoch) == 2)
          {
            static _VideoUtilities.getSecondsFromTimeString(_:)(*&v329.value, v124, v125, v126, v127);
            seconds[0] = 0.0;
            *&log = value_low;
            outlined consume of MLDataValue(v128, v129, 2);
            value_low = *&log;
LABEL_43:
            CMTimeMakeWithSeconds(&v329, value_low, 1000);
            log = v329.value;
            LODWORD(v334) = v329.timescale;
            *type = v329.flags;
            v130 = v329.epoch;
            goto LABEL_52;
          }

          seconds[0] = 0.0;
          outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
        }

        else
        {
          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v117, v87);
        }

LABEL_45:
        v97 = v339;
        v108 = v320;
      }

LABEL_46:
      v314(v108, v313, v97);
      v131 = v321;
      v132 = v321;
      swift_bridgeObjectRetain_n(v321, 2);
      v133 = Logger.logObject.getter(v132, 2);
      v134 = static os_log_type_t.error.getter(v132);
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc(12, -1);
        *&log = COERCE_DOUBLE(swift_slowAlloc(32, -1));
        v329.value = log;
        *v135 = 136315138;

        *(v135 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v131, &v329.value);
        swift_bridgeObjectRelease_n(v131, 3);
        _os_log_impl(&dword_0, v133, v134, "Unsupported start time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping start time for file %s", v135, 0xCu);
        v136 = log;
        __swift_destroy_boxed_opaque_existential_1Tm(log);
        v136, -1, -1;
        v135, -1, -1;
      }

      else
      {

        swift_bridgeObjectRelease_n(v131, 2);
      }

      v107 = v320;
      goto LABEL_50;
    }

    v112 = *(*(v87 + 56) + 8 * v110);

    v113 = seconds[0];
    v114 = CMLSequence.value(at:)(v112);
    v115 = v87;
    v95 = *&v113;
    if (v113 != 0.0)
    {
LABEL_123:
      v280 = v95;
      goto LABEL_126;
    }

    MLDataValue.init(_:)(v114, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v115);
    v116 = v329.value;
    v97 = v339;
    v108 = v320;
    seconds[0] = 0.0;
    if (LOBYTE(v329.epoch))
    {
      outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
      v87 = v331;
      goto LABEL_35;
    }

    if (v329.value >= 0)
    {
      value_low = SLODWORD(v329.value);
      goto LABEL_43;
    }

    v98 = v295;
    v314(v295, v313, v339);
    v99 = v332;
    v224 = v332;
    outlined copy of MLDataValue(*v335, v332, 2u);

    v225 = Logger.logObject.getter(v99, v224);
    v226 = static os_log_type_t.info.getter(v99);
    log = v225;
    *type = v226;
    if (!os_log_type_enabled(v225, v226))
    {
LABEL_99:
      v231 = *v335;
      outlined consume of MLDataValue(*v335, v99, 2);
      outlined consume of MLDataValue(v231, v99, 2);

      v107 = v98;
      goto LABEL_50;
    }

    v227 = swift_slowAlloc(22, -1);
    v334 = swift_slowAlloc(32, -1);
    v329.value = v334;
    *v227 = 134218242;
    *(v227 + 4) = v116;
    *(v227 + 12) = 2080;

    v228 = *v335;
    *(v227 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v335, v99, &v329.value);
    outlined consume of MLDataValue(v228, v99, 2);
    outlined consume of MLDataValue(v228, v99, 2);
    v99;
    v229 = log;
    _os_log_impl(&dword_0, log, type[0], "Start time %ld specified in video file %s is negative, using 0.0 automatically.", v227, 0x16u);
    v230 = v334;
    __swift_destroy_boxed_opaque_existential_1Tm(v334);
    v230, -1, -1;
    v227, -1, -1;

    v107 = v295;
LABEL_50:
    v322(v107, v339);
LABEL_51:
    log = value;
    LODWORD(v334) = timescale;
    *type = flags;
    v130 = epoch;
LABEL_52:
    v327 = v130;
    v137 = *(v296 + 16);
    if (*(v296 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v296 + 16), 1);
      v138 = tc_v1_flex_list_create(0);
      if (!v138)
      {
        BUG();
      }

      v139 = v138;
      v140 = type metadata accessor for CMLSequence();
      v141 = swift_allocObject(v140, 25, 7);
      *(v141 + 16) = v139;
      *(v141 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v137, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*(v296 + 16), 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v137, 0);
      v141 = v301;
    }

    v329.value = 6581861;
    *&v329.timescale = 0xE300000000000000;
    v142 = alloca(24);
    v143 = alloca(32);
    v283 = &v329;
    v144 = seconds[0];
    v145 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v281, v141);
    v146 = v144;

    if ((v145 & 1) == 0)
    {
      outlined consume of MLDataValue(*v335, v332, 2);
      v166 = v317;
      v167 = v325;
      v168 = v326;
      v169 = v318;
      goto LABEL_84;
    }

    v147 = v331;
    if (*(v331 + 16))
    {
      seconds[0] = v144;
      v148 = v337;

      v149 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
      if (v150)
      {
        v151 = *(*(v147 + 56) + 8 * v149);

        v152 = seconds[0];
        v153 = CMLSequence.value(at:)(v151);
        v146 = v152;
        if (v152 != 0.0)
        {
          goto LABEL_124;
        }

        MLDataValue.init(_:)(v153, value_low);

        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v147);
        v154 = v329.value;
        v155 = v293;
        if (LOBYTE(v329.epoch) == 1)
        {
          if (*&v329.value >= 0.0)
          {
            v189 = *v335;
            v190 = v332;
            seconds[0] = *&v329.value;
LABEL_92:
            outlined consume of MLDataValue(v189, v190, 2);
            CMTimeMakeWithSeconds(&v329, seconds[0], 1000);
            v166 = v329.value;
            v167 = v329.timescale;
            v168 = v329.flags;
            v169 = v329.epoch;
          }

          else
          {
            seconds[0] = 0.0;
            v156 = v313;
            v314(v293, v313, v339);
            v157 = v332;
            v158 = v332;

            v159 = Logger.logObject.getter(v158, v156);
            v160 = static os_log_type_t.info.getter(v158);
            v310 = v159;
            *v311 = v160;
            if (os_log_type_enabled(v159, v160))
            {
              v161 = swift_slowAlloc(22, -1);
              v300 = swift_slowAlloc(32, -1);
              v329.value = v300;
              *v161 = 134218242;
              *(v161 + 4) = v154;
              *(v161 + 12) = 2080;

              v162 = *v335;
              *(v161 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v335, v157, &v329.value);
              outlined consume of MLDataValue(v162, v157, 2);
              outlined consume of MLDataValue(v162, v157, 2);
              v157;
              v163 = v310;
              _os_log_impl(&dword_0, v310, v311[0], "End time %f specified in video file %s is negative, using end of file automatically.", v161, 0x16u);
              v164 = v300;
              __swift_destroy_boxed_opaque_existential_1Tm(v300);
              v164, -1, -1;
              v161, -1, -1;

              v165 = v293;
            }

            else
            {
              v223 = *v335;
              outlined consume of MLDataValue(*v335, v157, 2);
              outlined consume of MLDataValue(v223, v157, 2);

              v165 = v155;
            }

            v322(v165, v339);
            v166 = v317;
            v167 = v325;
            v168 = v326;
            v169 = v318;
            v146 = seconds[0];
          }

LABEL_84:
          LOBYTE(v147) = v331;
LABEL_85:
          v199 = log;
          v200 = *type;
          v201 = v334;
          v202 = v327;
          goto LABEL_86;
        }

        outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
        v147 = v331;
      }

      else
      {
        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v148, v147);
        v146 = seconds[0];
      }

      if (*(v147 + 16))
      {
        seconds[0] = v146;
        v170 = v337;

        v171 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
        if (v172)
        {
          v173 = *(*(v147 + 56) + 8 * v171);

          v174 = seconds[0];
          v175 = CMLSequence.value(at:)(v173);
          v146 = v174;
          if (v174 != 0.0)
          {
LABEL_124:
            v280 = *&v146;
            goto LABEL_126;
          }

          MLDataValue.init(_:)(v175, value_low);

          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v147);
          v176 = v329.value;
          if (!LOBYTE(v329.epoch))
          {
            if (v329.value < 0)
            {
              seconds[0] = 0.0;
              v232 = v313;
              v314(v299, v313, v339);
              v233 = v332;
              v234 = v332;

              v235 = Logger.logObject.getter(v234, v232);
              v236 = static os_log_type_t.info.getter(v234);
              v310 = v235;
              *v311 = v236;
              if (os_log_type_enabled(v235, v236))
              {
                v147 = swift_slowAlloc(22, -1);
                v300 = swift_slowAlloc(32, -1);
                v329.value = v300;
                *v147 = 134218242;
                *(v147 + 4) = v176;
                *(v147 + 12) = 2080;

                v237 = *v335;
                *(v147 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v335, v233, &v329.value);
                outlined consume of MLDataValue(v237, v233, 2);
                outlined consume of MLDataValue(v237, v233, 2);
                v233;
                v238 = v310;
                _os_log_impl(&dword_0, v310, v311[0], "End time %ld specified in video file %s is negative, using end of file automatically.", v147, 0x16u);
                v239 = v300;
                __swift_destroy_boxed_opaque_existential_1Tm(v300);
                v239, -1, -1;
                v240 = v147;
                LOBYTE(v147) = v331;
                v240, -1, -1;
                v241 = v238;
              }

              else
              {
                v242 = *v335;
                outlined consume of MLDataValue(*v335, v233, 2);
                outlined consume of MLDataValue(v242, v233, 2);
                v241 = v310;
              }

              v322(v299, v339);
              v166 = v317;
              v167 = v325;
              v168 = v326;
              v169 = v318;
              v146 = seconds[0];
            }

            else
            {
              outlined consume of MLDataValue(*v335, v332, 2);
              CMTimeMakeWithSeconds(&v329, v176, 1000);
              v166 = v329.value;
              v167 = v329.timescale;
              v168 = v329.flags;
              v169 = v329.epoch;
            }

            goto LABEL_85;
          }

          outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
        }

        else
        {
          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v170, v147);
          v146 = seconds[0];
        }
      }
    }

    seconds[0] = v146;
    outlined consume of MLDataValue(*v335, v332, 2);
    if (*(v147 + 16))
    {
      v177 = v337;

      v178 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
      if (v179)
      {
        v180 = *(*(v147 + 56) + 8 * v178);

        v181 = seconds[0];
        v182 = CMLSequence.value(at:)(v180);
        v123 = *&v181;
        if (v181 != 0.0)
        {
LABEL_125:
          v280 = v123;
LABEL_126:
          swift_unexpectedError(v280, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v182, value_low);

        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v147);
        v187 = v329.value;
        v188 = *&v329.timescale;
        if (LOBYTE(v329.epoch) == 2)
        {
          static _VideoUtilities.getSecondsFromTimeString(_:)(*&v329.value, v183, v184, v185, v186);
          v146 = 0.0;
          v189 = v187;
          v190 = v188;
          seconds[0] = value_low;
          goto LABEL_92;
        }

        seconds[0] = 0.0;
        outlined consume of MLDataValue(v329.value, *&v329.timescale, v329.epoch);
      }

      else
      {
        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v177, v147);
      }

      v191 = v339;
      v192 = v309;
    }

    else
    {
      v191 = v339;
      v192 = v309;
    }

    v314(v192, v313, v191);
    v193 = v321;
    v194 = v321;
    swift_bridgeObjectRetain_n(v321, 2);
    v195 = Logger.logObject.getter(v194, 2);
    v196 = static os_log_type_t.error.getter(v194);
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc(12, -1);
      v332 = swift_slowAlloc(32, -1);
      v329.value = v332;
      *v197 = 136315138;

      *(v197 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v193, &v329.value);
      swift_bridgeObjectRelease_n(v193, 3);
      _os_log_impl(&dword_0, v195, v196, "Unsupported end time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping end time for file %s", v197, 0xCu);
      v198 = v332;
      __swift_destroy_boxed_opaque_existential_1Tm(v332);
      v198, -1, -1;
      v197, -1, -1;

      v322(v309, v339);
      v166 = v317;
      v167 = v325;
      v168 = v326;
      v169 = v318;
      v146 = seconds[0];
      goto LABEL_84;
    }

    swift_bridgeObjectRelease_n(v193, 2);
    v322(v309, v339);
    v166 = v317;
    v167 = v325;
    v168 = v326;
    v169 = v318;
    v146 = seconds[0];
    LOBYTE(v147) = v331;
    v199 = log;
    v200 = *type;
    v201 = v334;
    v202 = v327;
LABEL_86:
    v203 = static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(v312, v199, v201 | (v200 << 32), v202, v166, v167 | (v168 << 32), v284, v169);
    if (v146 != 0.0)
    {
      outlined consume of MLDataValue(v306, v305, 2);
      v321;
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v147);
      (*(v307 + 8))(v312, v308);
      goto LABEL_115;
    }

    v204 = v203;
    seconds[0] = 0.0;
    v205 = v203[2];
    v206 = currentFileIndex;
    v332 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(currentFileIndex, v205);
    *v335 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v306, v305, v205);
    v207 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v297, v321, v205);
    specialized Array.append<A>(contentsOf:)(v204);
    specialized Array.append<A>(contentsOf:)(v332);
    specialized Array.append<A>(contentsOf:)(*v335);
    specialized Array.append<A>(contentsOf:)(v207);
    v208 = v206;
    v209 = v319;
    _TablePrinter.printRow(currentFileIndex:)(v208);
    v210 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v211 = swift_allocObject(v210, 72, 7);
    *(v211 + 16) = 1;
    *(v211 + 24) = 2;
    value_low = -Date.timeIntervalSinceNow.getter();
    *(v211 + 56) = &type metadata for Double;
    *(v211 + 64) = &protocol witness table for Double;
    *(v211 + 32) = value_low;
    v332 = String.init(format:_:)(1714826789, 0xE400000000000000, v211);
    v213 = v212;
    v214 = v288;
    v314(v288, v313, v339);
    v215 = v298;
    v216 = v298;
    outlined init with copy of MLTrainingSessionParameters(v209, v298, type metadata accessor for _TablePrinter);

    v217 = Logger.logObject.getter(v213, v216);
    v218 = static os_log_type_t.debug.getter();
    *v335 = v218;
    if (os_log_type_enabled(v217, v218))
    {
      v321 = v217;
      v219 = swift_slowAlloc(32, -1);
      v220 = swift_slowAlloc(32, -1);
      v329.value = v220;
      *v219 = 134218498;
      if (__OFADD__(1, currentFileIndex))
      {
        BUG();
      }

      *(v219 + 4) = currentFileIndex + 1;
      *(v219 + 12) = 2048;
      v221 = *v298;
      outlined destroy of MLActivityClassifier.ModelParameters(v298, type metadata accessor for _TablePrinter);
      *(v219 + 14) = v221;
      *(v219 + 22) = 2080;

      *(v219 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v332, v213, &v329.value);
      swift_bridgeObjectRelease_n(v213, 3);
      v222 = v321;
      _os_log_impl(&dword_0, v321, v335[0], "Extracted features from %ld out of %ld annotated video clips, elapsed time: %s", v219, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v220);
      v220, -1, -1;
      v219, -1, -1;

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v331);
      v322(v288, v339);
      (*(v307 + 8))(v312, v308);
    }

    else
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v215, type metadata accessor for _TablePrinter);
      swift_bridgeObjectRelease_n(v213, 2);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v331);
      v322(v214, v339);
      (*(v307 + 8))(v312, v308);
    }
  }

  outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v337, v57);
  v265 = 2;
  v65 = *v335;
  v66 = v332;
LABEL_111:
  outlined consume of MLDataValue(v65, v66, v265);
LABEL_113:
  v329.value = 0;
  *&v329.timescale = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v266._object = "Annotated Video Clips" + 0x8000000000000000;
  v266._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v266);
  v301 = currentFileIndex;
  v267 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v269 = v268;
  v266._countAndFlagsBits = v267;
  v266._object = v268;
  String.append(_:)(v266);
  v269;
  v266._object = 0xE900000000000065;
  v266._countAndFlagsBits = 0x6C626174206E6920;
  String.append(_:)(v266);
  *seconds = *&v329.value;
  v270 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v270, 0, 0);
  *v271 = *seconds;
  *(v271 + 16) = 0;
  *(v271 + 32) = 0;
  *(v271 + 48) = 0;
  swift_willThrow();
  v272 = currentFileIndex;
  v273 = v337;
  v274 = v331;
LABEL_114:
  outlined consume of (offset: Int, element: MLDataTable.Row)?(v272, v273, v274);
LABEL_115:
  outlined consume of Result<_DataTable, Error>(v302, v303);
  return outlined destroy of MLActivityClassifier.ModelParameters(v319, type metadata accessor for _TablePrinter);
}

uint64_t static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(uint64_t a1, double a2)
{
  v10 = a2;
  v11 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  inited = swift_initStackObject(v4, v9);
  *(inited + 32) = _swiftEmptyArrayStorage;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 16) = v5;
  *(inited + 24) = v6;
  if (v3)
  {
    return outlined copy of Result<_DataTable, Error>(v5, v6);
  }

  outlined copy of Result<_DataTable, Error>(v5, v6);
  MLActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:)(v10);
}

void *MLWordEmbedding.prediction(from:maxCount:maxDistance:distanceType:)(double a1)
{
  v1 = NLEmbedding.neighbors(for:maximumCount:distanceType:)();
  v2 = *(v1 + 16);
  v13 = v1;
  if (v2)
  {
    v3 = (v1 + 48);
    do
    {
      if (a1 > *v3)
      {
        v15 = *v3;
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);

        if (!swift_isUniquelyReferenced_nonNull_native(_swiftEmptyArrayStorage))
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v4 = _swiftEmptyArrayStorage[2];
        v5 = v4 + 1;
        v6 = v15;
        if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
        {
          v14 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v5, 1);
          v4 = v14;
          v6 = v15;
        }

        _swiftEmptyArrayStorage[2] = v5;
        v7 = 3 * v4;
        _swiftEmptyArrayStorage[v7 + 4] = v11;
        _swiftEmptyArrayStorage[v7 + 5] = v12;
        *&_swiftEmptyArrayStorage[v7 + 6] = v6;
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v13;
  v8 = specialized _arrayForceCast<A, B>(_:)(_swiftEmptyArrayStorage);

  return v8;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v20 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v19 = a1;
  v9 = v7;
  v10 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v21 = v9 + 8;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  *v9 = a2;
  *(v9 + 40) = v24;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v20;
  *(v9 + 72) = a3 & 1;
  v14 = v19;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v19, &v17);
  v18[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(&v17, boxed_opaque_existential_0);
  outlined assign with take of Any?(v18, v21);
  return outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v14);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 8);
}

uint64_t outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 8, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLLogisticRegressionClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLLogisticRegressionClassifier.ModelParameters.validationData : MLLogisticRegressionClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLLogisticRegressionClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLLogisticRegressionClassifier.ModelParameters.validationData : MLLogisticRegressionClassifier.ModelParameters(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 8, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t (*MLLogisticRegressionClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLLogisticRegressionClassifier.ModelParameters.validationData.getter(a2);
  return MLLogisticRegressionClassifier.ModelParameters.validationData.modify;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLLogisticRegressionClassifier.ModelParameters.validation : MLLogisticRegressionClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(a1, v6);
  return MLLogisticRegressionClassifier.ModelParameters.validation.setter(v6);
}

void (*MLLogisticRegressionClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1 + 8, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLLogisticRegressionClassifier.ModelParameters.validation.modify;
}

void MLLogisticRegressionClassifier.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v5 = (*a1)[17];
  v6 = (*a1)[16] + 8;
  if (a2)
  {
    v10 = (*a1)[18];
    outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData((*a1)[19], v4);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v10, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v3, v9);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(uint64_t *a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *v7 = a2;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 72) = a3 & 1;
  v11 = v8;
  v12 = v9;
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(19);
  0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  String.append(_:)(v1);
  object;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3._object = 0xEC000000203A7974;
  v3._countAndFlagsBits = 0x6C616E655020314CLL;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = v13._object;
  String.append(_:)(v13);
  v4;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x6C616E655020324CLL;
  v3._object = 0xEC000000203A7974;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v5 = v13._object;
  String.append(_:)(v13);
  v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x7A69532070657453;
  v3._object = 0xEB00000000203A65;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v6 = v13._object;
  String.append(_:)(v13);
  v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v3._object = "ml.actionClassifier" + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v7 = v13._object;
  String.append(_:)(v13);
  v7;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v13._object;
  v13._countAndFlagsBits = 0xD000000000000013;
  v8 = *(v0 + 72);
  v9._countAndFlagsBits = 0x65736C6166;
  if (v8)
  {
    v9._countAndFlagsBits = 1702195828;
  }

  v13._object = "Convergence Threshold: " + 0x8000000000000000;
  v9._object = ((v8 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56);
  String.append(_:)(v9);
  0;
  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = v13._object;
  String.append(_:)(v13);
  v11;
  return 0xD000000000000010;
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLLogisticRegressionClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t destroy for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  return result;
}

uint64_t initializeWithCopy for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithCopy for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v2)
    {
      *(a1 + 32) = v2;
      (**(v2 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 8), (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void *__swift_memcpy73_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x49uLL);
  return result;
}

uint64_t assignWithTake for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLLogisticRegressionClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 72) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * a2;
    }
  }
}
@interface CKXORCUtilities
+ (void)enumerateColumn:(void *)column includingRoot:(BOOL)root shallow:(BOOL)shallow withBlock:(id)block;
+ (void)setDefaultValuesForStruct:(unint64_t)struct withRootColumn:(void *)column atOffset:(unint64_t)offset withSchema:(id)schema orcHelpers:(id)helpers;
@end

@implementation CKXORCUtilities

+ (void)enumerateColumn:(void *)column includingRoot:(BOOL)root shallow:(BOOL)shallow withBlock:(id)block
{
  shallowCopy = shallow;
  rootCopy = root;
  columnCopy = column;
  blockCopy = block;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_2439780F8(&v28, &columnCopy);
  v9 = v28;
  v10 = v29;
  if (v29 != v28)
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        v12 = !shallowCopy;
      }

      else
      {
        v12 = 1;
      }

      v13 = *(v10 - 1);
      v29 = (v10 - 1);
      if (v11 || rootCopy)
      {
        blockCopy[2](blockCopy, v13, v11);
      }

      if (v13)
      {
        v14 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A25F0, 0);
        if (v14)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }

        if (v15 == 1)
        {
          v16 = v14;
          v17 = v14[10];
          if (v17 != v14[11])
          {
            do
            {
              sub_2439780F8(&v28, v17++);
            }

            while (v17 != v16[11]);
          }
        }

        v18 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A2638, 0);
        if (v18)
        {
          v19 = v12;
        }

        else
        {
          v19 = 0;
        }

        if (v19 == 1)
        {
          v20 = v18;
          v21 = v18[20];
          if (v21 != v18[21])
          {
            do
            {
              sub_2439780F8(&v28, v21++);
            }

            while (v21 != v20[21]);
          }
        }

        v22 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A2620, 0);
        if (v22)
        {
          v23 = v12;
        }

        else
        {
          v23 = 0;
        }

        if (v23 == 1)
        {
          v24 = v22;
          v27 = v22[15];
          sub_2439780F8(&v28, &v27);
          v27 = v24[16];
          sub_2439780F8(&v28, &v27);
        }

        v25 = __dynamic_cast(v13, &unk_2856A2580, &unk_2856A2608, 0);
        if (v25)
        {
          v26 = v12;
        }

        else
        {
          v26 = 0;
        }

        if (v26 == 1)
        {
          v27 = v25[15];
          sub_2439780F8(&v28, &v27);
        }
      }

      ++v11;
      v9 = v28;
      v10 = v29;
    }

    while (v29 != v28);
  }

  if (v9)
  {
    v29 = v9;
    operator delete(v9);
  }
}

+ (void)setDefaultValuesForStruct:(unint64_t)struct withRootColumn:(void *)column atOffset:(unint64_t)offset withSchema:(id)schema orcHelpers:(id)helpers
{
  schemaCopy = schema;
  helpersCopy = helpers;
  v19 = *(*(column + 10) + 8 * objc_msgSend_topLevelIndexForStruct_(helpersCopy, v14, struct, v15, v16, v17, v18));
  v20 = __dynamic_cast(v19, &unk_2856A2580, &unk_2856A25F0, 0);
  v21 = 0;
  *(v20[5] + offset) = 1;
  while (1)
  {
    if (schemaCopy)
    {
      v22 = schemaCopy[4];
      if (struct < (schemaCopy[5] - v22) >> 1 && *(v22 + 2 * struct) == 1)
      {
        v23 = (*(schemaCopy[7] + 24 * struct + 8) - *(schemaCopy[7] + 24 * struct)) >> 3;
      }

      else
      {
        v23 = -1;
      }
    }

    else
    {
      v23 = 0;
    }

    if (v21 >= v23)
    {
      break;
    }

    v24 = sub_24398768C(schemaCopy, v21, struct);
    v30 = sub_243987104(schemaCopy, v24, v25, v26, v27, v28, v29);
    if (!v30)
    {
      v52 = objc_msgSend_valueColumnIndexForField_(helpersCopy, v31, v24, v33, v34, v35, v36);
      v59 = v20[10];
      if (v52 >= (v20[11] - v59) >> 3 || (v50 = *(v59 + 8 * v52)) == 0)
      {
        v60 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v53, v54, v55, v56, v57, v58);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v61, a2, self, @"CKXORCUtilities.mm", 73, @"Unexpected null value column in writer");

        v50 = 0;
      }

      v51 = sub_243987390(schemaCopy, v24, v54, v55, v56, v57, v58) ^ 1;
LABEL_18:
      *(*(v50 + 40) + offset) = v51;
      goto LABEL_19;
    }

    if (v30 == 2 && !sub_2439871D0(schemaCopy, v24, v32, v33, v34, v35, v36))
    {
      v42 = objc_msgSend_listColumnIndexForReference_(helpersCopy, v37, v24, v38, v39, v40, v41);
      v49 = v20[10];
      if (v42 >= (v20[11] - v49) >> 3 || (v50 = *(v49 + 8 * v42)) == 0)
      {
        v62 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v43, v44, v45, v46, v47, v48);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v62, v63, a2, self, @"CKXORCUtilities.mm", 90, @"Unexpected null struct list column in writer");

        __break(1u);
        return;
      }

      v51 = 1;
      goto LABEL_18;
    }

LABEL_19:
    ++v21;
  }
}

@end
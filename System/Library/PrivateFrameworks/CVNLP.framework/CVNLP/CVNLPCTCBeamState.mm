@interface CVNLPCTCBeamState
- (CVNLPCTCBeamState)init;
- (id)debugDescription;
- (id)pathForString:(id)string;
- (void)addPath:(id)path;
- (void)applyWordLanguageModelProbabilityToPaths;
- (void)enumeratePathsWithBlock:(id)block;
- (void)kBest:(id *)best discarded:(id *)discarded k:(unint64_t)k shouldUpdateLMState:(BOOL)state;
- (void)mergePathsWithTrailingWhitespaces;
@end

@implementation CVNLPCTCBeamState

- (CVNLPCTCBeamState)init
{
  v6.receiver = self;
  v6.super_class = CVNLPCTCBeamState;
  v2 = [(CVNLPCTCBeamState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutablePaths = v2->_mutablePaths;
    v2->_mutablePaths = v3;
  }

  return v2;
}

- (void)addPath:(id)path
{
  pathCopy = path;
  mutablePaths = self->_mutablePaths;
  v19 = pathCopy;
  v9 = objc_msgSend_string(pathCopy, v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(mutablePaths, v10, v9, v11);

  if (v12)
  {
    objc_msgSend_merge_logProbCumulator_(v12, v13, v19, &unk_1F554FA10);
  }

  else
  {
    v16 = self->_mutablePaths;
    v17 = objc_msgSend_string(v19, v13, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v18, v19, v17);
  }
}

- (id)debugDescription
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1D9DB9544;
  v10[3] = &unk_1E858E338;
  v6 = v5;
  v11 = v6;
  objc_msgSend_enumeratePathsWithBlock_(self, v7, v10, v8);

  return v6;
}

- (id)pathForString:(id)string
{
  v4 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, a2, string, v3);

  return v4;
}

- (void)enumeratePathsWithBlock:(id)block
{
  blockCopy = block;
  mutablePaths = self->_mutablePaths;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9DB970C;
  v9[3] = &unk_1E858E360;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mutablePaths, v7, v9, v8);
}

- (void)kBest:(id *)best discarded:(id *)discarded k:(unint64_t)k shouldUpdateLMState:(BOOL)state
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x4812000000;
  v93 = sub_1D9DB9D5C;
  v94 = sub_1D9DB9D80;
  v95 = &unk_1D9DF809A;
  v97 = 0;
  v98 = 0;
  __p = 0;
  if (objc_msgSend_count(self->_mutablePaths, a2, best, discarded))
  {
    v14 = v91;
    v15 = objc_msgSend_count(self->_mutablePaths, v11, v12, v13);
    if (v15 > (v14[8] - v14[6]) >> 3)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_1D9D84AB0();
    }

    mutablePaths = self->_mutablePaths;
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = sub_1D9DB9D98;
    v89[3] = &unk_1E858E388;
    v89[4] = &v90;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(mutablePaths, v16, v89, v17);
    v19 = v91[6];
    v20 = v91[7];
    kCopy = v20 - v19 - 1;
    if (kCopy >= k)
    {
      kCopy = k;
    }

    v22 = &v19[kCopy];
    if (v22 != v20)
    {
      do
      {
        v23 = v20 - v19;
        if (v23 < 2)
        {
          break;
        }

        if (v23 == 3)
        {
          v60 = v19[1];
          v61 = *(v20 - 1);
          *(v20 - 1) = fmin(v60, v61);
          v19[1] = fmax(v60, v61);
          v62 = *(v20 - 1);
          v63 = fmax(v62, *v19);
          *(v20 - 1) = fmin(v62, *v19);
          v64 = v19[1];
          if (v63 > v64)
          {
            v19[1] = v64;
          }

          else
          {
            *v19 = v64;
            v19[1] = v63;
          }

          break;
        }

        if (v23 == 2)
        {
          v65 = *(v20 - 1);
          v66 = *v19;
          if (v65 > *v19)
          {
            *v19 = v65;
            *(v20 - 1) = v66;
          }

          break;
        }

        if (v23 <= 7)
        {
          while (v19 != v20 - 1)
          {
            v67 = v19++;
            if (v67 != v20 && v19 != v20)
            {
              v68 = *v67;
              v69 = *v67;
              v70 = v19;
              v71 = v67;
              v72 = v19;
              do
              {
                v73 = *v72++;
                v74 = v73 <= v69;
                v69 = fmax(v73, v69);
                if (!v74)
                {
                  v71 = v70;
                }

                v70 = v72;
              }

              while (v72 != v20);
              if (v71 != v67)
              {
                *v67 = *v71;
                *v71 = v68;
              }
            }
          }

          break;
        }

        v24 = &v19[(v20 - v19) >> 4];
        v25 = v20 - 1;
        v26 = *(v20 - 1);
        v27 = *v24;
        v28 = fmax(*v24, v26);
        *v25 = fmin(*v24, v26);
        *v24 = v28;
        v29 = *(v20 - 1);
        v30 = *v19;
        v31 = fmax(v29, *v19);
        *v25 = fmin(v29, *v19);
        v32 = *v24;
        v33 = *v24;
        if (v31 <= *v24)
        {
          *v19 = v32;
          v33 = v31;
        }

        v34 = v29 <= v30;
        if (v31 <= v32)
        {
          v34 = 1;
        }

        *v24 = v33;
        if (v27 <= v26)
        {
          v34 = 1;
        }

        v35 = *v19;
        if (*v19 <= v33)
        {
          v36 = v20 - 1;
          while (--v36 != v19)
          {
            if (*v36 > v33)
            {
              *v19 = *v36;
              *v36 = v35;
              if (v34)
              {
                v34 = 2;
              }

              else
              {
                v34 = 1;
              }

              v37 = v19 + 1;
              if (v19 + 1 < v36)
              {
                goto LABEL_20;
              }

              goto LABEL_36;
            }
          }

          v48 = v19 + 1;
          if (v35 <= *v25)
          {
            if (v48 == v25)
            {
              break;
            }

            while (1)
            {
              v49 = *v48;
              if (v35 > *v48)
              {
                break;
              }

              if (++v48 == v25)
              {
                goto LABEL_86;
              }
            }

            *v48++ = *v25;
            *v25 = v49;
          }

          if (v48 == v25)
          {
            break;
          }

          while (1)
          {
            v53 = *v19;
            do
            {
              v54 = *v48++;
              v55 = v54;
            }

            while (v53 <= v54);
            v56 = v48 - 1;
            do
            {
              v57 = *--v25;
              v58 = v57;
            }

            while (v53 > v57);
            if (v56 >= v25)
            {
              break;
            }

            *v56 = v58;
            *v25 = v55;
          }

          v19 = v48 - 1;
          if (v56 > v22)
          {
            break;
          }
        }

        else
        {
          v36 = v20 - 1;
          v37 = v19 + 1;
          if (v19 + 1 >= v20 - 1)
          {
LABEL_36:
            v42 = v37;
          }

          else
          {
LABEL_20:
            v38 = v37;
            while (1)
            {
              v39 = *v24;
              do
              {
                v40 = *v38++;
                v41 = v40;
              }

              while (v40 > v39);
              v42 = v38 - 1;
              do
              {
                v43 = *--v36;
                v44 = v43;
              }

              while (v43 <= v39);
              if (v42 >= v36)
              {
                break;
              }

              *v42 = v44;
              *v36 = v41;
              ++v34;
              if (v42 == v24)
              {
                v24 = v36;
              }
            }
          }

          if (v42 != v24)
          {
            v45 = *v42;
            if (*v24 > *v42)
            {
              *v42 = *v24;
              *v24 = v45;
              ++v34;
            }
          }

          if (v42 == v22)
          {
            break;
          }

          if (!v34)
          {
            if (v42 <= v22)
            {
              v50 = v42 + 1;
              while (v50 != v20)
              {
                v52 = *(v50 - 1);
                v51 = *v50++;
                if (v51 > v52)
                {
                  goto LABEL_42;
                }
              }
            }

            else
            {
              while (v37 != v42)
              {
                v47 = *(v37 - 1);
                v46 = *v37++;
                if (v46 > v47)
                {
                  goto LABEL_42;
                }
              }
            }

            break;
          }

LABEL_42:
          if (v42 <= v22)
          {
            v19 = v42 + 1;
          }

          else
          {
            v20 = v42;
          }
        }
      }

      while (v20 != v22);
LABEL_86:
      v19 = v91[6];
    }

    v59 = v19[kCopy];
  }

  else
  {
    v59 = 0.0;
  }

  v75 = objc_alloc_init(CVNLPCTCBeamState);
  v76 = objc_alloc_init(CVNLPCTCBeamState);
  v77 = self->_mutablePaths;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = sub_1D9DB9EFC;
  v84[3] = &unk_1E858E3B0;
  v87 = v59;
  v78 = v75;
  v85 = v78;
  stateCopy = state;
  v79 = v76;
  v86 = v79;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v77, v80, v84, v81);
  if (best)
  {
    v82 = v78;
    *best = v78;
  }

  if (discarded)
  {
    v83 = v79;
    *discarded = v79;
  }

  _Block_object_dispose(&v90, 8);
  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }
}

- (void)mergePathsWithTrailingWhitespaces
{
  v41 = *MEMORY[0x1E69E9840];
  v30 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_mutablePaths;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v35, v40, 16);
  if (v9)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = objc_msgSend_stringByAppendingString_(v12, v7, @" ", v8);
        v18 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, v14, v13, v15);
        if (v18)
        {
          v19 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, v16, v12, v17);
          objc_msgSend_merge_logProbCumulator_(v19, v20, v18, &unk_1F554FA30);

          objc_msgSend_addObject_(v30, v21, v13, v22);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v35, v40, 16);
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v30;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v31, v39, 16);
  if (v27)
  {
    v28 = *v32;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend_removeObjectForKey_(self->_mutablePaths, v25, *(*(&v31 + 1) + 8 * j), v26);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v31, v39, 16);
    }

    while (v27);
  }
}

- (void)applyWordLanguageModelProbabilityToPaths
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_mutablePaths;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v33, v37, 16);
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = objc_msgSend_objectForKeyedSubscript_(self->_mutablePaths, v4, *(*(&v33 + 1) + 8 * i), v5);
        v13 = objc_msgSend_languageResourceBundle(v9, v10, v11, v12);
        v20 = objc_msgSend_wordLanguageModel(v13, v14, v15, v16);
        if (v20)
        {
          v21 = objc_msgSend_languageResourceBundle(v9, v17, v18, v19);
          v25 = objc_msgSend_wordLanguageModel(v21, v22, v23, v24);
          v29 = objc_msgSend_lmSPIType(v25, v26, v27, v28) == 1;

          if (v29)
          {
            v30 = objc_opt_class();
            objc_msgSend_applyWordLanguageModelProbabilityToPath_stemmedFromPath_isCommittingToken_(v30, v31, v9, v9, 1);
          }
        }

        else
        {
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v33, v37, 16);
    }

    while (v6);
  }
}

@end
@interface CKRecordGraph
+ (id)topologicallySortRecords:(id)records withError:(id *)error;
- (BOOL)addRecords:(id)records error:(id *)error;
- (CKRecordGraph)init;
- (id)description;
- (id)recordsByTopologicalSortWithError:(id *)error;
@end

@implementation CKRecordGraph

- (BOOL)addRecords:(id)records error:(id *)error
{
  v151 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v120 = objc_opt_new();
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v8 = recordsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v142, v150, 16);
  v122 = v7;
  v114 = v8;
  if (!v10)
  {
LABEL_9:

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    obj = v8;
    v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v138, v149, 16);
    if (!v117)
    {
      goto LABEL_59;
    }

    v116 = *v139;
    v121 = v6;
    while (1)
    {
      v27 = 0;
      do
      {
        if (*v139 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v118 = v27;
        v28 = *(*(&v138 + 1) + 8 * v27);
        v125 = objc_msgSend_objectForKey_(v6, v26, v28);
        if (!v125)
        {
          v31 = [CKRecordGraphNode alloc];
          v33 = objc_msgSend_initWithRecord_(v31, v32, v28);
          objc_msgSend_setObject_forKey_(v6, v34, v33, v28);
          v125 = v33;
          objc_msgSend_addObject_(v120, v35, v33);
        }

        v36 = objc_msgSend_array(MEMORY[0x1E695DF70], v29, v30);
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v119 = v28;
        v39 = objc_msgSend_valueStore(v28, v37, v38);
        v42 = objc_msgSend_allRawValues(v39, v40, v41);

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v134, v148, 16);
        if (v44)
        {
          v45 = v44;
          v46 = *v135;
          v123 = v42;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v135 != v46)
              {
                objc_enumerationMutation(v42);
              }

              v48 = *(*(&v134 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_addObject_(v36, v49, v48);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v132 = 0u;
                  v133 = 0u;
                  v130 = 0u;
                  v131 = 0u;
                  v51 = v48;
                  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v130, v147, 16);
                  if (v53)
                  {
                    v54 = v53;
                    v55 = *v131;
                    do
                    {
                      for (j = 0; j != v54; ++j)
                      {
                        if (*v131 != v55)
                        {
                          objc_enumerationMutation(v51);
                        }

                        v57 = *(*(&v130 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          objc_msgSend_addObject_(v36, v58, v57);
                        }
                      }

                      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v58, &v130, v147, 16);
                    }

                    while (v54);
                  }

                  v6 = v121;
                  v7 = v122;
                  v42 = v123;
                }
              }
            }

            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v50, &v134, v148, 16);
          }

          while (v45);
        }

        v61 = objc_msgSend_parent(v119, v59, v60);

        if (v61)
        {
          v64 = objc_msgSend_parent(v119, v62, v63);
          objc_msgSend_addObject_(v36, v65, v64);
        }

        v66 = objc_msgSend_share(v119, v62, v63);

        if (v66)
        {
          v69 = objc_msgSend_share(v119, v67, v68);
          objc_msgSend_addObject_(v36, v70, v69);
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = v36;
        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v71, &v126, v146, 16);
        if (v72)
        {
          v75 = v72;
          v76 = *v127;
          do
          {
            for (k = 0; k != v75; ++k)
            {
              if (*v127 != v76)
              {
                objc_enumerationMutation(v124);
              }

              v78 = *(*(&v126 + 1) + 8 * k);
              v79 = objc_msgSend_recordID(v78, v73, v74);
              v81 = objc_msgSend_objectForKey_(v7, v80, v79);

              if (v81)
              {
                if (objc_msgSend_referenceAction(v78, v82, v83) != 1 && objc_msgSend_referenceAction(v78, v84, v85) != 2)
                {
                  v87 = objc_msgSend_parent(v119, v84, v86);
                  v90 = v87;
                  if (v78 == v87)
                  {

                    v7 = v122;
                  }

                  else
                  {
                    v91 = objc_msgSend_share(v119, v88, v89);

                    v7 = v122;
                    if (v78 != v91)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                v94 = objc_msgSend_objectForKey_(v6, v84, v81);
                if (!v94)
                {
                  v95 = [CKRecordGraphNode alloc];
                  v94 = objc_msgSend_initWithRecord_(v95, v96, v81);
                  objc_msgSend_setObject_forKey_(v6, v97, v94, v81);
                  objc_msgSend_addObject_(v120, v98, v94);
                }

                v99 = objc_msgSend_edges(v125, v92, v93);
                objc_msgSend_addObject_(v99, v100, v94);

                v103 = objc_msgSend_indegrees(v94, v101, v102);
                objc_msgSend_addObject_(v103, v104, v125);
              }

LABEL_55:
            }

            v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v73, &v126, v146, 16);
          }

          while (v75);
        }

        v27 = v118 + 1;
      }

      while (v118 + 1 != v117);
      v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v138, v149, 16);
      if (!v117)
      {
LABEL_59:

        if (self)
        {
          nodes = self->_nodes;
        }

        else
        {
          nodes = 0;
        }

        v107 = v120;
        objc_msgSend_addObjectsFromArray_(nodes, v105, v120);
        sub_1886BFE88(self, 0);
        v108 = 1;
        v109 = v114;
        goto LABEL_65;
      }
    }
  }

  v13 = v10;
  v14 = *v143;
LABEL_3:
  v15 = 0;
  while (1)
  {
    if (*v143 != v14)
    {
      objc_enumerationMutation(v8);
    }

    v16 = *(*(&v142 + 1) + 8 * v15);
    v17 = objc_msgSend_recordID(v16, v11, v12);
    objc_msgSend_objectForKey_(v7, v18, v17);
    v20 = v19 = v7;

    if (v20)
    {
      break;
    }

    v23 = objc_msgSend_recordID(v16, v21, v22);
    objc_msgSend_setObject_forKey_(v19, v24, v16, v23);

    ++v15;
    v7 = v19;
    v8 = v114;
    if (v13 == v15)
    {
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v11, &v142, v150, 16);
      if (!v13)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  v107 = v120;
  if (error)
  {
    v110 = objc_msgSend_recordID(v16, v21, v22);
    *error = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v111, @"CKInternalErrorDomain", 1017, @"Asked to sort multiple records with identical recordID: %@", v110);
  }

  v109 = v114;

  v108 = 0;
  v7 = v122;
LABEL_65:

  return v108;
}

- (CKRecordGraph)init
{
  v6.receiver = self;
  v6.super_class = CKRecordGraph;
  v2 = [(CKRecordGraph *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodes = v2->_nodes;
    v2->_nodes = v3;
  }

  return v2;
}

- (id)recordsByTopologicalSortWithError:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  if (self)
  {
    sortedRecords = self->_sortedRecords;
    if (sortedRecords)
    {
      v5 = sortedRecords;
      goto LABEL_33;
    }

    errorCopy2 = error;
    v6 = objc_opt_new();
    objc_msgSend_CKFilter_(self->_nodes, v7, &unk_1EFA30870);
  }

  else
  {
    errorCopy2 = error;
    v6 = objc_opt_new();
    objc_msgSend_CKFilter_(0, v46, &unk_1EFA30870);
  }
  v8 = ;
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  if (self)
  {
    objc_msgSend_removeObjectsInArray_(self->_nodes, v12, v11);
  }

  else
  {
    objc_msgSend_removeObjectsInArray_(0, v12, v11);
  }

  while (objc_msgSend_count(v11, v13, v14))
  {
    v17 = objc_msgSend_lastObject(v11, v15, v16);
    objc_msgSend_removeObject_(v11, v18, v17);
    v21 = objc_msgSend_record(v17, v19, v20);
    objc_msgSend_insertObject_atIndex_(v6, v22, v21, 0);

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = objc_msgSend_edges(v17, v23, v24);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v48, v52, 16);
    if (v27)
    {
      v30 = v27;
      v31 = *v49;
      do
      {
        v32 = 0;
        do
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v48 + 1) + 8 * v32);
          v34 = objc_msgSend_indegrees(v33, v28, v29);
          objc_msgSend_removeObject_(v34, v35, v17);

          if (!objc_msgSend_indegree(v33, v36, v37))
          {
            objc_msgSend_insertObject_atIndex_(v11, v28, v33, 0);
            if (self)
            {
              objc_msgSend_removeObject_(self->_nodes, v38, v33);
            }

            else
            {
              objc_msgSend_removeObject_(0, v38, v33);
            }
          }

          ++v32;
        }

        while (v30 != v32);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v48, v52, 16);
        v30 = v39;
      }

      while (v39);
    }
  }

  if (self)
  {
    nodes = self->_nodes;
  }

  else
  {
    nodes = 0;
  }

  if (objc_msgSend_count(nodes, v15, v16))
  {
    if (self)
    {
      objc_msgSend_removeAllObjects(self->_nodes, v41, v42);
    }

    else
    {
      objc_msgSend_removeAllObjects(0, v41, v42);
    }

    if (errorCopy2)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v43, @"CKInternalErrorDomain", 1017, @"Cycle detected in record graph");
      *errorCopy2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1886BFE88(self, v6);
    if (self)
    {
      v44 = self->_sortedRecords;
    }

    else
    {
      v44 = 0;
    }

    v5 = v44;
  }

LABEL_33:

  return v5;
}

- (id)description
{
  if (self)
  {
    self = self->_nodes;
  }

  return objc_msgSend_description(self, a2, v2);
}

+ (id)topologicallySortRecords:(id)records withError:(id *)error
{
  recordsCopy = records;
  v6 = objc_alloc_init(CKRecordGraph);
  v17 = 0;
  v8 = objc_msgSend_addRecords_error_(v6, v7, recordsCopy, &v17);

  v9 = v17;
  v12 = v9;
  if (v8)
  {
    v16 = v9;
    v13 = objc_msgSend_recordsByTopologicalSortWithError_(v6, v10, &v16);
    v14 = v16;

    v12 = v14;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v12)
  {
    *error = objc_msgSend_CKClientSuitableError(v12, v10, v11);
  }

LABEL_7:

  return v13;
}

@end
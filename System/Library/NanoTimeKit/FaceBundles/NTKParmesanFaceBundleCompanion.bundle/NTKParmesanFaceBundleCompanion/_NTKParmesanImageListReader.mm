@interface _NTKParmesanImageListReader
- (_NTKParmesanImageListReader)initWithResourceDirectory:(id)directory;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation _NTKParmesanImageListReader

- (_NTKParmesanImageListReader)initWithResourceDirectory:(id)directory
{
  v116 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v110.receiver = self;
  v110.super_class = _NTKParmesanImageListReader;
  v7 = [(NTKParmesanAssetReader *)&v110 initWithResourceDirectory:directoryCopy];
  if (v7)
  {
    v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138412546;
      v113 = v9;
      v114 = 2112;
      v115 = directoryCopy;
      v10 = v9;
      _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "%@: initWithResourceDirectory %@", buf, 0x16u);
    }

    v11 = objc_opt_new();
    assets = v7->_assets;
    v7->_assets = v11;

    if (directoryCopy)
    {
      v14 = objc_msgSend_stringByAppendingPathComponent_(directoryCopy, v13, kParmesanReaderImagelistFileName);
      v16 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v15, v14);
      v19 = v16;
      if (v16)
      {
        v105 = v14;
        v20 = objc_msgSend_objectForKeyedSubscript_(v16, v17, kParmesanReaderAssetCollectionIdentifierKey);
        objc_msgSend_setAssetCollectionIdentifier_(v7, v21, v20);

        v23 = objc_msgSend_objectForKeyedSubscript_(v19, v22, kParmesanReaderPeopleIdentifiersKey);
        objc_msgSend_setPeopleIdentifiers_(v7, v24, v23);

        v26 = objc_msgSend_objectForKeyedSubscript_(v19, v25, kParmesanReaderHasPeopleKey);
        v29 = objc_msgSend_BOOLValue(v26, v27, v28);
        objc_msgSend_setHasPeople_(v7, v30, v29);

        v32 = objc_msgSend_objectForKeyedSubscript_(v19, v31, kParmesanReaderHasPetsKey);
        v35 = objc_msgSend_BOOLValue(v32, v33, v34);
        objc_msgSend_setHasPets_(v7, v36, v35);

        v38 = objc_msgSend_objectForKeyedSubscript_(v19, v37, kParmesanReaderHasNatureKey);
        v41 = objc_msgSend_BOOLValue(v38, v39, v40);
        objc_msgSend_setHasNature_(v7, v42, v41);

        v44 = objc_msgSend_objectForKeyedSubscript_(v19, v43, kParmesanReaderHasCityscapesKey);
        v47 = objc_msgSend_BOOLValue(v44, v45, v46);
        objc_msgSend_setHasCityscapes_(v7, v48, v47);

        v50 = objc_msgSend_objectForKeyedSubscript_(v19, v49, kParmesanReaderHasDailyPhotosKey);
        v53 = objc_msgSend_BOOLValue(v50, v51, v52);
        objc_msgSend_setHasDailyPhotos_(v7, v54, v53);

        v56 = objc_msgSend_objectForKeyedSubscript_(v19, v55, kParmesanReaderUUIDStringKey);
        objc_msgSend_setUuidString_(v7, v57, v56);

        v59 = objc_msgSend_objectForKeyedSubscript_(v19, v58, kParmesanReaderImageListKey);
        v62 = objc_msgSend_assetCollectionIdentifier(v7, v60, v61);
        v63 = v62 != 0;

        if (objc_msgSend_hasPeople(v7, v64, v65) & 1) != 0 || (objc_msgSend_hasPets(v7, v66, v67) & 1) != 0 || (objc_msgSend_hasNature(v7, v66, v67))
        {
          hasCityscapes = 1;
        }

        else
        {
          hasCityscapes = objc_msgSend_hasCityscapes(v7, v66, v67);
        }

        if (hasCityscapes + objc_msgSend_hasDailyPhotos(v7, v66, v67) + v63 >= 2)
        {
          v71 = objc_msgSend_logObject(NTKParmesanFaceBundle, v69, v70);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF7D6C();
          }
        }

        hasPeople = objc_msgSend_hasPeople(v7, v69, v70);
        v73 = v7;
        v76 = objc_msgSend_peopleIdentifiers(v7, v74, v75);
        v79 = hasPeople ^ (objc_msgSend_count(v76, v77, v78) == 0);

        if ((v79 & 1) == 0)
        {
          v82 = objc_msgSend_logObject(NTKParmesanFaceBundle, v80, v81);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF7DE0();
          }
        }

        v83 = objc_msgSend_objectForKeyedSubscript_(v19, v80, kParmesanReaderVersionKey);
        v103 = v83;
        v104 = v19;
        if (v83)
        {
          v86 = objc_msgSend_integerValue(v83, v84, v85);
          v7 = v73;
          objc_msgSend_setVersion_(v73, v87, v86);
        }

        else
        {
          v89 = objc_msgSend_logObject(NTKParmesanFaceBundle, v84, v85);
          v7 = v73;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF7E54(v73, v89);
          }

          objc_msgSend_setVersion_(v73, v90, 0);
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v88 = v59;
        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v106, v111, 16);
        if (v92)
        {
          v94 = v92;
          v95 = *v107;
          do
          {
            for (i = 0; i != v94; ++i)
            {
              if (*v107 != v95)
              {
                objc_enumerationMutation(v88);
              }

              v97 = *(*(&v106 + 1) + 8 * i);
              v100 = objc_msgSend_decodeFromDictionary_inResourceDirectory_(NTKParmesanAsset, v93, v97, directoryCopy);
              if (v100)
              {
                objc_msgSend_addObject_(v7->_assets, v98, v100);
              }

              else
              {
                v101 = objc_msgSend_logObject(NTKParmesanFaceBundle, v98, v99);
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v113 = v73;
                  v114 = 2112;
                  v115 = v97;
                  _os_log_error_impl(&dword_23BF0C000, v101, OS_LOG_TYPE_ERROR, "%@: Failed to decode imageListItem to NTKParmesanAsset. [item: %@]", buf, 0x16u);
                }

                v7 = v73;
              }
            }

            v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v93, &v106, v111, 16);
          }

          while (v94);
        }

        v19 = v104;
        v14 = v105;
      }

      else
      {
        v88 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          sub_23BFF7EE8(v7, v14, v88);
        }
      }
    }
  }

  return v7;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_assets, a2, index) <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_assets, v5, index);
  }

  return v6;
}

@end
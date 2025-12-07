@interface CSUSearchableKnowledgeObject
+ (BOOL)labelDictionaryFromString:(id)string directoryWriteBack:(id *)back error:(id *)error;
+ (BOOL)synonymsDictionaryFromLocaleString:(id)string directoryWriteBack:(id *)back error:(id *)error;
+ (id)searchDictionary:(id)dictionary withLocale:(id)locale;
+ (id)stringFromLabelDictionary:(id)dictionary;
+ (id)stringFromSynonymsDictionary:(id)dictionary;
- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabel:(id)label confidence:(double)confidence sensitiveLation:(BOOL)lation category:(id)category vertical:(id)vertical localizedSynonyms:(id)self0 longitude:(double)self1 latitute:(double)self2 version:(int)self3 locale:(id)self4;
- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabel:(id)label confidence:(double)confidence sensitiveLocation:(BOOL)location category:(id)category vertical:(id)vertical localizedSynonyms:(id)self0 longitude:(double)self1 latitute:(double)self2 version:(int)self3;
- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabelDictionary:(id)dictionary confidence:(double)confidence sensitiveLocation:(BOOL)location category:(id)category vertical:(id)vertical localizedSynonymsDictionary:(id)self0 longitude:(double)self1 latitude:(double)self2 version:(int)self3;
- (id)localizedLabelWithLocale:(id)locale;
- (id)localizedSynonymsWithLocale:(id)locale;
- (void)setLocalizedLabel:(id)label forLocale:(id)locale;
- (void)setLocalizedSynonyms:(id)synonyms forLocale:(id)locale;
@end

@implementation CSUSearchableKnowledgeObject

- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabel:(id)label confidence:(double)confidence sensitiveLocation:(BOOL)location category:(id)category vertical:(id)vertical localizedSynonyms:(id)self0 longitude:(double)self1 latitute:(double)self2 version:(int)self3
{
  locationCopy = location;
  typeCopy = type;
  v42[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  categoryCopy = category;
  verticalCopy = vertical;
  synonymsCopy = synonyms;
  v25 = objc_alloc(MEMORY[0x1E695DF58]);
  v29 = objc_msgSend_initWithLocaleIdentifier_(v25, v26, @"en_US", v27, v28);
  v41 = v29;
  v42[0] = labelCopy;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v42, &v41, 1);
  v39 = v29;
  v40 = synonymsCopy;
  v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v40, &v39, 1);
  v35 = objc_msgSend_initWithQID_idType_localizedLabelDictionary_confidence_sensitiveLocation_category_vertical_localizedSynonymsDictionary_longitude_latitude_version_(self, v34, d, typeCopy, v31, locationCopy, categoryCopy, verticalCopy, confidence, longitude, latitute, v33, version);

  return v35;
}

- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabel:(id)label confidence:(double)confidence sensitiveLation:(BOOL)lation category:(id)category vertical:(id)vertical localizedSynonyms:(id)self0 longitude:(double)self1 latitute:(double)self2 version:(int)self3 locale:(id)self4
{
  lationCopy = lation;
  typeCopy = type;
  v40[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  categoryCopy = category;
  verticalCopy = vertical;
  synonymsCopy = synonyms;
  localeCopy = locale;
  v39 = localeCopy;
  v40[0] = labelCopy;
  v36 = labelCopy;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v40, &v39, 1);
  v37 = localeCopy;
  v38 = synonymsCopy;
  v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, &v38, &v37, 1);
  v33 = objc_msgSend_initWithQID_idType_localizedLabelDictionary_confidence_sensitiveLocation_category_vertical_localizedSynonymsDictionary_longitude_latitude_version_(self, v32, d, typeCopy, v29, lationCopy, categoryCopy, verticalCopy, confidence, longitude, latitute, v31, version);

  return v33;
}

- (CSUSearchableKnowledgeObject)initWithQID:(unint64_t)d idType:(signed __int16)type localizedLabelDictionary:(id)dictionary confidence:(double)confidence sensitiveLocation:(BOOL)location category:(id)category vertical:(id)vertical localizedSynonymsDictionary:(id)self0 longitude:(double)self1 latitude:(double)self2 version:(int)self3
{
  dictionaryCopy = dictionary;
  categoryCopy = category;
  verticalCopy = vertical;
  synonymsDictionaryCopy = synonymsDictionary;
  v44.receiver = self;
  v44.super_class = CSUSearchableKnowledgeObject;
  v25 = [(CSUSearchableKnowledgeObject *)&v44 init];
  v26 = v25;
  if (v25)
  {
    v25->_idType = type;
    localizedLabel = v25->_localizedLabel;
    v25->_qid = d;
    v25->_localizedLabel = 0;

    v32 = objc_msgSend_copy(dictionaryCopy, v28, v29, v30, v31);
    localizedLabelDictionary = v26->_localizedLabelDictionary;
    v26->_localizedLabelDictionary = v32;

    v26->_confidenceValue = confidence;
    v26->_sensitiveLocation = location;
    objc_storeStrong(&v26->_category, category);
    objc_storeStrong(&v26->_vertical, vertical);
    localizedSynonyms = v26->_localizedSynonyms;
    v26->_localizedSynonyms = 0;

    v39 = objc_msgSend_copy(synonymsDictionaryCopy, v35, v36, v37, v38);
    localizedSynonymsDictionary = v26->_localizedSynonymsDictionary;
    v26->_localizedSynonymsDictionary = v39;

    v26->_longitude = longitude;
    v26->_latitude = latitude;
    v26->_version = version;
    v41 = v26;
  }

  return v26;
}

+ (BOOL)labelDictionaryFromString:(id)string directoryWriteBack:(id *)back error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (back)
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9);
    backCopy = back;
    objc_msgSend_componentsSeparatedByString_(stringCopy, v11, @";", v12, v13);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v14 = v50 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v49, v53, 16);
    if (v19)
    {
      v20 = *v50;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_componentsSeparatedByString_(*(*(&v49 + 1) + 8 * i), v16, @":", v17, v18);
          if (objc_msgSend_count(v22, v23, v24, v25, v26) != 2)
          {
            v44 = objc_msgSend_errorForDictionaryDeserialization_(CSUError, v27, @"Corrupted dictionary", v28, v29);
            if (error)
            {
              v44 = v44;
              *error = v44;
            }

            v43 = 0;
            goto LABEL_14;
          }

          v30 = MEMORY[0x1E695DF58];
          v31 = objc_msgSend_objectAtIndexedSubscript_(v22, v27, 0, v28, v29);
          v35 = objc_msgSend_localeWithLocaleIdentifier_(v30, v32, v31, v33, v34);

          v39 = objc_msgSend_objectAtIndexedSubscript_(v22, v36, 1, v37, v38);
          objc_msgSend_setObject_forKeyedSubscript_(v10, v40, v39, v35, v41);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v49, v53, 16);
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v42 = v10;
    *backCopy = v10;
    v43 = 1;
LABEL_14:
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

+ (id)stringFromLabelDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = dictionaryCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v36, v40, 16);
  if (v14)
  {
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = objc_msgSend_localeIdentifier(v17, v10, v11, v12, v13);
        v22 = objc_msgSend_objectForKeyedSubscript_(v8, v19, v17, v20, v21);
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%@%@%@", v24, v25, v18, @":", v22);
        objc_msgSend_addObject_(v7, v27, v26, v28, v29);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v36, v40, 16);
    }

    while (v14);
  }

  v33 = objc_msgSend_componentsJoinedByString_(v7, v30, @"", v31, v32);;

  return v33;
}

+ (BOOL)synonymsDictionaryFromLocaleString:(id)string directoryWriteBack:(id *)back error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  backCopy = back;
  if (back)
  {
    v59 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9);
    objc_msgSend_componentsSeparatedByString_(stringCopy, v10, @";", v11, v12);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    obj = v61 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v60, v64, 16);
    if (v17)
    {
      v18 = *v61;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = objc_msgSend_componentsSeparatedByString_(*(*(&v60 + 1) + 8 * i), v14, @":", v15, v16);
          if (objc_msgSend_count(v20, v21, v22, v23, v24) != 2)
          {
            v53 = objc_msgSend_errorForDictionaryDeserialization_(CSUError, v25, @"Corrupted dictionary", v26, v27);
            if (error)
            {
              v53 = v53;
              *error = v53;
            }

            LOBYTE(back) = 0;
            goto LABEL_14;
          }

          v28 = objc_alloc(MEMORY[0x1E695DF58]);
          v32 = objc_msgSend_objectAtIndexedSubscript_(v20, v29, 0, v30, v31);
          v36 = objc_msgSend_initWithLocaleIdentifier_(v28, v33, v32, v34, v35);

          v37 = MEMORY[0x1E695DFD8];
          v41 = objc_msgSend_objectAtIndexedSubscript_(v20, v38, 1, v39, v40);
          v45 = objc_msgSend_componentsSeparatedByString_(v41, v42, @", ", v43, v44);
          v49 = objc_msgSend_setWithArray_(v37, v46, v45, v47, v48);

          objc_msgSend_setObject_forKeyedSubscript_(v59, v50, v49, v36, v51);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v60, v64, 16);
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v52 = v59;
    *backCopy = v59;
    LOBYTE(back) = 1;
LABEL_14:
  }

  return back;
}

+ (id)stringFromSynonymsDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v48 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6);
  objc_msgSend_allKeys(dictionaryCopy, v7, v8, v9, v10);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v49, v53, 16);
  if (v16)
  {
    v17 = *v50;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = objc_msgSend_localeIdentifier(v19, v12, v13, v14, v15);
        v24 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v21, v19, v22, v23);
        v29 = objc_msgSend_allObjects(v24, v25, v26, v27, v28);
        v33 = objc_msgSend_componentsJoinedByString_(v29, v30, @", ", v31, v32);

        v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"%@%@%@", v35, v36, v20, @":", v33);
        objc_msgSend_addObject_(v48, v38, v37, v39, v40);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v49, v53, 16);
    }

    while (v16);
  }

  v44 = objc_msgSend_componentsJoinedByString_(v48, v41, @"", v42, v43);;

  return v44;
}

+ (id)searchDictionary:(id)dictionary withLocale:(id)locale
{
  v128 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  localeCopy = locale;
  v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, localeCopy, v6, v7);
  v12 = v8;
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v14 = *MEMORY[0x1E695D9B0];
    v15 = objc_msgSend_objectForKey_(localeCopy, v9, *MEMORY[0x1E695D9B0], v10, v11);
    v16 = *MEMORY[0x1E695D978];
    v111 = objc_msgSend_objectForKey_(localeCopy, v17, *MEMORY[0x1E695D978], v18, v19);
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = dictionaryCopy;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v121, v127, 16);
    if (v24)
    {
      v25 = *v122;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v122 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v121 + 1) + 8 * i);
          v28 = objc_msgSend_objectForKey_(v27, v21, v14, v22, v23);
          if (objc_msgSend_isEqualToString_(v28, v29, v15, v30, v31))
          {
            v35 = objc_msgSend_objectForKey_(v27, v32, v16, v33, v34);
            isEqualToString = objc_msgSend_isEqualToString_(v35, v36, v111, v37, v38);

            if (isEqualToString)
            {
              v90 = objc_msgSend_objectForKeyedSubscript_(obj, v21, v27, v22, v23);
LABEL_35:
              v13 = v90;

              goto LABEL_36;
            }
          }

          else
          {
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v121, v127, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = obj;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v117, v126, 16);
    if (v44)
    {
      v45 = *v118;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v118 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v117 + 1) + 8 * j);
          v48 = objc_msgSend_objectForKey_(v47, v41, v14, v42, v43);
          if (objc_msgSend_isEqualToString_(v48, v49, v15, v50, v51))
          {
            v55 = objc_msgSend_objectForKey_(v47, v52, v16, v53, v54);
            v56 = v55 == 0;

            if (v56)
            {
              v90 = objc_msgSend_objectForKeyedSubscript_(obj, v41, v47, v42, v43);
              goto LABEL_35;
            }
          }

          else
          {
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v117, v126, 16);
      }

      while (v44);
    }

    v61 = objc_msgSend_allKeys(obj, v57, v58, v59, v60);
    v65 = objc_msgSend_sortedArrayUsingComparator_(v61, v62, &unk_1F20CFFF0, v63, v64);

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v66 = v65;
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v113, v125, 16);
    if (v71)
    {
      v72 = *v114;
      while (2)
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v114 != v72)
          {
            objc_enumerationMutation(v66);
          }

          v74 = *(*(&v113 + 1) + 8 * k);
          v75 = objc_msgSend_objectForKey_(v74, v68, v14, v69, v70);
          v79 = objc_msgSend_isEqualToString_(v75, v76, v15, v77, v78);

          if (v79)
          {
            v13 = objc_msgSend_objectForKeyedSubscript_(obj, v68, v74, v69, v70);
            v84 = v66;
            goto LABEL_46;
          }
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v113, v125, 16);
        if (v71)
        {
          continue;
        }

        break;
      }
    }

    v80 = objc_alloc(MEMORY[0x1E695DF58]);
    v84 = objc_msgSend_initWithLocaleIdentifier_(v80, v81, @"en", v82, v83);
    v88 = objc_msgSend_objectForKeyedSubscript_(obj, v85, v84, v86, v87);
    v89 = v88;
    if (v88)
    {
      v13 = v88;
    }

    else
    {
      v92 = objc_alloc(MEMORY[0x1E695DF58]);
      v96 = objc_msgSend_initWithLocaleIdentifier_(v92, v93, @"en_US", v94, v95);
      v100 = objc_msgSend_objectForKeyedSubscript_(obj, v97, v96, v98, v99);
      if (v100)
      {
        v101 = v96;
      }

      else
      {
        v102 = objc_alloc(MEMORY[0x1E695DF58]);
        v101 = objc_msgSend_initWithLocaleIdentifier_(v102, v103, @"en-US", v104, v105);

        v100 = objc_msgSend_objectForKeyedSubscript_(obj, v106, v101, v107, v108);
      }

      v13 = v100;
    }

LABEL_46:
LABEL_36:

    v12 = 0;
  }

  return v13;
}

- (id)localizedLabelWithLocale:(id)locale
{
  localeCopy = locale;
  v9 = objc_msgSend_localizedLabelDictionary(self, v5, v6, v7, v8);
  v12 = objc_msgSend_searchDictionary_withLocale_(CSUSearchableKnowledgeObject, v10, v9, localeCopy, v11);

  return v12;
}

- (id)localizedSynonymsWithLocale:(id)locale
{
  localeCopy = locale;
  v9 = objc_msgSend_localizedSynonymsDictionary(self, v5, v6, v7, v8);
  v12 = objc_msgSend_searchDictionary_withLocale_(CSUSearchableKnowledgeObject, v10, v9, localeCopy, v11);

  return v12;
}

- (void)setLocalizedLabel:(id)label forLocale:(id)locale
{
  labelCopy = label;
  localeCopy = locale;
  v11 = objc_msgSend_localizedLabelDictionary(self, v7, v8, v9, v10);
  objc_msgSend_setObject_forKey_(v11, v12, labelCopy, localeCopy, v13);
}

- (void)setLocalizedSynonyms:(id)synonyms forLocale:(id)locale
{
  synonymsCopy = synonyms;
  localeCopy = locale;
  v11 = objc_msgSend_localizedSynonymsDictionary(self, v7, v8, v9, v10);
  objc_msgSend_setObject_forKey_(v11, v12, synonymsCopy, localeCopy, v13);
}

@end
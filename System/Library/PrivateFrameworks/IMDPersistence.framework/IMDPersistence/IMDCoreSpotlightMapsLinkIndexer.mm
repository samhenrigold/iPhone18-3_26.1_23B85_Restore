@interface IMDCoreSpotlightMapsLinkIndexer
- (id)_addressComponentsFromMapMetadata:(id)metadata;
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightMapsLinkIndexer

- (id)_addressComponentsFromMapMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_msgSend_address(metadataCopy, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_address(metadataCopy, v9, v10, v11);
    objc_msgSend_addObject_(v4, v13, v12, v14);
  }

  v15 = objc_msgSend_addressComponents(metadataCopy, v9, v10, v11);
  v19 = objc_msgSend_street(v15, v16, v17, v18);

  if (v19)
  {
    v23 = objc_msgSend_street(v15, v20, v21, v22);
    objc_msgSend_addObject_(v4, v24, v23, v25);
  }

  v26 = objc_msgSend_subLocality(v15, v20, v21, v22);

  if (v26)
  {
    v30 = objc_msgSend_subLocality(v15, v27, v28, v29);
    objc_msgSend_addObject_(v4, v31, v30, v32);
  }

  v33 = objc_msgSend_city(v15, v27, v28, v29);

  if (v33)
  {
    v37 = objc_msgSend_city(v15, v34, v35, v36);
    objc_msgSend_addObject_(v4, v38, v37, v39);
  }

  v40 = objc_msgSend_subAdministrativeArea(v15, v34, v35, v36);

  if (v40)
  {
    v44 = objc_msgSend_subAdministrativeArea(v15, v41, v42, v43);
    objc_msgSend_addObject_(v4, v45, v44, v46);
  }

  v47 = objc_msgSend_state(v15, v41, v42, v43);

  if (v47)
  {
    v51 = objc_msgSend_state(v15, v48, v49, v50);
    objc_msgSend_addObject_(v4, v52, v51, v53);
  }

  v54 = objc_msgSend_postalCode(v15, v48, v49, v50);

  if (v54)
  {
    v58 = objc_msgSend_postalCode(v15, v55, v56, v57);
    objc_msgSend_addObject_(v4, v59, v58, v60);
  }

  v61 = objc_msgSend_country(v15, v55, v56, v57);

  if (v61)
  {
    v65 = objc_msgSend_country(v15, v62, v63, v64);
    objc_msgSend_addObject_(v4, v66, v65, v67);
  }

  v68 = objc_msgSend_ISOCountryCode(v15, v62, v63, v64);

  if (v68)
  {
    v72 = objc_msgSend_ISOCountryCode(v15, v69, v70, v71);
    objc_msgSend_addObject_(v4, v73, v72, v74);
  }

  objc_msgSend_count(v4, v69, v70, v71);
  v78 = objc_msgSend_copy(v4, v75, v76, v77);

  return v78;
}

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  v74[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  metadataCopy = metadata;
  objc_msgSend_setMessageType_(attributesCopy, v8, @"loc", v9);
  v13 = objc_msgSend_specialization(metadataCopy, v10, v11, v12);

  v17 = objc_msgSend_name(v13, v14, v15, v16);
  objc_msgSend__insertLinkName_toAttributes_(self, v18, v17, attributesCopy);

  v22 = objc_msgSend_addressComponents(v13, v19, v20, v21);
  v26 = objc_msgSend_postalCode(v22, v23, v24, v25);
  objc_msgSend_setPostalCode_(attributesCopy, v27, v26, v28);

  v32 = objc_msgSend_addressComponents(v13, v29, v30, v31);
  v36 = objc_msgSend_city(v32, v33, v34, v35);
  objc_msgSend_setCity_(attributesCopy, v37, v36, v38);

  v42 = objc_msgSend_addressComponents(v13, v39, v40, v41);
  v46 = objc_msgSend_state(v42, v43, v44, v45);
  objc_msgSend_setStateOrProvince_(attributesCopy, v47, v46, v48);

  v52 = objc_msgSend_addressComponents(v13, v49, v50, v51);
  v56 = objc_msgSend_country(v52, v53, v54, v55);
  objc_msgSend_setCountry_(attributesCopy, v57, v56, v58);

  v62 = objc_msgSend_category(v13, v59, v60, v61);

  if (v62)
  {
    v66 = objc_msgSend_category(v13, v63, v64, v65);
    v74[0] = v66;
    v68 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v67, v74, 1);
    objc_msgSend_setAddressCategories_(attributesCopy, v69, v68, v70);
  }

  v71 = objc_msgSend__addressComponentsFromMapMetadata_(self, v63, v13, v65);
  objc_msgSend_setAddresses_(attributesCopy, v72, v71, v73);
}

@end
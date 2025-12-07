@interface NTKCParmesanFaceDetailContentSectionController
- (BOOL)_dynamicEditorHasSelection;
- (BOOL)_handleDidSelectOption:(id)option;
- (BOOL)canAddFace;
- (BOOL)hasChanges;
- (NTKCParmesanFaceDetailContentSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view externalAssets:(id)assets;
- (UIViewController)parentViewController;
- (id)_currentEditor;
- (id)_previewNavigationControllerForCurrentEditor;
- (id)cellForEditOption:(id)option;
- (void)_reloadEditOptionCellContent;
- (void)_setContentForCell:(id)cell withEditOption:(id)option;
- (void)_setPhotos:(id)photos;
- (void)_updateSection;
- (void)didSelectRow:(int64_t)row;
- (void)faceDidChange;
- (void)faceDidChangeResourceDirectory;
- (void)saveChangesWithCompletion:(id)completion;
- (void)setSelectedOptions:(id)options;
- (void)shuffleSelectionViewController:(id)controller didFinishWithSelection:(id)selection;
@end

@implementation NTKCParmesanFaceDetailContentSectionController

- (NTKCParmesanFaceDetailContentSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view externalAssets:(id)assets
{
  galleryCopy = gallery;
  controllerCopy = controller;
  faceCopy = face;
  collectionCopy = collection;
  viewCopy = view;
  assetsCopy = assets;
  if (assetsCopy)
  {
    v20 = objc_msgSend_filteredCollectionWithObjectsPassingTest_(collectionCopy, v18, &unk_284EBA548);
  }

  else
  {
    v20 = collectionCopy;
  }

  v21 = v20;
  v26.receiver = self;
  v26.super_class = NTKCParmesanFaceDetailContentSectionController;
  v22 = [(NTKCFaceDetailEditOptionVerticalSectionController *)&v26 initWithTableViewController:controllerCopy face:faceCopy inGallery:galleryCopy editOptionCollection:v20 faceView:viewCopy];
  v24 = v22;
  if (v22)
  {
    objc_msgSend_setExternalAssets_(v22, v23, assetsCopy);
  }

  return v24;
}

- (BOOL)canAddFace
{
  v4 = objc_msgSend_selectedOptions(self, a2, v2);
  v5 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_collection(self, v6, v7);
  v11 = objc_msgSend_mode(v8, v9, v10);
  v13 = objc_msgSend_numberWithInteger_(v5, v12, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v4, v14, v13);

  v18 = objc_msgSend_content(v15, v16, v17);
  if (v18)
  {
    if (v18 != 1)
    {
      v22 = 0;
      goto LABEL_7;
    }

    HasPhotos = objc_msgSend__manualEditorHasPhotos(self, v19, v20);
  }

  else
  {
    HasPhotos = objc_msgSend__dynamicEditorHasSelection(self, v19, v20);
  }

  v22 = HasPhotos;
LABEL_7:

  return v22;
}

- (void)_reloadEditOptionCellContent
{
  v4 = objc_msgSend_collection(self, a2, v2);
  v7 = objc_msgSend_options(v4, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BF10C44;
  v9[3] = &unk_278BA68C0;
  v9[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v9);
}

- (void)_setContentForCell:(id)cell withEditOption:(id)option
{
  cellCopy = cell;
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = optionCopy;
    currentContent = self->_currentContent;
    v11 = objc_msgSend_content(v7, v9, v10);
    if (objc_msgSend_content(v7, v12, v13) == 1)
    {
      v15 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v14, @"PARMESAN_CONTENT_EDIT_OPTION_MANUAL", @"Manual content option");
      objc_msgSend_setTitleText_(cellCopy, v16, v15);

      parmesanPhotosEditor = self->_parmesanPhotosEditor;
      if (parmesanPhotosEditor || (parmesanPhotosEditor = self->_imageEditor) != 0)
      {
        v20 = objc_msgSend_photosCount(parmesanPhotosEditor, v17, v18);
        if (v20 >= 1)
        {
          v21 = v20;
          v22 = NTKCCustomizationLocalizedFormat();
          v24 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v23, v22, v21);
          objc_msgSend_setValueText_(cellCopy, v25, v24);

LABEL_10:
          objc_msgSend_setActive_(cellCopy, v32, currentContent == v11);

          goto LABEL_11;
        }
      }

      v30 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v17, @"PARMESAN_CONTENT_EDIT_OPTION_MANUAL_ACTION", @"Manual content action");
    }

    else
    {
      v26 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v14, @"PARMESAN_CONTENT_EDIT_OPTION_DYNAMIC", @"Dynamic content title");
      objc_msgSend_setTitleText_(cellCopy, v27, v26);

      v30 = objc_msgSend_localizedShuffleDescription(self->_albumEditor, v28, v29);
    }

    v22 = v30;
    objc_msgSend_setValueText_(cellCopy, v31, v30);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)faceDidChange
{
  v5.receiver = self;
  v5.super_class = NTKCParmesanFaceDetailContentSectionController;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)&v5 faceDidChange];
  objc_msgSend__updateSection(self, v3, v4);
}

- (void)faceDidChangeResourceDirectory
{
  v5.receiver = self;
  v5.super_class = NTKCParmesanFaceDetailContentSectionController;
  [(NTKCFaceDetailSectionController *)&v5 faceDidChangeResourceDirectory];
  objc_msgSend__updateSection(self, v3, v4);
}

- (id)cellForEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc(MEMORY[0x277D2BF98]);
    v7 = objc_msgSend_initWithEditOption_(v5, v6, optionCopy);
    objc_msgSend__setContentForCell_withEditOption_(self, v8, v7, optionCopy);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKCParmesanFaceDetailContentSectionController;
    v7 = [(NTKCFaceDetailEditOptionVerticalSectionController *)&v10 cellForEditOption:optionCopy];
  }

  return v7;
}

- (void)setSelectedOptions:(id)options
{
  v206.receiver = self;
  v206.super_class = NTKCParmesanFaceDetailContentSectionController;
  optionsCopy = options;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)&v206 setSelectedOptions:optionsCopy];
  v81 = *&self->_parmesanPhotosEditor == 0 && self->_imageEditor == 0;
  v7 = MEMORY[0x277CCABB0];
  v8 = objc_msgSend_collection(self, v5, v6);
  v11 = objc_msgSend_mode(v8, v9, v10);
  v13 = objc_msgSend_numberWithInteger_(v7, v12, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v14, v13);

  if (v81 || (v18 = self->_currentContent, v18 != objc_msgSend_content(v15, v16, v17)))
  {
    v19 = objc_msgSend_content(v15, v16, v17);
    self->_currentContent = v19;
    if (self->_externalAssets)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19;
    }

    self->_currentContent = v22;
    v23 = objc_msgSend_logObject(NTKParmesanFaceBundle, v20, v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF6A44(v81, v15, v23);
    }

    currentContent = self->_currentContent;
    if (currentContent)
    {
      if (currentContent == 1)
      {
        if (NTKPeerDeviceHandlesWideLoads())
        {
          objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v27, @"EDIT_MODE_LABEL_CONTENT_OPTION_DESCRIPTION_24", @"Choose xx photos");
        }

        else
        {
          objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v27, @"EDIT_MODE_LABEL_CONTENT_OPTION_DESCRIPTION_06", @"Choose xx photos");
        }
        v28 = ;
        objc_msgSend_setFooter_(self, v29, v28);

        if (v81)
        {
          externalAssets = self->_externalAssets;
          if (externalAssets)
          {
            v33 = objc_msgSend_firstObject(externalAssets, v30, v31);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v35 = [NTKCParmesanPhotosEditor alloc];
              v38 = objc_msgSend_face(self, v36, v37);
              v41 = objc_msgSend_device(v38, v39, v40);
              v43 = objc_msgSend_initWithResourceDirectory_forDevice_(v35, v42, 0, v41);
              parmesanPhotosEditor = self->_parmesanPhotosEditor;
              self->_parmesanPhotosEditor = v43;

              objc_msgSend_addAssetsFromAssetList_(self->_parmesanPhotosEditor, v45, self->_externalAssets);
              v48 = objc_msgSend_delegate(self, v46, v47);
              objc_msgSend_showLoadingIndicator(v48, v49, v50);

              v53 = objc_msgSend_delegate(self, v51, v52);
              objc_msgSend_showLoadingIndicatorWithProgress_(v53, v54, v55, 1.0);

              v56 = self->_parmesanPhotosEditor;
              v205[0] = MEMORY[0x277D85DD0];
              v205[1] = 3221225472;
              v205[2] = sub_23BF119B4;
              v205[3] = &unk_278BA68E8;
              v205[4] = self;
              objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v56, v57, v205);
              goto LABEL_58;
            }

            v129 = self->_externalAssets;
            if (v129)
            {
              v130 = objc_msgSend_firstObject(v129, v30, v31);
              objc_opt_class();
              v131 = objc_opt_isKindOfClass();

              if (v131)
              {
                v132 = [NTKParmesanImageEditor alloc];
                v135 = objc_msgSend_face(self, v133, v134);
                v138 = objc_msgSend_device(v135, v136, v137);
                v140 = objc_msgSend_initForDevice_(v132, v139, v138);
                imageEditor = self->_imageEditor;
                self->_imageEditor = v140;

                objc_msgSend_addImages_(self->_imageEditor, v142, self->_externalAssets);
                v143 = self->_imageEditor;
                v204[0] = MEMORY[0x277D85DD0];
                v204[1] = 3221225472;
                v204[2] = sub_23BF11A38;
                v204[3] = &unk_278BA68E8;
                v204[4] = self;
                objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v143, v144, v204);
                goto LABEL_58;
              }
            }
          }

          v145 = objc_msgSend_face(self, v30, v31);
          v65 = objc_msgSend_resourceDirectory(v145, v146, v147);

          v148 = [NTKCParmesanPhotosEditor alloc];
          v68 = objc_msgSend_face(self, v149, v150);
          v71 = objc_msgSend_device(v68, v151, v152);
          v154 = objc_msgSend_initWithResourceDirectory_forDevice_(v148, v153, v65, v71);
          v155 = self->_parmesanPhotosEditor;
          self->_parmesanPhotosEditor = v154;

LABEL_41:
          goto LABEL_58;
        }

        if (objc_msgSend_inGallery(self, v30, v31))
        {
          v84 = self->_parmesanPhotosEditor;
          if (!v84)
          {
            v85 = [NTKCParmesanPhotosEditor alloc];
            v88 = objc_msgSend_face(self, v86, v87);
            v91 = objc_msgSend_device(v88, v89, v90);
            v93 = objc_msgSend_initWithResourceDirectory_forDevice_(v85, v92, 0, v91);
            v94 = self->_parmesanPhotosEditor;
            self->_parmesanPhotosEditor = v93;

            v84 = self->_parmesanPhotosEditor;
          }

          v95 = objc_msgSend_galleryPreviewResourceDirectory(v84, v82, v83);

          v98 = self->_parmesanPhotosEditor;
          if (v95)
          {
            v99 = objc_msgSend_galleryPreviewResourceDirectory(v98, v96, v97);
          }

          else
          {
            v156 = objc_msgSend_resourceDirectory(v98, v96, v97);

            v159 = self->_parmesanPhotosEditor;
            if (!v156)
            {
              v203[0] = MEMORY[0x277D85DD0];
              v203[1] = 3221225472;
              v203[2] = sub_23BF11A98;
              v203[3] = &unk_278BA68E8;
              v203[4] = self;
              objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v159, v157, v203);
LABEL_49:
              if ((objc_msgSend__manualEditorHasPhotos(self, v173, v174) & 1) == 0)
              {
                objc_msgSend__handleDidSelectActionRowForOption_(self, v24, v15);
              }

              goto LABEL_58;
            }

            v99 = objc_msgSend_resourceDirectory(v159, v157, v158);
          }

          v123 = v99;
          v160 = objc_msgSend_face(self, v100, v101);
          objc_msgSend_setResourceDirectory_(v160, v161, v123);
        }

        else if (self->_externalAssets)
        {
          v123 = objc_msgSend_logObject(NTKParmesanFaceBundle, v82, v83);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF6AD0(&self->_parmesanPhotosEditor, self, v123);
          }
        }

        else
        {
          if (!self->_parmesanPhotosEditor)
          {
            v162 = [NTKCParmesanPhotosEditor alloc];
            v165 = objc_msgSend_face(self, v163, v164);
            v168 = objc_msgSend_device(v165, v166, v167);
            v170 = objc_msgSend_initWithResourceDirectory_forDevice_(v162, v169, 0, v168);
            v171 = self->_parmesanPhotosEditor;
            self->_parmesanPhotosEditor = v170;
          }

          v123 = objc_msgSend_face(self, v82, v83);
          objc_msgSend_setResourceDirectory_(v123, v172, 0);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v58 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v24, @"PARMESAN_EDIT_MODE_SYNCED_ALBUM_OPTION_DESCRIPTION", @"Synced Album");
      objc_msgSend_setFooter_(self, v59, v58);

      if (v81)
      {
        v62 = [NTKCParmesanAlbumEditor alloc];
        v65 = objc_msgSend_face(self, v63, v64);
        v68 = objc_msgSend_resourceDirectory(v65, v66, v67);
        v71 = objc_msgSend_face(self, v69, v70);
        v74 = objc_msgSend_device(v71, v72, v73);
        v77 = objc_msgSend_inGallery(self, v75, v76);
        shouldFinalize = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v62, v78, v68, v74, v77);
        albumEditor = self->_albumEditor;
        self->_albumEditor = shouldFinalize;

        goto LABEL_41;
      }

      v104 = objc_msgSend_inGallery(self, v60, v61);
      v105 = self->_albumEditor;
      if (!v104)
      {
        if (v105)
        {
          v124 = objc_msgSend_resourceDirectory(v105, v102, v103);
          v127 = objc_msgSend_face(self, v125, v126);
          objc_msgSend_setResourceDirectory_(v127, v128, v124);
        }

        else
        {
          v182 = [NTKCParmesanAlbumEditor alloc];
          v185 = objc_msgSend_face(self, v183, v184);
          v188 = objc_msgSend_device(v185, v186, v187);
          v190 = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v182, v189, 0, v188, 1);
          v191 = self->_albumEditor;
          self->_albumEditor = v190;

          v194 = objc_msgSend_delegate(self, v192, v193);
          objc_msgSend_showLoadingIndicator(v194, v195, v196);

          v197 = self->_albumEditor;
          v201[0] = MEMORY[0x277D85DD0];
          v201[1] = 3221225472;
          v201[2] = sub_23BF11C24;
          v201[3] = &unk_278BA6910;
          v201[4] = self;
          v200[0] = MEMORY[0x277D85DD0];
          v200[1] = 3221225472;
          v200[2] = sub_23BF11C78;
          v200[3] = &unk_278BA68E8;
          v200[4] = self;
          objc_msgSend_finalizeWithProgress_completion_(v197, v198, v201, v200);
        }

        v199 = self->_parmesanPhotosEditor;
        self->_parmesanPhotosEditor = 0;

        goto LABEL_58;
      }

      if (!v105)
      {
        v106 = [NTKCParmesanAlbumEditor alloc];
        v109 = objc_msgSend_face(self, v107, v108);
        v112 = objc_msgSend_device(v109, v110, v111);
        v114 = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v106, v113, 0, v112, 1);
        v115 = self->_albumEditor;
        self->_albumEditor = v114;

        v105 = self->_albumEditor;
      }

      v116 = objc_msgSend_galleryPreviewResourceDirectory(v105, v102, v103);

      v119 = self->_albumEditor;
      if (v116)
      {
        v120 = objc_msgSend_galleryPreviewResourceDirectory(v119, v117, v118);
      }

      else
      {
        v175 = objc_msgSend_resourceDirectory(v119, v117, v118);

        v178 = self->_albumEditor;
        if (!v175)
        {
          v202[0] = MEMORY[0x277D85DD0];
          v202[1] = 3221225472;
          v202[2] = sub_23BF11BC4;
          v202[3] = &unk_278BA68E8;
          v202[4] = self;
          objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v178, v176, v202);
          goto LABEL_58;
        }

        v120 = objc_msgSend_resourceDirectory(v178, v176, v177);
      }

      v179 = v120;
      v180 = objc_msgSend_face(self, v121, v122);
      objc_msgSend_setResourceDirectory_(v180, v181, v179);
    }

LABEL_58:
    objc_msgSend__reloadEditOptionCellContent(self, v24, v25);
  }
}

- (void)didSelectRow:(int64_t)row
{
  v5 = objc_msgSend_optionAtIndex_(self, a2, row);
  v7 = objc_msgSend__handleDidSelectOption_(self, v6, v5);

  if (v7)
  {
    v11 = objc_msgSend_delegate(self, v8, v9);
    objc_msgSend_editOptionSection_didSelectOptionAtIndex_(v11, v10, self, row);
  }
}

- (BOOL)_handleDidSelectOption:(id)option
{
  optionCopy = option;
  if (objc_msgSend_content(optionCopy, v5, v6) || self->_currentContent != 1 || (objc_msgSend_inGallery(self, v7, v8) & 1) != 0 || self->_canDeleteCustomPhotos)
  {
    if (objc_msgSend_content(optionCopy, v7, v8) == 1)
    {
      if ((objc_msgSend__manualEditorHasPhotos(self, v9, v10) & 1) == 0)
      {
        v52 = MEMORY[0x277D2BFA0];
        v53 = NTKMaxParmesanPhotos();
        v13 = objc_msgSend_parmesanConfigurationWithLimit_(v52, v54, v53);
        v55 = MEMORY[0x277D2BFA0];
        v58 = objc_msgSend_parentViewController(self, v56, v57);
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = sub_23BF12344;
        v85[3] = &unk_278BA6960;
        v85[4] = self;
        objc_msgSend_presentPhotosAddControllerFromViewController_configuration_withCompletion_(v55, v59, v58, v13, v85);

        goto LABEL_16;
      }

      v13 = objc_msgSend__previewNavigationControllerForCurrentEditor(self, v11, v12);
      objc_msgSend_setPreviewDelegate_(v13, v14, self);
      v17 = objc_msgSend_parentViewController(self, v15, v16);
      objc_msgSend_presentViewController_animated_completion_(v17, v18, v13, 1, 0);
    }

    else
    {
      if (objc_msgSend_content(optionCopy, v9, v10))
      {
LABEL_17:
        self->_canDeleteCustomPhotos = 0;
        objc_msgSend__reloadEditOptionCellContent(self, v19, v20);
        v60 = 1;
        goto LABEL_18;
      }

      v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v84 = 0;
        _os_log_impl(&dword_23BF0C000, v21, OS_LOG_TYPE_DEFAULT, "Settings up collection view controller", v84, 2u);
      }

      if (!self->_albumEditor)
      {
        v22 = [NTKCParmesanAlbumEditor alloc];
        v25 = objc_msgSend_face(self, v23, v24);
        v28 = objc_msgSend_device(v25, v26, v27);
        shouldFinalize = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v22, v29, 0, v28, 1);
        albumEditor = self->_albumEditor;
        self->_albumEditor = shouldFinalize;

        v34 = objc_msgSend_face(self, v32, v33);
        objc_msgSend_setResourceDirectory_(v34, v35, 0);
      }

      v36 = [NTKParmesanShuffleSelectionFlowController alloc];
      v37 = self->_albumEditor;
      v40 = objc_msgSend_face(self, v38, v39);
      v43 = objc_msgSend_inGallery(self, v41, v42);
      v13 = objc_msgSend_initWithEditor_face_inGallery_(v36, v44, v37, v40, v43);

      objc_msgSend_setDelegate_(v13, v45, self);
      v46 = objc_alloc(MEMORY[0x277D757A0]);
      v17 = objc_msgSend_initWithRootViewController_(v46, v47, v13);
      v50 = objc_msgSend_parentViewController(self, v48, v49);
      objc_msgSend_presentViewController_animated_completion_(v50, v51, v17, 1, 0);
    }

LABEL_16:
    goto LABEL_17;
  }

  if (objc_msgSend_content(optionCopy, v7, v8))
  {
    v63 = 0;
    objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v62, 0, 0, 0);
  }

  else
  {
    v63 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v62, @"PARMESAN_ALERT_WILL_DELETE_MANUAL_PHOTOS_MESSAGE", @"confirm delete prompt");
    objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v64, 0, v63, 0);
  }
  v65 = ;
  if (objc_msgSend_photosCount(self->_parmesanPhotosEditor, v66, v67) == 1)
  {
    objc_msgSend_stringByAppendingString_(@"PHOTOS_DELETE_BUTTON", v68, @"_SINGULAR");
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"PHOTOS_DELETE_BUTTON", v68, @"_PLURAL");
  }
  v69 = ;
  v70 = NTKCCustomizationLocalizedString();

  v71 = MEMORY[0x277D750F8];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_23BF12254;
  v86[3] = &unk_278BA6938;
  v86[4] = self;
  v87 = optionCopy;
  v73 = objc_msgSend_actionWithTitle_style_handler_(v71, v72, v70, 2, v86);
  objc_msgSend_addAction_(v65, v74, v73);
  v75 = MEMORY[0x277D750F8];
  v76 = NTKCCustomizationLocalizedString();
  v78 = objc_msgSend_actionWithTitle_style_handler_(v75, v77, v76, 1, 0);

  objc_msgSend_addAction_(v65, v79, v78);
  v82 = objc_msgSend_parentViewController(self, v80, v81);
  objc_msgSend_presentViewController_animated_completion_(v82, v83, v65, 1, 0);

  v60 = 0;
LABEL_18:

  return v60;
}

- (id)_previewNavigationControllerForCurrentEditor
{
  if (self->_parmesanPhotosEditor)
  {
    v4 = [NTKCParmesanFacePreviewNavigationController alloc];
    v7 = objc_msgSend_face(self, v5, v6);
    v10 = objc_msgSend_faceView(self, v8, v9);
    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    v14 = objc_msgSend_inGallery(self, v12, v13);
    v16 = objc_msgSend_initWithFace_faceView_editor_inGallery_(v4, v15, v7, v10, parmesanPhotosEditor, v14);
LABEL_5:
    v27 = v16;

    goto LABEL_6;
  }

  if (self->_imageEditor)
  {
    v17 = [NTKCParmesanFacePreviewNavigationController alloc];
    v7 = objc_msgSend_face(self, v18, v19);
    v10 = objc_msgSend_faceView(self, v20, v21);
    imageEditor = self->_imageEditor;
    v25 = objc_msgSend_inGallery(self, v23, v24);
    v16 = objc_msgSend_initWithFace_faceView_imageEditor_inGallery_(v17, v26, v7, v10, imageEditor, v25);
    goto LABEL_5;
  }

  v29 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF6B7C(v29);
  }

  v27 = 0;
LABEL_6:

  return v27;
}

- (void)_setPhotos:(id)photos
{
  objc_msgSend_addAssetsFromUIImagePicker_(self->_parmesanPhotosEditor, a2, photos);
  objc_msgSend__updateSection(self, v4, v5);
  if (objc_msgSend_inGallery(self, v6, v7))
  {
    v10 = objc_msgSend_delegate(self, v8, v9);
    objc_msgSend_showLoadingIndicator(v10, v11, v12);

    v15 = objc_msgSend_delegate(self, v13, v14);
    objc_msgSend_showLoadingIndicatorWithProgress_(v15, v16, v17, 1.0);

    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_23BF125C0;
    v20[3] = &unk_278BA68E8;
    v20[4] = self;
    objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(parmesanPhotosEditor, v19, v20);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_saveChangesWithCompletion_, 0);
  }
}

- (BOOL)_dynamicEditorHasSelection
{
  v3 = objc_msgSend_shuffleSelection(self->_albumEditor, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (id)_currentEditor
{
  currentContent = self->_currentContent;
  if (!currentContent)
  {
    v5 = &OBJC_IVAR___NTKCParmesanFaceDetailContentSectionController__albumEditor;
    goto LABEL_6;
  }

  if (currentContent == 1)
  {
    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    if (parmesanPhotosEditor)
    {
      goto LABEL_7;
    }

    v5 = &OBJC_IVAR___NTKCParmesanFaceDetailContentSectionController__imageEditor;
LABEL_6:
    parmesanPhotosEditor = *(&self->super.super.super.super.isa + *v5);
LABEL_7:
    v6 = parmesanPhotosEditor;

    return v6;
  }

  v6 = 0;

  return v6;
}

- (void)_updateSection
{
  objc_msgSend__reloadEditOptionCellContent(self, a2, v2);
  v7 = objc_msgSend_delegate(self, v4, v5);
  objc_msgSend_sectionDidUpdate_(v7, v6, self);
}

- (BOOL)hasChanges
{
  v3 = objc_msgSend__currentEditor(self, a2, v2);
  v6 = objc_msgSend_state(v3, v4, v5) == 2;

  return v6;
}

- (void)saveChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_hasChanges(self, v5, v6))
  {
    v11 = objc_msgSend__currentEditor(self, v7, v8);
    if (v11)
    {
      v12 = objc_msgSend_delegate(self, v9, v10);
      objc_msgSend_showLoadingIndicator(v12, v13, v14);

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_23BF12A74;
      v18[3] = &unk_278BA6910;
      v18[4] = self;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_23BF12AC8;
      v16[3] = &unk_278BA6988;
      v16[4] = self;
      v17 = completionCopy;
      objc_msgSend_finalizeWithProgress_completion_(v11, v15, v18, v16);
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)shuffleSelectionViewController:(id)controller didFinishWithSelection:(id)selection
{
  v97 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  selectionCopy = selection;
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_description(selectionCopy, v11, v12);
    *buf = 138412290;
    v96 = v13;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "Shuffle selection did finish with user selection =  %@", buf, 0xCu);
  }

  v16 = objc_msgSend_manualSelection(selectionCopy, v14, v15);
  v19 = objc_msgSend_count(v16, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_logObject(NTKParmesanFaceBundle, v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v96 = selectionCopy;
      _os_log_impl(&dword_23BF0C000, v22, OS_LOG_TYPE_DEFAULT, "shuffleSelection:didFinish: selected manual photos, switching editors: %@", buf, 0xCu);
    }

    self->_currentContent = 1;
    v23 = [NTKCParmesanPhotosEditor alloc];
    v26 = objc_msgSend_face(self, v24, v25);
    v29 = objc_msgSend_device(v26, v27, v28);
    v31 = objc_msgSend_initWithResourceDirectory_forDevice_(v23, v30, 0, v29);
    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    self->_parmesanPhotosEditor = v31;

    v33 = MEMORY[0x277CD97A8];
    v85 = selectionCopy;
    v36 = objc_msgSend_manualSelection(selectionCopy, v34, v35);
    v38 = objc_msgSend_fetchAssetsWithLocalIdentifiers_options_(v33, v37, v36, 0);

    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    v89 = 0u;
    v39 = v38;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v89, v94, 16);
    if (v41)
    {
      v43 = v41;
      v44 = *v90;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v90 != v44)
          {
            objc_enumerationMutation(v39);
          }

          v46 = self->_parmesanPhotosEditor;
          v93 = *(*(&v89 + 1) + 8 * i);
          v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, &v93, 1);
          objc_msgSend_addAssetsFromAssetList_(v46, v48, v47);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v89, v94, 16);
      }

      while (v43);
    }

    v49 = self->_parmesanPhotosEditor;
    selectionCopy = v85;
  }

  else
  {
    v50 = objc_msgSend_editor(controllerCopy, v20, v21);
    self->_currentContent = 0;
    v39 = v50;
    v53 = objc_msgSend_logObject(NTKParmesanFaceBundle, v51, v52);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v56 = objc_msgSend_shuffleSelection(v39, v54, v55);
      *buf = 138412290;
      v96 = v56;
      _os_log_impl(&dword_23BF0C000, v53, OS_LOG_TYPE_DEFAULT, "shuffleSelection:didFinish: album editor updated with selection: %@", buf, 0xCu);
    }

    v49 = v39;
  }

  v59 = objc_msgSend_face(self, v57, v58);
  currentContent = self->_currentContent;
  v63 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v61, v62);
  v65 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v64, currentContent, v63);
  objc_msgSend_selectOption_forCustomEditMode_slot_(v59, v66, v65, 12, 0);

  if (objc_msgSend_state(v49, v67, v68) != 1)
  {
    v71 = objc_msgSend_inGallery(self, v69, v70);
    v74 = objc_msgSend_delegate(self, v72, v73);
    objc_msgSend_showLoadingIndicator(v74, v75, v76);

    if (v71)
    {
      v79 = objc_msgSend_delegate(self, v77, v78);
      objc_msgSend_showLoadingIndicatorWithProgress_(v79, v80, v81, 1.0);

      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = sub_23BF13150;
      v88[3] = &unk_278BA68E8;
      v88[4] = self;
      objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v49, v82, v88);
    }

    else
    {
      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = sub_23BF131D0;
      v87[3] = &unk_278BA6910;
      v87[4] = self;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_23BF13224;
      v86[3] = &unk_278BA68E8;
      v86[4] = self;
      objc_msgSend_finalizeWithProgress_completion_(v49, v77, v87, v86);
    }
  }

  v83 = objc_msgSend_parentViewController(self, v69, v70);
  objc_msgSend_dismissViewControllerAnimated_completion_(v83, v84, 1, 0);
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end
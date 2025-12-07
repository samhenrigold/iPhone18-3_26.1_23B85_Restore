@interface MPAssistantAddMediaItemsToPlaylist
+ (void)_notifyAssistantWithError:(id)error requestHash:(id)hash completion:(id)completion;
+ (void)_notifyAssistantWithString:(id)string requestHash:(id)hash completion:(id)completion;
- (void)_addItemsToCloudLibrary:(id)library;
- (void)_addItemsToLocalLibrary:(id)library;
- (void)_appendItemToCloudPlaylist:(id)playlist completion:(id)completion;
- (void)_appendItemsToCloudPlaylist:(id)playlist completion:(id)completion;
- (void)_appendToPlaylistWithCompletion:(id)completion;
- (void)_prependItemsToCloudPlaylist:(id)playlist completion:(id)completion;
- (void)dealloc;
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantAddMediaItemsToPlaylist

- (void)_prependItemsToCloudPlaylist:(id)playlist completion:(id)completion
{
  v200 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_aceId(self, v10, v11, v12, v13);
    v15 = sub_233505670(@"Add Media Items To Playlist", v14);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v15;
  }

  v17 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_requestAceHash;
    *buf = 138543362;
    v195 = v18;
    _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: head insertion", buf, 0xCu);
  }

  v22 = objc_msgSend_controllerWithUserIdentity_(MEMORY[0x277CD5D78], v19, self->_userIdentity, v20, v21);
  cloudController = self->_cloudController;
  v166 = 72;
  self->_cloudController = v22;

  v177 = objc_msgSend_cloudItemIDListForPlaylist_(MEMORY[0x277CD5D80], v24, playlistCopy, v25, v26);
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  obj = objc_msgSend_mediaItems(self, v27, v28, v29, v30);
  v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v189, v199, 16);
  if (v172)
  {
    v36 = 0;
    v171 = *v190;
    v175 = *MEMORY[0x277CD5898];
    v176 = *MEMORY[0x277CD58A0];
    do
    {
      for (i = 0; i != v172; ++i)
      {
        if (*v190 != v171)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v189 + 1) + 8 * i);
        v39 = objc_msgSend_identifier(v38, v32, v33, v34, v35, v166);
        v40 = sub_23350261C(v39);

        if (v40 == 3)
        {
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v174 = objc_msgSend_items(v38, v41, v42, v43, v44);
          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v45, &v185, v198, 16);
          if (v46)
          {
            v51 = v46;
            v52 = *v186;
            do
            {
              v53 = 0;
              v54 = v36;
              do
              {
                if (*v186 != v52)
                {
                  objc_enumerationMutation(v174);
                }

                v55 = objc_msgSend_identifier(*(*(&v185 + 1) + 8 * v53), v47, v48, v49, v50);
                v60 = objc_msgSend_lastPathComponent(v55, v56, v57, v58, v59);
                v65 = objc_msgSend_longLongValue(v60, v61, v62, v63, v64);

                if (!objc_msgSend_length(self->_requestAceHash, v66, v67, v68, v69))
                {
                  v74 = objc_msgSend_aceId(self, v70, v71, v72, v73);
                  v75 = sub_233505670(@"Add Media Items To Playlist", v74);
                  v76 = self->_requestAceHash;
                  self->_requestAceHash = v75;
                }

                v77 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = self->_requestAceHash;
                  *buf = 138543618;
                  v195 = v78;
                  v196 = 2048;
                  v197 = v65;
                  _os_log_impl(&dword_2334D9000, v77, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend store: %lld", buf, 0x16u);
                }

                v36 = v54 + 1;
                objc_msgSend_insertCloudItemID_idType_atIndex_(v177, v79, v65, 1, v54);
                ++v53;
                ++v54;
              }

              while (v51 != v53);
              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v47, &v185, v198, 16);
            }

            while (v51);
          }
        }

        else
        {
          v170 = i;
          v80 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v38, v41, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);
          v181 = 0u;
          v182 = 0u;
          v183 = 0u;
          v184 = 0u;
          v174 = v80;
          v173 = objc_msgSend_items(v80, v81, v82, v83, v84);
          v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v85, &v181, v193, 16);
          if (v86)
          {
            v90 = v86;
            v91 = *v182;
            do
            {
              for (j = 0; j != v90; ++j)
              {
                if (*v182 != v91)
                {
                  objc_enumerationMutation(v173);
                }

                v93 = *(*(&v181 + 1) + 8 * j);
                v94 = objc_msgSend_valueForProperty_(v93, v87, v176, v88, v89);
                v99 = objc_msgSend_longLongValue(v94, v95, v96, v97, v98);

                v103 = objc_msgSend_valueForProperty_(v93, v100, v175, v101, v102);
                v108 = objc_msgSend_unsignedLongLongValue(v103, v104, v105, v106, v107);

                if (v108)
                {
                  if (!objc_msgSend_length(self->_requestAceHash, v109, v110, v111, v112))
                  {
                    v117 = objc_msgSend_aceId(self, v113, v114, v115, v116);
                    v118 = sub_233505670(@"Add Media Items To Playlist", v117);
                    v119 = self->_requestAceHash;
                    self->_requestAceHash = v118;
                  }

                  v120 = _MPLogCategoryAssistant();
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                  {
                    v121 = self->_requestAceHash;
                    *buf = 138543618;
                    v195 = v121;
                    v196 = 2048;
                    v197 = v108;
                    _os_log_impl(&dword_2334D9000, v120, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend saga: %lld", buf, 0x16u);
                  }

                  objc_msgSend_insertCloudItemID_idType_atIndex_(v177, v122, v108, 0, v36++);
                }

                else
                {
                  v123 = objc_msgSend_length(self->_requestAceHash, v109, v110, v111, v112);
                  if (v99)
                  {
                    if (!v123)
                    {
                      v128 = objc_msgSend_aceId(self, v124, v125, v126, v127);
                      v129 = sub_233505670(@"Add Media Items To Playlist", v128);
                      v130 = self->_requestAceHash;
                      self->_requestAceHash = v129;
                    }

                    v131 = _MPLogCategoryAssistant();
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                    {
                      v132 = self->_requestAceHash;
                      *buf = 138543618;
                      v195 = v132;
                      v196 = 2048;
                      v197 = v99;
                      _os_log_impl(&dword_2334D9000, v131, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend adam: %lld", buf, 0x16u);
                    }

                    objc_msgSend_insertCloudItemID_idType_atIndex_(v177, v133, v99, 1, v36++);
                  }

                  else
                  {
                    if (!v123)
                    {
                      v134 = objc_msgSend_aceId(self, v124, v125, v126, v127);
                      v135 = sub_233505670(@"Add Media Items To Playlist", v134);
                      v136 = self->_requestAceHash;
                      self->_requestAceHash = v135;
                    }

                    v137 = _MPLogCategoryAssistant();
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                    {
                      v138 = self->_requestAceHash;
                      *buf = 138543618;
                      v195 = v138;
                      v196 = 2114;
                      v197 = v93;
                      _os_log_impl(&dword_2334D9000, v137, OS_LOG_TYPE_ERROR, "Add Media Items To Playlist (cloud items) <%{public}@>: prepend failed: %{public}@", buf, 0x16u);
                    }
                  }
                }
              }

              v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v87, &v181, v193, 16);
            }

            while (v90);
          }

          i = v170;
        }
      }

      v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v189, v199, 16);
    }

    while (v172);
  }

  if (!objc_msgSend_length(self->_requestAceHash, v139, v140, v141, v142))
  {
    v147 = objc_msgSend_aceId(self, v143, v144, v145, v146);
    v148 = sub_233505670(@"Add Media Items To Playlist", v147);
    v149 = self->_requestAceHash;
    self->_requestAceHash = v148;
  }

  v150 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
  {
    v151 = self->_requestAceHash;
    *buf = 138543362;
    v195 = v151;
    _os_log_impl(&dword_2334D9000, v150, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: rewrite playlist", buf, 0xCu);
  }

  v156 = objc_msgSend_copy(self->_requestAceHash, v152, v153, v154, v155);
  v157 = *(&self->super.super.super.super.super.isa + v166);
  v162 = objc_msgSend_persistentID(playlistCopy, v158, v159, v160, v161);
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = sub_2334DFF3C;
  v178[3] = &unk_2789DAC48;
  v179 = v156;
  v180 = completionCopy;
  v163 = completionCopy;
  v164 = v156;
  objc_msgSend_setPlaylistProperties_trackList_forPlaylistWithPersistentID_completionHandler_(v157, v165, 0, v177, v162, v178);
}

- (void)_appendItemsToCloudPlaylist:(id)playlist completion:(id)completion
{
  v203 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_aceId(self, v11, v12, v13, v14);
    v16 = sub_233505670(@"Add Media Items To Playlist", v15);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v16;
  }

  v18 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_requestAceHash;
    *buf = 138543362;
    v198 = v19;
    _os_log_impl(&dword_2334D9000, v18, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: tail insertion", buf, 0xCu);
  }

  v23 = objc_msgSend_controllerWithUserIdentity_(MEMORY[0x277CD5D78], v20, self->_userIdentity, v21, v22);
  cloudController = self->_cloudController;
  v170 = 72;
  self->_cloudController = v23;

  v172 = playlistCopy;
  v28 = objc_msgSend_cloudItemIDListForPlaylist_(MEMORY[0x277CD5D80], v25, playlistCopy, v26, v27);
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = objc_msgSend_mediaItems(self, v29, v30, v31, v32);
  v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v192, v202, 16);
  if (v176)
  {
    v175 = *v193;
    v179 = *MEMORY[0x277CD5898];
    v180 = *MEMORY[0x277CD58A0];
    do
    {
      for (i = 0; i != v176; ++i)
      {
        if (*v193 != v175)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v192 + 1) + 8 * i);
        v40 = objc_msgSend_identifier(v39, v34, v35, v36, v37, v170);
        v41 = sub_23350261C(v40);

        if (v41 == 3)
        {
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v178 = objc_msgSend_items(v39, v42, v43, v44, v45);
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v46, &v188, v201, 16);
          if (v47)
          {
            v52 = v47;
            v53 = *v189;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v189 != v53)
                {
                  objc_enumerationMutation(v178);
                }

                v55 = objc_msgSend_identifier(*(*(&v188 + 1) + 8 * j), v48, v49, v50, v51);
                v60 = objc_msgSend_lastPathComponent(v55, v56, v57, v58, v59);
                v65 = objc_msgSend_longLongValue(v60, v61, v62, v63, v64);

                if (!objc_msgSend_length(self->_requestAceHash, v66, v67, v68, v69))
                {
                  v74 = objc_msgSend_aceId(self, v70, v71, v72, v73);
                  v75 = sub_233505670(@"Add Media Items To Playlist", v74);
                  v76 = self->_requestAceHash;
                  self->_requestAceHash = v75;
                }

                v77 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = self->_requestAceHash;
                  *buf = 138543618;
                  v198 = v78;
                  v199 = 2048;
                  v200 = v65;
                  _os_log_impl(&dword_2334D9000, v77, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: append store: %lld", buf, 0x16u);
                }

                objc_msgSend_addCloudItemID_idType_(v28, v79, v65, 1, v80);
              }

              v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v48, &v188, v201, 16);
            }

            while (v52);
          }
        }

        else
        {
          v174 = i;
          v81 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v39, v42, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);
          v184 = 0u;
          v185 = 0u;
          v186 = 0u;
          v187 = 0u;
          v178 = v81;
          v177 = objc_msgSend_items(v81, v82, v83, v84, v85);
          v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v86, &v184, v196, 16);
          if (v87)
          {
            v91 = v87;
            v92 = *v185;
            do
            {
              v93 = 0;
              do
              {
                if (*v185 != v92)
                {
                  objc_enumerationMutation(v177);
                }

                v94 = *(*(&v184 + 1) + 8 * v93);
                v95 = objc_msgSend_valueForProperty_(v94, v88, v180, v89, v90);
                v100 = objc_msgSend_longLongValue(v95, v96, v97, v98, v99);

                v104 = objc_msgSend_valueForProperty_(v94, v101, v179, v102, v103);
                v109 = objc_msgSend_unsignedLongLongValue(v104, v105, v106, v107, v108);

                if (v109)
                {
                  if (!objc_msgSend_length(self->_requestAceHash, v110, v111, v112, v113))
                  {
                    v118 = objc_msgSend_aceId(self, v114, v115, v116, v117);
                    v119 = sub_233505670(@"Add Media Items To Playlist", v118);
                    v120 = self->_requestAceHash;
                    self->_requestAceHash = v119;
                  }

                  v121 = _MPLogCategoryAssistant();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                  {
                    v122 = self->_requestAceHash;
                    *buf = 138543618;
                    v198 = v122;
                    v199 = 2048;
                    v200 = v109;
                    _os_log_impl(&dword_2334D9000, v121, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: append saga: %lld", buf, 0x16u);
                  }

                  objc_msgSend_addCloudItemID_idType_(v28, v123, v109, 0, v124);
                }

                else
                {
                  v125 = objc_msgSend_length(self->_requestAceHash, v110, v111, v112, v113);
                  if (v100)
                  {
                    if (!v125)
                    {
                      v130 = objc_msgSend_aceId(self, v126, v127, v128, v129);
                      v131 = sub_233505670(@"Add Media Items To Playlist", v130);
                      v132 = self->_requestAceHash;
                      self->_requestAceHash = v131;
                    }

                    v133 = _MPLogCategoryAssistant();
                    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                    {
                      v134 = self->_requestAceHash;
                      *buf = 138543618;
                      v198 = v134;
                      v199 = 2048;
                      v200 = v100;
                      _os_log_impl(&dword_2334D9000, v133, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: append adam: %lld", buf, 0x16u);
                    }

                    objc_msgSend_addCloudItemID_idType_(v28, v135, v100, 1, v136);
                  }

                  else
                  {
                    if (!v125)
                    {
                      v137 = objc_msgSend_aceId(self, v126, v127, v128, v129);
                      v138 = sub_233505670(@"Add Media Items To Playlist", v137);
                      v139 = self->_requestAceHash;
                      self->_requestAceHash = v138;
                    }

                    v140 = _MPLogCategoryAssistant();
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                    {
                      v141 = self->_requestAceHash;
                      *buf = 138543618;
                      v198 = v141;
                      v199 = 2114;
                      v200 = v94;
                      _os_log_impl(&dword_2334D9000, v140, OS_LOG_TYPE_ERROR, "Add Media Items To Playlist (cloud items) <%{public}@>: append failed: %{public}@", buf, 0x16u);
                    }
                  }
                }

                ++v93;
              }

              while (v91 != v93);
              v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v88, &v184, v196, 16);
              v91 = v142;
            }

            while (v142);
          }

          i = v174;
        }
      }

      v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v192, v202, 16);
    }

    while (v176);
  }

  if (!objc_msgSend_length(self->_requestAceHash, v143, v144, v145, v146))
  {
    v151 = objc_msgSend_aceId(self, v147, v148, v149, v150);
    v152 = sub_233505670(@"Add Media Items To Playlist", v151);
    v153 = self->_requestAceHash;
    self->_requestAceHash = v152;
  }

  v154 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v155 = self->_requestAceHash;
    *buf = 138543362;
    v198 = v155;
    _os_log_impl(&dword_2334D9000, v154, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud items) <%{public}@>: rewrite playlist", buf, 0xCu);
  }

  v160 = objc_msgSend_copy(self->_requestAceHash, v156, v157, v158, v159);
  v161 = *(&self->super.super.super.super.super.isa + v170);
  v166 = objc_msgSend_persistentID(v172, v162, v163, v164, v165);
  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = sub_2334E0840;
  v181[3] = &unk_2789DAC48;
  v182 = v160;
  v183 = completionCopy;
  v167 = completionCopy;
  v168 = v160;
  objc_msgSend_setPlaylistProperties_trackList_forPlaylistWithPersistentID_completionHandler_(v161, v169, 0, v28, v166, v181);
}

- (void)_appendItemToCloudPlaylist:(id)playlist completion:(id)completion
{
  v174 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_aceId(self, v12, v13, v14, v15);
    v17 = sub_233505670(@"Add Media Items To Playlist", v16);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v17;
  }

  v19 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_requestAceHash;
    *buf = 138543362;
    v171 = v20;
    _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: tail insertion", buf, 0xCu);
  }

  v25 = objc_msgSend_mediaItems(self, v21, v22, v23, v24);
  v29 = objc_msgSend_objectAtIndex_(v25, v26, 0, v27, v28);

  v33 = objc_msgSend_controllerWithUserIdentity_(MEMORY[0x277CD5D78], v30, self->_userIdentity, v31, v32);
  cloudController = self->_cloudController;
  self->_cloudController = v33;

  v39 = objc_msgSend_identifier(v29, v35, v36, v37, v38);
  v40 = sub_23350261C(v39);

  if (v40 == 3)
  {
    v45 = objc_msgSend_items(v29, v41, v42, v43, v44);
    v49 = objc_msgSend_objectAtIndex_(v45, v46, 0, v47, v48);
    v54 = objc_msgSend_identifier(v49, v50, v51, v52, v53);

    if (!objc_msgSend_length(self->_requestAceHash, v55, v56, v57, v58))
    {
      v63 = objc_msgSend_aceId(self, v59, v60, v61, v62);
      v64 = sub_233505670(@"Add Media Items To Playlist", v63);
      v65 = self->_requestAceHash;
      self->_requestAceHash = v64;
    }

    v66 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = self->_requestAceHash;
      *buf = 138543618;
      v171 = v67;
      v172 = 2114;
      v173 = v54;
      _os_log_impl(&dword_2334D9000, v66, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append store: %{public}@", buf, 0x16u);
    }

    v72 = objc_msgSend_lastPathComponent(v54, v68, v69, v70, v71);
    v77 = objc_msgSend_longLongValue(v72, v73, v74, v75, v76);

    v86 = objc_msgSend_copy(self->_requestAceHash, v78, v79, v80, v81);
  }

  else
  {
    v87 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v29, v41, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);
    v92 = objc_msgSend_items(v87, v88, v89, v90, v91);
    v96 = objc_msgSend_objectAtIndex_(v92, v93, 0, v94, v95);

    if (!objc_msgSend_length(self->_requestAceHash, v97, v98, v99, v100))
    {
      v105 = objc_msgSend_aceId(self, v101, v102, v103, v104);
      v106 = sub_233505670(@"Add Media Items To Playlist", v105);
      v107 = self->_requestAceHash;
      self->_requestAceHash = v106;
    }

    v108 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = self->_requestAceHash;
      *buf = 138543618;
      v171 = v109;
      v172 = 2114;
      v173 = v96;
      _os_log_impl(&dword_2334D9000, v108, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append: %{public}@", buf, 0x16u);
    }

    v113 = objc_msgSend_valueForProperty_(v96, v110, *MEMORY[0x277CD58A0], v111, v112);
    v77 = objc_msgSend_longLongValue(v113, v114, v115, v116, v117);

    v121 = objc_msgSend_valueForProperty_(v96, v118, *MEMORY[0x277CD5898], v119, v120);
    v126 = objc_msgSend_unsignedLongLongValue(v121, v122, v123, v124, v125);

    v86 = objc_msgSend_copy(self->_requestAceHash, v127, v128, v129, v130);
    if (v126)
    {
      if (!objc_msgSend_length(self->_requestAceHash, v82, v83, v84, v85))
      {
        v135 = objc_msgSend_aceId(self, v131, v132, v133, v134);
        v136 = sub_233505670(@"Add Media Items To Playlist", v135);
        v137 = self->_requestAceHash;
        self->_requestAceHash = v136;
      }

      v138 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v139 = self->_requestAceHash;
        *buf = 138543618;
        v171 = v139;
        v172 = 2048;
        v173 = v126;
        _os_log_impl(&dword_2334D9000, v138, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append saga: %llu", buf, 0x16u);
      }

      v140 = self->_cloudController;
      v145 = objc_msgSend_persistentID(playlistCopy, v141, v142, v143, v144);
      v167[0] = MEMORY[0x277D85DD0];
      v167[1] = 3221225472;
      v167[2] = sub_2334E0F98;
      v167[3] = &unk_2789DAC48;
      v86 = v86;
      v168 = v86;
      v169 = completionCopy;
      objc_msgSend_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler_(v140, v146, v126, v145, v167);

      v147 = v168;
      goto LABEL_27;
    }
  }

  if (!v77)
  {
    objc_msgSend__notifyAssistantWithString_requestHash_completion_(MPAssistantAddMediaItemsToPlaylist, v82, @"Unknown item type", self->_requestAceHash, completionCopy);
    goto LABEL_29;
  }

  if (!objc_msgSend_length(self->_requestAceHash, v82, v83, v84, v85))
  {
    v152 = objc_msgSend_aceId(self, v148, v149, v150, v151);
    v153 = sub_233505670(@"Add Media Items To Playlist", v152);
    v154 = self->_requestAceHash;
    self->_requestAceHash = v153;
  }

  v155 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
  {
    v156 = self->_requestAceHash;
    *buf = 138543618;
    v171 = v156;
    v172 = 2048;
    v173 = 0;
    _os_log_impl(&dword_2334D9000, v155, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (cloud item) <%{public}@>: append adam: %llu", buf, 0x16u);
  }

  v157 = self->_cloudController;
  v162 = objc_msgSend_persistentID(playlistCopy, v158, v159, v160, v161);
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = sub_2334E0FB0;
  v164[3] = &unk_2789DAC48;
  v86 = v86;
  v165 = v86;
  v166 = completionCopy;
  objc_msgSend_addStoreItemWithAdamID_toPlaylistWithPersistentID_completionHandler_(v157, v163, v77, v162, v164);

  v147 = v165;
LABEL_27:

LABEL_29:
}

- (void)_addItemsToCloudLibrary:(id)library
{
  libraryCopy = library;
  v8 = objc_msgSend_mediaItems(self, v4, v5, v6, v7);
  v13 = objc_msgSend_count(v8, v9, v10, v11, v12);

  v18 = objc_msgSend_mediaItems(self, v14, v15, v16, v17);
  v22 = objc_msgSend_objectAtIndex_(v18, v19, 0, v20, v21);
  v27 = objc_msgSend_items(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_count(v27, v28, v29, v30, v31);

  v37 = objc_msgSend_insertLocation(self, v33, v34, v35, v36);
  isEqualToString = objc_msgSend_isEqualToString_(v37, v38, *MEMORY[0x277D48570], v39, v40);

  v46 = objc_msgSend_playlist(self, v42, v43, v44, v45);
  v48 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v46, v47, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);

  v51 = v48;
  if (v13 == 1 && v32 == 1 && isEqualToString)
  {
    objc_msgSend__appendItemToCloudPlaylist_completion_(self, v49, v51, libraryCopy, v50);
  }

  else if (isEqualToString)
  {
    objc_msgSend__appendItemsToCloudPlaylist_completion_(self, v49, v51, libraryCopy, v50);
  }

  else
  {
    objc_msgSend__prependItemsToCloudPlaylist_completion_(self, v49, v51, libraryCopy, v50);
  }
}

- (void)_addItemsToLocalLibrary:(id)library
{
  v204 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  v8 = objc_msgSend_playlist(self, v4, v5, v6, v7);
  v10 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v8, v9, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = objc_msgSend_mediaItems(self, v13, v14, v15, v16);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v192, v203, 16);
  if (v18)
  {
    v23 = v18;
    v24 = *v193;
    v176 = *MEMORY[0x277CD5888];
    v175 = *MEMORY[0x277CD58A0];
    v170 = *v193;
    v171 = v11;
    do
    {
      v25 = 0;
      v172 = v23;
      do
      {
        if (*v193 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v192 + 1) + 8 * v25);
        v27 = objc_msgSend_identifier(v26, v19, v20, v21, v22);
        v28 = sub_23350261C(v27);

        if (v28 == 3)
        {
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v33 = objc_msgSend_items(v26, v29, v30, v31, v32);
          v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v188, v202, 16);
          if (v179)
          {
            v174 = v25;
            v177 = *v189;
            v178 = v33;
            do
            {
              for (i = 0; i != v179; ++i)
              {
                if (*v189 != v177)
                {
                  objc_enumerationMutation(v33);
                }

                v40 = objc_msgSend_identifier(*(*(&v188 + 1) + 8 * i), v35, v36, v37, v38);
                v45 = objc_msgSend_lastPathComponent(v40, v41, v42, v43, v44);
                v50 = objc_msgSend_longLongValue(v45, v46, v47, v48, v49);

                if (!objc_msgSend_length(self->_requestAceHash, v51, v52, v53, v54))
                {
                  v59 = objc_msgSend_aceId(self, v55, v56, v57, v58);
                  v60 = sub_233505670(@"Add Media Items To Playlist", v59);
                  requestAceHash = self->_requestAceHash;
                  self->_requestAceHash = v60;
                }

                v62 = _MPLogCategoryAssistant();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v63 = self->_requestAceHash;
                  *buf = 138543618;
                  v199 = v63;
                  v200 = 2048;
                  v201 = v50;
                  _os_log_impl(&dword_2334D9000, v62, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: add adam ID: %lld", buf, 0x16u);
                }

                selfCopy = self;

                v68 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v65, v50, v66, v67);
                v69 = MEMORY[0x277CD5DC0];
                v72 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v70, v68, v176, v71);
                v197[0] = v72;
                v75 = objc_msgSend_predicateWithValue_forProperty_(MEMORY[0x277CD5E30], v73, v68, v175, v74);
                v197[1] = v75;
                v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v76, v197, 2, v77);
                v82 = objc_msgSend_predicateMatchingPredicates_(v69, v79, v78, v80, v81);

                v87 = objc_msgSend_songsQuery(MEMORY[0x277CD5E38], v83, v84, v85, v86);
                objc_msgSend_addFilterPredicate_(v87, v88, v82, v89, v90);
                objc_msgSend_setEntityLimit_(v87, v91, 1, v92, v93);
                v186 = 0u;
                v187 = 0u;
                v184 = 0u;
                v185 = 0u;
                v98 = objc_msgSend_items(v87, v94, v95, v96, v97);
                v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v184, v196, 16);
                if (v100)
                {
                  v104 = v100;
                  v105 = *v185;
                  do
                  {
                    for (j = 0; j != v104; ++j)
                    {
                      if (*v185 != v105)
                      {
                        objc_enumerationMutation(v98);
                      }

                      objc_msgSend_addObject_(v12, v101, *(*(&v184 + 1) + 8 * j), v102, v103);
                    }

                    v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v101, &v184, v196, 16);
                  }

                  while (v104);
                }

                v33 = v178;
                self = selfCopy;
              }

              v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v35, &v188, v202, 16);
            }

            while (v179);
            v24 = v170;
            v11 = v171;
            v23 = v172;
            v25 = v174;
          }
        }

        else
        {
          v33 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v26, v29, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);
          v111 = objc_msgSend_items(v33, v107, v108, v109, v110);
          objc_msgSend_addObjectsFromArray_(v12, v112, v111, v113, v114);
        }

        ++v25;
      }

      while (v25 != v23);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v192, v203, 16);
    }

    while (v23);
  }

  if (!objc_msgSend_length(self->_requestAceHash, v115, v116, v117, v118))
  {
    v123 = objc_msgSend_aceId(self, v119, v120, v121, v122);
    v124 = sub_233505670(@"Add Media Items To Playlist", v123);
    v125 = self->_requestAceHash;
    self->_requestAceHash = v124;
  }

  v126 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    v131 = self->_requestAceHash;
    v132 = objc_msgSend_count(v12, v127, v128, v129, v130);
    *buf = 138543618;
    v199 = v131;
    v200 = 2048;
    v201 = v132;
    _os_log_impl(&dword_2334D9000, v126, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (local) <%{public}@>: items to add: %lu", buf, 0x16u);
  }

  v137 = objc_msgSend_insertLocation(self, v133, v134, v135, v136);
  isEqualToString = objc_msgSend_isEqualToString_(v137, v138, *MEMORY[0x277D48568], v139, v140);

  if (isEqualToString)
  {
    v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_addObjectsFromArray_(v146, v147, v12, v148, v149);
    v154 = objc_msgSend_items(v11, v150, v151, v152, v153);
    objc_msgSend_addObjectsFromArray_(v146, v155, v154, v156, v157);

    v182[0] = MEMORY[0x277D85DD0];
    v182[1] = 3221225472;
    v182[2] = sub_2334E1888;
    v182[3] = &unk_2789DB918;
    v182[4] = self;
    v158 = libraryCopy;
    v183 = libraryCopy;
    objc_msgSend_replaceItems_completion_(v11, v159, v146, v182, v160);
  }

  else
  {
    v161 = objc_msgSend_insertLocation(self, v142, v143, v144, v145);
    v165 = objc_msgSend_isEqualToString_(v161, v162, *MEMORY[0x277D48570], v163, v164);

    if (v165)
    {
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = sub_2334E1A28;
      v180[3] = &unk_2789DB918;
      v180[4] = self;
      v158 = libraryCopy;
      v181 = libraryCopy;
      objc_msgSend_appendItems_completion_(v11, v167, v12, v180, v168);
    }

    else
    {
      v158 = libraryCopy;
      objc_msgSend__notifyAssistantWithString_requestHash_completion_(MPAssistantAddMediaItemsToPlaylist, v166, @"Uexpected insertion order requested.", self->_requestAceHash, libraryCopy);
    }
  }
}

- (void)_appendToPlaylistWithCompletion:(id)completion
{
  v82 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_msgSend_playlist(self, v5, v6, v7, v8);
  v11 = objc_msgSend_MPMediaItemCollectionRepresentationWithUserIdentity_plugin_hash_(v9, v10, self->_userIdentity, @"Add Media Items To Playlist", self->_requestAceHash);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Collection object was not a playlist. Unable to add tracks to something that is not a playlist.", v13, v14);
    if (!objc_msgSend_length(self->_requestAceHash, v42, v43, v44, v45))
    {
      v50 = objc_msgSend_aceId(self, v46, v47, v48, v49);
      v51 = sub_233505670(@"Add Media Items To Playlist", v50);
      requestAceHash = self->_requestAceHash;
      self->_requestAceHash = v51;
    }

    v53 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = self->_requestAceHash;
      v78 = 138543618;
      v79 = v54;
      v80 = 2114;
      v81 = v15;
      _os_log_impl(&dword_2334D9000, v53, OS_LOG_TYPE_ERROR, "Add Media Items To Playlist (append) <%{public}@>: failed: %{public}@", &v78, 0x16u);
    }

    v55 = objc_alloc(MEMORY[0x277D47208]);
    v59 = objc_msgSend_initWithReason_(v55, v56, v15, v57, v58);
    goto LABEL_15;
  }

  v15 = objc_msgSend_valueForProperty_(v11, v12, *MEMORY[0x277CD5928], v13, v14);
  if (!objc_msgSend_BOOLValue(v15, v16, v17, v18, v19))
  {
    v64 = objc_alloc(MEMORY[0x277D47208]);
    v59 = objc_msgSend_initWithErrorCode_(v64, v65, *MEMORY[0x277D485F0], v66, v67);
LABEL_15:
    v68 = v59;
    v69 = objc_msgSend_dictionary(v59, v60, v61, v62, v63);
    completionCopy[2](completionCopy, v69);

    goto LABEL_16;
  }

  isSagaAuthenticated = objc_msgSend__isSagaAuthenticated(self, v20, v21, v22, v23);
  v29 = objc_msgSend_length(self->_requestAceHash, v25, v26, v27, v28);
  if (isSagaAuthenticated)
  {
    if (!v29)
    {
      v34 = objc_msgSend_aceId(self, v30, v31, v32, v33);
      v35 = sub_233505670(@"Add Media Items To Playlist", v34);
      v36 = self->_requestAceHash;
      self->_requestAceHash = v35;
    }

    v37 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = self->_requestAceHash;
      v78 = 138543362;
      v79 = v38;
      _os_log_impl(&dword_2334D9000, v37, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (append) <%{public}@>: iCML available", &v78, 0xCu);
    }

    objc_msgSend__addItemsToCloudLibrary_(self, v39, completionCopy, v40, v41);
  }

  else
  {
    if (!v29)
    {
      v70 = objc_msgSend_aceId(self, v30, v31, v32, v33);
      v71 = sub_233505670(@"Add Media Items To Playlist", v70);
      v72 = self->_requestAceHash;
      self->_requestAceHash = v71;
    }

    v73 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = self->_requestAceHash;
      v78 = 138543362;
      v79 = v74;
      _os_log_impl(&dword_2334D9000, v73, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (append) <%{public}@>: local library", &v78, 0xCu);
    }

    objc_msgSend__addItemsToLocalLibrary_(self, v75, completionCopy, v76, v77);
  }

LABEL_16:
}

- (void)performWithCompletion:(id)completion
{
  v60 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!objc_msgSend_length(self->_requestAceHash, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_aceId(self, v9, v10, v11, v12);
    v14 = sub_233505670(@"Add Media Items To Playlist", v13);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v14;
  }

  v16 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_requestAceHash;
    v22 = objc_msgSend_insertLocation(self, v17, v18, v19, v20);
    v27 = objc_msgSend_mediaItems(self, v23, v24, v25, v26);
    v32 = objc_msgSend_playlist(self, v28, v29, v30, v31);
    v37 = objc_msgSend_dictionary(v32, v33, v34, v35, v36);
    *buf = 138544130;
    v53 = v21;
    v54 = 2114;
    v55 = v22;
    v56 = 2114;
    v57 = v27;
    v58 = 2114;
    v59 = v37;
    _os_log_impl(&dword_2334D9000, v16, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (invoke) <%{public}@>: insert location %{public}@, media item %{public}@, playlist %{public}@", buf, 0x2Au);
  }

  v38 = self->_requestAceHash;
  v43 = objc_msgSend_influencedUserSharedUserId(self, v39, v40, v41, v42);
  v48 = objc_msgSend_influencedUserSharedUserId(self, v44, v45, v46, v47);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2334E2150;
  v50[3] = &unk_2789DB648;
  v50[4] = self;
  v51 = completionCopy;
  v49 = completionCopy;
  sub_233506A24(@"Add Media Items To Playlist", v38, v43, v48, v50);
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_length(self->_requestAceHash, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_aceId(self, v6, v7, v8, v9);
    v11 = sub_233505670(@"Add Media Items To Playlist", v10);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v11;
  }

  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_requestAceHash;
    *buf = 138543362;
    v17 = v14;
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "Add Media Items To Playlist (dealloc) <%{public}@>: dealloced", buf, 0xCu);
  }

  v15.receiver = self;
  v15.super_class = MPAssistantAddMediaItemsToPlaylist;
  [(MPAssistantAddMediaItemsToPlaylist *)&v15 dealloc];
}

+ (void)_notifyAssistantWithError:(id)error requestHash:(id)hash completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  if (error)
  {
    v8 = MEMORY[0x277CCACA8];
    completionCopy = completion;
    v13 = objc_msgSend_stringWithFormat_(v8, v10, @"%@", v11, v12, error);
    v14 = objc_alloc(MEMORY[0x277D47208]);
    v18 = objc_msgSend_initWithReason_(v14, v15, v13, v16, v17);
    v19 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_msgSend_dictionary(v18, v20, v21, v22, v23);
      *buf = 138543874;
      v37 = @"Add Media Items To Playlist";
      v38 = 2114;
      v39 = hashCopy;
      v40 = 2114;
      v41 = v24;
      _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_ERROR, "%{public}@ (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v25 = MEMORY[0x277D47218];
  completionCopy2 = completion;
  v18 = objc_alloc_init(v25);
  v13 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_dictionary(v18, v27, v28, v29, v30);
    *buf = 138543874;
    v37 = @"Add Media Items To Playlist";
    v38 = 2114;
    v39 = hashCopy;
    v40 = 2114;
    v41 = v19;
    _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ (completion) <%{public}@>: notifying assistant %{public}@", buf, 0x20u);
LABEL_6:
  }

  v35 = objc_msgSend_dictionary(v18, v31, v32, v33, v34);
  (*(completion + 2))(completion, v35);
}

+ (void)_notifyAssistantWithString:(id)string requestHash:(id)hash completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  hashCopy = hash;
  if (stringCopy)
  {
    v9 = MEMORY[0x277D47208];
    completionCopy = completion;
    v11 = [v9 alloc];
    v15 = objc_msgSend_initWithReason_(v11, v12, stringCopy, v13, v14);
    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_msgSend_dictionary(v15, v17, v18, v19, v20);
      v35 = 138543874;
      v36 = @"Add Media Items To Playlist";
      v37 = 2114;
      v38 = hashCopy;
      v39 = 2114;
      v40 = v21;
      v22 = v16;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_2334D9000, v22, v23, "%{public}@ (completion) <%{public}@>: notifying assistant %{public}@", &v35, 0x20u);
    }
  }

  else
  {
    v24 = MEMORY[0x277D47218];
    completionCopy2 = completion;
    v15 = objc_alloc_init(v24);
    v16 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_msgSend_dictionary(v15, v26, v27, v28, v29);
      v35 = 138543874;
      v36 = @"Add Media Items To Playlist";
      v37 = 2114;
      v38 = hashCopy;
      v39 = 2114;
      v40 = v21;
      v22 = v16;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  v34 = objc_msgSend_dictionary(v15, v30, v31, v32, v33);
  (*(completion + 2))(completion, v34);
}

@end
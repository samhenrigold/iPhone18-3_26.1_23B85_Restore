@interface IMDCoreSpotlightMediaLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightMediaLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v10 = objc_msgSend_appleSummary(metadataCopy, v7, v8, v9);
  objc_msgSend_setContentDescription_(attributesCopy, v11, v10, v12);

  v16 = objc_msgSend_siteName(metadataCopy, v13, v14, v15);
  objc_msgSend_setUrlDescription_(attributesCopy, v17, v16, v18);

  v22 = objc_msgSend_specialization(metadataCopy, v19, v20, v21);

  if (objc_opt_respondsToSelector())
  {
    v26 = objc_msgSend_name(v22, v23, v24, v25);
    v30 = objc_msgSend_length(v26, v27, v28, v29);

    if (v30)
    {
      v37 = objc_msgSend_prefix(self, v31, v32, v33);
      if (v37)
      {
        v38 = MEMORY[0x1E696AEC0];
        v39 = objc_msgSend_prefix(self, v34, v35, v36);
        v43 = objc_msgSend_name(v22, v40, v41, v42);
        v46 = objc_msgSend_stringWithFormat_(v38, v44, @"%@ : %@", v45, v39, v43);
        objc_msgSend_setLinkName_(attributesCopy, v47, v46, v48);
      }

      else
      {
        v39 = objc_msgSend_name(v22, v34, v35, v36);
        objc_msgSend_setLinkName_(attributesCopy, v49, v39, v50);
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v54 = objc_msgSend_artist(v22, v51, v52, v53);
    v58 = objc_msgSend_length(v54, v55, v56, v57);

    if (v58)
    {
      v62 = MEMORY[0x1E696AEC0];
      v63 = objc_msgSend_artist(v22, v59, v60, v61);
      v66 = objc_msgSend_stringWithFormat_(v62, v64, @"%@ : %@", v65, @"artist", v63);
      objc_msgSend_setArtist_(attributesCopy, v67, v66, v68);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v72 = objc_msgSend_album(v22, v69, v70, v71);
    v76 = objc_msgSend_length(v72, v73, v74, v75);

    if (v76)
    {
      v80 = MEMORY[0x1E696AEC0];
      v81 = objc_msgSend_album(v22, v77, v78, v79);
      v84 = objc_msgSend_stringWithFormat_(v80, v82, @"%@ : %@", v83, @"album", v81);
      objc_msgSend_setAlbum_(attributesCopy, v85, v84, v86);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v90 = objc_msgSend_genre(v22, v87, v88, v89);
    v94 = objc_msgSend_length(v90, v91, v92, v93);

    if (v94)
    {
      v98 = MEMORY[0x1E696AEC0];
      v99 = objc_msgSend_genre(v22, v95, v96, v97);
      v102 = objc_msgSend_stringWithFormat_(v98, v100, @"%@ : %@", v101, @"genre", v99);
      objc_msgSend_setGenre_(attributesCopy, v103, v102, v104);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v108 = objc_msgSend_curator(v22, v105, v106, v107);
    v112 = objc_msgSend_length(v108, v109, v110, v111);

    if (v112)
    {
      v116 = MEMORY[0x1E696AEC0];
      v117 = objc_msgSend_curator(v22, v113, v114, v115);
      v120 = objc_msgSend_stringWithFormat_(v116, v118, @"%@ : %@", v119, @"curator", v117);
      objc_msgSend_setCurator_(attributesCopy, v121, v120, v122);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v126 = objc_msgSend_episodeName(v22, v123, v124, v125);
    v130 = objc_msgSend_length(v126, v127, v128, v129);

    if (v130)
    {
      v134 = MEMORY[0x1E696AEC0];
      v135 = objc_msgSend_episodeName(v22, v131, v132, v133);
      v138 = objc_msgSend_stringWithFormat_(v134, v136, @"%@ : %@", v137, @"episode", v135);
      objc_msgSend_setEpisode_(attributesCopy, v139, v138, v140);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v144 = objc_msgSend_podcastName(v22, v141, v142, v143);
    v148 = objc_msgSend_length(v144, v145, v146, v147);

    if (v148)
    {
      v149 = MEMORY[0x1E696AEC0];
      v150 = objc_msgSend_podcastName(v22, v141, v142, v143);
      v153 = objc_msgSend_stringWithFormat_(v149, v151, @"%@ : %@", v152, @"podcast", v150);
      objc_msgSend_setPodcastName_(attributesCopy, v154, v153, v155);
    }
  }

  v156 = objc_msgSend_linkName(attributesCopy, v141, v142, v143);
  v160 = objc_msgSend_length(v156, v157, v158, v159);

  if (!v160 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v164 = objc_msgSend_episodeName(v22, v161, v162, v163);
    v168 = objc_msgSend_length(v164, v165, v166, v167);

    if (v168)
    {
      v172 = MEMORY[0x1E696AEC0];
      v173 = objc_msgSend_episodeName(v22, v169, v170, v171);
      v176 = objc_msgSend_stringWithFormat_(v172, v174, @"%@ : %@", v175, @"episode", v173);
      objc_msgSend_setLinkName_(attributesCopy, v177, v176, v178);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v182 = objc_msgSend_releaseDate(v22, v179, v180, v181);
    objc_msgSend_setRecordingDate_(attributesCopy, v183, v182, v184);
  }
}

@end
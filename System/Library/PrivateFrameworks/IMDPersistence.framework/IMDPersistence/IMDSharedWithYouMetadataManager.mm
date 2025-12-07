@interface IMDSharedWithYouMetadataManager
+ (Class)LPSharedObjectMetadataClass;
+ (Class)LPSpecializationMetadataClass;
+ (id)Sha256ForData:(id)data withSalt:(id)salt;
+ (id)collaborationMetadataKey;
+ (id)dataDetectedLink;
- (BOOL)_isAttachmentType:(id)type;
- (BOOL)_isLNKTypeMessage:(id)message;
- (BOOL)_shouldDonateToSharedWithYou:(id)you lpLinkMetadata:(id)metadata;
- (BOOL)chatDictionary:(id)dictionary matchesFaceTimeConversation:(id)conversation;
- (id)_ckBundleIDsKey;
- (id)_collaborationIdentifierKey;
- (id)_highlightedContentServerDateKey;
- (id)_lpLinkMetadataForItem:(id)item attachmentPaths:(id)paths originalURL:(id)l;
- (id)_lpTitleCustomKey;
- (id)_pluginPayloadAttachmentPathsForItem:(id)item;
- (id)_syndicationContentTypeKey;
- (id)_uniqueIdentifierForResourceURL:(id)l;
- (id)_updateAttributesWithCollaborationMetadata:(id)metadata forMessageWithGUID:(id)d withURL:(id)l lpLinkMetadata:(id)linkMetadata messageDate:(id)date;
- (id)highlightDictionaryFromAttributes:(id)attributes withItem:(id)item chat:(id)chat;
- (id)titleFromLPLinkMetadata:(id)metadata;
- (id)updateAttributesWithSharedWithYouMetadata:(id)metadata withItem:(id)item chat:(id)chat;
- (void)updateConversationManagerWithItem:(id)item chat:(id)chat attributes:(id)attributes;
@end

@implementation IMDSharedWithYouMetadataManager

+ (Class)LPSharedObjectMetadataClass
{
  if (qword_1EBA54020 != -1)
  {
    sub_1B7CF8710();
  }

  v3 = qword_1EBA54018;

  return v3;
}

+ (Class)LPSpecializationMetadataClass
{
  if (qword_1EBA54030 != -1)
  {
    sub_1B7CF8724();
  }

  v3 = qword_1EBA54028;

  return v3;
}

+ (id)Sha256ForData:(id)data withSalt:(id)salt
{
  v32 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  memset(&v29, 0, sizeof(v29));
  dataCopy = data;
  CC_SHA256_Init(&v29);
  v7 = dataCopy;
  v11 = objc_msgSend_bytes(v7, v8, v9, v10, *v29.count, *&v29.hash[2], *&v29.hash[6], *&v29.wbuf[2], *&v29.wbuf[6], *&v29.wbuf[10], *&v29.wbuf[14]);
  v15 = objc_msgSend_length(dataCopy, v12, v13, v14);

  CC_SHA256_Update(&v29, v11, v15);
  if (saltCopy)
  {
    v16 = saltCopy;
    v20 = objc_msgSend_bytes(v16, v17, v18, v19);
    v24 = objc_msgSend_length(saltCopy, v21, v22, v23);
    CC_SHA256_Update(&v29, v20, v24);
  }

  *md = 0u;
  v31 = 0u;
  CC_SHA256_Final(md, &v29);
  v25 = objc_alloc(MEMORY[0x1E695DEF0]);
  v27 = objc_msgSend_initWithBytes_length_(v25, v26, md, 32);

  return v27;
}

- (id)updateAttributesWithSharedWithYouMetadata:(id)metadata withItem:(id)item chat:(id)chat
{
  v222 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  itemCopy = item;
  chatCopy = chat;
  v200 = metadataCopy;
  if (metadataCopy)
  {
    v9 = metadataCopy;
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8738();
    }
  }

  v193 = chatCopy;
  v13 = objc_msgSend_objectForKey_(chatCopy, v10, @"lalh", v11);
  v196 = objc_msgSend__stripFZIDPrefix(v13, v14, v15, v16);

  v19 = objc_msgSend_objectForKey_(itemCopy, v17, @"flags", v18);
  v23 = objc_msgSend_unsignedLongLongValue(v19, v20, v21, v22);

  v190 = (v23 >> 2) & 1;
  if (v190)
  {
    v26 = v196;
  }

  else
  {
    v27 = objc_msgSend_objectForKey_(itemCopy, v24, @"handle", v25);
    v31 = objc_msgSend__stripFZIDPrefix(v27, v28, v29, v30);

    v26 = v31;
  }

  v194 = v26;
  v32 = MEMORY[0x1B8CAF990]();
  v195 = objc_msgSend_objectForKey_(itemCopy, v33, @"guid", v34);
  if (v32)
  {
    v38 = v200;
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v211 = v195;
        v212 = 2112;
        v213 = v194;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata Message: %@ shared by business chat with ID: %@", buf, 0x16u);
      }

      v38 = v200;
    }

    goto LABEL_126;
  }

  v198 = objc_msgSend_URL(v200, v35, v36, v37);
  if (v198)
  {
    v42 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v40, 0, v41);
    v43 = objc_opt_class();
    v47 = objc_msgSend_dataDetectedLink(v43, v44, v45, v46);
    objc_msgSend_setValue_forCustomKey_(v200, v48, v42, v47);
  }

  else
  {
    v42 = objc_msgSend_objectForKey_(itemCopy, v40, @"attributedBody", v41);
    v198 = IMDCoreSpotlightURLFromAttributedMessageBody(v42);
    if (!v198)
    {
      goto LABEL_17;
    }

    v63 = objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v60, v61, v62);
    isDataDetectedLinkAllowedForSWY = objc_msgSend_isDataDetectedLinkAllowedForSWY_(v63, v64, v198, v65);

    if (!isDataDetectedLinkAllowedForSWY)
    {
      goto LABEL_17;
    }

    objc_msgSend_setURL_(v200, v67, v198, v68);
    v47 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v69, 1, v70);
    v71 = objc_opt_class();
    v75 = objc_msgSend_dataDetectedLink(v71, v72, v73, v74);
    objc_msgSend_setValue_forCustomKey_(v200, v76, v47, v75);
  }

LABEL_17:
  if (objc_msgSend__isLNKTypeMessage_(self, v49, v200, v50))
  {
    v191 = objc_msgSend__pluginPayloadAttachmentPathsForItem_(self, v51, itemCopy, v52);
    v54 = objc_msgSend__lpLinkMetadataForItem_attachmentPaths_originalURL_(self, v53, itemCopy, v191, v198);
  }

  else
  {
    v54 = 0;
    v191 = 0;
  }

  v189 = v54;
  shouldDonateToSharedWithYou_lpLinkMetadata = objc_msgSend__shouldDonateToSharedWithYou_lpLinkMetadata_(self, v51, v198, v54);
  if (v198)
  {
    if (!shouldDonateToSharedWithYou_lpLinkMetadata)
    {
      goto LABEL_22;
    }

LABEL_30:
    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v211 = v195;
        _os_log_impl(&dword_1B7AD5000, v84, OS_LOG_TYPE_INFO, "Appending highlight metadata Message: %@", buf, 0xCu);
      }
    }

    v85 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v82, @"hasAttachments", v83);
    v89 = objc_msgSend_BOOLValue(v85, v86, v87, v88);

    if (v89)
    {
      objc_msgSend_objectForKeyedSubscript_(itemCopy, v90, @"attachments", v91);
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v92 = v207 = 0u;
      v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v206, v221, 16);
      if (v96)
      {
        v97 = *v207;
        v98 = 1;
        while (2)
        {
          for (i = 0; i != v96; ++i)
          {
            if (*v207 != v97)
            {
              objc_enumerationMutation(v92);
            }

            v100 = objc_msgSend_objectForKeyedSubscript_(*(*(&v206 + 1) + 8 * i), v94, @"isCommSafetySensitive", v95);
            v104 = objc_msgSend_BOOLValue(v100, v101, v102, v103);

            if (v104)
            {
              if (IMOSLoggingEnabled())
              {
                v105 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v211 = v195;
                  _os_log_impl(&dword_1B7AD5000, v105, OS_LOG_TYPE_INFO, "Setting highlight metadata for Message: %@ to be hidden because flagged as CommSafety sensitive.", buf, 0xCu);
                }
              }

              v98 = 4;
              goto LABEL_51;
            }
          }

          v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v206, v221, 16);
          if (v96)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v98 = 1;
      }

LABEL_51:
    }

    else
    {
      v98 = 1;
    }

    v188 = objc_msgSend_objectForKey_(itemCopy, v90, @"syndicationRanges", v91);
    v199 = objc_msgSend_objectForKey_(itemCopy, v106, @"time", v107);
    if (v188)
    {
      v110 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v108, v188, v109);
      v187 = v110;
      v111 = v110;
      if (v110)
      {
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        obj = v110;
        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v112, &v202, v220, 16);
        if (v116)
        {
          v117 = *v203;
          while (2)
          {
            for (j = 0; j != v116; ++j)
            {
              if (*v203 != v117)
              {
                objc_enumerationMutation(obj);
              }

              v119 = *(*(&v202 + 1) + 8 * j);
              if (objc_msgSend_syndicationStatus(v119, v113, v114, v115) == 2)
              {
                if (IMOSLoggingEnabled())
                {
                  v144 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v211 = v195;
                    _os_log_impl(&dword_1B7AD5000, v144, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata for Message: %@ since its been marked as Do not donate", buf, 0xCu);
                  }
                }

                v145 = v200;

                goto LABEL_127;
              }

              v123 = objc_msgSend_syndicationType(v119, v120, v121, v122);
              v127 = objc_msgSend_syndicationType(v119, v124, v125, v126);
              v134 = objc_msgSend_syndicationType(v119, v128, v129, v130);
              v135 = (v123 >> 2) & 1;
              v136 = 4;
              if ((v123 & 4) == 0)
              {
                v136 = v98;
              }

              v137 = 8;
              if (((v123 & 4) != 0 || (v134 & 8) == 0) | v127 & 1)
              {
                v137 = v136;
              }

              if ((v123 & 4) != 0 || (v127 & 1) == 0)
              {
                v98 = v137;
              }

              else
              {
                v98 = 2;
              }

              v138 = objc_msgSend_syndicationStartDate(v119, v131, v132, v133);

              if (v138)
              {
                v139 = objc_msgSend_syndicationStartDate(v119, v113, v114, v115);
                v140 = v139;
                if (v199)
                {
                  v141 = objc_msgSend_compare_(v199, v113, v139, v115) == -1;

                  if (v141)
                  {
                    v142 = objc_msgSend_syndicationStartDate(v119, v113, v114, v115);

                    v199 = v142;
                  }
                }

                else
                {
                  v199 = v139;
                }
              }
            }

            v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v113, &v202, v220, 16);
            if (v116)
            {
              continue;
            }

            break;
          }

          v143 = v127 | (v134 >> 3) & 1;
        }

        else
        {
          v143 = 0;
          LOBYTE(v135) = 0;
        }

        v111 = v187;
      }

      else
      {
        v143 = 0;
        LOBYTE(v135) = 0;
      }
    }

    else
    {
      v143 = 0;
      LOBYTE(v135) = 0;
    }

    v146 = _IMDCoreSpotlightCNContactForAddress(v194);
    isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v147, v146, v148);
    if ((isCNContactAKnownContact | v135))
    {
      v143 = isCNContactAKnownContact ^ 1;
    }

    v150 = IMOSLoggingEnabled();
    if ((isCNContactAKnownContact | v190 | v143))
    {
      if (v150)
      {
        v153 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v211 = v195;
          _os_log_impl(&dword_1B7AD5000, v153, OS_LOG_TYPE_INFO, "Appending highlight metadata for Message: %@", buf, 0xCu);
        }
      }

      v154 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v151, v98, v152);
      objc_msgSend_setSyndicationStatus_(v200, v155, v154, v156);

      if (v199)
      {
        if (IMOSLoggingEnabled())
        {
          v160 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v211 = v195;
            _os_log_impl(&dword_1B7AD5000, v160, OS_LOG_TYPE_INFO, "Appending highlight server date for Message: %@", buf, 0xCu);
          }
        }

        v161 = objc_msgSend__highlightedContentServerDateKey(self, v157, v158, v159);
        objc_msgSend_setValue_forCustomKey_(v200, v162, v199, v161);
      }

      else
      {
        v161 = IMLogHandleForCategory();
        if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF876C();
        }
      }

      v166 = objc_msgSend_objectForKey_(itemCopy, v164, @"time", v165);
      v38 = objc_msgSend__updateAttributesWithCollaborationMetadata_forMessageWithGUID_withURL_lpLinkMetadata_messageDate_(self, v167, v200, v195, v198, v189, v166);

      if (v38)
      {
        objc_msgSend_updateConversationManagerWithItem_chat_attributes_(self, v168, itemCopy, v193, v38);
      }
    }

    else
    {
      v38 = v200;
      if (v150)
      {
        v163 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v211 = v194;
          v212 = 2112;
          v213 = v146;
          _os_log_impl(&dword_1B7AD5000, v163, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata for Message since sender %@ is not known. Contact: %@", buf, 0x16u);
        }

        v38 = v200;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v171 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
      {
        v172 = @"YES";
        if (v98)
        {
          v173 = @"YES";
        }

        else
        {
          v173 = @"NO";
        }

        *buf = 138413314;
        v211 = v195;
        if ((v98 & 2) != 0)
        {
          v174 = @"YES";
        }

        else
        {
          v174 = @"NO";
        }

        v212 = 2112;
        v213 = v173;
        if ((v98 & 4) != 0)
        {
          v175 = @"YES";
        }

        else
        {
          v175 = @"NO";
        }

        v214 = 2112;
        v215 = v174;
        if ((v98 & 8) == 0)
        {
          v172 = @"NO";
        }

        v216 = 2112;
        v217 = v175;
        v218 = 2112;
        v219 = v172;
        _os_log_impl(&dword_1B7AD5000, v171, OS_LOG_TYPE_INFO, "Highlight type for Message: %@. automatic %@ starred %@ hidden %@ userInteracted %@", buf, 0x34u);
      }
    }

    v176 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v169, 1, v170);
    objc_msgSend_setLocal_(v38, v177, v176, v178);

    v182 = objc_msgSend_isShared(v38, v179, v180, v181);
    v183 = v182 == 0;

    if (v183)
    {
      objc_msgSend_setShared_(v38, v184, MEMORY[0x1E695E110], v185);
    }

    goto LABEL_125;
  }

  v77 = objc_msgSend_attachmentNames(v200, v56, v57, v58);
  v81 = objc_msgSend_count(v77, v78, v79, v80) == 0;

  if (!v81)
  {
    goto LABEL_30;
  }

LABEL_22:
  v38 = v200;
  if (IMOSLoggingEnabled())
  {
    v59 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v211 = v195;
      _os_log_impl(&dword_1B7AD5000, v59, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata Message: %@ since LP recommended that we do not.", buf, 0xCu);
    }

    v38 = v200;
  }

LABEL_125:

LABEL_126:
  v145 = v38;
LABEL_127:

  return v145;
}

- (id)_updateAttributesWithCollaborationMetadata:(id)metadata forMessageWithGUID:(id)d withURL:(id)l lpLinkMetadata:(id)linkMetadata messageDate:(id)date
{
  v274 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  lCopy = l;
  linkMetadataCopy = linkMetadata;
  dateCopy = date;
  if (metadataCopy)
  {
    v15 = metadataCopy;
    if ((objc_msgSend__isLNKTypeMessage_(self, v16, v15, v17) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v269 = v15;
          _os_log_impl(&dword_1B7AD5000, v52, OS_LOG_TYPE_INFO, "Message was not detected as a link, skipping adding collaboration metadata. attributes: %@", buf, 0xCu);
        }
      }

      goto LABEL_91;
    }

    v263 = objc_alloc_init(MEMORY[0x1E69A82D8]);
    v21 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v18, v19, v20);

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v26, v27, v28);
        v30 = v29;
        v31 = @"YES";
        if (!v21)
        {
          v31 = @"NO";
        }

        *buf = 138412546;
        v269 = v31;
        v270 = 2112;
        v271 = v29;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "hasCollaborationMetadata: %@ CollaborationMetadata: %@", buf, 0x16u);
      }
    }

    if (v21)
    {
      v262 = objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v22, v23, v24);
      v35 = objc_msgSend_URL(v15, v32, v33, v34);
      v261 = objc_msgSend_urlMinusFragment_onlyCKURL_(v262, v36, v35, 1);

      objc_msgSend_setURL_(v15, v37, v261, v38);
      v42 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v39, v40, v41);
      v264 = objc_msgSend_collaborationIdentifier(v42, v43, v44, v45);

      v49 = objc_msgSend_length(v264, v46, v47, v48);
      if (v49)
      {
        v50 = 1;
      }

      else
      {
        v53 = IMLogHandleForCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF87A0();
        }

        v50 = 2;
      }

      if (IMOSLoggingEnabled())
      {
        v56 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *buf = 134218498;
          v269 = v50;
          v270 = 2112;
          v271 = dCopy;
          v272 = 2112;
          v273 = @"YES";
          _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_INFO, "Setting share status to %lu for MessageGUID: %@. hasCollaborationMetadata: %@", buf, 0x20u);
        }
      }

      v57 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v54, v50, v55);
      objc_msgSend_setShared_(v15, v58, v57, v59);

      v63 = objc_msgSend__syndicationContentTypeKey(self, v60, v61, v62);
      objc_msgSend_setValue_forCustomKey_(v15, v64, &unk_1F2FCA2F0, v63);

      if (v49)
      {
        objc_msgSend_setAttribute_forKey_(v15, v65, MEMORY[0x1E695E118], @"FPIsTopLevelSharedItem");
      }

      v67 = objc_msgSend_titleFromLPLinkMetadata_(self, v65, linkMetadataCopy, v66);
      if (objc_msgSend_length(v67, v68, v69, v70))
      {
        v74 = v67;
      }

      else
      {
        v75 = objc_msgSend_urlDescription(v15, v71, v72, v73);

        v74 = v75;
      }

      v76 = v74;
      if (objc_msgSend_length(v74, v71, v72, v73))
      {
        v80 = objc_msgSend_length(v76, v77, v78, v79, v76);
      }

      else
      {
        v84 = objc_msgSend__lpTitleCustomKey(self, v77, v78, v79);
        v87 = objc_msgSend_valueForCustomKey_(v15, v85, v84, v86);

        v80 = objc_msgSend_length(v87, v88, v89, v90, v87);
      }

      if (v80)
      {
        objc_msgSend_setFilename_(v15, v81, v260, v83);
      }

      else
      {
        v96 = objc_msgSend_filename(v15, v81, v82, v83);
        if (v96)
        {
          objc_msgSend_setFilename_(v15, v94, v96, v95);
        }
      }

      v97 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v91, v92, v93);
      v101 = objc_msgSend_contentType(v97, v98, v99, v100);
      v105 = objc_msgSend_identifier(v101, v102, v103, v104);

      if (!objc_msgSend_length(v105, v106, v107, v108))
      {
        v112 = objc_msgSend_specialization(linkMetadataCopy, v109, v110, v111);
        objc_msgSend_LPSharedObjectMetadataClass(IMDSharedWithYouMetadataManager, v113, v114, v115);
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v117 = objc_msgSend_specialization(linkMetadataCopy, v109, v110, v111);
          v121 = objc_msgSend_specialization(v117, v118, v119, v120);
          objc_msgSend_LPSpecializationMetadataClass(IMDSharedWithYouMetadataManager, v122, v123, v124);
          v125 = objc_opt_isKindOfClass();

          if (v125)
          {
            v129 = objc_msgSend_specialization(v117, v126, v127, v128);
            if (objc_opt_respondsToSelector())
            {
              v132 = objc_msgSend_performSelector_(v129, v130, sel_type, v131);

              v105 = v132;
            }
          }
        }
      }

      if (objc_msgSend_length(v105, v109, v110, v111))
      {
        v136 = v105;
      }

      else
      {
        v137 = objc_msgSend_UTITypeForURL_(v263, v133, lCopy, v135);

        v136 = v137;
      }

      v138 = v136;
      if (objc_msgSend_length(v136, v133, v134, v135))
      {
        objc_msgSend_setContentType_(v15, v139, v138, v141);
      }

      v142 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v139, v140, v141);
      v146 = objc_msgSend_creationDate(v142, v143, v144, v145);

      v150 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v147, v148, v149);
      isEqualToDate = objc_msgSend_isEqualToDate_(v146, v151, v150, v152);

      if (isEqualToDate)
      {
        v156 = IMLogHandleForCategory();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF87D4();
        }
      }

      else if (v146)
      {
        objc_msgSend_setContentCreationDate_(v15, v154, v146, v155);
      }

      if (IMOSLoggingEnabled())
      {
        v160 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v269 = v264;
          v270 = 2112;
          v271 = dCopy;
          _os_log_impl(&dword_1B7AD5000, v160, OS_LOG_TYPE_INFO, "Setting collaborationIdentifier to %@ for messageGUID: %@", buf, 0x16u);
        }
      }

      v161 = objc_msgSend__collaborationIdentifierKey(self, v157, v158, v159);
      objc_msgSend_setValue_forCustomKey_(v15, v162, v264, v161);

      objc_msgSend_setAttribute_forKey_(v15, v163, v264, @"FPCollaborationIdentifier");
      objc_msgSend_setAttribute_forKey_(v15, v164, @"NSFileProviderRootContainerItemIdentifier", @"FPParentFileItemID");
      v168 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v165, v166, v167);
      v172 = objc_msgSend_ckAppBundleIDs(v168, v169, v170, v171);

      if (!objc_msgSend_count(v172, v173, v174, v175))
      {
        v179 = IMLogHandleForCategory();
        if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF8808(dCopy, v179);
        }
      }

      v180 = objc_msgSend__ckBundleIDsKey(self, v176, v177, v178);
      objc_msgSend_setValue_forCustomKey_(v15, v181, v172, v180);

      v182 = MEMORY[0x1E696ACC8];
      v186 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v183, v184, v185);
      v267 = 0;
      v188 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v182, v187, v186, 1, &v267);
      v189 = v267;

      if (v188)
      {
        v190 = objc_opt_class();
        v194 = objc_msgSend_collaborationMetadataKey(v190, v191, v192, v193);
        objc_msgSend_setValue_forCustomKey_(v15, v195, v188, v194);
      }

      else
      {
        v194 = IMLogHandleForCategory();
        if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF8880(v189, v194);
        }
      }

      v198 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v196, 0, v197);
      objc_msgSend_setUserOwned_(v15, v199, v198, v200);

      v203 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v201, 0, v202);
      objc_msgSend_setTrashed_(v15, v204, v203, v205);

      objc_msgSend_setAttribute_forKey_(v15, v206, &unk_1F2FCA2F0, @"FPCapabilities");
      v210 = objc_msgSend_authors(v15, v207, v208, v209);
      if (objc_msgSend_count(v210, v211, v212, v213))
      {
        v217 = objc_msgSend_firstObject(v210, v214, v215, v216);
        v221 = objc_msgSend_displayName(v217, v218, v219, v220);
        objc_msgSend_setOwnerName_(v15, v222, v221, v223);

        if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v224, v225, v226) || !IMOSLoggingEnabled())
        {
          goto LABEL_80;
        }

        v230 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
        {
          v234 = objc_msgSend_ownerName(v15, v231, v232, v233);
          *buf = 138412290;
          v269 = v234;
          _os_log_impl(&dword_1B7AD5000, v230, OS_LOG_TYPE_INFO, "Owner name set to %@", buf, 0xCu);
        }
      }

      else
      {
        if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v214, v215, v216) || !IMOSLoggingEnabled())
        {
          goto LABEL_80;
        }

        v230 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v230, OS_LOG_TYPE_INFO))
        {
          v238 = objc_msgSend_identifier(v15, v235, v236, v237);
          *buf = 138412290;
          v269 = v238;
          _os_log_impl(&dword_1B7AD5000, v230, OS_LOG_TYPE_INFO, "No authors found to derive the Owner name from for message guid:%@", buf, 0xCu);
        }
      }

LABEL_80:
      v239 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v227, v228, v229);
      v242 = objc_msgSend_isEqualToDate_(dateCopy, v240, v239, v241);

      if (v242)
      {
        v245 = IMLogHandleForCategory();
        if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF8904();
        }
      }

      else if (dateCopy)
      {
        objc_msgSend_setContentCreationDate_(v15, v243, dateCopy, v244);
        objc_msgSend_setLastUsedDate_(v15, v246, dateCopy, v247);
        if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v248, v249, v250))
        {
          if (IMOSLoggingEnabled())
          {
            v251 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
            {
              v255 = objc_msgSend_contentCreationDate(v15, v252, v253, v254);
              *buf = 138412290;
              v269 = v255;
              _os_log_impl(&dword_1B7AD5000, v251, OS_LOG_TYPE_INFO, "Setting the creation & last used date to %@", buf, 0xCu);
            }
          }
        }
      }

LABEL_91:
      v256 = v15;
      goto LABEL_92;
    }

    if (IMOSLoggingEnabled())
    {
      v258 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v258, OS_LOG_TYPE_INFO, "Skipping adding additional collaboration related meta-data since the message is non-collaborative", buf, 2u);
      }
    }

    v259 = v15;
  }

  else
  {
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8738();
    }
  }

LABEL_92:

  return metadataCopy;
}

- (BOOL)chatDictionary:(id)dictionary matchesFaceTimeConversation:(id)conversation
{
  v81 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  conversationCopy = conversation;
  if (objc_msgSend_state(conversationCopy, v7, v8, v9) == 3)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, @"groupID", v11);
    v16 = objc_msgSend_groupUUID(conversationCopy, v13, v14, v15);
    v20 = objc_msgSend_UUIDString(v16, v17, v18, v19);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v21, v20, v22);

    if (isEqualToString)
    {
      isEqualToSet = 1;
    }

    else
    {
      v28 = objc_msgSend_set(MEMORY[0x1E695DFA8], v24, v25, v26);
      v32 = objc_msgSend_set(MEMORY[0x1E695DFA8], v29, v30, v31);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v70 = dictionaryCopy;
      v35 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"participants", v34);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v75, v80, 16);
      if (v37)
      {
        v40 = v37;
        v41 = *v76;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v76 != v41)
            {
              objc_enumerationMutation(v35);
            }

            v43 = objc_msgSend_normalizedHandleWithDestinationID_(MEMORY[0x1E69D8C00], v38, *(*(&v75 + 1) + 8 * i), v39);
            objc_msgSend_addObject_(v28, v44, v43, v45);
          }

          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v75, v80, 16);
        }

        while (v40);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v49 = objc_msgSend_remoteMembers(conversationCopy, v46, v47, v48);
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v71, v79, 16);
      if (v51)
      {
        v55 = v51;
        v56 = *v72;
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v72 != v56)
            {
              objc_enumerationMutation(v49);
            }

            v58 = *(*(&v71 + 1) + 8 * j);
            v59 = objc_msgSend_handle(v58, v52, v53, v54);
            v63 = objc_msgSend_type(v59, v60, v61, v62);

            if (v63 != 1)
            {
              v64 = objc_msgSend_handle(v58, v52, v53, v54);
              objc_msgSend_addObject_(v32, v65, v64, v66);
            }
          }

          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v71, v79, 16);
        }

        while (v55);
      }

      isEqualToSet = objc_msgSend_isEqualToSet_(v28, v67, v32, v68);
      dictionaryCopy = v70;
    }
  }

  else
  {
    isEqualToSet = 0;
  }

  return isEqualToSet;
}

- (void)updateConversationManagerWithItem:(id)item chat:(id)chat attributes:(id)attributes
{
  v62 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  attributesCopy = attributes;
  v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v9, v10, v11);
  v48 = objc_msgSend_conversationManager(v12, v13, v14, v15);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = objc_msgSend_activeConversations(v48, v16, v17, v18);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v55, v61, 16);
  if (v21)
  {
    v23 = *v56;
    *&v22 = 138412290;
    v46 = v22;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        if (objc_msgSend_chatDictionary_matchesFaceTimeConversation_(self, v20, chatCopy, v25, v46))
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = v46;
              v60 = v25;
              _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "TUConversation matches chatRecord for conversation: %@", buf, 0xCu);
            }
          }

          v28 = objc_msgSend_highlightDictionaryFromAttributes_withItem_chat_(self, v26, attributesCopy, itemCopy, chatCopy);
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = v46;
              v60 = v28;
              _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Going to update Conversation Manager with highlightDictionary: %@", buf, 0xCu);
            }
          }

          v32 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v29, @"flags", v30);
          v36 = objc_msgSend_unsignedLongLongValue(v32, v33, v34, v35);

          v40 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v37, v38, v39);
          v44 = objc_msgSend_queue(v40, v41, v42, v43);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1B7B8CFD4;
          block[3] = &unk_1E7CBB508;
          block[4] = v25;
          v52 = v28;
          v53 = v48;
          v54 = (v36 & 4) != 0;
          v45 = v28;
          dispatch_async(v44, block);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v55, v61, 16);
    }

    while (v21);
  }
}

- (id)highlightDictionaryFromAttributes:(id)attributes withItem:(id)item chat:(id)chat
{
  v112 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  itemCopy = item;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Generating highlight dictionary", buf, 2u);
    }
  }

  v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10, v11);
  if (attributesCopy)
  {
    v105 = objc_msgSend_filename(attributesCopy, v13, v14, v15);
    if (objc_msgSend_length(v105, v17, v18, v19))
    {
      objc_msgSend_setObject_forKey_(v16, v20, v105, @"fn");
    }

    v104 = objc_msgSend_contentCreationDate(attributesCopy, v20, v21, v22);
    if (v104)
    {
      objc_msgSend_setObject_forKey_(v16, v23, v104, @"cd");
    }

    v103 = objc_msgSend_objectForKey_(itemCopy, v23, @"time", v24);
    if (v103)
    {
      objc_msgSend_setObject_forKey_(v16, v25, v103, @"md");
    }

    v102 = objc_msgSend_contentType(attributesCopy, v25, v26, v27);
    if (objc_msgSend_length(v102, v28, v29, v30))
    {
      objc_msgSend_setObject_forKey_(v16, v31, v102, @"ct");
    }

    v107 = objc_msgSend_URL(attributesCopy, v31, v32, v33);
    if (v107)
    {
      v37 = objc_msgSend_absoluteString(v107, v34, v35, v36);
      objc_msgSend_setObject_forKey_(v16, v38, v37, @"ru");

      v41 = objc_msgSend__uniqueIdentifierForResourceURL_(self, v39, v107, v40);
      if (objc_msgSend_length(v41, v42, v43, v44))
      {
        objc_msgSend_setObject_forKey_(v16, v45, v41, @"i");
      }
    }

    v46 = objc_msgSend_customAttributeDictionary(attributesCopy, v34, v35, v36);
    v101 = objc_msgSend_valueForKey_(v46, v47, @"com_apple_mobilesms_collaborationIdentifier", v48);

    v55 = objc_msgSend_null(MEMORY[0x1E695DFB0], v49, v50, v51);
    if (v101 == v55)
    {
    }

    else
    {
      v56 = objc_msgSend_length(v101, v52, v53, v54) == 0;

      if (!v56)
      {
        objc_msgSend_setObject_forKey_(v16, v57, v101, @"ci");
      }
    }

    v61 = objc_msgSend_customAttributeDictionary(attributesCopy, v57, v58, v59);
    v64 = objc_msgSend_valueForKey_(v61, v62, @"com_apple_mobilesms_ckBundleIDs", v63);

    if (v64)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v64 = MEMORY[0x1E695E0F0];
      }

      objc_msgSend_setObject_forKey_(v16, v68, v64, @"ckAppBundleIDs");
    }

    v69 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v65, v66, v67);
    v72 = objc_msgSend_objectForKey_(chatCopy, v70, @"guid", v71);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_setObject_forKey_(v69, v73, v72, @"cid");
    }

    v75 = objc_msgSend_objectForKey_(itemCopy, v73, @"guid", v74);
    if (objc_msgSend_length(v75, v76, v77, v78))
    {
      objc_msgSend_setObject_forKey_(v69, v79, v75, @"uid");
    }

    objc_msgSend_setObject_forKey_(v69, v79, @"Messages", @"sa");
    objc_msgSend_setObject_forKey_(v69, v80, MEMORY[0x1E695E110], @"l");
    v84 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v81, v82, v83);
    v87 = objc_msgSend_objectForKey_(itemCopy, v85, @"handle", v86);
    if (objc_msgSend_length(v87, v88, v89, v90))
    {
      objc_msgSend_setObject_forKey_(v84, v91, v87, @"h");
    }

    objc_msgSend_setObject_forKey_(v69, v91, v84, @"s");
    v95 = objc_msgSend_copy(v69, v92, v93, v94);
    v109 = v95;
    v97 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v96, &v109, 1);
    objc_msgSend_setObject_forKey_(v16, v98, v97, @"a");

    if (IMOSLoggingEnabled())
    {
      v99 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v111 = v16;
        _os_log_impl(&dword_1B7AD5000, v99, OS_LOG_TYPE_INFO, "Returning highlight dictionary: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v60 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v111 = 0;
      _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_INFO, "Nil attributes: %@ passed in. Skipping generating highlight dictionary ", buf, 0xCu);
    }
  }

  return v16;
}

- (id)_uniqueIdentifierForResourceURL:(id)l
{
  v4 = objc_msgSend_absoluteString(l, a2, l, v3);
  v7 = objc_msgSend_dataUsingEncoding_(v4, v5, 4, v6);

  v8 = objc_opt_class();
  v10 = objc_msgSend_Sha256ForData_withSalt_(v8, v9, v7, 0);
  v13 = objc_msgSend_base64EncodedStringWithOptions_(v10, v11, 0, v12);

  return v13;
}

- (BOOL)_isLNKTypeMessage:(id)message
{
  v4 = objc_msgSend_messageType(message, a2, message, v3);
  v7 = v4;
  if (v4)
  {
    isEqual = objc_msgSend_isEqual_(v4, v5, @"lnk", v6);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)_isAttachmentType:(id)type
{
  v4 = objc_msgSend_messageType(type, a2, type, v3);
  v7 = v4;
  if (v4)
  {
    isEqual = objc_msgSend_isEqual_(v4, v5, @"at", v6);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)titleFromLPLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_collaborationMetadata(metadataCopy, v4, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
  {
    v9 = objc_msgSend_collaborationMetadata(metadataCopy, v4, v5, v6);
    v13 = objc_msgSend_title(v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  if (!objc_msgSend_length(v13, v4, v5, v6))
  {
    if (!MEMORY[0x1B8CAFAC0](@"LPSharedObjectMetadata", @"LinkPresentation"))
    {
      v44 = objc_msgSend_title(metadataCopy, v14, v15, v16);
      v48 = objc_msgSend_length(v44, v45, v46, v47);

      if (v48)
      {
        goto LABEL_19;
      }

      v26 = objc_msgSend_title(metadataCopy, v49, v50, v51);
      v22 = v13;
      goto LABEL_18;
    }

    v17 = objc_msgSend_specialization(metadataCopy, v14, v15, v16);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_19;
    }

    v22 = objc_msgSend_specialization(metadataCopy, v19, v20, v21);
    v26 = objc_msgSend_title(v22, v23, v24, v25);

    if (!objc_msgSend_length(v26, v27, v28, v29))
    {
      MEMORY[0x1B8CAFAC0](@"LPFileMetadata", @"LinkPresentation");
      MEMORY[0x1B8CAFAC0](@"LPiCloudSharingMetadata", @"LinkPresentation");
      v33 = objc_msgSend_specialization(v22, v30, v31, v32);
      v34 = objc_opt_isKindOfClass();

      v38 = objc_msgSend_specialization(v22, v35, v36, v37);
      v42 = v38;
      if (v34)
      {
        v43 = objc_msgSend_name(v38, v39, v40, v41);
LABEL_17:
        v59 = v43;

        v26 = v59;
        goto LABEL_18;
      }

      v52 = objc_opt_isKindOfClass();

      if (v52)
      {
        v42 = objc_msgSend_specialization(v22, v53, v54, v55);
        v43 = objc_msgSend_title(v42, v56, v57, v58);
        goto LABEL_17;
      }
    }

LABEL_18:

    v13 = v26;
  }

LABEL_19:

  return v13;
}

- (id)_pluginPayloadAttachmentPathsForItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKeyedSubscript_(item, a2, @"attachments", v3);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v16 = objc_msgSend_objectForKeyedSubscript_(*(*(&v21 + 1) + 8 * i), v9, @"path", v10, v21);
        if (v16)
        {
          v17 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v14, v16, v15);
          objc_msgSend_addObject_(v5, v18, v17, v19);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }

  return v5;
}

- (id)_lpLinkMetadataForItem:(id)item attachmentPaths:(id)paths originalURL:(id)l
{
  itemCopy = item;
  pathsCopy = paths;
  lCopy = l;
  if (MEMORY[0x1B8CAFAC0](@"LPLinkMetadataPresentationTransformer", @"LinkPresentation"))
  {
    v10 = objc_alloc_init(MEMORY[0x1E69A8010]);
    v13 = objc_msgSend_objectForKey_(itemCopy, v11, @"payloadData", v12);
    v14 = IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs();
    v15 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
    objc_msgSend_setData_(v10, v16, v15, v17);
    v20 = objc_msgSend_objectForKey_(itemCopy, v18, @"guid", v19);
    objc_msgSend_setMessageGUID_(v10, v21, v20, v22);
    v25 = objc_msgSend_objectForKey_(itemCopy, v23, @"flags", v24);
    v29 = (objc_msgSend_unsignedLongLongValue(v25, v26, v27, v28) >> 2) & 1;

    objc_msgSend_setIsFromMe_(v10, v30, v29, v31);
    objc_msgSend_setUrl_(v10, v32, lCopy, v33);
    objc_msgSend_setAttachments_(v10, v34, pathsCopy, v35);
    v38 = objc_msgSend_linkMetadataForPluginPayload_(MEMORY[0x1E69A8278], v36, v10, v37);
    v42 = objc_msgSend_copy(v38, v39, v40, v41);
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (BOOL)_shouldDonateToSharedWithYou:(id)you lpLinkMetadata:(id)metadata
{
  v31 = *MEMORY[0x1E69E9840];
  youCopy = you;
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v10 = qword_1EBA54098;
    v26 = qword_1EBA54098;
    if (!qword_1EBA54098)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v28 = sub_1B7B8E54C;
      v29 = &unk_1E7CB6EA8;
      v30 = &v23;
      sub_1B7B8E54C(&buf, v6, v7, v8);
      v10 = v24[3];
    }

    v11 = v10;
    _Block_object_dispose(&v23, 8);
    v12 = [v10 alloc];
    v14 = objc_msgSend_initWithMetadata_URL_(v12, v13, metadataCopy, youCopy, v23);
    if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      shouldDonateToSharedWithYou = objc_msgSend_shouldDonateToSharedWithYou(v14, v15, v16, v17);
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = @"NO";
          if (shouldDonateToSharedWithYou)
          {
            v20 = @"YES";
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "LP's recommendation is %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      LOBYTE(shouldDonateToSharedWithYou) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Since we failed to get LPLinkMetadata, not asking LP's recommendation here.", &buf, 2u);
      }
    }

    LOBYTE(shouldDonateToSharedWithYou) = 1;
  }

  return shouldDonateToSharedWithYou;
}

- (id)_highlightedContentServerDateKey
{
  if (qword_1EDBE5BB8 != -1)
  {
    sub_1B7CF8938();
  }

  v3 = qword_1EDBE5BC0;

  return v3;
}

- (id)_syndicationContentTypeKey
{
  if (qword_1EBA54040 != -1)
  {
    sub_1B7CF894C();
  }

  v3 = qword_1EBA54038;

  return v3;
}

- (id)_collaborationIdentifierKey
{
  if (qword_1EBA54050 != -1)
  {
    sub_1B7CF8960();
  }

  v3 = qword_1EBA54048;

  return v3;
}

- (id)_ckBundleIDsKey
{
  if (qword_1EBA54060 != -1)
  {
    sub_1B7CF8974();
  }

  v3 = qword_1EBA54058;

  return v3;
}

- (id)_lpTitleCustomKey
{
  if (qword_1EBA54070 != -1)
  {
    sub_1B7CF8988();
  }

  v3 = qword_1EBA54068;

  return v3;
}

+ (id)collaborationMetadataKey
{
  if (qword_1EBA54080 != -1)
  {
    sub_1B7CF899C();
  }

  v3 = qword_1EBA54078;

  return v3;
}

+ (id)dataDetectedLink
{
  if (qword_1EBA54090 != -1)
  {
    sub_1B7CF89B0();
  }

  v3 = qword_1EBA54088;

  return v3;
}

@end
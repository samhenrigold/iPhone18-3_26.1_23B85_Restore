@interface MSSubscribeStreamsProtocol
- (MSSubscribeStreamsProtocol)initWithPersonID:(id)d baseURL:(id)l;
- (id)_assetCollectionsFromCoreArray:(id)array personID:(id)d outError:(id *)error;
- (id)_assetFromCoreDictionary:(id)dictionary personID:(id)d outError:(id *)error;
- (id)_invalidFieldErrorWithFieldName:(id)name suggestion:(id)suggestion;
- (id)_pathToChunkIndex:(int)index;
- (id)delegate;
- (void)_chunkDidBeginStreamForPersonID:(id)d wasReset:(BOOL)reset metadata:(id)metadata;
- (void)_chunkDidEndStreamForPersonID:(id)d ctag:(id)ctag;
- (void)_chunkDidFindSubscriptionGoneForPersonID:(id)d;
- (void)_chunkDidFindSubscriptionTemporarilyUnavailableForPersonID:(id)d;
- (void)_chunkDidParseAssetCollections:(id)collections forPersonID:(id)d;
- (void)_coreProtocolDidFailAuthentication:(id)authentication;
- (void)_coreProtocolDidFinishError:(id)error;
- (void)_coreProtocolDidGetDataChunk:(id)chunk;
- (void)_parseChunks;
- (void)_parseNextChunk;
- (void)dealloc;
- (void)pollForSubscriptionUpdatesWithAccountAnchors:(id)anchors;
- (void)setDelegate:(id)delegate;
@end

@implementation MSSubscribeStreamsProtocol

- (id)_assetCollectionsFromCoreArray:(id)array personID:(id)d outError:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  dCopy = d;
  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = arrayCopy;
  v41 = [v9 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v41)
  {

LABEL_37:
    v34 = v39;
    v36 = v39;
    v10 = 0;
    goto LABEL_39;
  }

  v10 = 0;
  v42 = *v57;
  v40 = v9;
  while (2)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v57 != v42)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(*(&v56 + 1) + 8 * i);
      v13 = [v12 objectForKey:@"masterAsset"];
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"masterAsset"];

          v10 = v33;
          goto LABEL_34;
        }
      }

      v55 = v10;
      v14 = [(MSSubscribeStreamsProtocol *)self _assetFromCoreDictionary:v13 personID:dCopy outError:&v55];
      v15 = v55;

      if (v15)
      {

        v10 = v15;
        goto LABEL_35;
      }

      v47 = v13;
      v16 = [v12 objectForKey:@"fileName"];
      v46 = [v12 objectForKey:@"collId"];
      v17 = [v12 objectForKey:@"serverUploadedDate"];
      v18 = [v12 objectForKey:@"derivedAssets"];
      v48 = v16;
      v49 = v14;
      v45 = v18;
      if (v18)
      {
        v19 = v18;
        v43 = v17;
        v44 = i;
        v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v52;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v52 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v51 + 1) + 8 * j);
              v50 = 0;
              v27 = [(MSSubscribeStreamsProtocol *)self _assetFromCoreDictionary:v26 personID:dCopy outError:&v50];
              v28 = v50;
              if (v28)
              {
                v10 = v28;
                v29 = 0;
                v17 = v43;
                i = v44;
                v30 = v46;
                goto LABEL_26;
              }

              [v20 addObject:v27];
            }

            v23 = [v21 countByEnumeratingWithState:&v51 objects:v60 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v17 = v43;
        i = v44;
        v14 = v49;
      }

      else
      {
        v20 = 0;
      }

      v21 = [MSAssetCollection collectionWithMasterAsset:v14 fileName:v16 derivedAssets:v20];
      v27 = [v12 objectForKey:@"deleted"];
      v30 = v46;
      if (!v27)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v21 setWasDeleted:1];
LABEL_24:
        [v21 setAssetCollectionID:v46];
        [v17 doubleValue];
        v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31 / 1000.0];
        [v21 setServerUploadedDate:v32];
        [v39 addObject:v21];

        v10 = 0;
        v29 = 1;
        goto LABEL_26;
      }

      v10 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"deleted"];
      v29 = 0;
LABEL_26:

      if (!v29)
      {
        v9 = v40;
        goto LABEL_34;
      }

      v9 = v40;
    }

    v41 = [v40 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_34:

  if (!v10)
  {
    goto LABEL_37;
  }

LABEL_35:
  v34 = v39;
  if (error)
  {
    v35 = v10;
    v36 = 0;
    *error = v10;
  }

  else
  {
    v36 = 0;
  }

LABEL_39:

  return v36;
}

- (id)_assetFromCoreDictionary:(id)dictionary personID:(id)d outError:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  v10 = +[MSAsset asset];
  v11 = [dictionaryCopy objectForKey:@"fileHash"];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"fileHash"];
      goto LABEL_110;
    }

    [v10 setFileHash:v11];
  }

  v12 = [dictionaryCopy objectForKey:@"masterAssetHash"];
  if (!v12)
  {
LABEL_7:
    v13 = [dictionaryCopy objectForKey:@"type"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"type"];
LABEL_108:

        goto LABEL_109;
      }

      [v10 setType:v13];
    }

    v14 = [dictionaryCopy objectForKey:@"MMCSAccessHeader"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"MMCSAccessHeader"];
LABEL_107:

        goto LABEL_108;
      }

      [v10 setMMCSAccessHeader:v14];
    }

    v15 = [dictionaryCopy objectForKey:@"MMCSURL"];
    v76 = v15;
    if (v15)
    {
      v16 = v15;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"MMCSURL"];
LABEL_106:

        goto LABEL_107;
      }

      [v10 setMMCSURL:v16];
    }

    v17 = [dictionaryCopy objectForKey:@"protocolFileSize"];
    v75 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"protocolFileSize"];
LABEL_105:

        goto LABEL_106;
      }

      [v10 setProtocolFileSize:{objc_msgSend(v18, "unsignedLongLongValue")}];
    }

    v19 = [dictionaryCopy objectForKey:@"metadata"];
    if (v19)
    {
      v73 = v13;
      errorCopy = error;
      v21 = dCopy;
      v22 = v14;
      v23 = v19;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v74 = v23;
        v24 = [v23 objectForKey:@"fileSize"];
        v14 = v22;
        dCopy = v21;
        error = errorCopy;
        v13 = v73;
        v71 = v24;
        if (v24)
        {
          v25 = v24;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"fileSize"];
LABEL_103:

            v19 = v74;
            goto LABEL_104;
          }

          [dictionary setObject:v25 forKey:@"MSAssetMetadataFileSize"];
        }

        v26 = [v74 objectForKey:@"pixelWidth"];
        v70 = v26;
        if (v26)
        {
          v27 = v26;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"pixelWidth"];
LABEL_102:

            goto LABEL_103;
          }

          [dictionary setObject:v27 forKey:@"MSAssetMetadataPixelWidth"];
        }

        v28 = [v74 objectForKey:@"pixelHeight"];
        v69 = v28;
        if (v28)
        {
          v29 = v28;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"pixelHeight"];
LABEL_101:

            goto LABEL_102;
          }

          [dictionary setObject:v29 forKey:@"MSAssetMetadataPixelHeight"];
        }

        v30 = [v74 objectForKey:@"deviceID"];
        v68 = v30;
        if (v30)
        {
          v31 = v30;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"deviceID"];
LABEL_100:

            goto LABEL_101;
          }

          [dictionary setObject:v31 forKey:@"MSAssetMetadataDeviceID"];
        }

        v32 = [v74 objectForKey:@"dateContentModified"];
        v67 = v32;
        if (v32)
        {
          v33 = v32;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"dateContentModified"];
LABEL_99:

            goto LABEL_100;
          }

          [dictionary setObject:v33 forKey:@"MSAssetMetadataDateContentModified"];
        }

        v34 = [v74 objectForKey:@"dateContentCreated"];
        v66 = v34;
        if (v34)
        {
          v35 = v34;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"dateContentCreated"];
LABEL_98:

            goto LABEL_99;
          }

          [dictionary setObject:v35 forKey:@"MSAssetMetadataDateContentCreated"];
        }

        v36 = [v74 objectForKey:@"sourceLibraryID"];
        v65 = v36;
        if (v36)
        {
          v37 = v36;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceLibraryID"];
LABEL_97:

            goto LABEL_98;
          }

          [dictionary setObject:v37 forKey:@"MSAssetMetadataSourceLibraryID"];
        }

        v38 = [v74 objectForKey:@"sourceItemID"];
        v64 = v38;
        if (v38)
        {
          v39 = v38;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceItemID"];
LABEL_96:

            goto LABEL_97;
          }

          [dictionary setObject:v39 forKey:@"MSAssetMetadataSourceItemID"];
        }

        v40 = [v74 objectForKey:@"sourceContainerType"];
        v63 = v40;
        if (v40)
        {
          v41 = v40;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceContainerType"];
LABEL_95:

            goto LABEL_96;
          }

          [dictionary setObject:v41 forKey:@"MSAssetMetadataSourceContainerTypeKey"];
        }

        v42 = [v74 objectForKey:@"sourceContainerID"];
        v62 = v42;
        if (v42)
        {
          v43 = v42;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceContainerID"];
LABEL_94:

            goto LABEL_95;
          }

          [dictionary setObject:v43 forKey:@"MSAssetMetadataSourceContainerIDKey"];
        }

        v44 = [v74 objectForKey:@"sourceContainerDisplayName"];
        v61 = v44;
        if (v44)
        {
          v45 = v44;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceContainerDisplayName"];
LABEL_93:

            goto LABEL_94;
          }

          [dictionary setObject:v45 forKey:@"MSAssetMetadataSourceContainerDisplayNameKey"];
        }

        v46 = [v74 objectForKey:@"deviceDisplayName"];
        v60 = v46;
        if (v46)
        {
          v47 = v46;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"deviceDisplayName"];
LABEL_92:

            goto LABEL_93;
          }

          [dictionary setObject:v47 forKey:@"MSAssetMetadataDeviceDisplayNameKey"];
        }

        v59 = [v74 objectForKey:@"rasterToDisplayRotationAngle"];
        if (v59)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"rasterToDisplayRotationAngle"];
LABEL_91:

            goto LABEL_92;
          }

          [dictionary setObject:v59 forKey:@"MSAssetMetadataRasterToDisplayRotationAngleKey"];
        }

        v48 = [v74 objectForKey:@"sourceiCloudPhotoLibraryEnabled"];
        v58 = v48;
        if (v48)
        {
          v49 = v48;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceiCloudPhotoLibraryEnabled"];
LABEL_90:

            goto LABEL_91;
          }

          [dictionary setObject:v49 forKey:@"MSAssetMetadataSourceiCloudPhotoLibraryEnabledKey"];
        }

        if (dCopy)
        {
          [dictionary setObject:dCopy forKey:@"MSAssetMetadataStreamIDKey"];
        }

        if ([dictionary count])
        {
          [v10 setMetadata:dictionary];
        }

        v50 = 0;
        goto LABEL_90;
      }

      v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"metadata"];
      v19 = v23;
      v14 = v22;
      dCopy = v21;
      error = errorCopy;
      v13 = v73;
    }

    else
    {
      v50 = 0;
    }

LABEL_104:

    goto LABEL_105;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setMasterAssetHash:v12];
    goto LABEL_7;
  }

  v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"masterAssetHash"];
LABEL_109:

LABEL_110:
  if (v50)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = v53;
      personID = [(MSStreamsProtocol *)self personID];
      mSVerboseDescription = [v50 MSVerboseDescription];
      *buf = 138543874;
      v78 = v53;
      v79 = 2112;
      v80 = personID;
      v81 = 2114;
      v82 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot parse asset dictionary. Error: %{public}@", buf, 0x20u);

      if (error)
      {
        goto LABEL_113;
      }
    }

    else if (error)
    {
LABEL_113:
      v51 = v50;
      v52 = 0;
      *error = v50;
      goto LABEL_117;
    }

    v52 = 0;
  }

  else
  {
    v52 = v10;
  }

LABEL_117:

  return v52;
}

- (id)_invalidFieldErrorWithFieldName:(id)name suggestion:(id)suggestion
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  suggestionCopy = suggestion;
  nameCopy = name;
  v9 = MSCFCopyLocalizedString(@"ERROR_GET_CONNECTION_INVALID_FIELD_P_NAME");
  nameCopy = [v6 stringWithFormat:v9, nameCopy];

  v11 = [v5 MSErrorWithDomain:@"MSStreamsGetConnectionErrorDomain" code:2 description:nameCopy suggestion:suggestionCopy];

  return v11;
}

- (void)_chunkDidFindSubscriptionTemporarilyUnavailableForPersonID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = personID;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription temporarily unavailable for person ID %@", &v9, 0x20u);
  }

  delegate = [(MSSubscribeStreamsProtocol *)self delegate];
  [delegate subscribeStreamsProtocol:self didFindTemporarilyUnavailableSubscriptionForPersonID:dCopy];
}

- (void)_chunkDidFindSubscriptionGoneForPersonID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = personID;
    v13 = 2112;
    v14 = dCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription is gone for person ID %@", &v9, 0x20u);
  }

  delegate = [(MSSubscribeStreamsProtocol *)self delegate];
  [delegate subscribeStreamsProtocol:self didFindDisappearedSubscriptionForPersonID:dCopy];
}

- (void)_chunkDidEndStreamForPersonID:(id)d ctag:(id)ctag
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  ctagCopy = ctag;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = v9;
    personID = [(MSStreamsProtocol *)self personID];
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = personID;
    v16 = 2112;
    v17 = dCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@- %@ Finished stream for personID: %@", &v12, 0x20u);
  }

  delegate = [(MSSubscribeStreamsProtocol *)self delegate];
  [delegate subscribeStreamsProtocol:self didFinishReceivingUpdatesForPersonID:dCopy ctag:ctagCopy];
}

- (void)_chunkDidParseAssetCollections:(id)collections forPersonID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = v15;
    personID = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = personID;
    v23 = 2114;
    v24 = collectionsCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Parsed asset collections: %{public}@", buf, 0x20u);
  }

  v18 = 0;
  v8 = [(MSSubscribeStreamsProtocol *)self _assetCollectionsFromCoreArray:collectionsCopy personID:dCopy outError:&v18];
  v9 = v18;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      personID2 = [(MSStreamsProtocol *)self personID];
      mSVerboseDescription = [v9 MSVerboseDescription];
      *buf = 138543874;
      v20 = v10;
      v21 = 2112;
      v22 = personID2;
      v23 = 2114;
      v24 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not create asset collections from response. Error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    delegate = [(MSSubscribeStreamsProtocol *)self delegate];
    [delegate subscribeStreamsProtocol:self didReceiveAssetCollections:v8 forPersonID:dCopy];
  }
}

- (void)_chunkDidBeginStreamForPersonID:(id)d wasReset:(BOOL)reset metadata:(id)metadata
{
  resetCopy = reset;
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = v11;
    personID = [(MSStreamsProtocol *)self personID];
    v14 = 138544386;
    v15 = v11;
    v16 = 2112;
    v17 = personID;
    v18 = 2112;
    v19 = dCopy;
    v20 = 1024;
    v21 = resetCopy;
    v22 = 2114;
    v23 = metadataCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Begin stream for personID: %@ - was reset: %d\nMetadata: %{public}@", &v14, 0x30u);
  }

  delegate = [(MSSubscribeStreamsProtocol *)self delegate];
  [delegate subscribeStreamsProtocol:self willReceiveUpdatesForPersonID:dCopy wasReset:resetCopy metadata:metadataCopy];
}

- (void)_parseNextChunk
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (self->_chunkIndex < 1)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    v3 = 0;
    v4 = MEMORY[0x277D86220];
    while (1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = v11;
        personID = [(MSStreamsProtocol *)self personID];
        *buf = 138543874;
        *&buf[4] = v11;
        v24 = 2112;
        v25 = personID;
        v26 = 1024;
        LODWORD(v27[0]) = v3;
        _os_log_debug_impl(&dword_245B99000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Parsing chunk number %d.", buf, 0x1Cu);
      }

      v5 = objc_alloc(MEMORY[0x277CBEA90]);
      v6 = [(MSSubscribeStreamsProtocol *)self _pathToChunkIndex:v3];
      v7 = [v5 initWithContentsOfFile:v6];

      if (v7)
      {
        *buf = 0;
        MSSSPCChunkParsingParseNextChunk(&self->_parseContext->var0, v7, buf);
        v8 = *buf;
      }

      else
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = MSCFCopyLocalizedString(@"ERROR_GET_CONNECTION_MISSING_CHUNK");
        v8 = [v9 MSErrorWithDomain:@"MSStreamsGetConnectionErrorDomain" code:4 description:v10];
      }

      if (v8)
      {
        break;
      }

      v3 = (v3 + 1);
      if (v3 >= self->_chunkIndex)
      {
        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = v19;
      personID2 = [(MSStreamsProtocol *)self personID];
      mSVerboseDescription = [v8 MSVerboseDescription];
      *buf = 138544130;
      *&buf[4] = v19;
      v24 = 2112;
      v25 = personID2;
      v26 = 1024;
      LODWORD(v27[0]) = v3;
      WORD2(v27[0]) = 2114;
      *(v27 + 6) = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@- %@ Error found while parsing chunk number %d. Error: %{public}@", buf, 0x26u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = v15;
    personID3 = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription2 = [v8 MSVerboseDescription];
    *buf = 138543874;
    *&buf[4] = v15;
    v24 = 2112;
    v25 = personID3;
    v26 = 2114;
    v27[0] = mSVerboseDescription2;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Finished parsing all chunks. Error: %{public}@", buf, 0x20u);
  }

  _resetChunkContext(&self->_parseContext->var0);
  free(self->_parseContext);
  self->_parseContext = 0;
  delegate = [(MSSubscribeStreamsProtocol *)self delegate];
  [delegate subscribeStreamsProtocol:self didFinishError:v8];
}

- (void)_parseChunks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(0x58uLL, 0x10E0040CFB3EB4CuLL);
  self->_parseContext = v3;
  v3->var0 = self;
  self->_parseContext->var1 = _chunkBeginStreamCallback;
  self->_parseContext->var2 = _chunkAssetCollectionsCallback;
  self->_parseContext->var3 = _chunkEndStreamCallback;
  self->_parseContext->var4 = _chunkSubscriptionSourceGoneCallback;
  self->_parseContext->var5 = _chunkSubscriptionSourceTemporarilyUnavailableCallback;
  parseContext = self->_parseContext;
  *&parseContext->var6 = 0u;
  *&parseContext->var8 = 0u;
  parseContext->var10 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    chunkIndex = self->_chunkIndex;
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = personID;
    v13 = 1024;
    v14 = chunkIndex;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Starting to parse %d chunks.", &v9, 0x1Cu);
  }

  [(MSSubscribeStreamsProtocol *)self _parseNextChunk];
}

- (void)_coreProtocolDidFailAuthentication:(id)authentication
{
  v4 = MEMORY[0x277CCAA00];
  authenticationCopy = authentication;
  defaultManager = [v4 defaultManager];
  personID = [(MSStreamsProtocol *)self personID];
  v8 = MSPathSubscribeProtocolDirForPersonID(personID);
  [defaultManager removeItemAtPath:v8 error:0];

  delegate = [(MSSubscribeStreamsProtocol *)self delegate];
  [delegate subscribeStreamsProtocol:self didReceiveAuthenticationError:authenticationCopy];
}

- (void)_coreProtocolDidGetDataChunk:(id)chunk
{
  v9 = *MEMORY[0x277D85DE8];
  chunkCopy = chunk;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:chunkCopy encoding:4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Got chunk: %{public}@", &v7, 0xCu);
  }

  v6 = [(MSSubscribeStreamsProtocol *)self _pathToChunkIndex:self->_chunkIndex];
  [chunkCopy writeToFile:v6 atomically:0];

  ++self->_chunkIndex;
}

- (void)_coreProtocolDidFinishError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    delegate = [(MSSubscribeStreamsProtocol *)self delegate];
    v5 = delegate;
    selfCopy2 = self;
    v7 = errorCopy;
LABEL_3:
    [delegate subscribeStreamsProtocol:selfCopy2 didFinishError:v7];

    goto LABEL_6;
  }

  if (self->_chunkIndex < 1)
  {
    delegate = [(MSSubscribeStreamsProtocol *)self delegate];
    v5 = delegate;
    selfCopy2 = self;
    v7 = 0;
    goto LABEL_3;
  }

  [(MSSubscribeStreamsProtocol *)self _parseChunks];
LABEL_6:
}

- (void)pollForSubscriptionUpdatesWithAccountAnchors:(id)anchors
{
  v17 = *MEMORY[0x277D85DE8];
  anchorsCopy = anchors;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Requesting subscription updates...", &v13, 0x16u);
  }

  personID2 = [(MSStreamsProtocol *)self personID];
  v9 = MSPathSubscribeProtocolDirForPersonID(personID2);

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:v9 error:0];
  [defaultManager createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  self->_chunkIndex = 0;
  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  getURL = [(MSStreamsProtocol *)self getURL];
  v12 = MSPURLConnectionProperties();
  MSSSPCGetMetadataAsync(&self->_context._super.owner, getURL, v12, anchorsCopy);
}

- (id)_pathToChunkIndex:(int)index
{
  v3 = *&index;
  personID = [(MSStreamsProtocol *)self personID];
  v5 = MSPathSubscribeProtocolDirForPersonID(personID);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"chunk_%04d.plist", v3];
  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (void)dealloc
{
  free(self->_parseContext);

  v3.receiver = self;
  v3.super_class = MSSubscribeStreamsProtocol;
  [(MSSubscribeStreamsProtocol *)&v3 dealloc];
}

- (MSSubscribeStreamsProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MSSubscribeStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:dCopy baseURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = dCopy;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context.finishedCallback = _finishedCallback;
    v8->_context.gotDataChunkCallback = _gotDataChunkCallback;
    v8->_context.authFailedCallback = _authenticationFailedCallback;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate_984;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _didReceiveServerSideConfigurationVersion;
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = MSSubscribeStreamsProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:delegate];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSSubscribeStreamsProtocol;
  delegate = [(MSStreamsProtocol *)&v4 delegate];

  return delegate;
}

@end
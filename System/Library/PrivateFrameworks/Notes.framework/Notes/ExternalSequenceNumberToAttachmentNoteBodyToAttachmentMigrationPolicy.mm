@interface ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (BOOL)endEntityMapping:(id)mapping manager:(id)manager error:(id *)error;
- (id)unarchiveObjectWithExternalRepresentation:(id)representation;
@end

@implementation ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy

- (id)unarchiveObjectWithExternalRepresentation:(id)representation
{
  v24 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v4 = objc_autoreleasePoolPush();
  v22 = 0;
  v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:representationCopy error:&v22];
  v6 = v22;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy *)v6 unarchiveObjectWithExternalRepresentation:v7];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  supportedArchivedClassNames = [MEMORY[0x277D24F38] supportedArchivedClassNames];
  v9 = [supportedArchivedClassNames countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(supportedArchivedClassNames);
        }

        [v5 setClass:objc_opt_class() forClassName:*(*(&v18 + 1) + 8 * i)];
      }

      v10 = [supportedArchivedClassNames countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];

  [v5 finishDecoding];
  objc_autoreleasePoolPop(v4);

  return v16;
}

- (BOOL)createDestinationInstancesForSourceInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  mappingCopy = mapping;
  managerCopy = manager;
  v43 = instanceCopy;
  v37 = [instanceCopy valueForKey:@"externalRepresentation"];
  if (v37)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = [(ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy *)self unarchiveObjectWithExternalRepresentation:v37];
    if ([v11 conformsToProtocol:&unk_286E33538] && objc_msgSend(v11, "conformsToProtocol:", &unk_286E3BCD0))
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v13)
      {
        v14 = *v49;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v49 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v48 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              contentID = [v16 contentID];
              v18 = [contentID length] == 0;

              if (!v18)
              {
                [array addObject:v16];
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v13);
      }
    }

    if ([array count])
    {
      destinationContext = [managerCopy destinationContext];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = array;
      v20 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v20)
      {
        v21 = 0x2799AC000uLL;
        v22 = *v45;
        while (2)
        {
          v23 = 0;
          v24 = *(v21 + 3336);
          do
          {
            if (*v45 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v44 + 1) + 8 * v23);
            v26 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"NoteAttachment" inManagedObjectContext:{destinationContext, v37}];
            contentID2 = [v25 contentID];
            [v26 setValue:contentID2 forKey:@"contentID"];

            preferredFilename = [v25 preferredFilename];
            if (preferredFilename)
            {
              [v26 setValue:preferredFilename forKey:@"filename"];
            }

            else
            {
              filename = [v25 filename];
              [v26 setValue:filename forKey:@"filename"];
            }

            mimeType = [v25 mimeType];
            [v26 setValue:mimeType forKey:@"mimeType"];

            regularFileContents = [v25 regularFileContents];
            v32 = objc_opt_class();
            MethodImplementation = class_getMethodImplementation(v32, v24);
            if (((MethodImplementation)(v26, v24, regularFileContents, error) & 1) == 0)
            {

              v34 = 0;
              goto LABEL_30;
            }

            [managerCopy associateSourceInstance:v43 withDestinationInstance:v26 forEntityMapping:mappingCopy];

            ++v23;
          }

          while (v20 != v23);
          v20 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
          v21 = 0x2799AC000;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v34 = 1;
LABEL_30:
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 1;
  }

  managedObjectContext = [v43 managedObjectContext];
  [managedObjectContext refreshObject:v43 mergeChanges:0];

  return v34;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)instance entityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  managerCopy = manager;
  name = [mapping name];
  v29[0] = instanceCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v13 = [managerCopy sourceInstancesForEntityMappingNamed:name destinationInstances:v12];
  lastObject = [v13 lastObject];

  v15 = [lastObject valueForKey:@"owner"];
  v28 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v17 = [managerCopy destinationInstancesForEntityMappingNamed:@"NoteToNote" sourceInstances:v16];

  lastObject2 = [v17 lastObject];

  if (lastObject2)
  {
    [instanceCopy setValue:lastObject2 forKey:@"note"];
  }

  else if (error)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [instanceCopy valueForKey:@"contentID"];
    v21 = [v19 stringWithFormat:@"Can't find destination note for attachment with CID: %@", v20];

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D36168];
    v26 = *MEMORY[0x277D36170];
    v27 = v21;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [v22 errorWithDomain:v23 code:100 userInfo:v24];
  }

  return lastObject2 != 0;
}

- (BOOL)endEntityMapping:(id)mapping manager:(id)manager error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy;
  mappingCopy = mapping;
  managerCopy = manager;
  errorCopy = error;
  if ([NSEntityMigrationPolicy endEntityMapping:sel_endEntityMapping_manager_error_ manager:mappingCopy error:?])
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy_;
    v53 = __Block_byref_object_dispose_;
    v54 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __104__ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy_endEntityMapping_manager_error___block_invoke;
    v48[3] = &unk_2799AC918;
    v48[4] = &v49;
    v26 = MEMORY[0x25F88B080](v48);
    v28 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NoteAttachment"];
    destinationContext = [managerCopy destinationContext];
    v27 = [destinationContext executeFetchRequest:v28 error:error];

    if (!v27)
    {
      goto LABEL_34;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v27;
    v8 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v8)
    {
      v34 = *v45;
      do
      {
        v9 = 0;
        v35 = v8;
        do
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v9;
          v10 = *(*(&v44 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v11 = [v10 valueForKeyPath:@"note.body.externalRepresentation"];
          v36 = v11;
          if (v11)
          {
            v12 = [(ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy *)self unarchiveObjectWithExternalRepresentation:v11];
            v39 = [v12 mutableCopy];
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
            if (v14)
            {
              v15 = 0;
              v16 = *v41;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v41 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v40 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    contentID = [v18 contentID];
                    v20 = [v10 valueForKey:@"contentID"];
                    v21 = [contentID isEqual:v20];

                    if (v21)
                    {
                      [v39 removeObject:v18];
                      v15 = 1;
                    }
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v40 objects:v56 count:16];
              }

              while (v14);

              if (v15)
              {
                if ([v39 count])
                {
                  v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v39 requiringSecureCoding:1 error:0];
                }

                else
                {
                  v22 = 0;
                }

                [v10 setValue:v22 forKeyPath:@"note.body.externalRepresentation"];
              }
            }

            else
            {
            }
          }

          objc_autoreleasePoolPop(context);
          v9 = v38 + 1;
        }

        while (v38 + 1 != v35);
        v8 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v8);
    }

    v23 = v50[5];
    if (!v23)
    {
      v24 = 1;
      goto LABEL_36;
    }

    if (errorCopy)
    {
      v24 = 0;
      *errorCopy = v23;
    }

    else
    {
LABEL_34:
      v24 = 0;
    }

LABEL_36:

    _Block_object_dispose(&v49, 8);
    goto LABEL_37;
  }

  v24 = 0;
LABEL_37:

  return v24;
}

void __104__ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy_endEntityMapping_manager_error___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D36168];
  v11 = *MEMORY[0x277D36170];
  v12[0] = a2;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a2;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:100 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)unarchiveObjectWithExternalRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25C69C000, a2, OS_LOG_TYPE_ERROR, "Error creating unarchiver: %@", &v2, 0xCu);
}

@end
@interface NSFetchedResultsController
+ (uint64_t)_CoreDataSectionCachesPath;
+ (uint64_t)_insertIndexForObject:(void *)object inArray:(uint64_t)array lowIdx:(uint64_t)idx highIdx:(void *)highIdx sortDescriptors:;
+ (void)deleteCacheWithName:(NSString *)name;
- (BOOL)_computeSectionInfo:(id *)info error:;
- (BOOL)_updateFetchedObjectsWithInsertChange:(uint64_t)change;
- (BOOL)performFetch:(NSError *)error;
- (NSArray)fetchedObjects;
- (NSArray)sectionIndexTitles;
- (NSArray)sections;
- (NSFetchedResultsController)initWithFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext:(NSManagedObjectContext *)context sectionNameKeyPath:(NSString *)sectionNameKeyPath cacheName:(NSString *)name;
- (NSIndexPath)indexPathForObject:(id)object;
- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex;
- (NSString)sectionIndexTitleForSectionName:(NSString *)sectionName;
- (__CFString)_objectInResults:(uint64_t)results;
- (__CFString)_sectionNameForObject:(__CFString *)result;
- (id)_core_managedObjectContextDidChange:(id *)result;
- (id)_indexOfFetchedID:(int)d isManagedObjectID:;
- (id)_preprocessDeletedObjects:(void *)objects deletesInfo:(void *)info sectionsWithDeletes:;
- (id)_sectionCachePath;
- (id)_updateIndexCacheWithFetchedObjects;
- (id)delegate;
- (id)objectAtIndexPath:(NSIndexPath *)indexPath;
- (uint64_t)_conditionallyDispatchSnapshotToDelegate:(void *)delegate updatesInfo:;
- (uint64_t)_fetchedObjectsArrayOfObjectIDs;
- (uint64_t)_indexOfCachedID:(uint64_t)d;
- (uint64_t)_keyPathContainsNonPersistedProperties:(void *)properties;
- (uint64_t)_resolveSectionIndexTitleForSectionName:(uint64_t)name;
- (uint64_t)_restoreCachedSectionInfo;
- (uint64_t)_updateFetchedObjectsWithDeleteChange:(uint64_t)change;
- (void)_appendAffectedStoreInfoToData:(void *)data adjustedOffset:;
- (void)_core_managedObjectContextDidSave:(uint64_t)save;
- (void)_indexPathForIndex:(void *)index;
- (void)_lowerMoveOperationsToUpdatesForSection:(void *)section withInsertedObjects:(void *)objects deletedObjects:(void *)deletedObjects updatedObjects:;
- (void)_makeMutableFetchedObjects;
- (void)_managedObjectContextDidChange:(id)change;
- (void)_managedObjectContextDidChangeObjectIDs:(id)ds;
- (void)_managedObjectContextDidMutateObjectIDs:(id)ds;
- (void)_managedObjectContextDidSave:(id)save;
- (void)_preprocessUpdatedObjects:(void *)objects insertsInfo:(void *)info deletesInfo:(void *)deletesInfo updatesInfo:(void *)updatesInfo sectionsWithDeletes:(void *)deletes newSectionNames:(void *)names treatAsRefreshes:;
- (void)_recursivePerformBlockAndWait:(void *)wait withContext:;
- (void)_updateSectionOffsetsStartingAtSection:(uint64_t)section;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation NSFetchedResultsController

- (uint64_t)_restoreCachedSectionInfo
{
  if (result)
  {
    v1 = result;
    result = [(NSFetchedResultsController *)result _sectionCachePath];
    if (result)
    {
      v2 = [result stringByAppendingPathComponent:@"sectionInfo"];
      fileSystemRepresentation = [v2 fileSystemRepresentation];
      memset(&v115, 0, sizeof(v115));
      if (stat(fileSystemRepresentation, &v115))
      {
        return 0;
      }

      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfMappedFile:v2];
      v5 = [v4 length];
      v114 = 0;
      if (v5 < 0x20 || ((v6 = v5, v7 = [v4 bytes], *v7 == 0x3562366135623134) ? (v8 = v7[1] == 0x3463383438653663) : (v8 = 0), v8 ? (v9 = v7[2] == 0x6330383438613236) : (v9 = 0), v9 ? (v10 = v7[3] == 0x3366656163343264) : (v10 = 0), !v10))
      {
LABEL_107:

        unlink(fileSystemRepresentation);
        return 0;
      }

      v11 = v7;
      v114 += 48;
      v12 = [objc_msgSend(v1 "fetchRequest")];
      v13 = _newReadStringFromBytes(v11, &v114, v6);
      if (!v13 || ([objc_msgSend(v12 "name")] & 1) == 0 || (v13, (v13 = _newReadDataFromBytes(v11, &v114, v6)) == 0) || (objc_msgSend(objc_msgSend(v12, "versionHash"), "isEqualToData:", v13) & 1) == 0)
      {
LABEL_106:

        goto LABEL_107;
      }

      v14 = _newReadStringFromBytes(v11, &v114, v6);
      if (v14)
      {
        v15 = *(v1 + 24);
        if (!v15)
        {
LABEL_24:
          if ([v14 length])
          {
            goto LABEL_25;
          }

LABEL_26:

          v16 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          if (v16 + 4 <= v6)
          {
            v113 = bswap32(*(v11 + v16));
            v114 = v16 + 4;
          }

          else
          {
            v113 = 0;
          }

          if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 0x1000000) == 0 && [objc_msgSend(v1 "fetchedObjects")] != v113)
          {
            goto LABEL_107;
          }

          sortDescriptors = [*(v1 + 8) sortDescriptors];
          v18 = sortDescriptors;
          v19 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          if (v19 + 4 <= v6)
          {
            v20 = *(v11 + v19);
            v21 = bswap32(v20);
            v114 = v19 + 4;
            if (v21 != [sortDescriptors count])
            {
              goto LABEL_107;
            }

            if (v20)
            {
              v22 = 0;
              do
              {
                v23 = _newReadStringFromBytes(v11, &v114, v6);
                v24 = [objc_msgSend(objc_msgSend(v18 objectAtIndex:{v22), "key"), "isEqualToString:", v23}];

                if (!v24)
                {
                  goto LABEL_107;
                }
              }

              while (v21 != ++v22);
            }
          }

          else if ([sortDescriptors count])
          {
            goto LABEL_107;
          }

          affectedStores = [*(v1 + 8) affectedStores];
          if (![affectedStores count])
          {
            affectedStores = [objc_msgSend(*(v1 + 16) "persistentStoreCoordinator")];
          }

          v26 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          if (v26 + 4 <= v6)
          {
            v27 = *(v11 + v26);
            v28 = bswap32(v27);
            v114 = v26 + 4;
            if (v28 != [affectedStores count])
            {
              goto LABEL_107;
            }

            if (v27)
            {
              v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:affectedStores forKeys:objc_msgSend_valueForKey_(affectedStores)];
              do
              {
                v30 = _newReadStringFromBytes(v11, &v114, v6);
                v31 = [v29 objectForKey:v30];

                if (!v31)
                {
                  goto LABEL_107;
                }

                v32 = stat_path_for_modication_time([v31 URL]);
                v34 = (v114 + 7) & 0xFFFFFFFFFFFFFFF8;
                v35 = v34 + 8;
                if (v34 + 8 <= v6)
                {
                  v36 = bswap64(*(v11 + v34));
                  v114 = v34 + 8;
                  v34 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
                  v35 = v34 + 8;
                }

                else
                {
                  v36 = 0;
                }

                if (v35 <= v6)
                {
                  v37 = bswap64(*(v11 + v34));
                  v114 = v35;
                }

                else
                {
                  v37 = 0;
                }

                if (v36 != v32 || v37 != v33)
                {
                  goto LABEL_107;
                }
              }

              while (--v28);
            }
          }

          else if ([affectedStores count])
          {
            goto LABEL_107;
          }

          *(v1 + 104) = objc_alloc_init(MEMORY[0x1E695DFA0]);
          *(v1 + 112) = objc_alloc_init(MEMORY[0x1E695DF90]);

          *(v1 + 120) = 0;
          *(v1 + 128) = 0;
          v38 = v114;
          v39 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v40 = v39 + 4;
          if (v39 + 4 <= v6)
          {
            v41 = *(v11 + v39);
            v114 = v40;
            v38 = v40;
            if (v41)
            {
              v42 = bswap32(v41);
              while (1)
              {
                v43 = _newReadStringFromBytes(v11, &v114, v6);
                v44 = _newReadStringFromBytes(v11, &v114, v6);
                v13 = v44;
                v45 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v46 = v45 + 4;
                if (v45 + 4 <= v6)
                {
                  v47 = bswap32(*(v11 + v45));
                  v114 = v45 + 4;
                  v45 = (v45 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                  v46 = v45 + 4;
                }

                else
                {
                  v47 = 0;
                }

                if (v46 <= v6)
                {
                  v48 = bswap32(*(v11 + v45));
                  v114 = v46;
                }

                else
                {
                  v48 = 0;
                }

                if (!v43 || !v44)
                {
                  break;
                }

                v49 = [[_NSDefaultSectionInfo alloc] initWithController:v1 name:v43 sectionId:0 indexTitle:v44 sectionOffset:v48];
                v50 = v49;
                if (v49)
                {
                  v49[5] = v47;

                  v50[7] = 0;
                }

                [*(v1 + 104) addObject:v50];
                if ((*(v1 + 72) & 8) != 0)
                {
                  [*(v1 + 112) setObject:v50 forKey:{objc_msgSend(v50, "name")}];
                }

                if (!--v42)
                {
                  v38 = v114;
                  goto LABEL_74;
                }
              }

              goto LABEL_106;
            }
          }

LABEL_74:
          v51 = (v38 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v52 = v51 + 4;
          if (v51 + 4 > v6 || (v53 = *(v11 + v51), v114 = v52, !v53) || BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
          {
LABEL_118:

            return 1;
          }

          v111 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          array = [MEMORY[0x1E695DF70] array];
          v55 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v56 = v55 + 4;
          if (v55 + 4 <= v6)
          {
            v57 = *(v11 + v55);
            v114 = v56;
            if (v57)
            {
              v58 = bswap32(v57);
              do
              {
                v59 = _newReadStringFromBytes(v11, &v114, v6);
                if (!v59)
                {
                  goto LABEL_119;
                }

                v60 = v59;
                [array addObject:v59];
              }

              while (--v58);
            }
          }

          array2 = [MEMORY[0x1E695DF70] array];
          v62 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v63 = v62 + 4;
          if (v62 + 4 <= v6)
          {
            v64 = *(v11 + v62);
            v114 = v63;
            if (v64)
            {
              v65 = bswap32(v64);
              while (1)
              {
                v66 = _newReadStringFromBytes(v11, &v114, v6);
                if (!v66)
                {
                  break;
                }

                v67 = v66;
                [array2 addObject:v66];

                if (!--v65)
                {
                  goto LABEL_87;
                }
              }

LABEL_119:
              [v111 drain];
              goto LABEL_107;
            }
          }

LABEL_87:
          Mutable = CFArrayCreateMutable(0, 0, 0);
          v69 = v114;
          v70 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v71 = v70 + 4;
          if (v70 + 4 <= v6)
          {
            v72 = *(v11 + v70);
            v114 = v71;
            v69 = v71;
            if (v72)
            {
              v73 = bswap32(v72);
              while (1)
              {
                v74 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                v75 = v74 + 4;
                if (v74 + 4 > v6)
                {
                  goto LABEL_110;
                }

                v76 = *(v11 + v74);
                v114 = v75;
                if (!v76)
                {
                  goto LABEL_110;
                }

                CFArrayAppendValue(Mutable, bswap32(v76));
                if (!--v73)
                {
                  v69 = v114;
                  break;
                }
              }
            }
          }

          v77 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
          v78 = v77 + 8;
          if (v77 + 8 > v6 || (v79 = *(v11 + v77), v114 = v78, !v79))
          {
LABEL_110:
            v88 = 0;
            v89 = 0;
            v84 = 0;
            cf = 0;
            goto LABEL_111;
          }

          v80 = bswap64(v79);
          v109 = [MEMORY[0x1E696AD98] numberWithLongLong:v80];
          Count = CFArrayGetCount(Mutable);
          cf = CFArrayCreateMutable(0, 0, 0);
          v110 = v80;
          v82 = v80 >= 0x1000000 || Count >= 0xFF;
          v83 = !v82;
          v108 = v83;
          if (!v82)
          {
            goto LABEL_103;
          }

          v90 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v91 = v90 + 4;
          if (v90 + 4 <= v6)
          {
            v92 = bswap32(*(v11 + v90));
            v114 = v91;
          }

          else
          {
            v92 = 0;
          }

          v102 = v92;
          if (Count >= 0xFF)
          {
            if (v92)
            {
              do
              {
                v104 = (v114 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v105 = v104 + 2;
                if (v104 + 2 <= v6)
                {
                  v106 = bswap32(*(v11 + v104)) >> 16;
                  v114 = v105;
                }

                else
                {
                  v106 = 0;
                }

                if (v106 >= Count)
                {
                  goto LABEL_157;
                }

                CFArrayAppendValue(cf, v106);
              }

              while (--v102);
            }
          }

          else if (v92)
          {
            while (1)
            {
              if (v114 + 1 <= v6)
              {
                v103 = *(v11 + v114++);
              }

              else
              {
                v103 = 0;
              }

              if (v103 >= Count)
              {
                break;
              }

              CFArrayAppendValue(cf, v103);
              if (!--v102)
              {
                goto LABEL_103;
              }
            }

LABEL_157:
            v88 = 0;
            v89 = 0;
            v84 = 0;
            goto LABEL_111;
          }

LABEL_103:
          v84 = CFArrayCreateMutable(0, 0, 0);
          v85 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v86 = v85 + 4;
          if (v85 + 4 <= v6)
          {
            v87 = bswap32(*(v11 + v85));
            v114 = v86;
          }

          else
          {
            v87 = 0;
          }

          v93 = v87;
          if (v110 >= 0xFFFFFFFFLL)
          {
            if (v87)
            {
              do
              {
                v97 = (v114 + 7) & 0xFFFFFFFFFFFFFFF8;
                v98 = v97 + 8;
                if (v97 + 8 > v6)
                {
                  goto LABEL_135;
                }

                v99 = *(v11 + v97);
                v114 = v98;
                if (!v99)
                {
                  goto LABEL_135;
                }

                CFArrayAppendValue(v84, bswap64(v99));
              }

              while (--v93);
            }
          }

          else if (v87)
          {
            while (1)
            {
              v94 = (v114 + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v95 = v94 + 4;
              if (v94 + 4 > v6)
              {
                break;
              }

              v96 = *(v11 + v94);
              v114 = v95;
              if (!v96)
              {
                break;
              }

              CFArrayAppendValue(v84, bswap32(v96));
              if (!--v93)
              {
                goto LABEL_133;
              }
            }

LABEL_135:
            v88 = 0;
            v89 = 0;
            goto LABEL_111;
          }

LABEL_133:
          v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:{array, array2, Mutable, v109, 0}];
          if (v108)
          {
            v101 = [MEMORY[0x1E695DEC8] arrayWithObject:v84];
          }

          else
          {
            v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:{cf, v84, 0}];
          }

          v107 = +[_PFRoutines _newObjectIDsArrayWithMapping:andEntries:andCoordinator:](_PFRoutines, v100, v101, [*(v1 + 16) persistentStoreCoordinator]);
          v89 = v107;
          if (v107 && [(_PFArray *)v107 count]== v113)
          {
            *(v1 + 96) = [[_PFBatchFaultingArray alloc] initWithPFArray:v89 andRequest:*(v1 + 8) andContext:*(v1 + 16)];
            *(v1 + 136) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[_PFArray count](v89, "count")}];
            *(v1 + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
            *(v1 + 72) = *(v1 + 72) & 0xFFFFFFF9 | 2;
            v88 = 1;
          }

          else
          {
            v88 = 0;
          }

LABEL_111:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v84)
          {
            CFRelease(v84);
          }

          [v111 drain];
          if (!v88)
          {
            goto LABEL_107;
          }

          goto LABEL_118;
        }

        if ([v15 isEqualToString:v14])
        {
          if (*(v1 + 24))
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

LABEL_25:

      goto LABEL_107;
    }
  }

  return result;
}

- (id)_sectionCachePath
{
  if (!*(self + 40))
  {
    return 0;
  }

  result = *(self + 64);
  if (!result)
  {
    result = [+[NSFetchedResultsController _CoreDataSectionCachesPath](NSFetchedResultsController) stringByAppendingPathComponent:*(self + 40)];
    *(self + 64) = result;
  }

  return result;
}

- (id)_updateIndexCacheWithFetchedObjects
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    [result[17] removeAllObjects];
    [v1[18] removeAllObjects];
    if (![v1[1] resultType] || (result = objc_msgSend(v1[1], "resultType"), result == 1))
    {
      _fetchedObjectsArrayOfObjectIDs = [(NSFetchedResultsController *)v1 _fetchedObjectsArrayOfObjectIDs];
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      result = [_fetchedObjectsArrayOfObjectIDs countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v3 = result;
        v4 = 0;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(_fetchedObjectsArrayOfObjectIDs);
            }

            v7 = *(*(&v9 + 1) + 8 * v6);
            v8 = objc_autoreleasePoolPush();
            [v1[17] setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v4++), v7}];
            objc_autoreleasePoolPop(v8);
            v6 = (v6 + 1);
          }

          while (v3 != v6);
          result = [_fetchedObjectsArrayOfObjectIDs countByEnumeratingWithState:&v9 objects:v13 count:16];
          v3 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (uint64_t)_fetchedObjectsArrayOfObjectIDs
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self || [*(self + 8) resultType] == 2 || objc_msgSend(*(self + 8), "resultType") == 4)
  {
    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(self + 96), "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(self + 96);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v2 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "objectID")}];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    return v2;
  }

  v4 = *(self + 96);

  return [v4 arrayFromObjectIDs];
}

- (id)delegate
{
  delegate = self->_delegate;
  if (delegate)
  {
    return objc_loadWeak(delegate + 1);
  }

  else
  {
    return 0;
  }
}

- (NSArray)fetchedObjects
{
  fetchedObjects = self->_fetchedObjects;
  if ((*&self->_flags & 4) != 0)
  {
    v4 = [fetchedObjects copy];
  }

  else
  {
    v4 = fetchedObjects;
  }

  return v4;
}

+ (uint64_t)_CoreDataSectionCachesPath
{
  objc_opt_self();
  result = _CoreDataSectionCachesPath__cachesPath;
  if (!_CoreDataSectionCachesPath__cachesPath)
  {
    v2 = objc_opt_class();
    objc_sync_enter(v2);
    v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    if ([(NSArray *)v3 count])
    {
      v4 = [(NSArray *)v3 objectAtIndex:0];
    }

    else
    {
      v4 = NSTemporaryDirectory();
    }

    v5 = v4;
    v6 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    if ([v6 length])
    {
      v5 = [(NSString *)v5 stringByAppendingPathComponent:v6];
    }

    v7 = [[(NSString *)v5 stringByAppendingPathComponent:@".CoreDataCaches"] stringByAppendingPathComponent:@"SectionInfoCaches"];
    if (!_CoreDataSectionCachesPath__cachesPath)
    {
      _CoreDataSectionCachesPath__cachesPath = v7;
    }

    objc_sync_exit(v2);
    return _CoreDataSectionCachesPath__cachesPath;
  }

  return result;
}

- (NSArray)sections
{
  v2 = [(NSMutableOrderedSet *)self->_sections copy];
  array = [v2 array];

  return array;
}

- (NSFetchedResultsController)initWithFetchRequest:(NSFetchRequest *)fetchRequest managedObjectContext:(NSManagedObjectContext *)context sectionNameKeyPath:(NSString *)sectionNameKeyPath cacheName:(NSString *)name
{
  v44 = *MEMORY[0x1E69E9840];
  if (!fetchRequest || !context || ![(NSFetchRequest *)fetchRequest sortDescriptors])
  {
    v34 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v35 = objc_msgSend_stringWithFormat_(v34, v36);

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0]);
  }

  v42.receiver = self;
  v42.super_class = NSFetchedResultsController;
  v11 = [(NSFetchedResultsController *)&v42 init];
  if (v11)
  {
    v11->_fetchRequest = fetchRequest;
    v11->_managedObjectContext = context;
    v12 = [(NSString *)sectionNameKeyPath copy];
    v11->_sectionNameKeyPath = v12;
    v11->_flags = (*&v11->_flags & 0xFFFFFFF7 | (8 * (v12 != 0)));
    predicate = [(NSFetchRequest *)v11->_fetchRequest predicate];
    v11->_originalPredicate = predicate;
    if (predicate)
    {
      v11->_remappedPredicate = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, v11->_managedObjectContext];
    }

    v11->_cacheName = [(NSString *)name copy];
    sortDescriptors = [(NSFetchRequest *)v11->_fetchRequest sortDescriptors];
    [(NSFetchRequest *)v11->_fetchRequest _resolveEntityWithContext:context];
    entity = [(NSFetchRequest *)v11->_fetchRequest entity];
    v11->_flags = (*&v11->_flags & 0xFFFFDFFF | (([(NSFetchRequest *)v11->_fetchRequest resultType]== 2) << 13));
    v37 = context;
    if ([(NSDictionary *)[(NSEntityDescription *)entity subentitiesByName] count])
    {
      if ([(NSFetchRequest *)v11->_fetchRequest includesSubentities])
      {
        v16 = 32;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v11->_flags = (*&v11->_flags & 0xFFFFFFDF | v16);
    v11->_sortKeys = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = [(NSArray *)sortDescriptors countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(sortDescriptors);
          }

          v21 = [*(*(&v38 + 1) + 8 * i) key];
          array = [MEMORY[0x1E695DF70] array];
          for (j = v21; ; v21 = j)
          {
            [j rangeOfString:@"."];
            if (!v24)
            {
              break;
            }

            [array insertObject:objc_msgSend(v21 atIndex:{"pathExtension"), 0}];
            j = [v21 stringByDeletingPathExtension];
          }

          [v11->_sortKeys addObject:v21];
          [array insertObject:v21 atIndex:0];
          if ((*(&v11->_flags + 1) & 0x20) == 0)
          {
            if ([(NSFetchedResultsController *)v11 _keyPathContainsNonPersistedProperties:array])
            {
              v25 = 0x2000;
            }

            else
            {
              v25 = 0;
            }

            v11->_flags = (*&v11->_flags & 0xFFFFDFFF | v25);
          }
        }

        v18 = [(NSArray *)sortDescriptors countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v18);
    }

    if ((*&v11->_flags & 8) != 0)
    {
      v11->_sectionNameKey = v11->_sectionNameKeyPath;
      array2 = [MEMORY[0x1E695DF70] array];
      [(NSString *)v11->_sectionNameKey rangeOfString:@"."];
      if (v27)
      {
        do
        {
          [array2 insertObject:-[NSString pathExtension](v11->_sectionNameKey atIndex:{"pathExtension"), 0}];
          stringByDeletingPathExtension = [(NSString *)v11->_sectionNameKey stringByDeletingPathExtension];
          v11->_sectionNameKey = stringByDeletingPathExtension;
          [(NSString *)stringByDeletingPathExtension rangeOfString:@"."];
        }

        while (v29);
      }

      v30 = v11->_sectionNameKey;
      [array2 insertObject:v11->_sectionNameKey atIndex:0];
      if ((*(&v11->_flags + 1) & 0x20) == 0)
      {
        if ([(NSFetchedResultsController *)v11 _keyPathContainsNonPersistedProperties:array2])
        {
          v31 = 0x2000;
        }

        else
        {
          v31 = 0;
        }

        v11->_flags = (*&v11->_flags & 0xFFFFDFFF | v31);
      }
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (v11->_cacheName)
    {
      persistentStoreCoordinator = [(NSManagedObjectContext *)v37 persistentStoreCoordinator];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }

  return v11;
}

- (uint64_t)_keyPathContainsNonPersistedProperties:(void *)properties
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(objc_msgSend(properties "fetchRequest")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = [v3 objectForKey:*(*(&v14 + 1) + 8 * i)];
        if (!v8)
        {
          return 1;
        }

        v9 = v8;
        if ([v8 isTransient])
        {
          return 1;
        }

        _propertyType = [v9 _propertyType];
        if ([v9 _isAttribute])
        {
          attributeType = [v9 attributeType];
          if (attributeType == 1800 || attributeType == 0)
          {
            v18 = 1;
            if (!attributeType)
            {
              return v18;
            }
          }

          else
          {
            v3 = 0;
            if (!attributeType)
            {
              return v18;
            }
          }

          if (attributeType == 1800)
          {
            return v18;
          }
        }

        else if ([v9 _isRelationship])
        {
          v3 = [objc_msgSend(v9 "destinationEntity")];
        }

        else
        {
          if (_propertyType)
          {
            v13 = _propertyType == 3;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            return 1;
          }

          v3 = 0;
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v14 objects:v19 count:16];
      result = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = NSFetchedResultsController;
  [(NSFetchedResultsController *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v5 = self->_delegate;
  if (!v5)
  {
LABEL_7:
    if (!delegate)
    {
      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = 2048;
    }

    else
    {
      v8 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v8);
    v9 = BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88);
    if ((objc_opt_respondsToSelector() & 1) != 0 && (NSClassFromString(@"NSDiffableDataSourceSnapshot") || NSClassFromString(@"_PFDiffableDataSourceSnapshot")))
    {
      v10 = 256;
LABEL_15:
      *&self->_flags |= v10;
LABEL_16:
      if ([(NSFetchRequest *)self->_fetchRequest resultType]== 2)
      {
        if (BYTE4(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
        {
          v11 = MEMORY[0x1E696AEC0];
          v12 = objc_opt_class();
          v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(v11 userInfo:{v12), 0}];
          objc_exception_throw(v13);
        }
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        managedObjectContext = [(NSFetchedResultsController *)self managedObjectContext];
        if (managedObjectContext)
        {
          atomic_store(1u, &managedObjectContext->_generatedMutatedIDsNotification);
        }
      }

LABEL_57:
      self->_delegate = [[_PFWeakReference alloc] initWithObject:delegate];
      return;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && !self->_sectionNameKeyPath)
    {
      managedObjectContext = self->_managedObjectContext;
      if (managedObjectContext)
      {
        atomic_store(1u, &managedObjectContext->_generatedMutatedIDsNotification);
      }

      v10 = 64;
      goto LABEL_15;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_40:
      v21 = objc_opt_respondsToSelector() & 1;
      if (v21)
      {
        v22 = 128;
      }

      else
      {
        v22 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFF7F | v22);
      v23 = objc_opt_respondsToSelector();
      if (v23)
      {
        v24 = 512;
      }

      else
      {
        v24 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFDFF | v24);
      v25 = objc_opt_respondsToSelector();
      if (v25)
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFFBFF | v26);
      v27 = objc_opt_respondsToSelector();
      if (v27)
      {
        v28 = 4096;
      }

      else
      {
        v28 = 0;
      }

      self->_flags = (*&self->_flags & 0xFFFFEFFF | v28);
      if (!v21 && v9 && (v23 & 1) == 0 && (v25 & 1) == 0 && (v27 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_16;
    }

    v14 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v31 = 0;
          v16 = "CoreData: error: Difference delegate method is not supported when fetched results controller is configured with a sectionNameKeyPath\n";
          v17 = &v31;
LABEL_60:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v16, v17, 2u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v16 = "CoreData: warning: Difference delegate method is not supported when fetched results controller is configured with a sectionNameKeyPath\n";
          v17 = buf;
          goto LABEL_60;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    _NSCoreDataLog_console(v20, "Difference delegate method is not supported when fetched results controller is configured with a sectionNameKeyPath");
    objc_autoreleasePoolPop(v14);
    goto LABEL_40;
  }

  WeakRetained = objc_loadWeakRetained(v5 + 1);
  if (WeakRetained)
  {
    v7 = WeakRetained == delegate;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v29 = WeakRetained;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    *&self->_flags &= 0xFFFFE03F;
    self->_delegate = 0;

    goto LABEL_7;
  }
}

- (uint64_t)_indexOfCachedID:(uint64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    return 0;
  }

  v3 = [*(d + 136) objectForKey:a2];
  if (v3)
  {
    integerValue = [v3 integerValue];
    if (integerValue != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = integerValue;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = *(d + 144);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v7)
      {
        return v5;
      }

      v8 = v7;
      v9 = *v14;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (!v11)
        {
          goto LABEL_13;
        }

        if (v5 >= *(v11 + 8))
        {
          break;
        }

LABEL_14:
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (!v8)
          {
            return v5;
          }

          goto LABEL_7;
        }
      }

      v11 = *(v11 + 24);
LABEL_13:
      v5 += v11;
      goto LABEL_14;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_indexOfFetchedID:(int)d isManagedObjectID:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if ([result[1] resultType] == 1)
  {
    goto LABEL_3;
  }

  if ([v5[1] resultType] != 2)
  {
    if ([v5[1] resultType])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Result type of fetched object is not an NSManagedObjectIDResultType userInfo:{NSDictionaryResultType or NSManagedObjectResultType.", 0}]);
    }

    if ((d & 1) == 0)
    {
      a2 = [a2 objectID];
    }

LABEL_3:
    if ((objc_opt_respondsToSelector() & 1) != 0 && d)
    {
      v6 = v5[12];

      return [v6 indexOfManagedObjectForObjectID:a2];
    }

    else
    {

      return [(NSFetchedResultsController *)v5 _indexOfCachedID:a2];
    }
  }

  v7 = v5[12];

  return [v7 indexOfObject:a2];
}

- (BOOL)performFetch:(NSError *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  resultType = [(NSFetchRequest *)self->_fetchRequest resultType];
  returnsObjectsAsFaults = [(NSFetchRequest *)self->_fetchRequest returnsObjectsAsFaults];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__NSFetchedResultsController_performFetch___block_invoke;
  v12[3] = &unk_1E6EC3478;
  v13 = resultType == 2;
  v12[4] = self;
  v12[5] = &v21;
  v12[6] = &v15;
  v14 = returnsObjectsAsFaults;
  [(NSFetchedResultsController *)self _recursivePerformBlockAndWait:v12 withContext:self->_managedObjectContext];
  if (!v16[5])
  {
    delegate = [(NSFetchedResultsController *)self delegate];
    if (delegate)
    {
      -[NSFetchedResultsController _conditionallyDispatchSnapshotToDelegate:updatesInfo:](self, delegate, [MEMORY[0x1E695DFD8] set]);
    }
  }

  v8 = v16[5];
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

void __43__NSFetchedResultsController_performFetch___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 96) = 0;

  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 144) = 0;

  *(*(a1 + 32) + 104) = 0;
  *(*(a1 + 32) + 112) = 0;

  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 72) &= ~4u;
  *(*(a1 + 32) + 72) &= ~2u;
  [*(*(a1 + 32) + 8) setReturnsObjectsAsFaults:1];
  if (BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88) == 1 && (*(a1 + 56) & 1) == 0 && (![*(*(a1 + 32) + 16) hasChanges] || (objc_msgSend(*(*(a1 + 32) + 8), "includesPendingChanges") & 1) == 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = [(NSFetchedResultsController *)*(a1 + 32) _restoreCachedSectionInfo];
  }

  v2 = *(a1 + 32);
  if (!*(v2 + 96))
  {
    *(*(a1 + 32) + 96) = [*(v2 + 16) executeFetchRequest:*(v2 + 8) error:*(*(a1 + 48) + 8) + 40];
    if ((*(a1 + 56) & 1) == 0)
    {
      *(*(a1 + 32) + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(*(a1 + 32) + 136) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 96), "count")}];
      [(NSFetchedResultsController *)*(a1 + 32) _updateIndexCacheWithFetchedObjects];
    }

    if (BYTE3(z9dsptsiQ80etb9782fsrs98bfdle88) != 1 || *(a1 + 56) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = [(NSFetchedResultsController *)*(a1 + 32) _restoreCachedSectionInfo];
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  if (v4)
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if ([*(v3 + 104) count])
      {
        goto LABEL_24;
      }

      v3 = *(a1 + 32);
      v4 = *(v3 + 96);
    }

    *(*(*(a1 + 40) + 8) + 24) = [(NSFetchedResultsController *)v3 _computeSectionInfo:v4 error:(*(*(a1 + 48) + 8) + 40)];
    if (*(*(*(a1 + 40) + 8) + 24) != 1 || (v5 = *(a1 + 32), *(v5 + 40)) && *(v5 + 80) && ((v6 = *(v5 + 16)) == 0 || (*(v6 + 41) & 0x40) == 0) && (*(v5 + 72) |= 1u, [(NSFetchedResultsController *)*(a1 + 32) _core_managedObjectContextDidSave:?], (*(*(*(a1 + 40) + 8) + 24) & 1) == 0))
    {

      *(*(a1 + 32) + 96) = 0;
      *(*(a1 + 32) + 136) = 0;

      *(*(a1 + 32) + 144) = 0;
    }
  }

LABEL_24:
  [*(*(a1 + 32) + 8) setReturnsObjectsAsFaults:*(a1 + 57)];
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = *(a1 + 32);
  if (!*(v8 + 96))
  {

    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 112) = 0;

    *(*(a1 + 32) + 120) = 0;
    *(*(a1 + 32) + 128) = 0;
    *(*(a1 + 32) + 72) &= ~4u;
    *(*(a1 + 32) + 72) &= ~2u;
  }
}

- (BOOL)_computeSectionInfo:(id *)info error:
{
  v117 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v4 = a2;
  v6 = [a2 count];

  *(self + 104) = objc_alloc_init(MEMORY[0x1E695DFA0]);
  *(self + 112) = objc_alloc_init(MEMORY[0x1E695DF90]);

  *(self + 120) = 0;
  *(self + 128) = 0;
  v7 = *(self + 72);
  v89 = v6;
  if (!v6 && (v7 & 8) != 0)
  {
    return 1;
  }

  if ((v7 & 8) == 0)
  {
    v8 = [[_NSDefaultSectionInfo alloc] initWithController:self name:0 sectionId:0 indexTitle:0 sectionOffset:0];
    v9 = v8;
    if (v8)
    {
      v8[5] = v89;

      v9[7] = 0;
    }

    [*(self + 104) addObject:v9];

    return 1;
  }

  if ([*(self + 8) includesPendingChanges] && ((objc_msgSend(*(self + 16), "hasChanges") & 1) != 0 || objc_msgSend(*(self + 16), "parentContext")) || (*(self + 73) & 0x20) != 0 || objc_msgSend(*(self + 8), "fetchLimit") || objc_msgSend(*(self + 8), "fetchOffset"))
  {
    goto LABEL_14;
  }

  v34 = [objc_msgSend(*(self + 8) "affectedStores")];
  if (!v34)
  {
    v34 = [objc_msgSend(objc_msgSend(*(self + 16) "persistentStoreCoordinator")];
  }

  v35 = v34;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v36 = [v34 countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v102;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v102 != v38)
        {
          objc_enumerationMutation(v34);
        }

        if ([*(*(&v101 + 1) + 8 * i) type] != @"SQLite")
        {
          goto LABEL_14;
        }
      }

      v37 = [v34 countByEnumeratingWithState:&v101 objects:v113 count:16];
    }

    while (v37);
  }

  v86 = v4;
  infoCopy = info;
  v40 = [objc_msgSend(self "fetchRequest")];
  [v40 setResultType:2];
  [v40 setIncludesPropertyValues:1];
  [v40 setFetchBatchSize:0];
  sectionNameKeyPath = [self sectionNameKeyPath];
  v42 = objc_alloc_init(NSExpressionDescription);
  -[NSExpressionDescription setExpression:](v42, "setExpression:", [MEMORY[0x1E696ABC8] expressionForFunction:@"count:" arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForFunction:selectorName:arguments:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", NSClassFromString(@"_NSPredicateUtilities")), @"distinct:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForEvaluatedObject"))))}]);
  [(NSPropertyDescription *)v42 setName:@"sectionCount"];
  [(NSExpressionDescription *)v42 setExpressionResultType:200];
  [v40 setPropertiesToFetch:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", sectionNameKeyPath, v42, 0)}];
  [v40 setPropertiesToGroupBy:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", sectionNameKeyPath, 0)}];
  sortDescriptors = [v40 sortDescriptors];
  if (![sortDescriptors count])
  {
    v50 = 1;
    goto LABEL_69;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v44 = [sortDescriptors countByEnumeratingWithState:&v97 objects:v112 count:16];
  if (!v44)
  {
    goto LABEL_64;
  }

  v45 = v44;
  v46 = 0;
  v47 = *v98;
  do
  {
    for (j = 0; j != v45; ++j)
    {
      if (*v98 != v47)
      {
        objc_enumerationMutation(sortDescriptors);
      }

      v49 = *(*(&v97 + 1) + 8 * j);
      if ([sectionNameKeyPath isEqualToString:{objc_msgSend(v49, "key")}])
      {
        v46 = v49;
      }
    }

    v45 = [sortDescriptors countByEnumeratingWithState:&v97 objects:v112 count:16];
  }

  while (v45);
  info = infoCopy;
  if (!v46)
  {
LABEL_64:
    v50 = [objc_msgSend(sortDescriptors objectAtIndex:{0), "ascending"}];
LABEL_69:
    v46 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:sectionNameKeyPath ascending:v50];
  }

  [v40 setSortDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v46)}];
  v96 = 0;
  v53 = [objc_msgSend(self "managedObjectContext")];
  if (v53)
  {
    v54 = v53;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v55 = [v53 countByEnumeratingWithState:&v92 objects:v105 count:16];
    if (!v55)
    {
      return 1;
    }

    v56 = v55;
    v57 = 0;
    v90 = *v93;
    obja = v54;
LABEL_73:
    v58 = 0;
    while (1)
    {
      if (*v93 != v90)
      {
        objc_enumerationMutation(obja);
      }

      v59 = *(*(&v92 + 1) + 8 * v58);
      v60 = objc_autoreleasePoolPush();
      v61 = [v59 valueForKeyPath:sectionNameKeyPath];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(self + 72) |= 0x10u;
        _retainedURIString = [v61 _retainedURIString];
      }

      else
      {
        _retainedURIString = [v61 description];
      }

      v63 = _retainedURIString;
      if (_retainedURIString)
      {
        goto LABEL_86;
      }

      v64 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v65 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v67 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v65)
        {
          if (v67)
          {
            goto LABEL_93;
          }
        }

        else if (v67)
        {
LABEL_93:
          v74 = *(self + 24);
          *buf = 138412290;
          v107 = v74;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) A section returned nil value for section name key path '%@'. Objects will be placed in unnamed section\n", buf, 0xCu);
        }
      }

      _NSCoreDataLog_console(1, "(NSFetchedResultsController) A section returned nil value for section name key path '%@'. Objects will be placed in unnamed section", *(self + 24));
      objc_autoreleasePoolPop(v64);
      v63 = &stru_1EF3F1768;
LABEL_86:
      v68 = [*(self + 112) objectForKey:v63];
      if (v68)
      {
        v69 = v68;
        v70 = [objc_msgSend(v59 valueForKeyPath:{@"sectionCount", "unsignedIntValue"}];
        *(v69 + 40) = [v69 numberOfObjects] + v70;

        *(v69 + 56) = 0;
      }

      else
      {
        v71 = [(NSFetchedResultsController *)self _resolveSectionIndexTitleForSectionName:v63];
        v72 = -[_NSDefaultSectionInfo initWithController:name:sectionId:indexTitle:sectionOffset:]([_NSDefaultSectionInfo alloc], self, v63, [v59 valueForKeyPath:sectionNameKeyPath], v71, v57);
        v73 = [objc_msgSend(v59 valueForKeyPath:{@"sectionCount", "unsignedIntValue"}];
        v70 = v73;
        if (v72)
        {
          v72[5] = v73;

          v72[7] = 0;
        }

        [*(self + 104) addObject:v72];
        [*(self + 112) setObject:v72 forKey:v63];
      }

      v57 += v70;
      objc_autoreleasePoolPop(v60);
      if (v56 == ++v58)
      {
        v75 = [obja countByEnumeratingWithState:&v92 objects:v105 count:16];
        v56 = v75;
        if (!v75)
        {
          return 1;
        }

        goto LABEL_73;
      }
    }
  }

  v76 = objc_autoreleasePoolPush();
  v4 = v86;
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    v77 = _pflogging_catastrophic_mode;
    v78 = _PFLogGetLogStream(1);
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
    if (v77)
    {
      if (v79)
      {
        goto LABEL_103;
      }
    }

    else if (v79)
    {
LABEL_103:
      v81 = v96;
      userInfo = [v96 userInfo];
      *buf = 138412802;
      v107 = v40;
      v108 = 2112;
      v109 = v81;
      v110 = 2112;
      v111 = userInfo;
      _os_log_error_impl(&dword_18565F000, v78, OS_LOG_TYPE_ERROR, "CoreData: error: Fetching ERROR during section computation with request = %@ and error = %@ and userInfo = %@\n", buf, 0x20u);
    }
  }

  _NSCoreDataLog_console(1, "Fetching ERROR during section computation with request = %@ and error = %@ and userInfo = %@", v40, v96, [v96 userInfo]);
  objc_autoreleasePoolPop(v76);
LABEL_14:
  v10 = [MEMORY[0x1E695DFA8] set];
  if ([*(self + 8) resultType] != 2)
  {
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __72__NSFetchedResultsController_PrivateMethods___computeSectionInfo_error___block_invoke;
    v91[3] = &unk_1E6EC1C40;
    v91[5] = self;
    v91[6] = v89;
    v91[4] = v4;
    [(NSFetchedResultsController *)self _recursivePerformBlockAndWait:v91 withContext:*(self + 16)];
  }

  v11 = [v4 objectAtIndex:0];
  v12 = [(NSFetchedResultsController *)self _sectionNameForObject:v11];
  v13 = [(NSFetchedResultsController *)self _resolveSectionIndexTitleForSectionName:v12];
  v14 = [_NSDefaultSectionInfo alloc];
  if ([*(self + 8) resultType] != 1)
  {
    if ([*(self + 8) resultType] == 4)
    {
      v11 = @"Count";
    }

    else
    {
      v11 = [(__CFString *)v11 valueForKeyPath:*(self + 24)];
    }
  }

  obj = v13;
  v15 = [(_NSDefaultSectionInfo *)v14 initWithController:self name:v12 sectionId:v11 indexTitle:v13 sectionOffset:0];
  [*(self + 104) addObject:v15];
  [*(self + 112) setObject:v15 forKey:v12];

  if (v89 < 2)
  {
    v16 = 1;
LABEL_33:

    if (v15)
    {
      v15[5] = v16;

      v15[7] = 0;
    }

    return 1;
  }

  v85 = v4;
  infoCopy2 = info;
  v17 = 0;
  v16 = 1;
  v18 = 1;
  while (1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v85 objectAtIndex:v18];
    v21 = [(NSFetchedResultsController *)self _sectionNameForObject:v20];
    if (([(__CFString *)v21 isEqualToString:v12]& 1) == 0)
    {
      break;
    }

LABEL_32:
    ++v16;
    objc_autoreleasePoolPop(v19);
    v17 = ++v18 >= v89;
    if (v89 == v18)
    {
      goto LABEL_33;
    }
  }

  if (![v10 containsObject:v21])
  {
    [v10 addObject:v12];
    if (v15)
    {
      v15[5] = v16;

      v15[7] = 0;
    }

    v12 = v21;
    v22 = [(NSFetchedResultsController *)self _resolveSectionIndexTitleForSectionName:v12];
    v23 = [_NSDefaultSectionInfo alloc];
    if ([*(self + 8) resultType] == 1)
    {
      v24 = v20;
    }

    else
    {
      resultType = [*(self + 8) resultType];
      v24 = @"Count";
      if (resultType != 4)
      {
        v24 = [(__CFString *)v20 valueForKeyPath:*(self + 24), @"Count"];
      }
    }

    obj = v22;
    v15 = [(_NSDefaultSectionInfo *)v23 initWithController:self name:v12 sectionId:v24 indexTitle:v22 sectionOffset:v18];
    [*(self + 104) addObject:v15];
    [*(self + 112) setObject:v15 forKey:v12];

    v16 = 0;
    goto LABEL_32;
  }

  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, v12);
  v28 = infoCopy2;
  if (infoCopy2)
  {
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    *infoCopy2 = [v29 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v27, @"reason"}];
  }

  v30 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v31 = _pflogging_catastrophic_mode;
    v32 = _PFLogGetLogStream(1);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      v28 = infoCopy2;
      if (v33)
      {
LABEL_100:
        v80 = objc_opt_class();
        *v113 = 138412546;
        v114 = v80;
        v115 = 2112;
        v116 = v27;
        _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: (%@) %@\n", v113, 0x16u);
      }
    }

    else
    {
      v28 = infoCopy2;
      if (v33)
      {
        goto LABEL_100;
      }
    }
  }

  v51 = objc_opt_class();
  _NSCoreDataLog_console(1, "(%@) %@", v51, v27);
  objc_autoreleasePoolPop(v30);

  *(self + 104) = 0;
  *(self + 112) = 0;

  *(self + 120) = 0;
  *(self + 128) = 0;
  objc_autoreleasePoolPop(v19);

  if (v28)
  {
    v52 = *v28;
  }

  return v17;
}

- (void)_core_managedObjectContextDidSave:(uint64_t)save
{
  v185 = *MEMORY[0x1E69E9840];
  if (save)
  {
    v4 = [objc_msgSend(a2 "userInfo")];
    if ([v4 count])
    {
      v177 = @"updated_objectIDs";
      v178 = v4;
      -[NSFetchedResultsController _core_managedObjectContextDidChange:](save, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1]);
    }

    if (*(save + 40) && *(save + 80))
    {
      _sectionCachePath = [(NSFetchedResultsController *)save _sectionCachePath];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v165 = 0;
      v7 = [defaultManager fileExistsAtPath:_sectionCachePath];
      userInfo = [a2 userInfo];
      v9 = [_sectionCachePath stringByAppendingPathComponent:@"sectionInfo"];
      memset(&v176, 0, sizeof(v176));
      v10 = stat([v9 fileSystemRepresentation], &v176);
      st_size = v176.st_size;
      fileSystemRepresentation = [v9 fileSystemRepresentation];
      if (a2)
      {
        if ([a2 object] == *(save + 16))
        {
          if ((*(save + 72) & 0x1080) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v13 = [userInfo objectForKey:@"managedObjectContext"];
          if (v13 && v13 != *(save + 16))
          {
LABEL_10:
            if (fileSystemRepresentation)
            {
              v14 = open(fileSystemRepresentation, 1026, 384);
              if ((v14 & 0x80000000) == 0)
              {
                close(v14);
              }
            }

            return;
          }
        }
      }

      v15 = *(save + 72);
      if ((((v15 & 1) == 0) & v7) != 1 || v10 || st_size < 1)
      {
LABEL_36:
        *(save + 72) = v15 & 0xFFFFFFFE;
        if (v7 & 1) != 0 || ([defaultManager createDirectoryAtPath:_sectionCachePath withIntermediateDirectories:1 attributes:0 error:&v165])
        {
          if (fileSystemRepresentation)
          {
            v36 = open(fileSystemRepresentation, 1538, 384);
            if ((v36 & 0x80000000) == 0)
            {
              v37 = v36;
              v119 = fileSystemRepresentation;
              v38 = objc_alloc_init(MEMORY[0x1E696AAC8]);
              v39 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
              [v39 appendBytes:"41b5a6b5c6e848c462a8480cd24caef3" length:32];
              _writeInt64IntoData(v39, 0);
              __buf = 0;
              _writeInt64IntoData(v39, 0);
              _writeStringIntoData([objc_msgSend(*(save + 8) "entity")], v39, &v176);
              _writeDataIntoData([objc_msgSend(*(save + 8) "entity")], v39);
              _writeStringIntoData(*(save + 24), v39, &v176);
              _writeInt32IntoData(v39, [*(save + 96) count]);
              sortDescriptors = [*(save + 8) sortDescriptors];
              _writeInt32IntoData(v39, [sortDescriptors count]);
              v163 = 0u;
              v164 = 0u;
              v161 = 0u;
              v162 = 0u;
              v41 = [sortDescriptors countByEnumeratingWithState:&v161 objects:v175 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v162;
                do
                {
                  for (i = 0; i != v42; ++i)
                  {
                    if (*v162 != v43)
                    {
                      objc_enumerationMutation(sortDescriptors);
                    }

                    _writeStringIntoData([*(*(&v161 + 1) + 8 * i) key], v39, &v176);
                  }

                  v42 = [sortDescriptors countByEnumeratingWithState:&v161 objects:v175 count:16];
                }

                while (v42);
              }

              v124 = v38;
              [(NSFetchedResultsController *)save _appendAffectedStoreInfoToData:v39 adjustedOffset:&__buf];
              _writeInt32IntoData(v39, [*(save + 104) count]);
              v159 = 0u;
              v160 = 0u;
              v157 = 0u;
              v158 = 0u;
              v45 = *(save + 104);
              v46 = [v45 countByEnumeratingWithState:&v157 objects:v174 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v158;
                do
                {
                  v49 = 0;
                  do
                  {
                    if (*v158 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    v50 = *(*(&v157 + 1) + 8 * v49);
                    _writeStringIntoData([v50 name], v39, &v176);
                    _writeStringIntoData([v50 indexTitle], v39, &v176);
                    _writeInt32IntoData(v39, [v50 numberOfObjects]);
                    if (v50)
                    {
                      v51 = v50[8];
                    }

                    else
                    {
                      v51 = 0;
                    }

                    _writeInt32IntoData(v39, v51);
                    ++v49;
                  }

                  while (v47 != v49);
                  v52 = [v45 countByEnumeratingWithState:&v157 objects:v174 count:16];
                  v47 = v52;
                }

                while (v52);
              }

              __offsetb = v9;
              v156 = 0;
              v155 = 0;
              _fetchedObjectsArrayOfObjectIDs = [(NSFetchedResultsController *)save _fetchedObjectsArrayOfObjectIDs];
              if ([_PFRoutines _generateObjectIDMaptableForArray:_fetchedObjectsArrayOfObjectIDs withMapping:&v156 andEntries:&v155])
              {
                v115 = v37;
                _writeInt32IntoData(v39, 1u);
                v54 = [v156 objectAtIndex:0];
                v55 = [v156 objectAtIndex:1];
                v56 = [v156 objectAtIndex:2];
                loga = [v156 objectAtIndex:3];
                v57 = [v155 objectAtIndex:0];
                v58 = v57;
                if ([v155 count] >= 2)
                {
                  v58 = [v155 objectAtIndex:1];
                }

                _writeInt32IntoData(v39, [v54 count]);
                v153 = 0u;
                v154 = 0u;
                v151 = 0u;
                v152 = 0u;
                v59 = [v54 countByEnumeratingWithState:&v151 objects:v173 count:16];
                if (v59)
                {
                  v60 = v59;
                  v61 = *v152;
                  do
                  {
                    for (j = 0; j != v60; ++j)
                    {
                      if (*v152 != v61)
                      {
                        objc_enumerationMutation(v54);
                      }

                      _writeStringIntoData(*(*(&v151 + 1) + 8 * j), v39, &v176);
                    }

                    v60 = [v54 countByEnumeratingWithState:&v151 objects:v173 count:16];
                  }

                  while (v60);
                }

                _writeInt32IntoData(v39, [v55 count]);
                v149 = 0u;
                v150 = 0u;
                v147 = 0u;
                v148 = 0u;
                v63 = [v55 countByEnumeratingWithState:&v147 objects:v172 count:16];
                v64 = v124;
                if (v63)
                {
                  v65 = v63;
                  v66 = *v148;
                  do
                  {
                    for (k = 0; k != v65; ++k)
                    {
                      if (*v148 != v66)
                      {
                        objc_enumerationMutation(v55);
                      }

                      _writeStringIntoData(*(*(&v147 + 1) + 8 * k), v39, &v176);
                    }

                    v65 = [v55 countByEnumeratingWithState:&v147 objects:v172 count:16];
                  }

                  while (v65);
                }

                _writeInt32IntoData(v39, [v56 count]);
                v145 = 0u;
                v146 = 0u;
                v143 = 0u;
                v144 = 0u;
                v68 = [v56 countByEnumeratingWithState:&v143 objects:v171 count:16];
                if (v68)
                {
                  v69 = v68;
                  v70 = *v144;
                  do
                  {
                    for (m = 0; m != v69; ++m)
                    {
                      if (*v144 != v70)
                      {
                        objc_enumerationMutation(v56);
                      }

                      _writeInt32IntoData(v39, *(*(&v143 + 1) + 8 * m));
                    }

                    v69 = [v56 countByEnumeratingWithState:&v143 objects:v171 count:16];
                  }

                  while (v69);
                }

                _writeInt64IntoData(v39, [loga longLongValue]);
                if ([v155 count] >= 2)
                {
                  _writeInt32IntoData(v39, [v57 count]);
                  if ([v56 count] > 0xFE)
                  {
                    v137 = 0uLL;
                    v138 = 0uLL;
                    v135 = 0uLL;
                    v136 = 0uLL;
                    v89 = [v57 countByEnumeratingWithState:&v135 objects:v169 count:16];
                    if (v89)
                    {
                      v90 = v89;
                      v91 = *v136;
                      do
                      {
                        for (n = 0; n != v90; ++n)
                        {
                          if (*v136 != v91)
                          {
                            objc_enumerationMutation(v57);
                          }

                          _writeInt16IntoData(v39, *(*(&v135 + 1) + 8 * n));
                        }

                        v90 = [v57 countByEnumeratingWithState:&v135 objects:v169 count:16];
                      }

                      while (v90);
                    }
                  }

                  else
                  {
                    v141 = 0uLL;
                    v142 = 0uLL;
                    v139 = 0uLL;
                    v140 = 0uLL;
                    v72 = [v57 countByEnumeratingWithState:&v139 objects:v170 count:16];
                    if (v72)
                    {
                      v73 = v72;
                      v74 = *v140;
                      do
                      {
                        for (ii = 0; ii != v73; ++ii)
                        {
                          if (*v140 != v74)
                          {
                            objc_enumerationMutation(v57);
                          }

                          buf[0] = *(*(&v139 + 1) + 8 * ii);
                          [v39 appendBytes:buf length:1];
                        }

                        v73 = [v57 countByEnumeratingWithState:&v139 objects:v170 count:16];
                      }

                      while (v73);
                    }
                  }
                }

                _writeInt32IntoData(v39, [v58 count]);
                if ([loga longLongValue]> 4294967294)
                {
                  v129 = 0uLL;
                  v130 = 0uLL;
                  v127 = 0uLL;
                  v128 = 0uLL;
                  v97 = [v58 countByEnumeratingWithState:&v127 objects:v167 count:16];
                  v37 = v115;
                  if (v97)
                  {
                    v98 = v97;
                    v99 = *v128;
                    do
                    {
                      for (jj = 0; jj != v98; ++jj)
                      {
                        if (*v128 != v99)
                        {
                          objc_enumerationMutation(v58);
                        }

                        _writeInt64IntoData(v39, *(*(&v127 + 1) + 8 * jj));
                      }

                      v98 = [v58 countByEnumeratingWithState:&v127 objects:v167 count:16];
                    }

                    while (v98);
                  }
                }

                else
                {
                  v133 = 0uLL;
                  v134 = 0uLL;
                  v131 = 0uLL;
                  v132 = 0uLL;
                  v93 = [v58 countByEnumeratingWithState:&v131 objects:v168 count:16];
                  v37 = v115;
                  if (v93)
                  {
                    v94 = v93;
                    v95 = *v132;
                    do
                    {
                      for (kk = 0; kk != v94; ++kk)
                      {
                        if (*v132 != v95)
                        {
                          objc_enumerationMutation(v58);
                        }

                        _writeInt32IntoData(v39, *(*(&v131 + 1) + 8 * kk));
                      }

                      v94 = [v58 countByEnumeratingWithState:&v131 objects:v168 count:16];
                    }

                    while (v94);
                  }
                }
              }

              else
              {
                _writeInt32IntoData(v39, 0);
                v64 = v124;
              }

              v101 = [v39 length];
              v126 = bswap64(v101);
              [v39 replaceBytesInRange:32 withBytes:{8, &v126}];
              v125 = bswap64(__buf);
              [v39 replaceBytesInRange:40 withBytes:{8, &v125}];
              v102 = pwrite(v37, [v39 bytes], v101, 0);
              if (v101 && v102 == v101)
              {
                goto LABEL_137;
              }

              v103 = *__error();
              v104 = objc_autoreleasePoolPush();
              _pflogInitialize(1);
              if (_pflogging_enable_oslog >= 1)
              {
                v105 = _pflogging_catastrophic_mode;
                LogStream = _PFLogGetLogStream(1);
                v107 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
                if (v105)
                {
                  if (v107)
                  {
                    goto LABEL_144;
                  }
                }

                else if (v107)
                {
LABEL_144:
                  v112 = objc_opt_class();
                  *buf = 138412802;
                  v180 = v112;
                  v181 = 2112;
                  v182 = __offsetb;
                  v183 = 1024;
                  v184 = v103;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): error writing section cached info at %@ with error %d\n", buf, 0x1Cu);
                }
              }

              v108 = objc_opt_class();
              _NSCoreDataLog_console(1, " (%@): error writing section cached info at %@ with error %d", v108, __offsetb, v103);
              objc_autoreleasePoolPop(v104);
              ftruncate(v37, 0);
              unlink(v119);
LABEL_137:

              close(v37);
              v22 = v64;
              goto LABEL_138;
            }
          }

          v76 = *__error();
          v77 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog < 1)
          {
            goto LABEL_102;
          }

          v78 = v9;
          v79 = _pflogging_catastrophic_mode;
          v80 = _PFLogGetLogStream(1);
          v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
          if (v79)
          {
            v9 = v78;
            if (v81)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v9 = v78;
            if (v81)
            {
LABEL_140:
              v109 = objc_opt_class();
              v176.st_dev = 138412802;
              *&v176.st_mode = v109;
              WORD2(v176.st_ino) = 2112;
              *(&v176.st_ino + 6) = v78;
              HIWORD(v176.st_gid) = 1024;
              v176.st_rdev = v76;
              _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): couldn't create section info file at %@ : %d\n", &v176, 0x1Cu);
            }
          }

LABEL_102:
          v86 = objc_opt_class();
          _NSCoreDataLog_console(1, " (%@): couldn't create section info file at %@ : %d", v86, v9, v76);
          v87 = v77;
LABEL_105:
          objc_autoreleasePoolPop(v87);
          return;
        }

        v82 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v83 = _pflogging_catastrophic_mode;
          v84 = _PFLogGetLogStream(1);
          v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
          if (v83)
          {
            if (v85)
            {
              goto LABEL_143;
            }
          }

          else if (v85)
          {
LABEL_143:
            v111 = objc_opt_class();
            v176.st_dev = 138412802;
            *&v176.st_mode = v111;
            WORD2(v176.st_ino) = 2112;
            *(&v176.st_ino + 6) = _sectionCachePath;
            HIWORD(v176.st_gid) = 2112;
            *&v176.st_rdev = v165;
            _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): couldn't create section info cache directory at %@ : %@\n", &v176, 0x20u);
          }
        }

        v88 = objc_opt_class();
        _NSCoreDataLog_console(1, " (%@): couldn't create section info cache directory at %@ : %@", v88, _sectionCachePath, v165);
        v87 = v82;
        goto LABEL_105;
      }

      v16 = [-[NSFetchedResultsController _sectionCachePath](save) stringByAppendingPathComponent:@"sectionInfo"];
      fileSystemRepresentation2 = [v16 fileSystemRepresentation];
      if (!fileSystemRepresentation2 || (v18 = open(fileSystemRepresentation2, 2), v18 < 0))
      {
LABEL_35:
        v15 = *(save + 72);
        goto LABEL_36;
      }

      v19 = v18;
      __buf = 0;
      memset(&v176, 0, sizeof(v176));
      if (fstat(v18, &v176) || v176.st_size < 40)
      {
LABEL_34:
        close(v19);
        goto LABEL_35;
      }

      if (pread(v19, &__buf, 8uLL, 40) == 8)
      {
        __offsetc = bswap64(__buf);
        v123 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        v20 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
        [(NSFetchedResultsController *)save _appendAffectedStoreInfoToData:v20 adjustedOffset:0];
        v21 = pwrite(v19, [v20 bytes], objc_msgSend(v20, "length"), __offsetc);
        if (v21 == [v20 length])
        {

          close(v19);
          v22 = v123;
LABEL_138:
          [v22 drain];
          return;
        }

        __offseta = *__error();
        v29 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog < 1)
        {
          goto LABEL_142;
        }

        v118 = v29;
        v30 = v20;
        v31 = fileSystemRepresentation;
        v32 = v9;
        v33 = _pflogging_catastrophic_mode;
        log = _PFLogGetLogStream(1);
        v34 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          v9 = v32;
          fileSystemRepresentation = v31;
          v20 = v30;
          v29 = v118;
          if (v34)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v9 = v32;
          fileSystemRepresentation = v31;
          v20 = v30;
          v29 = v118;
          if (v34)
          {
LABEL_146:
            v114 = objc_opt_class();
            *buf = 138412802;
            v180 = v114;
            v181 = 2112;
            v182 = v16;
            v183 = 1024;
            v184 = __offseta;
            _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): error writing section cached info at %@ with error %d\n", buf, 0x1Cu);
          }
        }

LABEL_142:
        v110 = objc_opt_class();
        _NSCoreDataLog_console(1, " (%@): error writing section cached info at %@ with error %d", v110, v16, __offseta);
        objc_autoreleasePoolPop(v29);
        ftruncate(v19, 0);

        close(v19);
        [v123 drain];
        goto LABEL_35;
      }

      v23 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v24 = fileSystemRepresentation;
        v25 = v9;
        v26 = _pflogging_catastrophic_mode;
        v27 = _PFLogGetLogStream(1);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          v9 = v25;
          fileSystemRepresentation = v24;
          if (v28)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v9 = v25;
          fileSystemRepresentation = v24;
          if (v28)
          {
LABEL_145:
            v113 = objc_opt_class();
            *buf = 138412290;
            v180 = v113;
            _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error:  (%@): couldn't read cache file to update store info timestamps\n", buf, 0xCu);
          }
        }
      }

      v35 = objc_opt_class();
      _NSCoreDataLog_console(1, " (%@): couldn't read cache file to update store info timestamps", v35);
      objc_autoreleasePoolPop(v23);
      goto LABEL_34;
    }
  }
}

- (void)_recursivePerformBlockAndWait:(void *)wait withContext:
{
  if (result)
  {
    v5 = result;
    parentContext = [wait parentContext];
    if ([wait concurrencyType])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __72__NSFetchedResultsController__recursivePerformBlockAndWait_withContext___block_invoke;
      v7[3] = &unk_1E6EC34A0;
      v7[4] = parentContext;
      v7[5] = v5;
      v7[6] = a2;
      return [wait performBlockAndWait:v7];
    }

    else
    {
      [(NSManagedObjectContext *)wait lockObjectStore];
      if (parentContext)
      {
        [(NSFetchedResultsController *)v5 _recursivePerformBlockAndWait:a2 withContext:parentContext];
      }

      else
      {
        (*(a2 + 16))(a2);
      }

      return [(NSManagedObjectContext *)wait unlockObjectStore];
    }
  }

  return result;
}

- (uint64_t)_conditionallyDispatchSnapshotToDelegate:(void *)delegate updatesInfo:
{
  v35 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (*(result + 73))
    {
      v4 = NSClassFromString(@"NSDiffableDataSourceSnapshot");
      if (!v4)
      {
        v4 = NSClassFromString(@"_PFDiffableDataSourceSnapshot");
      }

      v5 = objc_alloc_init(v4);
      context = objc_autoreleasePoolPush();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v22 = v3;
      obj = *(v3 + 104);
      v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v29;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            v11 = objc_autoreleasePoolPush();
            name = [v10 name];
            if (name)
            {
              v13 = name;
            }

            else
            {
              v13 = @"d69e6c783a242772974cfc99189691b88e9d37c3";
            }

            v33 = v13;
            [v5 appendSectionsWithIdentifiers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v33, 1)}];
            [v5 appendItemsWithIdentifiers:objc_msgSend_valueForKey_(objc_msgSend(v10 intoSectionWithIdentifier:{"objects")), v13}];
            objc_autoreleasePoolPop(v11);
          }

          v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v7);
      }

      if ([delegate count])
      {
        v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(delegate, "count")}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [delegate countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(delegate);
              }

              [v14 addObject:{objc_msgSend(objc_msgSend(*(*(&v24 + 1) + 8 * j), "object"), "objectID")}];
            }

            v16 = [delegate countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v16);
        }

        [v5 reloadItemsWithIdentifiers:v14];
      }

      objc_autoreleasePoolPop(context);
      [a2 controller:v22 didChangeContentWithSnapshot:v5];

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *__72__NSFetchedResultsController__recursivePerformBlockAndWait_withContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [(NSFetchedResultsController *)*(a1 + 40) _recursivePerformBlockAndWait:v1 withContext:?];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (id)objectAtIndexPath:(NSIndexPath *)indexPath
{
  v38 = *MEMORY[0x1E69E9840];
  if (!indexPath && (z9dsptsiQ80etb9782fsrs98bfdle88 & 0x100000000) != 0)
  {
    return 0;
  }

  v5 = [(NSIndexPath *)indexPath indexAtPosition:0];
  v6 = [(NSIndexPath *)indexPath indexAtPosition:1];
  sections = self->_sections;
  if (sections)
  {
    v8 = [(NSMutableOrderedSet *)sections count];
    if (v5 >= [(NSMutableOrderedSet *)self->_sections count])
    {
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v10 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v10)
          {
            if (v12)
            {
              *buf = 134217984;
              v35 = v5;
LABEL_41:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NSFetchedResultsController: no section at index %lu in sections list\n", buf, 0xCu);
            }
          }

          else if (v12)
          {
            *buf = 134217984;
            v35 = v5;
            goto LABEL_41;
          }
        }

        _NSCoreDataLog_console(1, "NSFetchedResultsController: no section at index %lu in sections list", v5);
        objc_autoreleasePoolPop(v9);
        if ((dword_1ED4BEEC0 & 0x1000000) == 0)
        {
          return 0;
        }

        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D940];
        v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5);
        v27 = v32;
        v28 = v33;
LABEL_44:
        objc_exception_throw([v27 exceptionWithName:v28 reason:v29 userInfo:0]);
      }

LABEL_16:
      v17 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_29;
      }

      v18 = _pflogging_catastrophic_mode;
      v19 = _PFLogGetLogStream(1);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (!v20)
        {
          goto LABEL_29;
        }

        *buf = 0;
      }

      else
      {
        if (!v20)
        {
          goto LABEL_29;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: NSFetchedResultsController: cannot access fetched objects before -performFetch:\n", buf, 2u);
LABEL_29:
      _NSCoreDataLog_console(1, "NSFetchedResultsController: cannot access fetched objects before -performFetch:");
      objc_autoreleasePoolPop(v17);
      if ((dword_1ED4BEEC0 & 0x1000000) != 0)
      {
        v27 = MEMORY[0x1E695DF30];
        v28 = *MEMORY[0x1E695D940];
        v29 = @"cannot access fetched objects before -performFetch:";
        goto LABEL_44;
      }

      return 0;
    }
  }

  else if (v5 >= [0 count])
  {
    goto LABEL_16;
  }

  v13 = [(NSMutableOrderedSet *)self->_sections objectAtIndex:v5];
  if (v6 >= [v13 numberOfObjects])
  {
    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_32;
    }

    v22 = _pflogging_catastrophic_mode;
    v23 = _PFLogGetLogStream(1);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    else if (!v24)
    {
      goto LABEL_32;
    }

    *buf = 134218240;
    v35 = v6;
    v36 = 2048;
    v37 = v5;
    _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: NSFetchedResultsController: no object at index %lu in section at index %lu\n", buf, 0x16u);
LABEL_32:
    _NSCoreDataLog_console(1, "NSFetchedResultsController: no object at index %lu in section at index %lu", v6, v5);
    objc_autoreleasePoolPop(v21);
    if (HIBYTE(dword_1ED4BEEC0) == 1)
    {
      v30 = MEMORY[0x1E695DF30];
      v31 = *MEMORY[0x1E695D940];
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, v5);
      v27 = v30;
      v28 = v31;
      goto LABEL_44;
    }

    return 0;
  }

  if (v13)
  {
    v14 = v13[4];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 + v6;
  if (v14 + v6 >= [self->_fetchedObjects count])
  {
    v16 = 0;
  }

  else
  {
    v16 = [self->_fetchedObjects objectAtIndex:v15];
  }

  v25 = v16;

  return v25;
}

- (NSIndexPath)indexPathForObject:(id)object
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!object)
  {
    return 0;
  }

  v4 = (*&self->_flags & 8) != 0 ? [(NSMutableDictionary *)self->_sectionsByName objectForKey:[(NSFetchedResultsController *)self _sectionNameForObject:?]]: [(NSMutableOrderedSet *)self->_sections lastObject];
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = [(NSFetchedResultsController *)*(v4 + 8) _indexOfFetchedID:0 isManagedObjectID:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v6 - *(v5 + 32);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9[0] = [(_NSDefaultSectionInfo *)v5 sectionNumber];
  v9[1] = v7;
  return [MEMORY[0x1E696AC88] indexPathWithIndexes:v9 length:2];
}

- (__CFString)_sectionNameForObject:(__CFString *)result
{
  if (result)
  {
    v3 = result;
    if ([result->info resultType] == 1)
    {
      _retainedURIString = [a2 _retainedURIString];

      return _retainedURIString;
    }

    else if ([v3->info resultType] == 4)
    {
      return @"Count";
    }

    else
    {
      v5 = [a2 valueForKeyPath:v3->length];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectID = [v5 objectID];
        LODWORD(v3[2].info) |= 0x10u;
        result = [objectID _retainedURIString];
      }

      else
      {
        result = [v5 description];
      }

      if (!result)
      {
        return &stru_1EF3F1768;
      }
    }
  }

  return result;
}

- (NSString)sectionIndexTitleForSectionName:(NSString *)sectionName
{
  if (!sectionName || ![(NSString *)sectionName length])
  {
    return 0;
  }

  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSString *)sectionName characterAtIndex:0]);

  return [v4 uppercaseString];
}

- (NSArray)sectionIndexTitles
{
  v18 = *MEMORY[0x1E69E9840];
  result = self->_sectionIndexTitles;
  if (!result)
  {
    self->_sectionIndexTitles = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableOrderedSet count](self->_sections, "count")}];
    self->_sectionIndexTitlesSections = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableOrderedSet count](self->_sections, "count")}];
    if ((*&self->_flags & 8) != 0)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      sections = self->_sections;
      v5 = [(NSMutableOrderedSet *)sections countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v14;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(sections);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            indexTitle = [v10 indexTitle];
            if (indexTitle)
            {
              v12 = indexTitle;
              if (([v7 isEqualToString:indexTitle] & 1) == 0)
              {
                [self->_sectionIndexTitles addObject:v12];
                [self->_sectionIndexTitlesSections addObject:v10];
                v7 = v12;
              }
            }
          }

          v6 = [(NSMutableOrderedSet *)sections countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }
    }

    return self->_sectionIndexTitles;
  }

  return result;
}

- (NSInteger)sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)sectionIndex
{
  sectionIndexTitles = [(NSFetchedResultsController *)self sectionIndexTitles];
  if ([(NSArray *)sectionIndexTitles count]<= sectionIndex)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], sectionIndex);
    v13 = v10;
    v14 = v11;
    goto LABEL_8;
  }

  if (([-[NSArray objectAtIndex:](sectionIndexTitles objectAtIndex:{sectionIndex), "isEqualToString:", title}] & 1) == 0)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D930];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], sectionIndex, title);
    v13 = v15;
    v14 = v16;
LABEL_8:
    objc_exception_throw([v13 exceptionWithName:v14 reason:v12 userInfo:0]);
  }

  v8 = [self->_sectionIndexTitlesSections objectAtIndex:sectionIndex];

  return [(_NSDefaultSectionInfo *)v8 sectionNumber];
}

+ (void)deleteCacheWithName:(NSString *)name
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[NSFetchedResultsController _CoreDataSectionCachesPath];
  v6 = v5;
  if (name)
  {
    v6 = [v5 stringByAppendingPathComponent:name];
  }

  [defaultManager removeItemAtPath:v6 error:0];
}

void __72__NSFetchedResultsController_PrivateMethods___computeSectionInfo_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndex:v2];
      if (([v3 isFault] & 1) == 0 && (objc_msgSend(objc_msgSend(v3, "objectID"), "isTemporaryID") & 1) == 0)
      {
        v4 = [v3 _versionReference];
        v5 = [v3 objectID];
        v6 = *(*(a1 + 40) + 16);
        if (v6)
        {
          v7 = *(v6 + 32);
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 newValuesForObjectWithID:v5 withContext:? error:?];
        if (!v8 || (v9 = v8, v10 = [v8 _versionNumber], v9, v4 != v10))
        {
          if (([v3 hasChanges] & 1) == 0)
          {
            [*(*(a1 + 40) + 16) refreshObject:v3 mergeChanges:0];
          }
        }
      }

      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

- (uint64_t)_resolveSectionIndexTitleForSectionName:(uint64_t)name
{
  if ((*(name + 73) & 8) != 0)
  {
    v5 = *(name + 80);
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((v5 + 8));
    }

    else
    {
      WeakRetained = 0;
    }

    v7 = [WeakRetained controller:name sectionIndexTitleForSectionName:a2];

    return v7;
  }

  else
  {

    return [name sectionIndexTitleForSectionName:a2];
  }
}

- (void)_makeMutableFetchedObjects
{
  if ((*(self + 72) & 4) == 0)
  {
    v3 = *(self + 96);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *(self + 96) = [[_PFMutableProxyArray alloc] initWithPFArray:*(self + 96)];
      v4 = *(self + 72) | 2;
    }

    else
    {
      *(self + 96) = [MEMORY[0x1E695DF70] arrayWithArray:v3];
      v4 = *(self + 72) & 0xFFFFFFFD;
    }

    *(self + 72) = v4;

    *(self + 72) |= 4u;
  }
}

- (void)_indexPathForIndex:(void *)index
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [index countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(index);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 32);
        }

        else
        {
          v9 = 0;
        }

        if ([*(*(&v11 + 1) + 8 * v7) numberOfObjects] + v9 > a2)
        {
          v15[0] = [(_NSDefaultSectionInfo *)v8 sectionNumber];
          if (v8)
          {
            v10 = *(v8 + 32);
          }

          else
          {
            v10 = 0;
          }

          v15[1] = a2 - v10;
          return [MEMORY[0x1E696AC88] indexPathWithIndexes:v15 length:2];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [index countByEnumeratingWithState:&v11 objects:v16 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (__CFString)_objectInResults:(uint64_t)results
{
  v3 = *(results + 48);
  if ((*(results + 72) & 8) == 0 || (result = [(NSFetchedResultsController *)results _sectionNameForObject:a2]) != 0)
  {
    if ([a2 isDeleted])
    {
      return 0;
    }

    else if (v3)
    {

      return [v3 evaluateWithObject:a2];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)_updateSectionOffsetsStartingAtSection:(uint64_t)section
{
  v4 = [*(section + 104) count];
  v5 = [(_NSDefaultSectionInfo *)a2 sectionNumber]+ 1;
  if (v5 < v4)
  {
    do
    {
      v6 = [*(section + 104) objectAtIndex:v5];
      if (a2)
      {
        v7 = a2[4];
      }

      else
      {
        v7 = 0;
      }

      numberOfObjects = [a2 numberOfObjects];
      if (v6)
      {
        *(v6 + 32) = numberOfObjects + v7;

        *(v6 + 56) = 0;
      }

      ++v5;
      a2 = v6;
    }

    while (v4 != v5);
  }
}

- (BOOL)_updateFetchedObjectsWithInsertChange:(uint64_t)change
{
  v44 = *MEMORY[0x1E69E9840];
  object = [a2 object];
  if ((*(change + 72) & 8) == 0)
  {
    lastObject = [*(change + 104) lastObject];
LABEL_5:
    v6 = lastObject;
    goto LABEL_6;
  }

  v5 = [(NSFetchedResultsController *)change _sectionNameForObject:object];
  if (v5)
  {
    lastObject = [*(change + 112) objectForKey:v5];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:
  numberOfObjects = [v6 numberOfObjects];
  v8 = [*(change + 96) count];
  if (numberOfObjects > v8)
  {
    return numberOfObjects <= v8;
  }

  if (!v6)
  {
    if ((*(change + 72) & 8) != 0)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v12 = *(change + 104);
      v13 = [v12 countByEnumeratingWithState:&v39 objects:&v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v40;
        do
        {
          v16 = 0;
          do
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v39 + 1) + 8 * v16);
            if (v17)
            {
              v18 = *(v17 + 32);
            }

            else
            {
              v18 = 0;
            }

            [v11 addObject:{objc_msgSend(*(change + 96), "objectAtIndex:", v18)}];
            ++v16;
          }

          while (v14 != v16);
          v19 = [v12 countByEnumeratingWithState:&v39 objects:&v43 count:16];
          v14 = v19;
        }

        while (v19);
      }

      v20 = +[NSFetchedResultsController _insertIndexForObject:inArray:lowIdx:highIdx:sortDescriptors:](NSFetchedResultsController, object, v11, 0, [v11 count] - 1, objc_msgSend(objc_msgSend(change, "fetchRequest"), "sortDescriptors"));

      v21 = [(NSFetchedResultsController *)change _sectionNameForObject:object];
      v22 = object;
      if ([*(change + 8) resultType] != 1)
      {
        if ([*(change + 8) resultType] == 4)
        {
          v22 = @"Count";
        }

        else
        {
          v22 = [(__CFString *)object valueForKeyPath:*(change + 24)];
        }
      }

      v23 = [(NSFetchedResultsController *)change _resolveSectionIndexTitleForSectionName:v21];
      if (v20)
      {
        v24 = [*(change + 104) objectAtIndex:v20 - 1];
        if (v24)
        {
          v25 = v24[4];
        }

        else
        {
          v25 = 0;
        }

        v26 = [v24 numberOfObjects] + v25;
      }

      else
      {
        v26 = 0;
      }

      v6 = [[_NSDefaultSectionInfo alloc] initWithController:change name:v21 sectionId:v22 indexTitle:v23 sectionOffset:v26];
      [*(change + 104) insertObject:v6 atIndex:v20];
      [*(change + 112) setObject:v6 forKey:{objc_msgSend(v6, "name")}];

      *(change + 120) = 0;
      *(change + 128) = 0;
    }

    else
    {
      v6 = [[_NSDefaultSectionInfo alloc] initWithController:change name:0 sectionId:0 indexTitle:0 sectionOffset:0];
      [*(change + 104) addObject:v6];

      if (!*(change + 104))
      {
        v6 = 0;
LABEL_11:
        v9 = 0;
        v10 = 1;
        goto LABEL_36;
      }
    }

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v10 = 0;
  v9 = v6[4];
LABEL_36:
  v27 = +[NSFetchedResultsController _insertIndexForObject:inArray:lowIdx:highIdx:sortDescriptors:](NSFetchedResultsController, object, *(change + 96), v9, v9 + [v6 numberOfObjects] - 1, objc_msgSend(objc_msgSend(change, "fetchRequest"), "sortDescriptors"));
  if (v27 < [*(change + 96) count] && objc_msgSend(*(change + 96), "objectAtIndex:", v27))
  {
    v29 = [*(change + 96) count];
    v30 = [_PFIndexCacheOffset alloc];
    if (v30)
    {
      v43.receiver = v30;
      v43.super_class = _PFIndexCacheOffset;
      v31 = objc_msgSendSuper2(&v43, sel_init);
      v32 = v31;
      if (v31)
      {
        v31[1] = v27;
        v31[2] = v29;
        v31[3] = 1;
      }
    }

    else
    {
      v32 = 0;
    }

    [*(change + 144) addObject:v32];
  }

  if ((*(change + 72) & 4) == 0)
  {
    [(NSFetchedResultsController *)change _makeMutableFetchedObjects];
  }

  if ([*(change + 96) count] > v27 && objc_msgSend(*(change + 96), "objectAtIndex:", v27))
  {
    v33 = [*(change + 96) count];
    v34 = [_PFIndexCacheOffset alloc];
    if (v34)
    {
      v43.receiver = v34;
      v43.super_class = _PFIndexCacheOffset;
      v35 = objc_msgSendSuper2(&v43, sel_init);
      v36 = v35;
      if (v35)
      {
        v35[1] = v27;
        v35[2] = v33;
        v35[3] = 1;
      }
    }

    else
    {
      v36 = 0;
    }

    [*(change + 144) addObject:v36];
  }

  [*(change + 96) insertObject:object atIndex:v27];
  [*(change + 136) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v27), -[__CFString objectID](object, "objectID")}];
  numberOfObjects2 = [v6 numberOfObjects];
  if ((v10 & 1) == 0)
  {
    v6[5] = numberOfObjects2 + 1;

    v6[7] = 0;
  }

  [(NSFetchedResultsController *)change _updateSectionOffsetsStartingAtSection:v6];
  return numberOfObjects <= v8;
}

+ (uint64_t)_insertIndexForObject:(void *)object inArray:(uint64_t)array lowIdx:(uint64_t)idx highIdx:(void *)highIdx sortDescriptors:
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (idx < array)
  {
    return array;
  }

  while (2)
  {
    v11 = (idx + array) / 2;
    v13 = [object objectAtIndex:v11];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [highIdx countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(highIdx);
        }

        v18 = [*(*(&v19 + 1) + 8 * v17) compareObject:v13 toObject:a2];
        if (v18)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [highIdx countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          return v11;
        }
      }

      if (v18 == 1)
      {
        if (array == v11)
        {
          return array;
        }

        idx = v11 - 1;
      }

      else
      {
        if (idx == v11)
        {
          return idx + 1;
        }

        array = v11 + 1;
      }

      if (array <= idx)
      {
        continue;
      }
    }

    return v11;
  }
}

- (id)_preprocessDeletedObjects:(void *)objects deletesInfo:(void *)info sectionsWithDeletes:
{
  v29 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    result = [a2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          if (_objectIDEntityAffectsResults(v6, v10))
          {
            v11 = [(NSFetchedResultsController *)v6 _indexOfFetchedID:v10 isManagedObjectID:1];
            if (v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = v11;
              v13 = [v6[2] objectWithID:v10];
              v14 = [_PFChangeInfo alloc];
              if (v14)
              {
                v15 = [(_PFChangeInfo *)v14 initWithObject:v13];
                v16 = v15;
                if (v15)
                {
                  *(v15 + 16) = 2;
                }
              }

              else
              {
                v16 = 0;
              }

              v17 = [(NSFetchedResultsController *)v6[13] _indexPathForIndex:v12];
              if (v17)
              {
                v19 = v17;
                if (v16)
                {
                  objc_setProperty_nonatomic(v16, v18, v17, 24);
                }

                v21 = [v6[13] objectAtIndex:{objc_msgSend(v19, "indexAtPosition:", 0)}];
                if (v16)
                {
                  objc_setProperty_nonatomic(v16, v20, v21, 40);
                }

                if ((v6[9] & 8) != 0)
                {
                  sectionNumber = [(_NSDefaultSectionInfo *)v21 sectionNumber];
                  if (v21)
                  {
                    v21[6] = sectionNumber;
                  }

                  [info setObject:v21 forKey:{objc_msgSend(v21, "name")}];
                }
              }

              [objects addObject:v16];
            }
          }

          v9 = (v9 + 1);
        }

        while (v7 != v9);
        result = [a2 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_updateFetchedObjectsWithDeleteChange:(uint64_t)change
{
  v2 = a2;
  v35 = *MEMORY[0x1E69E9840];
  object = [a2 object];
  if (v2)
  {
    v2 = v2[5];
    if (v2)
    {
      v5 = [(NSFetchedResultsController *)v2[1] _indexOfFetchedID:object isManagedObjectID:0];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v2[4];
        v8 = v5 - v7;
        if ((v5 - v7) != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v19) = 0;
LABEL_23:
          v20 = v7 + v8;
          if ((*(change + 72) & 4) == 0)
          {
            [(NSFetchedResultsController *)change _makeMutableFetchedObjects];
          }

          v21 = [objc_msgSend(*(change + 96) objectAtIndex:{v20), "objectID"}];
          [*(change + 96) removeObjectAtIndex:v20];
          [*(change + 136) removeObjectForKey:v21];
          if ([*(change + 96) count])
          {
            v22 = [*(change + 96) count];
            v23 = [_PFIndexCacheOffset alloc];
            if (v23)
            {
              v34.receiver = v23;
              v34.super_class = _PFIndexCacheOffset;
              v24 = objc_msgSendSuper2(&v34, sel_init);
              v25 = v24;
              if (v24)
              {
                v24[1] = v20;
                v24[2] = v22;
                v24[3] = -1;
              }
            }

            else
            {
              v25 = 0;
            }

            [*(change + 144) addObject:v25];
          }

          else
          {
            [*(change + 144) removeAllObjects];
          }

          numberOfObjects = [v2 numberOfObjects];
          if ((v19 & 1) == 0)
          {
            v2[5] = numberOfObjects - 1;

            v2[7] = 0;
          }

          [(NSFetchedResultsController *)change _updateSectionOffsetsStartingAtSection:v2];
          goto LABEL_34;
        }
      }
    }
  }

  v9 = -[NSFetchedResultsController _indexOfFetchedID:isManagedObjectID:](change, [object objectID], 1);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_34:
    if (v2 && ![v2 numberOfObjects] && (*(change + 72) & 8) != 0)
    {
      [*(change + 104) removeObjectAtIndex:-[_NSDefaultSectionInfo sectionNumber](v2)];
      [*(change + 112) removeObjectForKey:{objc_msgSend(v2, "name")}];
      v2[1] = 0;

      v2[7] = 0;
      *(change + 120) = 0;

      *(change + 128) = 0;
    }

    return 1;
  }

  v8 = v9;
  v10 = *(change + 104);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:&v34 count:16];
  if (!v11)
  {
LABEL_20:
    if (v2)
    {
      LOBYTE(v19) = 0;
      v7 = v2[4];
    }

    else
    {
LABEL_46:
      v7 = 0;
      LOBYTE(v19) = 1;
    }

    goto LABEL_23;
  }

  v12 = v11;
  v13 = *v31;
LABEL_8:
  v14 = 0;
  while (1)
  {
    if (*v31 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v30 + 1) + 8 * v14);
    v16 = v15 ? *(v15 + 32) : 0;
    if ([*(*(&v30 + 1) + 8 * v14) numberOfObjects] + v16 > v8)
    {
      break;
    }

    if (v12 == ++v14)
    {
      v17 = [v10 countByEnumeratingWithState:&v30 objects:&v34 count:16];
      v12 = v17;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  sectionNumber = [(_NSDefaultSectionInfo *)v15 sectionNumber];
  if (sectionNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v28 = [*(change + 104) objectAtIndex:sectionNumber];
  v2 = v28;
  if (!v28)
  {
    v8 = 0;
    goto LABEL_46;
  }

  v29 = [(NSFetchedResultsController *)*(v28 + 8) _indexOfFetchedID:object isManagedObjectID:0];
  v19 = 0;
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
    v7 = v2[4];
    v8 = v29 - v7;
    if ((v29 - v7) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }
  }

  return v19;
}

- (void)_preprocessUpdatedObjects:(void *)objects insertsInfo:(void *)info deletesInfo:(void *)deletesInfo updatesInfo:(void *)updatesInfo sectionsWithDeletes:(void *)deletes newSectionNames:(void *)names treatAsRefreshes:
{
  v65 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v11 = a2;
    v12 = result;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    result = [a2 countByEnumeratingWithState:&v59 objects:v64 count:16];
    v52 = result;
    if (result)
    {
      v13 = *v60;
      infoCopy = info;
      updatesInfoCopy = updatesInfo;
      v43 = v11;
      objectsCopy = objects;
      v49 = *v60;
      do
      {
        v14 = 0;
        do
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v59 + 1) + 8 * v14);
          context = objc_autoreleasePoolPush();
          if (_objectIDEntityAffectsResults(v12, v15))
          {
            v16 = [(NSFetchedResultsController *)v12 _indexOfFetchedID:v15 isManagedObjectID:1];
            newValue = v16 == 0x7FFFFFFFFFFFFFFFLL ? 0 : [(NSFetchedResultsController *)*(v12 + 104) _indexPathForIndex:v16];
            v51 = [*(v12 + 16) objectWithID:v15];
            v17 = [(NSFetchedResultsController *)v12 _objectInResults:v51];
            if ((v17 & 1) != 0 || newValue)
            {
              v18 = [[_PFChangeInfo alloc] initWithObject:v51];
              if (v17)
              {
                self = v18;
                if (!newValue)
                {
                  selfCopy = v18;
                  if (v18)
                  {
                    v18->_changeType = 1;
                  }

                  infoCopy3 = objects;
                  if ((*(v12 + 72) & 8) != 0)
                  {
                    v27 = [(NSFetchedResultsController *)v12 _sectionNameForObject:v51];
                    infoCopy3 = objects;
                    if (v27)
                    {
                      v28 = [*(v12 + 112) objectForKey:v27];
                      infoCopy3 = objects;
                      if (!v28)
                      {
                        [deletes addObject:v27];
                        infoCopy3 = objects;
                      }
                    }
                  }

                  goto LABEL_55;
                }

                selfCopy = v18;
                if (([objects containsObject:v18] & 1) == 0 && (objc_msgSend(info, "containsObject:", self) & 1) == 0)
                {
                  if ([names containsObject:v15])
                  {
                    v21 = 1;
                    v22 = 1;
                  }

                  else
                  {
                    changedValuesForCurrentEvent = [v51 changedValuesForCurrentEvent];
                    v55 = 0u;
                    v56 = 0u;
                    v57 = 0u;
                    v58 = 0u;
                    v30 = [changedValuesForCurrentEvent countByEnumeratingWithState:&v55 objects:v63 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v21 = 0;
                      v22 = 0;
                      v32 = *v56;
                      do
                      {
                        for (i = 0; i != v31; ++i)
                        {
                          if (*v56 != v32)
                          {
                            objc_enumerationMutation(changedValuesForCurrentEvent);
                          }

                          v34 = *(*(&v55 + 1) + 8 * i);
                          v35 = [*(v12 + 88) containsObject:v34];
                          v22 |= v35;
                          v21 |= [*(v12 + 32) isEqualToString:v34] | v35;
                        }

                        v31 = [changedValuesForCurrentEvent countByEnumeratingWithState:&v55 objects:v63 count:16];
                      }

                      while (v31);
                    }

                    else
                    {
                      v21 = 0;
                      v22 = 0;
                    }
                  }

                  v37 = [*(v12 + 104) objectAtIndex:{objc_msgSend(newValue, "indexAtPosition:", 0)}];
                  selfCopy = self;
                  if (!self)
                  {
                    infoCopy3 = deletesInfo;
                    info = infoCopy;
                    updatesInfo = updatesInfoCopy;
                    objects = objectsCopy;
                    goto LABEL_45;
                  }

                  objc_setProperty_nonatomic(self, v36, newValue, 24);
                  objc_setProperty_nonatomic(self, v38, v37, 40);
                  info = infoCopy;
                  updatesInfo = updatesInfoCopy;
                  objects = objectsCopy;
                  if ((v21 | v22))
                  {
                    self->_changeType = 3;
                    infoCopy3 = deletesInfo;
LABEL_45:
                    v11 = v43;
                    if (v21)
                    {
                      infoCopy3 = deletesInfo;
                      if ((*(v12 + 72) & 8) != 0)
                      {
                        v39 = [(NSFetchedResultsController *)v12 _sectionNameForObject:v51];
                        if (!v39)
                        {
                          goto LABEL_50;
                        }

                        v40 = v39;
                        v41 = [*(v12 + 112) objectForKey:v39];
                        if (!v41)
                        {
                          [deletes addObject:v40];
LABEL_50:
                          v41 = 0;
                        }

                        infoCopy3 = deletesInfo;
                        if (v37)
                        {
                          infoCopy3 = deletesInfo;
                          if (v37 != v41)
                          {
                            v37[6] = [(_NSDefaultSectionInfo *)v37 sectionNumber];
                            [updatesInfo setObject:v37 forKey:{objc_msgSend(v37, "name")}];
                            infoCopy3 = deletesInfo;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    self->_changeType = 4;
                    infoCopy3 = deletesInfo;
                    v11 = v43;
                  }

LABEL_55:
                  [infoCopy3 addObject:selfCopy];
                  v13 = v49;
                }

                goto LABEL_57;
              }

              selfCopy = v18;
              if (v18)
              {
                v18->_changeType = 2;
                objc_setProperty_nonatomic(v18, v19, newValue, 24);
              }

              v24 = [*(v12 + 104) objectAtIndex:{objc_msgSend(newValue, "indexAtPosition:", 0)}];
              if (selfCopy)
              {
                objc_setProperty_nonatomic(selfCopy, v23, v24, 40);
              }

              infoCopy3 = info;
              if ((*(v12 + 72) & 8) != 0)
              {
                sectionNumber = [(_NSDefaultSectionInfo *)v24 sectionNumber];
                if (v24)
                {
                  v24[6] = sectionNumber;
                }

                [updatesInfo setObject:v24 forKey:{objc_msgSend(v24, "name")}];
                infoCopy3 = info;
              }

              goto LABEL_55;
            }
          }

LABEL_57:
          objc_autoreleasePoolPop(context);
          v14 = v14 + 1;
        }

        while (v14 != v52);
        result = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
        v52 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_lowerMoveOperationsToUpdatesForSection:(void *)section withInsertedObjects:(void *)objects deletedObjects:(void *)deletedObjects updatedObjects:
{
  v45 = *MEMORY[0x1E69E9840];
  if (self)
  {
    context = objc_autoreleasePoolPush();
    array = [MEMORY[0x1E695DF70] array];
    array2 = array;
    if (a2)
    {
      array2 = [MEMORY[0x1E695DF70] array];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [deletedObjects countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(deletedObjects);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          if (v15)
          {
            if (v15[2] == 4)
            {
              goto LABEL_19;
            }

            v16 = array;
            if (!a2)
            {
LABEL_18:
              [v16 addObject:v15];
              goto LABEL_19;
            }

            v17 = v15[6];
          }

          else
          {
            v16 = array;
            if (!a2)
            {
              goto LABEL_18;
            }

            v17 = 0;
          }

          if (v17 == a2)
          {
            [array addObject:*(*(&v40 + 1) + 8 * v14)];
          }

          if (v15)
          {
            v18 = v15[5];
          }

          else
          {
            v18 = 0;
          }

          v16 = array2;
          if (v18 == a2)
          {
            goto LABEL_18;
          }

LABEL_19:
          ++v14;
        }

        while (v12 != v14);
        v19 = [deletedObjects countByEnumeratingWithState:&v40 objects:v44 count:16];
        v12 = v19;
      }

      while (v19);
    }

    v20 = [objc_msgSend(section "allObjects")];
    [v20 addObjectsFromArray:array];
    [v20 sortUsingComparator:&__block_literal_global_12];
    v21 = [objc_msgSend(objects "allObjects")];
    [v21 addObjectsFromArray:array2];
    [v21 sortUsingComparator:&__block_literal_global_213];
    if ([v20 count])
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        if ([v21 count] <= v24)
        {
          break;
        }

        v25 = [v20 objectAtIndex:v22];
        v26 = [v21 objectAtIndex:v24];
        v27 = v26;
        if (!v25 || v25[2] != 1)
        {
          if (v26 && *(v26 + 16) == 2)
          {
            goto LABEL_55;
          }

          v28 = v25 ? v25[4] : 0;
          v29 = [v28 indexAtPosition:1];
          v30 = v27 ? v27[3] : 0;
          v31 = v29 - v22;
          v32 = [v30 indexAtPosition:1] - v24;
          if (v31 >= v32)
          {
            if (v32 < v31)
            {
              goto LABEL_55;
            }

            if (v25 == v27)
            {
              if (v25)
              {
                v25[2] = 4;
              }

              ++v23;
LABEL_55:
              ++v24;
              goto LABEL_56;
            }

            v38 = [v21 indexOfObject:v25];
            v33 = [v20 indexOfObject:v27];
            if (v38 != 0x7FFFFFFFFFFFFFFFLL && v38 >= v24)
            {
              if (v33 == 0x7FFFFFFFFFFFFFFFLL || v33 < v22)
              {
                goto LABEL_55;
              }

              v34 = v33;
              v35 = v25 ? v25[3] : 0;
              if (v31 == [v35 indexAtPosition:1] - v38)
              {
                v36 = v27 ? v27[4] : 0;
                if (v32 != [v36 indexAtPosition:1] - v34)
                {
                  goto LABEL_55;
                }

                v37 = [v21 indexOfObject:v25];
                if ([v20 indexOfObject:v27] > v37)
                {
                  goto LABEL_55;
                }
              }
            }
          }
        }

        ++v23;
LABEL_56:
        v22 = v23;
      }

      while ([v20 count] > v23);
    }

    objc_autoreleasePoolPop(context);
  }
}

uint64_t __136__NSFetchedResultsController_PrivateMethods___lowerMoveOperationsToUpdatesForSection_withInsertedObjects_deletedObjects_updatedObjects___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 0;
    if (!a3)
    {
      return [v3 compare:a3];
    }

    goto LABEL_3;
  }

  v3 = *(a2 + 32);
  if (a3)
  {
LABEL_3:
    a3 = *(a3 + 32);
  }

  return [v3 compare:a3];
}

uint64_t __136__NSFetchedResultsController_PrivateMethods___lowerMoveOperationsToUpdatesForSection_withInsertedObjects_deletedObjects_updatedObjects___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = 0;
    if (!a3)
    {
      return [v3 compare:a3];
    }

    goto LABEL_3;
  }

  v3 = *(a2 + 24);
  if (a3)
  {
LABEL_3:
    a3 = *(a3 + 24);
  }

  return [v3 compare:a3];
}

- (id)_core_managedObjectContextDidChange:(id *)result
{
  if (result)
  {
    v2 = result;
    v4 = __82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke;
    v5 = &unk_1E6EC1600;
    v6 = result;
    v7 = a2;
    if ([result[2] concurrencyType])
    {
      return [v2[2] performBlockAndWait:&v3];
    }

    else
    {
      return v4(&v3);
    }
  }

  return result;
}

char *__82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke(char *result)
{
  v278 = *MEMORY[0x1E69E9840];
  v1 = *(result + 4);
  if (!*(v1 + 96) || !*(v1 + 104))
  {
    return result;
  }

  v2 = result;
  v3 = [*(result + 5) objectForKey:@"invalidatedAll"];
  v4 = *(v2 + 4);
  v192 = v2;
  if (!v3)
  {
    v9 = v4;
    v184 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v188 = [*(v2 + 4) delegate];
    if (!v188)
    {
      v10 = *(v2 + 4);
      if (v10[10])
      {
        [v10 setDelegate:0];
      }
    }

    v11 = v188;
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v187 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v190 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v185 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v186 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v13 = [*(*(v2 + 4) + 8) predicate];
    v14 = *(*(v2 + 4) + 56);
    if (v13 != v14)
    {
      v15 = v13;

      *(*(v2 + 4) + 56) = v15;
      if (v15)
      {
        v16 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:v15, *(*(v2 + 4) + 16)];
      }

      else
      {
        v16 = 0;
      }

      *(*(v2 + 4) + 48) = v16;
    }

    v191 = v12;
    v33 = *(v2 + 5);
    v183 = @"inserted_objectIDs";
    v34 = [v33 objectForKey:?];
    v35 = *(v2 + 5);
    v182 = @"updated_objectIDs";
    v189 = [objc_msgSend(v35 "objectForKey:"mutableCopy"")];
    v36 = *(v2 + 4);
    if (v36)
    {
      v275 = 0u;
      v274 = 0u;
      v273 = 0u;
      v272 = 0u;
      v37 = [v34 countByEnumeratingWithState:&v272 objects:buf count:16];
      if (v37)
      {
        v38 = *v273;
        do
        {
          v39 = 0;
          do
          {
            if (*v273 != v38)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v272 + 1) + 8 * v39);
            v41 = objc_autoreleasePoolPush();
            if (_objectIDEntityAffectsResults(v36, v40))
            {
              if ([(NSFetchedResultsController *)v36 _indexOfFetchedID:v40 isManagedObjectID:1]== 0x7FFFFFFFFFFFFFFFLL)
              {
                v42 = [*(v36 + 16) objectWithID:v40];
                if ([(NSFetchedResultsController *)v36 _objectInResults:v42])
                {
                  v43 = [_PFChangeInfo alloc];
                  if (v43)
                  {
                    v44 = [(_PFChangeInfo *)v43 initWithObject:v42];
                    v45 = v44;
                    if (v44)
                    {
                      *(v44 + 16) = 1;
                    }
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if ((*(v36 + 72) & 8) != 0)
                  {
                    v46 = [(NSFetchedResultsController *)v36 _sectionNameForObject:v42];
                    if (v46)
                    {
                      if (![*(v36 + 112) objectForKey:v46])
                      {
                        [v186 addObject:v46];
                      }
                    }
                  }

                  [v191 addObject:v45];
                }
              }

              else
              {
                [v189 addObject:v40];
              }
            }

            objc_autoreleasePoolPop(v41);
            ++v39;
          }

          while (v37 != v39);
          v47 = [v34 countByEnumeratingWithState:&v272 objects:buf count:16];
          v37 = v47;
        }

        while (v47);
      }
    }

    v48 = v192;
    -[NSFetchedResultsController _preprocessDeletedObjects:deletesInfo:sectionsWithDeletes:](*(v192 + 4), [*(v192 + 5) objectForKey:@"deleted_objectIDs"], v187, v185);
    -[NSFetchedResultsController _preprocessDeletedObjects:deletesInfo:sectionsWithDeletes:](*(v192 + 4), [*(v192 + 5) objectForKey:@"invalidated_objectIDs"], v187, v185);
    v49 = [*(v192 + 5) objectForKey:@"refreshed_objectIDs"];
    v50 = v191;
    [(NSFetchedResultsController *)*(v192 + 4) _preprocessUpdatedObjects:v189 insertsInfo:v191 deletesInfo:v187 updatesInfo:v190 sectionsWithDeletes:v185 newSectionNames:v186 treatAsRefreshes:v49];
    if (v49)
    {
      v51 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v49];
      v52 = [*(v192 + 5) objectForKey:@"deleted_objectIDs"];
      if (v52)
      {
        [v51 minusSet:v52];
      }

      v53 = [*(v192 + 5) objectForKey:v182];
      if (v53)
      {
        [v51 minusSet:v53];
      }

      v54 = [*(v192 + 5) objectForKey:v183];
      if (v54)
      {
        [v51 minusSet:v54];
      }

      [(NSFetchedResultsController *)*(v192 + 4) _preprocessUpdatedObjects:v51 insertsInfo:v191 deletesInfo:v187 updatesInfo:v190 sectionsWithDeletes:v185 newSectionNames:v186 treatAsRefreshes:v49];
    }

    if (![v191 count] && !objc_msgSend(v187, "count") && !objc_msgSend(v190, "count"))
    {
LABEL_203:

      [v184 drain];
      return *(v192 + 4);
    }

    v55 = *(v192 + 4);
    v56 = *(v55 + 72);
    if ((v56 & 0x1000) != 0)
    {
      [v188 controllerWillChangeContent:?];
      v55 = *(v192 + 4);
      v56 = *(v55 + 72);
    }

    *(v55 + 72) = v56 | 1;
    v57 = *(v48 + 4);
    if (*(v57 + 96) && *(v57 + 104))
    {
      v254 = 0u;
      v255 = 0u;
      v256 = 0u;
      v257 = 0u;
      v58 = [v187 countByEnumeratingWithState:&v254 objects:buf count:16];
      if (v58)
      {
        v59 = *v255;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v255 != v59)
            {
              objc_enumerationMutation(v187);
            }

            if (![(NSFetchedResultsController *)v57 _updateFetchedObjectsWithDeleteChange:?])
            {
              goto LABEL_109;
            }
          }

          v58 = [v187 countByEnumeratingWithState:&v254 objects:buf count:16];
        }

        while (v58);
      }

      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0u;
      v61 = [v190 countByEnumeratingWithState:&v250 objects:&v272 count:16];
      if (v61)
      {
        v62 = *v251;
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v251 != v62)
            {
              objc_enumerationMutation(v190);
            }

            v64 = *(*(&v250 + 1) + 8 * j);
            if (v64 && v64[2] == 3 && ![(NSFetchedResultsController *)v57 _updateFetchedObjectsWithDeleteChange:v64])
            {
              goto LABEL_109;
            }
          }

          v61 = [v190 countByEnumeratingWithState:&v250 objects:&v272 count:16];
        }

        while (v61);
      }

      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      v65 = [v190 countByEnumeratingWithState:&v246 objects:v271 count:16];
      if (!v65)
      {
        goto LABEL_99;
      }

      v66 = *v247;
      do
      {
        for (k = 0; k != v65; ++k)
        {
          if (*v247 != v66)
          {
            objc_enumerationMutation(v190);
          }

          v68 = *(*(&v246 + 1) + 8 * k);
          v69 = objc_autoreleasePoolPush();
          if (v68 && v68[2] == 3 && ![(NSFetchedResultsController *)v57 _updateFetchedObjectsWithInsertChange:v68])
          {
LABEL_108:
            objc_autoreleasePoolPop(v69);
            goto LABEL_109;
          }

          objc_autoreleasePoolPop(v69);
        }

        v65 = [v190 countByEnumeratingWithState:&v246 objects:v271 count:16];
      }

      while (v65);
LABEL_99:
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      v70 = [v191 countByEnumeratingWithState:&v242 objects:v270 count:16];
      if (v70)
      {
        v71 = *v243;
        do
        {
          for (m = 0; m != v70; ++m)
          {
            if (*v243 != v71)
            {
              objc_enumerationMutation(v191);
            }

            v73 = *(*(&v242 + 1) + 8 * m);
            v69 = objc_autoreleasePoolPush();
            if (![(NSFetchedResultsController *)v57 _updateFetchedObjectsWithInsertChange:v73])
            {
              goto LABEL_108;
            }

            objc_autoreleasePoolPop(v69);
          }

          v70 = [v191 countByEnumeratingWithState:&v242 objects:v270 count:16];
        }

        while (v70);
      }

      [(NSFetchedResultsController *)v57 _updateIndexCacheWithFetchedObjects];
LABEL_120:
      if ((*(*(v192 + 4) + 72) & 8) != 0)
      {
        v78 = [MEMORY[0x1E695DFA8] set];
      }

      else
      {
        v78 = 0;
      }

      v83 = objc_autoreleasePoolPush();
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v84 = [v190 countByEnumeratingWithState:&v234 objects:v268 count:16];
      if (v84)
      {
        v85 = *v235;
        do
        {
          v86 = 0;
          do
          {
            if (*v235 != v85)
            {
              objc_enumerationMutation(v190);
            }

            v87 = *(*(&v234 + 1) + 8 * v86);
            v88 = [*(v192 + 4) indexPathForObject:{objc_msgSend(v87, "object")}];
            if (v87)
            {
              objc_setProperty_nonatomic(v87, v89, v88, 32);
              v90 = *(v192 + 4);
              if ((*(v90 + 72) & 8) == 0)
              {
                goto LABEL_138;
              }

              v91 = v87[4];
            }

            else
            {
              v90 = *(v192 + 4);
              if ((*(v90 + 72) & 8) == 0)
              {
                goto LABEL_138;
              }

              v91 = 0;
            }

            v92 = [*(v90 + 104) objectAtIndex:{objc_msgSend(v91, "indexAtPosition:", 0)}];
            if (!v87 || (objc_setProperty_nonatomic(v87, v93, v92, 48), v87[5] == v87[6]))
            {
              [v78 addObject:?];
            }

LABEL_138:
            ++v86;
          }

          while (v84 != v86);
          v94 = [v190 countByEnumeratingWithState:&v234 objects:v268 count:16];
          v84 = v94;
        }

        while (v94);
      }

      v232 = 0u;
      v233 = 0u;
      v230 = 0u;
      v231 = 0u;
      v95 = [v191 countByEnumeratingWithState:&v230 objects:v267 count:16];
      if (!v95)
      {
        goto LABEL_159;
      }

      v96 = *v231;
LABEL_146:
      v97 = 0;
      while (1)
      {
        if (*v231 != v96)
        {
          objc_enumerationMutation(v191);
        }

        v98 = *(*(&v230 + 1) + 8 * v97);
        v99 = [*(v192 + 4) indexPathForObject:{objc_msgSend(v98, "object")}];
        if (v98)
        {
          objc_setProperty_nonatomic(v98, v100, v99, 32);
          v101 = *(v192 + 4);
          if ((*(v101 + 72) & 8) != 0)
          {
            v102 = v98[4];
            goto LABEL_152;
          }
        }

        else
        {
          v101 = *(v192 + 4);
          if ((*(v101 + 72) & 8) != 0)
          {
            v102 = 0;
LABEL_152:
            v103 = [*(v101 + 104) objectAtIndex:{objc_msgSend(v102, "indexAtPosition:", 0)}];
            if (v98)
            {
              objc_setProperty_nonatomic(v98, v104, v103, 48);
            }
          }
        }

        if (v95 == ++v97)
        {
          v105 = [v191 countByEnumeratingWithState:&v230 objects:v267 count:16];
          v95 = v105;
          if (!v105)
          {
LABEL_159:
            objc_autoreleasePoolPop(v83);
            v50 = v191;
            if (([(NSFetchedResultsController *)*(v192 + 4) _conditionallyDispatchSnapshotToDelegate:v188 updatesInfo:v190]& 1) != 0)
            {
              goto LABEL_203;
            }

            v106 = *(v192 + 4);
            v107 = *(v106 + 72);
            if ((v107 & 0x40) == 0)
            {
              if ((v107 & 8) != 0)
              {
                v216 = 0u;
                v217 = 0u;
                v214 = 0u;
                v215 = 0u;
                v139 = [v78 countByEnumeratingWithState:&v214 objects:v263 count:16];
                if (v139)
                {
                  v140 = *v215;
                  do
                  {
                    for (n = 0; n != v139; ++n)
                    {
                      if (*v215 != v140)
                      {
                        objc_enumerationMutation(v78);
                      }

                      v142 = *(*(&v214 + 1) + 8 * n);
                      v143 = objc_autoreleasePoolPush();
                      v213[0] = MEMORY[0x1E69E9820];
                      v213[1] = 3221225472;
                      v213[2] = __82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke_219;
                      v213[3] = &unk_1E6EC34E8;
                      v213[4] = v142;
                      v144 = [MEMORY[0x1E696AE18] predicateWithBlock:v213];
                      -[NSFetchedResultsController _lowerMoveOperationsToUpdatesForSection:withInsertedObjects:deletedObjects:updatedObjects:](*(v192 + 4), v142, [v191 filteredSetUsingPredicate:v144], objc_msgSend(v187, "filteredSetUsingPredicate:", v144), objc_msgSend(v190, "filteredSetUsingPredicate:", v144));
                      objc_autoreleasePoolPop(v143);
                    }

                    v139 = [v78 countByEnumeratingWithState:&v214 objects:v263 count:16];
                  }

                  while (v139);
                }
              }

              else
              {
                [(NSFetchedResultsController *)v106 _lowerMoveOperationsToUpdatesForSection:v191 withInsertedObjects:v187 deletedObjects:v190 updatedObjects:?];
              }

              if ((*(*(v192 + 4) + 73) & 2) != 0)
              {
                v211 = 0u;
                v212 = 0u;
                v209 = 0u;
                v210 = 0u;
                v145 = [v187 countByEnumeratingWithState:&v209 objects:v262 count:16];
                if (v145)
                {
                  v146 = *v210;
                  do
                  {
                    v147 = 0;
                    do
                    {
                      if (*v210 != v146)
                      {
                        objc_enumerationMutation(v187);
                      }

                      v148 = *(*(&v209 + 1) + 8 * v147);
                      v149 = [v148 object];
                      if (v148)
                      {
                        v150 = v148[3];
                      }

                      else
                      {
                        v150 = 0;
                      }

                      [v188 controller:*(v192 + 4) didChangeObject:v149 atIndexPath:v150 forChangeType:2 newIndexPath:0];
                      ++v147;
                    }

                    while (v145 != v147);
                    v151 = [v187 countByEnumeratingWithState:&v209 objects:v262 count:16];
                    v145 = v151;
                  }

                  while (v151);
                }
              }

              if ((*(*(v192 + 4) + 73) & 4) != 0)
              {
                v207 = 0u;
                v208 = 0u;
                v205 = 0u;
                v206 = 0u;
                v152 = [v186 countByEnumeratingWithState:&v205 objects:v261 count:16];
                if (v152)
                {
                  v153 = *v206;
                  do
                  {
                    v154 = 0;
                    v155 = v192;
                    do
                    {
                      if (*v206 != v153)
                      {
                        objc_enumerationMutation(v186);
                        v155 = v192;
                      }

                      v156 = [*(*(v155 + 4) + 112) objectForKey:*(*(&v205 + 1) + 8 * v154)];
                      if (v156)
                      {
                        [v188 controller:*(v192 + 4) didChangeSection:v156 atIndex:-[_NSDefaultSectionInfo sectionNumber](v156) forChangeType:1];
                      }

                      ++v154;
                      v155 = v192;
                    }

                    while (v152 != v154);
                    v152 = [v186 countByEnumeratingWithState:&v205 objects:v261 count:16];
                  }

                  while (v152);
                }

                v203 = 0u;
                v204 = 0u;
                v201 = 0u;
                v202 = 0u;
                v157 = [v185 allValues];
                v158 = [v157 countByEnumeratingWithState:&v201 objects:v260 count:16];
                if (v158)
                {
                  v159 = *v202;
                  do
                  {
                    v160 = 0;
                    do
                    {
                      if (*v202 != v159)
                      {
                        objc_enumerationMutation(v157);
                      }

                      v161 = *(*(&v201 + 1) + 8 * v160);
                      if (![*(*(v192 + 4) + 112) objectForKey:{objc_msgSend(v161, "name")}])
                      {
                        if (v161)
                        {
                          v162 = v161[6];
                        }

                        else
                        {
                          v162 = 0;
                        }

                        [v188 controller:*(v192 + 4) didChangeSection:v161 atIndex:v162 forChangeType:2];
                      }

                      ++v160;
                    }

                    while (v158 != v160);
                    v163 = [v157 countByEnumeratingWithState:&v201 objects:v260 count:16];
                    v158 = v163;
                  }

                  while (v163);
                }
              }

              if ((*(*(v192 + 4) + 73) & 2) != 0)
              {
                v199 = 0u;
                v200 = 0u;
                v197 = 0u;
                v198 = 0u;
                v164 = [v191 countByEnumeratingWithState:&v197 objects:v259 count:16];
                if (v164)
                {
                  v165 = *v198;
                  do
                  {
                    v166 = 0;
                    do
                    {
                      if (*v198 != v165)
                      {
                        objc_enumerationMutation(v191);
                      }

                      v167 = *(*(&v197 + 1) + 8 * v166);
                      v168 = [v167 object];
                      if (v167)
                      {
                        v169 = v167[4];
                      }

                      else
                      {
                        v169 = 0;
                      }

                      [v188 controller:*(v192 + 4) didChangeObject:v168 atIndexPath:0 forChangeType:1 newIndexPath:v169];
                      ++v166;
                    }

                    while (v164 != v166);
                    v170 = [v191 countByEnumeratingWithState:&v197 objects:v259 count:16];
                    v164 = v170;
                  }

                  while (v170);
                }

                v195 = 0u;
                v196 = 0u;
                v193 = 0u;
                v194 = 0u;
                v171 = [v190 countByEnumeratingWithState:&v193 objects:v258 count:16];
                if (v171)
                {
                  v172 = *v194;
                  do
                  {
                    v173 = 0;
                    do
                    {
                      if (*v194 != v172)
                      {
                        objc_enumerationMutation(v190);
                      }

                      v174 = *(*(&v193 + 1) + 8 * v173);
                      v175 = [v174 object];
                      if (v174)
                      {
                        v176 = v174[2];
                        v177 = v174[3];
                        v174 = v174[4];
                        if ((dword_1ED4BEEC0 & 0x10000) == 0 && v176 == 3)
                        {
                          v178 = [v177 indexAtPosition:0];
                          if (v178 == [v174 indexAtPosition:0])
                          {
                            v179 = [v177 indexAtPosition:1];
                            if (v179 == [v174 indexAtPosition:1])
                            {
                              v174 = 0;
                              v176 = 4;
                            }

                            else
                            {
                              v176 = 3;
                            }
                          }

                          else
                          {
                            v176 = 3;
                          }
                        }
                      }

                      else
                      {
                        v177 = 0;
                        v176 = 0;
                      }

                      [v188 controller:*(v192 + 4) didChangeObject:v175 atIndexPath:v177 forChangeType:v176 newIndexPath:v174];
                      ++v173;
                    }

                    while (v171 != v173);
                    v180 = [v190 countByEnumeratingWithState:&v193 objects:v258 count:16];
                    v171 = v180;
                  }

                  while (v180);
                }
              }

              v50 = v191;
              if ((*(*(v192 + 4) + 72) & 0x80) != 0)
              {
                [v188 controllerDidChangeContent:?];
              }

              goto LABEL_203;
            }

            v108 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v187, "count") + objc_msgSend(v191, "count") + 2 * objc_msgSend(v190, "count")}];
            v183 = objc_autoreleasePoolPush();
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            v227 = 0u;
            v109 = [v191 countByEnumeratingWithState:&v226 objects:v266 count:16];
            if (v109)
            {
              v110 = *v227;
              do
              {
                v111 = 0;
                do
                {
                  if (*v227 != v110)
                  {
                    objc_enumerationMutation(v191);
                  }

                  v112 = *(*(&v226 + 1) + 8 * v111);
                  v113 = MEMORY[0x1E696ADD0];
                  v114 = [objc_msgSend(v112 "object")];
                  if (v112)
                  {
                    v115 = v112[4];
                  }

                  else
                  {
                    v115 = 0;
                  }

                  [v108 addObject:{objc_msgSend(v113, "changeWithObject:type:index:", v114, 0, objc_msgSend(v115, "indexAtPosition:", 1))}];
                  ++v111;
                }

                while (v109 != v111);
                v116 = [v191 countByEnumeratingWithState:&v226 objects:v266 count:16];
                v109 = v116;
              }

              while (v116);
            }

            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v117 = [v187 countByEnumeratingWithState:&v222 objects:v265 count:16];
            if (v117)
            {
              v118 = *v223;
              do
              {
                v119 = 0;
                do
                {
                  if (*v223 != v118)
                  {
                    objc_enumerationMutation(v187);
                  }

                  v120 = *(*(&v222 + 1) + 8 * v119);
                  v121 = MEMORY[0x1E696ADD0];
                  v122 = [objc_msgSend(v120 "object")];
                  if (v120)
                  {
                    v123 = v120[3];
                  }

                  else
                  {
                    v123 = 0;
                  }

                  [v108 addObject:{objc_msgSend(v121, "changeWithObject:type:index:", v122, 1, objc_msgSend(v123, "indexAtPosition:", 1))}];
                  ++v119;
                }

                while (v117 != v119);
                v124 = [v187 countByEnumeratingWithState:&v222 objects:v265 count:16];
                v117 = v124;
              }

              while (v124);
            }

            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v125 = [v190 countByEnumeratingWithState:&v218 objects:v264 count:16];
            if (v125)
            {
              v126 = *v219;
              do
              {
                v127 = 0;
                do
                {
                  if (*v219 != v126)
                  {
                    objc_enumerationMutation(v190);
                  }

                  v128 = *(*(&v218 + 1) + 8 * v127);
                  v129 = MEMORY[0x1E696ADD0];
                  v130 = [objc_msgSend(v128 "object")];
                  if (v128)
                  {
                    v131 = [v128[4] indexAtPosition:1];
                    v132 = v128[3];
                  }

                  else
                  {
                    v131 = [0 indexAtPosition:1];
                    v132 = 0;
                  }

                  [v108 addObject:{objc_msgSend(v129, "changeWithObject:type:index:associatedIndex:", v130, 0, v131, objc_msgSend(v132, "indexAtPosition:", 1))}];
                  v133 = MEMORY[0x1E696ADD0];
                  v134 = [objc_msgSend(v128 "object")];
                  if (v128)
                  {
                    v135 = [v128[3] indexAtPosition:1];
                    v136 = v128[4];
                  }

                  else
                  {
                    v135 = [0 indexAtPosition:1];
                    v136 = 0;
                  }

                  [v108 addObject:{objc_msgSend(v133, "changeWithObject:type:index:associatedIndex:", v134, 1, v135, objc_msgSend(v136, "indexAtPosition:", 1))}];
                  ++v127;
                }

                while (v125 != v127);
                v137 = [v190 countByEnumeratingWithState:&v218 objects:v264 count:16];
                v125 = v137;
              }

              while (v137);
            }

            objc_autoreleasePoolPop(v183);
            v138 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v108];
            [v188 controller:*(v192 + 4) didChangeContentWithDifference:v138];

LABEL_202:
            v50 = v191;
            goto LABEL_203;
          }

          goto LABEL_146;
        }
      }
    }

LABEL_109:
    v74 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) rebuilding section caches\n", buf, 2u);
        }
      }

      else
      {
        v76 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v76, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (NSFetchedResultsController) rebuilding section caches\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v77 = 1;
    }

    else
    {
      v77 = 4;
    }

    _NSCoreDataLog_console(v77, "(NSFetchedResultsController) rebuilding section caches");
    objc_autoreleasePoolPop(v74);
    *&v272 = 0;
    +[NSFetchedResultsController deleteCacheWithName:](NSFetchedResultsController, "deleteCacheWithName:", [*(v192 + 4) cacheName]);
    if ([*(v192 + 4) performFetch:&v272])
    {
      goto LABEL_120;
    }

    v79 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v80 = _pflogging_catastrophic_mode == 0;
      v81 = _PFLogGetLogStream(1);
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
      if (v80)
      {
        if (v82)
        {
          *buf = 138412290;
          v277 = v272;
          goto LABEL_279;
        }
      }

      else if (v82)
      {
        *buf = 138412290;
        v277 = v272;
LABEL_279:
        _os_log_error_impl(&dword_18565F000, v81, OS_LOG_TYPE_ERROR, "CoreData: error: (NSFetchedResultsController) error refetching objects after context update: %@\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "(NSFetchedResultsController) error refetching objects after context update: %@", v272);
    objc_autoreleasePoolPop(v79);
    goto LABEL_202;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(v2 + 4);
  if (isKindOfClass)
  {
    [(_PFBatchFaultingArray *)*(v6 + 96) _turnAllBatchesIntoFaults];
    v7 = *(v2 + 4);
    v8 = *(v7 + 72) | 2;
  }

  else
  {
    v17 = [(NSFetchedResultsController *)v6 _fetchedObjectsArrayOfObjectIDs];
    v18 = [v17 count];
    v19 = v18;
    if (!v18)
    {
      goto LABEL_22;
    }

    v20 = *(*(v2 + 4) + 96);
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v181 - v21;
    if (v19 > 0x200uLL)
    {
      v22 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v181 - v21, 8 * v19);
    }

    v23 = v19 < 0x201uLL;
    [v17 getObjects:v22 range:{0, v19}];
    v24 = [[_PFArray alloc] initWithObjects:v22 count:v19 andFlags:27];
    if (!v23)
    {
      NSZoneFree(0, v22);
    }

    v25 = [_PFBatchFaultingArray alloc];
    v26 = (v192 + 32);
    (*v26)[12] = [(_PFBatchFaultingArray *)v25 initWithPFArray:v24 andRequest:*(*(v192 + 4) + 8) andContext:*(*(v192 + 4) + 16)];
    [(NSFetchedResultsController *)*v26 _updateIndexCacheWithFetchedObjects];

    if (![(NSFetchedResultsController *)*v26 _computeSectionInfo:0 error:?])
    {
      v27 = v192 + 32;

      *(*v27 + 104) = 0;
      *(*v27 + 112) = 0;

      *(*v27 + 120) = 0;
      *(*v27 + 128) = 0;
    }

    v2 = v192;
    *(*(v192 + 4) + 72) |= 2u;
    v7 = *(v2 + 4);
    v8 = *(v7 + 72) & 0xFFFFFFFB;
  }

  *(v7 + 72) = v8;
LABEL_22:
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v28 = *(*(v2 + 4) + 104);
  result = [v28 countByEnumeratingWithState:&v238 objects:v269 count:16];
  v29 = result;
  if (result)
  {
    v30 = *v239;
    do
    {
      v31 = 0;
      do
      {
        if (*v239 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v238 + 1) + 8 * v31);
        if (v32)
        {

          *(v32 + 56) = 0;
        }

        v31 = v31 + 1;
      }

      while (v29 != v31);
      result = [v28 countByEnumeratingWithState:&v238 objects:v269 count:16];
      v29 = result;
    }

    while (result);
  }

  return result;
}

BOOL __82__NSFetchedResultsController_PrivateMethods___core_managedObjectContextDidChange___block_invoke_219(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if ((v2 - 3) >= 2)
  {
    v6 = v2 == 1;
    v5 = a2 + 6;
    v3 = (a1 + 32);
    if (!v6)
    {
      v5 = a2 + 5;
    }

    return *v5 == *v3;
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  if (a2[5] != v4)
  {
    v5 = a2 + 6;
    return *v5 == *v3;
  }

  return 1;
}

- (void)_managedObjectContextDidChangeObjectIDs:(id)ds
{
  userInfo = [ds userInfo];

  [(NSFetchedResultsController *)&self->super.isa _core_managedObjectContextDidChange:userInfo];
}

- (void)_managedObjectContextDidMutateObjectIDs:(id)ds
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(ds "userInfo")];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v63;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        v10 = [(NSFetchedResultsController *)self _indexOfCachedID:v9];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v10;
          v12 = [v4 objectForKey:v9];
          -[NSMutableDictionary setObject:forKey:](self->_indexCache, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11], v12);
          [(NSMutableDictionary *)self->_indexCache removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v6);
  }

  flags = self->_flags;
  if ((*&flags & 0x10) != 0)
  {
    context = objc_autoreleasePoolPush();
    obj = objc_alloc_init(MEMORY[0x1E695DF70]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v14 = [v4 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v59;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v4);
          }

          v18 = *(*(&v58 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          sectionsByName = self->_sectionsByName;
          *&self->_flags |= 0x10u;
          v21 = -[NSMutableDictionary objectForKeyedSubscript:](sectionsByName, "objectForKeyedSubscript:", [v18 _retainedURIString]);
          if (v21)
          {
            v22 = v21;
            v23 = [_NSDefaultSectionInfo alloc];
            v24 = [v4 objectForKeyedSubscript:v18];
            *&self->_flags |= 0x10u;
            v25 = -[_NSDefaultSectionInfo initWithController:name:sectionId:indexTitle:sectionOffset:](v23, self, [v24 _retainedURIString], objc_msgSend(v22, "sectionId"), objc_msgSend(v22, "indexTitle"), v22[4]);
            numberOfObjects = [v22 numberOfObjects];
            if (v25)
            {
              v25[5] = numberOfObjects;

              v25[7] = 0;
            }

            [(NSMutableOrderedSet *)self->_sections replaceObjectAtIndex:[(_NSDefaultSectionInfo *)v22 sectionNumber] withObject:v25];
            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sectionsByName, "setObject:forKeyedSubscript:", v25, [v25 name]);
            -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sectionsByName, "setObject:forKeyedSubscript:", 0, [v22 name]);
            [obj addObject:v25];
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v4 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v15);
    }

    if ([obj count])
    {
      delegate = [(NSFetchedResultsController *)self delegate];
      if (delegate)
      {
        v28 = delegate;
        v29 = self->_flags;
        if ((*&v29 & 0x1000) != 0)
        {
          [delegate controllerWillChangeContent:self];
          v29 = self->_flags;
        }

        if ((*&v29 & 0x400) != 0)
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v30 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v55;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v55 != v32)
                {
                  objc_enumerationMutation(obj);
                }

                [v28 controller:self didChangeSection:*(*(&v54 + 1) + 8 * k) atIndex:-[_NSDefaultSectionInfo sectionNumber](*(*(&v54 + 1) + 8 * k)) forChangeType:4];
              }

              v31 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
            }

            while (v31);
          }
        }

        if ((*&self->_flags & 0x80) != 0)
        {
          [v28 controllerDidChangeContent:self];
        }
      }
    }

    objc_autoreleasePoolPop(contexta);
    flags = self->_flags;
  }

  if ((*&flags & 0x40) != 0)
  {
    delegate2 = [(NSFetchedResultsController *)self delegate];
    if (delegate2 || !self->_delegate)
    {
      contextb = delegate2;
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      obja = objc_autoreleasePoolPush();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v36 = [v4 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v51;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v51 != v38)
            {
              objc_enumerationMutation(v4);
            }

            v40 = *(*(&v50 + 1) + 8 * m);
            v41 = [v4 objectForKeyedSubscript:{v40, contextb}];
            v42 = [(NSFetchedResultsController *)self _indexOfCachedID:v41];
            if (v42 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = v42;
              [v35 addObject:{objc_msgSend(MEMORY[0x1E696ADD0], "changeWithObject:type:index:associatedIndex:", v40, 1, v43, v43)}];
              [v35 addObject:{objc_msgSend(MEMORY[0x1E696ADD0], "changeWithObject:type:index:associatedIndex:", v41, 0, v43, v43)}];
            }
          }

          v37 = [v4 countByEnumeratingWithState:&v50 objects:v66 count:16];
        }

        while (v37);
      }

      objc_autoreleasePoolPop(obja);
      if ([v35 count])
      {
        v44 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v35];
        [contextb controller:self didChangeContentWithDifference:v44];
      }
    }

    else
    {
      [(NSFetchedResultsController *)self setDelegate:0];
    }
  }
}

- (void)_managedObjectContextDidChange:(id)change
{
  if (![objc_msgSend(change "userInfo")])
  {
    userInfo = [change userInfo];

    [(NSFetchedResultsController *)&self->super.isa _core_managedObjectContextDidChange:userInfo];
  }
}

- (void)_appendAffectedStoreInfoToData:(void *)data adjustedOffset:
{
  v21 = *MEMORY[0x1E69E9840];
  affectedStores = [*(self + 8) affectedStores];
  if (![affectedStores count])
  {
    affectedStores = [objc_msgSend(*(self + 16) "persistentStoreCoordinator")];
  }

  _writeInt32IntoData(a2, [affectedStores count]);
  if (data)
  {
    *data = [a2 length] - 4;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [affectedStores countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(affectedStores);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        _writeStringIntoData([v11 identifier], a2, v20);
        v12 = stat_path_for_modication_time([v11 URL]);
        v14 = v13;
        _writeInt64IntoData(a2, v12);
        _writeInt64IntoData(a2, v14);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [affectedStores countByEnumeratingWithState:&v15 objects:v19 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

- (void)_managedObjectContextDidSave:(id)save
{
  if ([(NSManagedObjectContext *)self->_managedObjectContext concurrencyType])
  {
    managedObjectContext = self->_managedObjectContext;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__NSFetchedResultsController_PrivateMethods___managedObjectContextDidSave___block_invoke;
    v6[3] = &unk_1E6EC1600;
    v6[4] = self;
    v6[5] = save;
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v6];
  }

  else
  {

    [(NSFetchedResultsController *)self _core_managedObjectContextDidSave:save];
  }
}

@end
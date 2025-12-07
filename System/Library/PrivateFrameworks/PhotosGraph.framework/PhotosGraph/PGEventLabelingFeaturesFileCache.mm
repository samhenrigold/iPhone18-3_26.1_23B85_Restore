@interface PGEventLabelingFeaturesFileCache
+ (id)cacheForMomentGraphRebuildWithGraphServiceURL:(id)l graph:(id)graph error:(id *)error;
- (BOOL)clearCacheWithError:(id *)error;
- (BOOL)isCacheEmptyAtGraphServiceURL:(id)l;
- (BOOL)writeFeaturesForMomentNode:(id)node assetFetchResult:(id)result photoLibrary:(id)library progressReporter:(id)reporter error:(id *)error;
- (PGEventLabelingFeaturesFileCache)init;
@end

@implementation PGEventLabelingFeaturesFileCache

+ (id)cacheForMomentGraphRebuildWithGraphServiceURL:(id)l graph:(id)graph error:(id *)error
{
  v6 = sub_22F73F470();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  graphCopy = graph;
  v11 = sub_22F175D2C(v9, graphCopy);
  (*(v7 + 8))(v9, v6);

  return v11;
}

- (BOOL)writeFeaturesForMomentNode:(id)node assetFetchResult:(id)result photoLibrary:(id)library progressReporter:(id)reporter error:(id *)error
{
  nodeCopy = node;
  resultCopy = result;
  libraryCopy = library;
  reporterCopy = reporter;
  selfCopy = self;
  sub_22F176098(nodeCopy, resultCopy);

  return 1;
}

- (BOOL)clearCacheWithError:(id *)error
{
  selfCopy = self;
  EventLabelingFeaturesFileCache.clearCache()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_22F73F360();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (BOOL)isCacheEmptyAtGraphServiceURL:(id)l
{
  v4 = sub_22F73F470();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  v8 = objc_allocWithZone(MEMORY[0x277CCAA00]);
  selfCopy = self;
  v10 = [v8 init];
  sub_22F73F440();
  v11 = sub_22F740DF0();

  LOBYTE(v8) = [v10 fileExistsAtPath_];

  (*(v5 + 8))(v7, v4);
  return v8 ^ 1;
}

- (PGEventLabelingFeaturesFileCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
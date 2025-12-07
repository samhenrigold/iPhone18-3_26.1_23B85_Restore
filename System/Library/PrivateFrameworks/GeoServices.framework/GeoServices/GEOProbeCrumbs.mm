@interface GEOProbeCrumbs
- (id)recentLocationHistory;
@end

@implementation GEOProbeCrumbs

- (id)recentLocationHistory
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_enabled)
  {
    v20 = GEOGetGEOProbeCrumbsLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v20, OS_LOG_TYPE_DEBUG, "recentLocationHistory - ignored (disabled)", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!self->_locations.__size_)
  {
    v20 = GEOGetGEOProbeCrumbsLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, v20, OS_LOG_TYPE_DEBUG, "recentLocationHistory - ignored (nothing recorded)", buf, 2u);
    }

LABEL_15:

    v3 = 0;
    goto LABEL_16;
  }

  v3 = objc_alloc_init(GEORecentLocationHistory);
  v4 = [[GEOLatLngE7 alloc] initWithE7Latitude:self->_baseE7Lat longitude:self->_baseE7Lng];
  [(GEORecentLocationHistory *)v3 setBaseLocation:v4];

  [(GEORecentLocationHistory *)v3 setBaseTimestamp:self->_baseTimestamp];
  [(GEORecentLocationHistory *)v3 setLatlngCount:LODWORD(self->_locations.__size_)];
  size_low = LODWORD(self->_locations.__size_);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __39__GEOProbeCrumbs_recentLocationHistory__block_invoke;
  v25[3] = &unk_1E7063758;
  v25[4] = self;
  v6 = [(GEOProbeCrumbs *)self _encodedDataForIntegersCount:size_low valueCallback:v25];
  [(GEORecentLocationHistory *)v3 setEncodedLats:v6];

  v7 = LODWORD(self->_locations.__size_);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __39__GEOProbeCrumbs_recentLocationHistory__block_invoke_2;
  v24[3] = &unk_1E7063758;
  v24[4] = self;
  v8 = [(GEOProbeCrumbs *)self _encodedDataForIntegersCount:v7 valueCallback:v24];
  [(GEORecentLocationHistory *)v3 setEncodedLngs:v8];

  [(GEORecentLocationHistory *)v3 setTimeResolution:GEOConfigGetUInteger(467, &GeoServicesConfig_ProbeCrumbFrequency_Metadata)];
  [(GEORecentLocationHistory *)v3 setBaseDistanceToDestination:self->_baseDistance];
  v9 = [MEMORY[0x1E695DF00] now];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  while (1)
  {
    size = self->_locations.__size_;
    if (!size)
    {
      break;
    }

    start = self->_locations.__start_;
    if (*(self->_locations.__map_.__begin_[start / 0xAA] + 3 * start + -510 * (start / 0xAA)) >= v11 - 180)
    {
      break;
    }

    self->_locations.__start_ = start + 1;
    self->_locations.__size_ = size - 1;
    std::deque<_GEOProbeCrumbsLocation>::__maybe_remove_front_spare[abi:ne200100](&self->_locations);
  }

  v14 = GEOGetGEOProbeCrumbsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = self->_locations.__size_;
    *buf = 134217984;
    v27 = v15;
    _os_log_impl(&dword_18660C000, v14, OS_LOG_TYPE_DEBUG, "recentLocationHistory - %zu locations", buf, 0xCu);
  }

  v16 = LODWORD(self->_locations.__size_);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__GEOProbeCrumbs_recentLocationHistory__block_invoke_10;
  v23[3] = &unk_1E7063758;
  v23[4] = self;
  v17 = [(GEOProbeCrumbs *)self _encodedDataForIntegersCount:v16 valueCallback:v23];
  [(GEORecentLocationHistory *)v3 setEncodedDistancesToDestination:v17];

  v18 = LODWORD(self->_locations.__size_);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__GEOProbeCrumbs_recentLocationHistory__block_invoke_2_11;
  v22[3] = &unk_1E7063758;
  v22[4] = self;
  v19 = [(GEOProbeCrumbs *)self _encodedDataForIntegersCount:v18 valueCallback:v22];
  [(GEORecentLocationHistory *)v3 setEncodedTimestamps:v19];

LABEL_16:

  return v3;
}

unint64_t __39__GEOProbeCrumbs_recentLocationHistory__block_invoke_2_11(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  result = *(*(*(*(a1 + 32) + 72) + 8 * ((*(*(a1 + 32) + 96) + a2) / 0xAAuLL)) - 4080 * ((*(*(a1 + 32) + 96) + a2) / 0xAAuLL) + 24 * (*(*(a1 + 32) + 96) + a2));
  if (result >> 31)
  {
    v3 = GEOGetGEOProbeCrumbsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4[0] = 67109120;
      v4[1] = 0x7FFFFFFF;
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_FAULT, "recentLocationHistory - timestamp exceeded INT32_MAX=%d", v4, 8u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

@end
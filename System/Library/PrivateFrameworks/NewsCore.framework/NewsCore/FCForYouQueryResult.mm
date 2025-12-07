@interface FCForYouQueryResult
- (FCForYouQueryResult)init;
- (FCForYouQueryResult)initWithChannelDefaultSectionRequests:(id)requests channelOtherSectionsRequests:(id)sectionsRequests topicRequests:(id)topicRequests paidBundleRequests:(id)bundleRequests hiddenFeedRequests:(id)feedRequests sidecarRequests:(id)sidecarRequests feedContextByFeedID:(id)d;
- (NSArray)allRequests;
@end

@implementation FCForYouQueryResult

- (FCForYouQueryResult)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCForYouQueryResult init]";
    v10 = 2080;
    v11 = "FCForYouQueryUtilities.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCForYouQueryResult init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCForYouQueryResult)initWithChannelDefaultSectionRequests:(id)requests channelOtherSectionsRequests:(id)sectionsRequests topicRequests:(id)topicRequests paidBundleRequests:(id)bundleRequests hiddenFeedRequests:(id)feedRequests sidecarRequests:(id)sidecarRequests feedContextByFeedID:(id)d
{
  v54 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  sectionsRequestsCopy = sectionsRequests;
  topicRequestsCopy = topicRequests;
  bundleRequestsCopy = bundleRequests;
  feedRequestsCopy = feedRequests;
  sidecarRequestsCopy = sidecarRequests;
  dCopy = d;
  if (!requestsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelDefaultSectionRequests"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 37;
    v52 = 2114;
    v53 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (sectionsRequestsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (sectionsRequestsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelOtherSectionsRequests"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 38;
    v52 = 2114;
    v53 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!topicRequestsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "topicRequests"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 39;
    v52 = 2114;
    v53 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (bundleRequestsCopy)
    {
      goto LABEL_11;
    }
  }

  else if (bundleRequestsCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "paidBundleRequests"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 40;
    v52 = 2114;
    v53 = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  if (!feedRequestsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "hiddenFeedRequests"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 41;
    v52 = 2114;
    v53 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (sidecarRequestsCopy)
    {
      goto LABEL_16;
    }
  }

  else if (sidecarRequestsCopy)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sidecarRequests"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 42;
    v52 = 2114;
    v53 = v43;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_16:
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedContextByFeedID"];
    *buf = 136315906;
    v47 = "[FCForYouQueryResult initWithChannelDefaultSectionRequests:channelOtherSectionsRequests:topicRequests:paidBundleRequests:hiddenFeedRequests:sidecarRequests:feedContextByFeedID:]";
    v48 = 2080;
    v49 = "FCForYouQueryUtilities.m";
    v50 = 1024;
    v51 = 43;
    v52 = 2114;
    v53 = v44;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v45.receiver = self;
  v45.super_class = FCForYouQueryResult;
  v22 = [(FCForYouQueryResult *)&v45 init];
  if (v22)
  {
    v23 = [requestsCopy copy];
    channelDefaultSectionRequests = v22->_channelDefaultSectionRequests;
    v22->_channelDefaultSectionRequests = v23;

    v25 = [sectionsRequestsCopy copy];
    channelOtherSectionsRequests = v22->_channelOtherSectionsRequests;
    v22->_channelOtherSectionsRequests = v25;

    v27 = [topicRequestsCopy copy];
    topicRequests = v22->_topicRequests;
    v22->_topicRequests = v27;

    v29 = [bundleRequestsCopy copy];
    paidBundleRequests = v22->_paidBundleRequests;
    v22->_paidBundleRequests = v29;

    v31 = [feedRequestsCopy copy];
    hiddenFeedRequests = v22->_hiddenFeedRequests;
    v22->_hiddenFeedRequests = v31;

    v33 = [sidecarRequestsCopy copy];
    sidecarRequests = v22->_sidecarRequests;
    v22->_sidecarRequests = v33;

    v35 = [dCopy copy];
    feedContextByFeedID = v22->_feedContextByFeedID;
    v22->_feedContextByFeedID = v35;
  }

  return v22;
}

- (NSArray)allRequests
{
  v12[6] = *MEMORY[0x1E69E9840];
  channelDefaultSectionRequests = [(FCForYouQueryResult *)self channelDefaultSectionRequests];
  v12[0] = channelDefaultSectionRequests;
  channelOtherSectionsRequests = [(FCForYouQueryResult *)self channelOtherSectionsRequests];
  v12[1] = channelOtherSectionsRequests;
  topicRequests = [(FCForYouQueryResult *)self topicRequests];
  v12[2] = topicRequests;
  paidBundleRequests = [(FCForYouQueryResult *)self paidBundleRequests];
  v12[3] = paidBundleRequests;
  hiddenFeedRequests = [(FCForYouQueryResult *)self hiddenFeedRequests];
  v12[4] = hiddenFeedRequests;
  sidecarRequests = [(FCForYouQueryResult *)self sidecarRequests];
  v12[5] = sidecarRequests;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];
  fc_arrayByFlattening = [v9 fc_arrayByFlattening];

  return fc_arrayByFlattening;
}

@end
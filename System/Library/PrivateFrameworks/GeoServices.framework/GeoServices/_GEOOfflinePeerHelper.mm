@interface _GEOOfflinePeerHelper
- (id)description;
- (void)geoXPCConnectionIsReadyToSend:(id)send;
@end

@implementation _GEOOfflinePeerHelper

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  peerID = [WeakRetained peerID];
  v5 = objc_loadWeakRetained(&self->_peer);
  bundleIdentifier = [v5 bundleIdentifier];
  v7 = [NSString stringWithFormat:@"<Helper %p: peerId: %@ - %@>", self, peerID, bundleIdentifier];

  return v7;
}

- (void)geoXPCConnectionIsReadyToSend:(id)send
{
  sendCopy = send;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    connection = [WeakRetained connection];

    if (connection == sendCopy)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 4;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      geo_isolate_sync_data();
      v8 = v26[3];
      if (v8 > 2)
      {
        if ((v8 - 3) < 2)
        {
LABEL_25:
          _Block_object_dispose(&v21, 8);
          _Block_object_dispose(&v25, 8);
          _Block_object_dispose(&v29, 8);
          goto LABEL_26;
        }
      }

      else
      {
        if (v8)
        {
          if (v8 == 1)
          {
            v9 = objc_alloc_init(GEOOfflineServiceSuggestedStateChanged);
            v14 = [GEOOfflineStateManager shared:_NSConcreteStackBlock];
            [v9 setCurrentState:{objc_msgSend(v14, "currentSuggestedStateForCohortId:", self->_cohortId)}];

            v11 = GEOGetOfflineServiceLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              currentState = [v9 currentState];
              *buf = 67109378;
              *v34 = currentState;
              *&v34[4] = 2114;
              *&v34[6] = self;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Notifying peer of suggestion change to %d - %{public}@", buf, 0x12u);
            }
          }

          else
          {
            if (v8 != 2)
            {
              goto LABEL_23;
            }

            v9 = objc_alloc_init(GEOOfflineServiceOfflineStateChanged);
            v10 = [GEOOfflineStateManager shared:_NSConcreteStackBlock];
            [v9 setCurrentState:{objc_msgSend(v10, "currentStateForCohortId:", self->_cohortId)}];

            v11 = GEOGetOfflineServiceLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [v9 currentState];
              v12 = GEOOfflineStateAsString();
              *buf = 138543618;
              *v34 = v12;
              *&v34[8] = 2114;
              *&v34[10] = self;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Notifying peer of state change to current: %{public}@ - %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v9 = objc_alloc_init(GEOOfflineServiceSubscriptionStateChanged);
          [v9 setIsSubscribed:{*(v30 + 24), _NSConcreteStackBlock, 3221225472, sub_10001F758, &unk_100081EF0, self, &v29, &v25, &v21}];
          if (*(v30 + 24) == 1)
          {
            v13 = +[GEOOfflineStateManager shared];
            [v9 setCurrentState:{objc_msgSend(v13, "currentSuggestedStateForCohortId:", self->_cohortId)}];
          }

          else
          {
            [v9 setCurrentState:0];
          }

          v11 = GEOGetOfflineServiceLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(v30 + 24);
            currentState2 = [v9 currentState];
            v18 = "NO";
            *buf = 136446722;
            if (v16)
            {
              v18 = "YES";
            }

            *v34 = v18;
            *&v34[8] = 1026;
            *&v34[10] = currentState2;
            *&v34[14] = 2114;
            *&v34[16] = self;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Notifying peer of subscription state change to: %{public}s - state: %{public}d - %{public}@", buf, 0x1Cu);
          }
        }

        connection2 = [v6 connection];
        [v9 send:connection2];
      }

LABEL_23:
      if (*(v22 + 24) == 1)
      {
        connection3 = [v6 connection];
        [connection3 initiateBarrierIfNecessary:0 delegate:self];
      }

      goto LABEL_25;
    }
  }

LABEL_26:
}

@end
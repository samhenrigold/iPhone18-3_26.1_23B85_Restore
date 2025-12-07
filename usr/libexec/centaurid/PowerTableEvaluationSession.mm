@interface PowerTableEvaluationSession
+ (id)voteSetAsString:(unint64_t)string;
- (BOOL)setReadiness:(BOOL)readiness forClient:(int64_t)client session:(id)session;
- (BOOL)setVote:(BOOL)vote forClient:(int64_t)client session:(id)session;
- (PowerTableEvaluationSession)initWithQueue:(id)queue newAssetVersions:(id)versions previousAssetVersions:(id)assetVersions delegate:(id)delegate;
- (void)activate;
- (void)cancelTimer;
- (void)handleTimeout;
- (void)log;
- (void)notifyClients;
- (void)performChipLevelValidation;
- (void)sessionDidEnd;
- (void)sessionWillEnd;
- (void)setState:(int64_t)state;
- (void)startTimer;
@end

@implementation PowerTableEvaluationSession

- (PowerTableEvaluationSession)initWithQueue:(id)queue newAssetVersions:(id)versions previousAssetVersions:(id)assetVersions delegate:(id)delegate
{
  queueCopy = queue;
  versionsCopy = versions;
  assetVersionsCopy = assetVersions;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = PowerTableEvaluationSession;
  v15 = [(PowerTableEvaluationSession *)&v22 init];
  if (!v15)
  {
    goto LABEL_5;
  }

  if ([versionsCopy count] == 2)
  {
    if ([assetVersionsCopy count] == 2)
    {
      v15->_state = 0;
      objc_storeStrong(&v15->_dispatchQueue, queue);
      v16 = +[NSUUID UUID];
      uUIDString = [v16 UUIDString];
      identifier = v15->_identifier;
      v15->_identifier = uUIDString;

      objc_storeStrong(&v15->_assetVersionsUnderEvaluation, versions);
      objc_storeStrong(&v15->_previousKnownGoodAssetVersions, assetVersions);
      objc_storeWeak(&v15->_delegate, delegateCopy);
LABEL_5:

      return v15;
    }
  }

  else
  {
    sub_100028A14(v15);
  }

  sub_100028ABC(v15);
  [(PowerTableEvaluationSession *)v20 activate];
  return result;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(PowerTableEvaluationSession *)self log];
  v6 = [NSString stringWithFormat:@"com.apple.centaurid.PowerTableEvaluation.%@", self->_identifier];
  v3 = v6;
  [v6 UTF8String];
  v4 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v4;

  self->_acceptingClientReadiness = 1;
  [(PowerTableEvaluationSession *)self setState:1];
}

- (BOOL)setReadiness:(BOOL)readiness forClient:(int64_t)client session:(id)session
{
  readinessCopy = readiness;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 1 << client;
  v12 = sub_100025204(v11);
  v13 = v12;
  if (((1 << client) & 3) == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      *buf = 138543874;
      v38 = v30;
      v39 = 2114;
      v40 = v31;
      v41 = 2048;
      clientCopy = client;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid client %ld", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = sub_1000107CC(client);
    v17 = v16;
    v18 = "not ready";
    *buf = 138544130;
    v39 = 2114;
    v38 = v14;
    if (readinessCopy)
    {
      v18 = "ready";
    }

    v40 = v15;
    v41 = 2112;
    clientCopy = v16;
    v43 = 2080;
    v44 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@ %s", buf, 0x2Au);
  }

  v19 = [sessionCopy isEqual:self->_identifier];
  if ((v19 & 1) == 0)
  {
    v29 = sub_100025204(v19);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_opt_class() description];
      v33 = NSStringFromSelector(a2);
      identifier = self->_identifier;
      *buf = 138544130;
      v38 = v32;
      v39 = 2114;
      v40 = v33;
      v41 = 2114;
      clientCopy = sessionCopy;
      v43 = 2114;
      v44 = identifier;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: session mismatch: received %{public}@, active %{public}@", buf, 0x2Au);
    }

    goto LABEL_23;
  }

  clientReadinessReceived = self->_clientReadinessReceived;
  if ((clientReadinessReceived & v10) != 0)
  {
    sub_100028B64(self, a2);
LABEL_23:
    v27 = 0;
    goto LABEL_15;
  }

  if (!self->_acceptingClientReadiness)
  {
    sub_100028C44(self);
    goto LABEL_14;
  }

  self->_clientReadinessReceived = clientReadinessReceived | v10;
  if (!readinessCopy)
  {
    v24 = sub_1000107CC(client);
    v25 = [NSString stringWithFormat:@"client%@NotReady", v24];
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = v25;

    self->_acceptingClientReadiness = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002E98;
    block[3] = &unk_10005C700;
    block[4] = self;
    v23 = block;
    goto LABEL_13;
  }

  v21 = self->_clientReadiness | v10;
  self->_clientReadiness = v21;
  if (v21 == 3)
  {
    self->_acceptingClientReadiness = 0;
    dispatchQueue = self->_dispatchQueue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100002E8C;
    v36[3] = &unk_10005C700;
    v36[4] = self;
    v23 = v36;
LABEL_13:
    dispatch_async(dispatchQueue, v23);
  }

LABEL_14:
  v27 = 1;
LABEL_15:

  return v27;
}

- (BOOL)setVote:(BOOL)vote forClient:(int64_t)client session:(id)session
{
  voteCopy = vote;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = 1 << client;
  v12 = sub_100025204(v11);
  v13 = v12;
  if (((1 << client) & 3) == 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      *buf = 138543874;
      v38 = v30;
      v39 = 2114;
      v40 = v31;
      v41 = 2048;
      clientCopy = client;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: invalid client %ld", buf, 0x20u);
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = sub_1000107CC(client);
    v17 = v16;
    v18 = "reject";
    *buf = 138544130;
    v39 = 2114;
    v38 = v14;
    if (voteCopy)
    {
      v18 = "accept";
    }

    v40 = v15;
    v41 = 2112;
    clientCopy = v16;
    v43 = 2080;
    v44 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %@ votes to %s", buf, 0x2Au);
  }

  v19 = [sessionCopy isEqual:self->_identifier];
  if ((v19 & 1) == 0)
  {
    v29 = sub_100025204(v19);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = [objc_opt_class() description];
      v33 = NSStringFromSelector(a2);
      identifier = self->_identifier;
      *buf = 138544130;
      v38 = v32;
      v39 = 2114;
      v40 = v33;
      v41 = 2114;
      clientCopy = sessionCopy;
      v43 = 2114;
      v44 = identifier;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: session mismatch: received %{public}@, active %{public}@", buf, 0x2Au);
    }

    goto LABEL_23;
  }

  clientVotesReceived = self->_clientVotesReceived;
  if ((clientVotesReceived & v10) != 0)
  {
    sub_100028D28(self, a2);
LABEL_23:
    v27 = 0;
    goto LABEL_15;
  }

  if (!self->_acceptingClientVotes)
  {
    sub_100028E08(self);
    goto LABEL_14;
  }

  self->_clientVotesReceived = clientVotesReceived | v10;
  if (!voteCopy)
  {
    v24 = sub_1000107CC(client);
    v25 = [NSString stringWithFormat:@"client%@VotedToReject", v24];
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = v25;

    self->_acceptingClientVotes = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000032BC;
    block[3] = &unk_10005C700;
    block[4] = self;
    v23 = block;
    goto LABEL_13;
  }

  v21 = self->_clientVotes | v10;
  self->_clientVotes = v21;
  if (v21 == 3)
  {
    self->_acceptingClientVotes = 0;
    dispatchQueue = self->_dispatchQueue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000032B0;
    v36[3] = &unk_10005C700;
    v36[4] = self;
    v23 = v36;
LABEL_13:
    dispatch_async(dispatchQueue, v23);
  }

LABEL_14:
  v27 = 1;
LABEL_15:

  return v27;
}

- (void)log
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = sub_100025204(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    v8 = sub_1000107A4(self->_state);
    acceptingClientReadiness = self->_acceptingClientReadiness;
    v9 = [objc_opt_class() voteSetAsString:self->_clientReadinessReceived];
    v10 = [objc_opt_class() voteSetAsString:self->_clientReadiness];
    acceptingClientVotes = self->_acceptingClientVotes;
    v12 = [objc_opt_class() voteSetAsString:self->_clientVotesReceived];
    v13 = [objc_opt_class() voteSetAsString:self->_clientVotes];
    v14 = self->_transaction != 0;
    v15 = self->_timer != 0;
    assetVersionsUnderEvaluation = self->_assetVersionsUnderEvaluation;
    previousKnownGoodAssetVersions = self->_previousKnownGoodAssetVersions;
    *buf = 138546690;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = identifier;
    v26 = 2112;
    v27 = v8;
    v28 = 1024;
    v29 = acceptingClientReadiness;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    v34 = 1024;
    v35 = acceptingClientVotes;
    v36 = 2114;
    v37 = v12;
    v38 = 2114;
    v39 = v13;
    v40 = 1024;
    v41 = v14;
    v42 = 1024;
    v43 = v15;
    v44 = 2114;
    v45 = assetVersionsUnderEvaluation;
    v46 = 2114;
    v47 = previousKnownGoodAssetVersions;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: id %{public}@, state %@, accepting readiness %u, readiness received %{public}@, readiness %{public}@, accepting votes %u, votes received %{public}@, votes %{public}@, transaction %u, timer %u, new %{public}@, previous %{public}@", buf, 0x7Eu);
  }
}

- (void)setState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = sub_100025204(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = NSStringFromSelector(a2);
    identifier = self->_identifier;
    v11 = sub_1000107A4(self->_state);
    v12 = sub_1000107A4(state);
    v18 = 138544386;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = identifier;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %@ -> %@", &v18, 0x34u);
  }

  [(PowerTableEvaluationSession *)self cancelTimer];
  self->_state = state;
  if ((state - 4) <= 2)
  {
    [(PowerTableEvaluationSession *)self sessionWillEnd];
  }

  notifyClients = [(PowerTableEvaluationSession *)self notifyClients];
  state = self->_state;
  if (state <= 2)
  {
    if (state != 1)
    {
      if (state == 2)
      {
        [(PowerTableEvaluationSession *)self performChipLevelValidation];
      }

      else if (!state)
      {
        v15 = sub_100025204(notifyClients);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100028EEC();
        }

        v16 = abort_report_np("assertion failure: NO -- invalid state");
        [(PowerTableEvaluationSession *)v16 notifyClients];
      }

      return;
    }

LABEL_12:
    [(PowerTableEvaluationSession *)self startTimer];
    return;
  }

  if ((state - 4) < 3)
  {
    [(PowerTableEvaluationSession *)self sessionDidEnd];
    return;
  }

  if (state == 3)
  {
    goto LABEL_12;
  }
}

- (void)notifyClients
{
  v12[0] = @"Timestamp";
  v3 = +[NSDate now];
  [v3 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  state = self->_state;
  identifier = self->_identifier;
  v13[0] = v4;
  v13[1] = identifier;
  v12[1] = @"SessionIdentifier";
  v12[2] = @"SessionState";
  v7 = [NSNumber numberWithInteger:state];
  assetVersionsUnderEvaluation = self->_assetVersionsUnderEvaluation;
  previousKnownGoodAssetVersions = self->_previousKnownGoodAssetVersions;
  v13[2] = v7;
  v13[3] = assetVersionsUnderEvaluation;
  v12[3] = @"NewAssetVersions";
  v12[4] = @"PreviousAssetVersions";
  v13[4] = previousKnownGoodAssetVersions;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];

  v11 = +[NSDistributedNotificationCenter defaultCenter];
  [v11 postNotificationName:@"com.apple.centaurid.PowerTableEvaluation" object:0 userInfo:v10];
}

- (void)startTimer
{
  state = self->_state;
  if (state == 1)
  {
    v5 = &CENPowerTableEvaluationReadinessTimeout;
  }

  else
  {
    if (state != 3)
    {
      v23 = sub_100025204(self);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100029000(self, a2, v23);
      }

      abort_report_np("assertion failure: NO -- invalid state");
      goto LABEL_20;
    }

    v5 = &CENPowerTableEvaluationVotingTimeout;
  }

  v6 = *v5;
  inited = objc_initWeak(&location, self);
  if (self->_timer)
  {
    v8 = sub_100025204(inited);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      *buf = 138543874;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      v31 = 2048;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: resheduling: %f seconds", buf, 0x20u);
    }

    dispatch_suspend(self->_timer);
    goto LABEL_13;
  }

  v11 = sub_100025204(inited);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v28 = v12;
    v29 = 2114;
    v30 = v13;
    v31 = 2048;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: creating: %f seconds", buf, 0x20u);
  }

  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  timer = self->_timer;
  self->_timer = v14;

  v17 = self->_timer;
  if (v17)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003BF0;
    v24[3] = &unk_10005C750;
    objc_copyWeak(&v25, &location);
    dispatch_source_set_event_handler(v17, v24);
    objc_destroyWeak(&v25);
LABEL_13:
    v18 = self->_timer;
    v19 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&location);
    return;
  }

  v20 = sub_100025204(v16);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_opt_class() description];
    v22 = NSStringFromSelector(a2);
    sub_100028F8C(v21, v22, buf, v20);
  }

  abort_report_np("assertion failure: _timer -- failed to create timer");
LABEL_20:
  __break(1u);
}

- (void)cancelTimer
{
  if (self->_timer)
  {
    v4 = sub_100025204(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [objc_opt_class() description];
      v6 = NSStringFromSelector(a2);
      v8 = 138543618;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: canceling", &v8, 0x16u);
    }

    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)handleTimeout
{
  state = self->_state;
  if (state == 3)
  {
    v5 = [objc_opt_class() voteSetAsString:3 - self->_clientVotes];
    v11 = sub_100025204(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_opt_class() description];
      v21 = NSStringFromSelector(a2);
      v22 = [objc_opt_class() voteSetAsString:self->_clientVotes];
      *buf = 138544130;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: timed out waiting for votes: received %{public}@, missing %{public}@", buf, 0x2Au);
    }

    v12 = [NSString stringWithFormat:@"timedOutWaitingForVotesFromClients%@", v5];
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = v12;

    self->_acceptingClientVotes = 0;
    selfCopy2 = self;
    v10 = 4;
    goto LABEL_9;
  }

  if (state == 1)
  {
    v5 = [objc_opt_class() voteSetAsString:3 - self->_clientReadiness];
    v6 = sub_100025204(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_opt_class() description];
      v18 = NSStringFromSelector(a2);
      v19 = [objc_opt_class() voteSetAsString:self->_clientReadiness];
      *buf = 138544130;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v19;
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: timed out waiting for readiness: received %{public}@, missing %{public}@", buf, 0x2Au);
    }

    v7 = [NSString stringWithFormat:@"timedOutWaitingForReadinessFromClients%@", v5];
    v8 = self->_sessionEndReason;
    self->_sessionEndReason = v7;

    self->_acceptingClientReadiness = 0;
    selfCopy2 = self;
    v10 = 6;
LABEL_9:
    [(PowerTableEvaluationSession *)selfCopy2 setState:v10];
    goto LABEL_10;
  }

  v5 = sub_100025204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v16 = sub_1000107A4(self->_state);
    *buf = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: state %@, ignoring timeout", buf, 0x20u);
  }

LABEL_10:
}

- (void)performChipLevelValidation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = sub_100025204(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }

    v6 = @"noDelegate";
    goto LABEL_9;
  }

  v16 = 0;
  v5 = [WeakRetained performChipLevelValidationForPowerTableEvaluationSession:self reason:&v16];
  v6 = v16;
  if (v5 == 2)
  {
LABEL_9:
    sessionEndReason = self->_sessionEndReason;
    self->_sessionEndReason = @"chipLevelValidationDeferred";

    if (v6)
    {
      v11 = [(NSString *)self->_sessionEndReason stringByAppendingFormat:@":%@", v6];
      v12 = self->_sessionEndReason;
      self->_sessionEndReason = v11;
    }

    selfCopy3 = self;
    v8 = 6;
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    v13 = self->_sessionEndReason;
    self->_sessionEndReason = @"chipLevelValidationFailed";

    if (v6)
    {
      v14 = [(NSString *)self->_sessionEndReason stringByAppendingFormat:@":%@", v6];
      v15 = self->_sessionEndReason;
      self->_sessionEndReason = v14;
    }

    selfCopy3 = self;
    v8 = 4;
    goto LABEL_15;
  }

  if (!v5)
  {
    self->_acceptingClientVotes = 1;
    selfCopy3 = self;
    v8 = 3;
LABEL_15:
    [(PowerTableEvaluationSession *)selfCopy3 setState:v8];
  }
}

- (void)sessionWillEnd
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  [(PowerTableEvaluationSession *)self log];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained powerTableEvaluationSessionWillEnd:self state:self->_state reason:self->_sessionEndReason];
  }

  else
  {
    v9 = sub_100025204(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }
  }
}

- (void)sessionDidEnd
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v10, 0x16u);
  }

  [(PowerTableEvaluationSession *)self log];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained powerTableEvaluationSessionDidEnd:self state:self->_state];
  }

  else
  {
    v9 = sub_100025204(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000290CC();
    }
  }
}

+ (id)voteSetAsString:(unint64_t)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSMutableString);
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    if (((1 << v5) & stringCopy) != 0)
    {
      if ([v4 length])
      {
        [v4 appendString:{@", "}];
      }

      v8 = sub_1000107CC(v5);
      [v4 appendString:v8];
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = [NSString stringWithFormat:@"{%@}", v4];

  return v9;
}

@end
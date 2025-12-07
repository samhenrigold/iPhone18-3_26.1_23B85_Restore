@interface MRUTimeControls
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (BOOL)isEqual:(id)equal;
- (MRUTimeControls)initWithResponseItem:(id)item;
- (double)elapsedTime;
- (double)elapsedTimeForDate:(id)date;
- (double)startTime;
- (id)description;
- (void)setDurationSnapshot:(id *)snapshot;
- (void)setElapsedTime:(double)time;
@end

@implementation MRUTimeControls

- (MRUTimeControls)initWithResponseItem:(id)item
{
  itemCopy = item;
  v26.receiver = self;
  v26.super_class = MRUTimeControls;
  v5 = [(MRUTimeControls *)&v26 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  seekCommand = [itemCopy seekCommand];
  seekCommand = v5->_seekCommand;
  v5->_seekCommand = seekCommand;

  v8 = [(MPCPlayerSeekCommand *)v5->_seekCommand changePositionToElapsedInterval:0.0];
  v9 = v8;
  if (!v8)
  {
    v5->_scrubbable = 0;

    if (itemCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = 0;
    v5->_isEnabled = 0;
    *&v5->_durationSnapshot.isLiveContent = 0;
    *&v5->_durationSnapshot.endTime = 0u;
    *&v5->_durationSnapshot.elapsedDuration = 0u;
    *&v5->_durationSnapshot.snapshotTime = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_9;
  }

  if (!itemCopy)
  {
    v5->_scrubbable = 1;

    goto LABEL_8;
  }

  objc_msgSend_duration(itemCopy);
  v5->_scrubbable = (v25 & 1) == 0;

LABEL_6:
  objc_msgSend_duration(itemCopy);
  v5->_isEnabled = v24 > 0.0;
  objc_msgSend_duration(itemCopy);
  *&v5->_durationSnapshot.snapshotTime = v20;
  *&v5->_durationSnapshot.endTime = v21;
  *&v5->_durationSnapshot.elapsedDuration = v22;
  *&v5->_durationSnapshot.isLiveContent = v23;
  objc_msgSend_duration(itemCopy);
  v10 = v19;
LABEL_9:
  v5->_isLive = v10;
  localizedDurationString = [itemCopy localizedDurationString];
  v12 = localizedDurationString;
  if (localizedDurationString)
  {
    v13 = localizedDurationString;
  }

  else
  {
    v13 = +[MRUStringsProvider scrubberLive];
  }

  liveText = v5->_liveText;
  v5->_liveText = v13;

LABEL_13:
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(MRUTimeControls *)self startTime];
  v6 = v5;
  objc_msgSend_duration(self);
  v8 = @"No";
  if (self->_scrubbable)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  if (self->_isEnabled)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  if (self->_isLive)
  {
    v8 = @"Yes";
  }

  return [v3 stringWithFormat:@"%@ start: %f | duration: %f | elapsed: %f | scrubbable: %@ | enabled: %@ | live: %@ - %@", v4, v6, v7, *&self->_durationSnapshot.elapsedDuration, v9, v10, v8, self->_liveText];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (v5)
      {
        objc_msgSend_durationSnapshot(v5);
        v7 = v27;
      }

      else
      {
        v7 = 0.0;
      }

      v9 = v7 == self->_durationSnapshot.snapshotTime;
      [(MRUTimeControls *)v6 startTime];
      v11 = v10;
      [(MRUTimeControls *)self startTime];
      if (v11 != v12)
      {
        v9 = 0;
      }

      objc_msgSend_duration(v6);
      v14 = v13;
      objc_msgSend_duration(self);
      if (v14 != v15)
      {
        v9 = 0;
      }

      if (v6)
      {
        objc_msgSend_durationSnapshot(v6);
        v16 = v26;
      }

      else
      {
        v16 = 0.0;
      }

      objc_msgSend_durationSnapshot(self);
      if (v16 != v25)
      {
        v9 = 0;
      }

      [(MRUTimeControls *)v6 rate];
      v18 = v17;
      [(MRUTimeControls *)self rate];
      if (v18 != v19)
      {
        v9 = 0;
      }

      if (self->_scrubbable != [(MRUTimeControls *)v6 scrubbable])
      {
        v9 = 0;
      }

      if (self->_isEnabled != [(MRUTimeControls *)v6 isEnabled])
      {
        v9 = 0;
      }

      v20 = self->_isLive == [(MRUTimeControls *)v6 isLive]&& v9;
      liveText = [(MRUTimeControls *)v6 liveText];
      v22 = liveText;
      if (liveText == self->_liveText)
      {
        v23 = 1;
      }

      else
      {
        v23 = [(NSString *)liveText isEqual:?];
      }

      v8 = v20 & v23;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (double)startTime
{
  startTime = self->_durationSnapshot.startTime;
  objc_msgSend_duration(self, a2);
  if (startTime < result)
  {
    return startTime;
  }

  return result;
}

- (double)elapsedTime
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  duration = self->_durationSnapshot.elapsedDuration + (v3 - self->_durationSnapshot.snapshotTime) * self->_durationSnapshot.rate;
  if (duration >= self->_durationSnapshot.duration)
  {
    duration = self->_durationSnapshot.duration;
  }

  v5 = fmax(duration, 0.0);
  [(MRUTimeControls *)self startTime];
  v7 = v6;
  objc_msgSend_duration(self);
  if (v5 < result)
  {
    result = v5;
  }

  if (v7 >= result)
  {
    return v7;
  }

  return result;
}

- (void)setElapsedTime:(double)time
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_duration(self, a2);
  v7 = v6;
  v8 = MCLogCategoryDefault(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2050;
    *&buf[14] = time;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ set time to: %{public}f", buf, 0x16u);
  }

  v9 = fmax(time, 0.0);
  if (v9 < v7)
  {
    v7 = v9;
  }

  v10 = [(MPCPlayerSeekCommand *)self->_seekCommand changePositionToElapsedInterval:v7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __34__MRUTimeControls_setElapsedTime___block_invoke;
  v14[3] = &unk_1E7664118;
  v14[4] = self;
  *&v14[5] = time;
  [MEMORY[0x1E69B0848] performRequest:v10 completion:v14];
  v11 = *&self->_durationSnapshot.startTime;
  *&buf[16] = self->_durationSnapshot.duration;
  v15 = *&self->_durationSnapshot.rate;
  *buf = v11;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_durationSnapshot.snapshotTime = v12;
  v13 = v15;
  *&self->_durationSnapshot.startTime = *buf;
  self->_durationSnapshot.duration = *&buf[16];
  self->_durationSnapshot.elapsedDuration = v7;
  *&self->_durationSnapshot.rate = v13;
}

void __34__MRUTimeControls_setElapsedTime___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2050;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ complete set time to: %{public}f | error %{public}@", &v7, 0x20u);
  }
}

- (double)elapsedTimeForDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x1E695DF00] now];
  }

  [dateCopy timeIntervalSinceReferenceDate];
  duration = self->_durationSnapshot.elapsedDuration + (v5 - self->_durationSnapshot.snapshotTime) * self->_durationSnapshot.rate;
  if (duration >= self->_durationSnapshot.duration)
  {
    duration = self->_durationSnapshot.duration;
  }

  v7 = fmax(duration, 0.0);

  return v7;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot
{
  v3 = *&self->var7;
  *&retstr->var0 = *&self->var4;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var1;
  *&retstr->var7 = self[1].var3;
  return self;
}

- (void)setDurationSnapshot:(id *)snapshot
{
  v3 = *&snapshot->var0;
  v4 = *&snapshot->var2;
  v5 = *&snapshot->var4;
  *&self->_durationSnapshot.isLiveContent = *&snapshot->var7;
  *&self->_durationSnapshot.endTime = v4;
  *&self->_durationSnapshot.elapsedDuration = v5;
  *&self->_durationSnapshot.snapshotTime = v3;
}

@end